module Sdl3
  module Audio
    alias Format = LibSdl3::AudioFormat
    alias DeviceID = LibSdl3::AudioDeviceID
    alias Spec = LibSdl3::AudioSpec

    def self.bytes_per_sample(format : Format)
      case format
      when Format::U8, Format::S8 then 1
      when Format::S16le, Format::S16be then 2
      when Format::S32le, Format::S32be then 4
      when Format::F32le, Format::F32be then 4
      else
        raise "Can't infer size from #{format}"
      end
    end

    def self.num_drivers
      LibSdl3.get_num_audio_drivers
    end

    def self.driver(index)
      String.new(LibSdl3.get_audio_driver(index))
    end

    def self.current_driver
      String.new(LibSdl3.get_current_audio_driver)
    end

    def self.playback_devices
      id_ptr = LibSdl3.get_audio_playback_devices(out count)
      Sdl3.raise_error if id_ptr.null?
      Array.new(count) { |i| Device.new(id_ptr[i]) }
    ensure
      LibSdl3.free(id_ptr)
    end

    def self.recording_devices
      id_ptr = LibSdl3.get_audio_recording_devices(out count)
      Sdl3.raise_error if id_ptr.null?
      Array.new(count) { |i| Device.new(id_ptr[i]) }
    ensure
      LibSdl3.free(id_ptr)
    end

    def self.load_wav(path : String)
      Sdl3.raise_error unless LibSdl3.loadwav(path, out spec, out audio_buf_ptr, out audio_len)
      {Sdl3::Data(UInt8).new(audio_buf_ptr, audio_len), spec}
    end

    struct Device
      DEFAULT_PLAYBACK = LibSdl3::AUDIO_DEVICE_DEFAULT_PLAYBACK
      DEFAULT_RECORDING = LibSdl3::AUDIO_DEVICE_DEFAULT_RECORDING

      def self.default_playback
        new(DEFAULT_PLAYBACK)
      end

      def self.default_recording
        new(DEFAULT_RECORDING)
      end

      getter id : DeviceID
      getter? opened : Bool

      def initialize(@id, @opened = false)
      end

      def name
        String.new(LibSdl3.get_audio_device_name(id))
      end

      def format
        # raise "Not opened" unless opened?
        ret = Sdl3.get_audio_device_format(@id, out spec, out sample_frames)
        Sdl3.raise_error unless ret
        {spec, sample_frames}
      end

      # def channel_map
      # end

      def open(audio_spec : Spec)
        ret_id = LibSdl3.open_audio_device(@id, audio_spec)
        Sdl3.raise_error if ret_id.zero?
        Device.new(ret_id, true)
      end

      def physical?
        LibSdl3.is_audio_device_physical(@id)
      end

      def playback?
        LibSdl3.is_audio_device_playback(@id)
      end

      def pause
        LibSdl3.pause_audio_device(@id)
      end

      def paused?
        LibSdl3.audio_device_paused(@id)
      end

      def resume
        LibSdl3.resume_audio_device(@id)
      end

      def gain
        LibSdl3.get_audio_device_gain(@id)
      end

      def gain=(value : Float32)
        LibSdl3.set_audio_device_gain(@id, value)
      end

      def close
        LibSdl3.close_audio_device(@id)
      end
    end

    class Stream < SdlObject(LibSdl3::AudioStream*)
      def self.open(device : Device = Device.default_playback, spec : Spec? = nil)
        stream_ptr = LibSdl3.open_audio_device_stream(device.id, pointerof(spec), nil, nil)
        Sdl3.raise_error if stream_ptr.null?
        new(stream_ptr)
      end

      def self.create(src_spec : Spec, dst_spec : Spec)
        stream_ptr = LibSdl3.create_audio_stream(src_spec, dst_spec)
        Sdl3.raise_error if stream_ptr.null?
        new(stream_ptr)
      end

      def device
        Device.new(LibSdl3.get_audio_stream_device(self))
      end

      def source_format=(spec : Spec)
        Sdl3.raise_error unless LibSdl3.set_audio_stream_format(self, spec, nil)
      end

      def dest_format=(spec : Spec)
        Sdl3.raise_error unless LibSdl3.set_audio_stream_format(self, nil, spec)
      end

      def put_data(buf : StaticArray)
        Sdl3.raise_error unless LibSdl3.put_audio_stream_data(self, buf, sizeof(typeof(buf)))
      end

      def put_data(buf : Slice)
        Sdl3.raise_error unless LibSdl3.put_audio_stream_data(self, buf, buf.bytesize)
      end

      def put_data(buf : Data)
        Sdl3.raise_error unless LibSdl3.put_audio_stream_data(self, buf, buf.bytesize)
      end

      def put_data(buf : Pointer, size : Int)
        Sdl3.raise_error unless LibSdl3.put_audio_stream_data(self, buf, size)
      end

      def pause
        Sdl3.raise_error unless LibSdl3.pause_audio_stream_device(self)
      end

      def paused?
        Sdl3.raise_error unless LibSdl3.audio_stream_device_paused(self)
      end

      def resume
        Sdl3.raise_error unless LibSdl3.resume_audio_stream_device(self)
      end

      def available
        LibSdl3.get_audio_stream_available(self)
      end

      def queued
        LibSdl3.get_audio_stream_queued(self)
      end

      def flush
        LibSdl3.flush_audio_stream(self)
      end

      def clear
        LibSdl3.clear_audio_stream(self)
      end

      def lock
        LibSdl3.lock_audio_stream(self)
      end

      def unlock
        LibSdl3.unlock_audio_stream(self)
      end

      def sdl_finalize
        LibSdl3.destroy_audio_stream(self)
      end
    end
  end
end
