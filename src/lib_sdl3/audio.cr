lib LibSdl3
  AUDIO_MASK_BITSIZE    = (0xFFu32)
  AUDIO_MASK_FLOAT      = (1u32<<8)
  AUDIO_MASK_BIG_ENDIAN = (1u32<<12)
  AUDIO_MASK_SIGNED     = (1u32<<15)

  enum AudioFormat : UInt32
    Unknown = 0x0000u32 # SDL_AUDIO_UNKNOWN
    U8      = 0x0008u32 # SDL_AUDIO_U8
    S8      = 0x8008u32 # SDL_AUDIO_S8
    S16le   = 0x8010u32 # SDL_AUDIO_S16LE
    S16be   = 0x9010u32 # SDL_AUDIO_S16BE
    S32le   = 0x8020u32 # SDL_AUDIO_S32LE
    S32be   = 0x9020u32 # SDL_AUDIO_S32BE
    F32le   = 0x8120u32 # SDL_AUDIO_F32LE
    F32be   = 0x9120u32 # SDL_AUDIO_F32BE
    {% if flag?(:big_endian) %}
      S16  = S16be # SDL_AUDIO_S16
      S32  = S32be # SDL_AUDIO_S32
      F32  = F32be # SDL_AUDIO_F32
    {% else %} #if SDL_BYTEORDER == SDL_LIL_ENDIAN
      S16  = S16le # SDL_AUDIO_S16
      S32  = S32le # SDL_AUDIO_S32
      F32  = F32le # SDL_AUDIO_F32
    {% end %}
  end

  alias AudioDeviceID = UInt32 # typedef Uint32 SDL_AudioDeviceID;

  struct AudioSpec
    format : AudioFormat
    channels : Int
    freq : Int
  end

  type AudioStream = Void # typedef struct SDL_AudioStream SDL_AudioStream;

  # extern SDL_DECLSPEC int SDLCALL SDL_GetNumAudioDrivers(void);
  fun get_num_audio_drivers = SDL_GetNumAudioDrivers : Int
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetAudioDriver(int index);
  fun get_audio_driver = SDL_GetAudioDriver(index : Int) : Char*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetCurrentAudioDriver(void);
  fun get_current_audio_driver = SDL_GetCurrentAudioDriver : Char*
  # extern SDL_DECLSPEC SDL_AudioDeviceID * SDLCALL SDL_GetAudioPlaybackDevices(int *count);
  fun get_audio_playback_devices = SDL_GetAudioPlaybackDevices(count : Int*) : AudioDeviceID*
  # extern SDL_DECLSPEC SDL_AudioDeviceID * SDLCALL SDL_GetAudioRecordingDevices(int *count);
  fun get_audio_recording_devices = SDL_GetAudioRecordingDevices(count : Int*) : AudioDeviceID*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetAudioDeviceName(SDL_AudioDeviceID devid);
  fun get_audio_device_name = SDL_GetAudioDeviceName(devid : AudioDeviceID) : Char*
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetAudioDeviceFormat(SDL_AudioDeviceID devid, SDL_AudioSpec *spec, int *sample_frames);
  fun get_audio_device_format = SDL_GetAudioDeviceFormat(devid : AudioDeviceID, spec : AudioSpec*, sample_frames : Int*) : Bool
  # extern SDL_DECLSPEC int * SDLCALL SDL_GetAudioDeviceChannelMap(SDL_AudioDeviceID devid, int *count);
  fun get_audio_device_channel_map = SDL_GetAudioDeviceChannelMap(devid : AudioDeviceID, count : Int*) : Int*
  # extern SDL_DECLSPEC SDL_AudioDeviceID SDLCALL SDL_OpenAudioDevice(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec);
  fun open_audio_device = SDL_OpenAudioDevice(devid : AudioDeviceID, spec : AudioSpec*) : AudioDeviceID
  # extern SDL_DECLSPEC bool SDLCALL SDL_IsAudioDevicePhysical(SDL_AudioDeviceID devid);
  fun is_audio_device_physical = SDL_IsAudioDevicePhysical(devid : AudioDeviceID) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_IsAudioDevicePlayback(SDL_AudioDeviceID devid);
  fun is_audio_device_playback = SDL_IsAudioDevicePlayback(devid : AudioDeviceID) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_PauseAudioDevice(SDL_AudioDeviceID devid);
  fun pause_audio_device = SDL_PauseAudioDevice(devid : AudioDeviceID) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ResumeAudioDevice(SDL_AudioDeviceID devid);
  fun resume_audio_device = SDL_ResumeAudioDevice(devid : AudioDeviceID) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_AudioDevicePaused(SDL_AudioDeviceID devid);
  fun audio_device_paused = SDL_AudioDevicePaused(devid : AudioDeviceID) : Bool
  # extern SDL_DECLSPEC float SDLCALL SDL_GetAudioDeviceGain(SDL_AudioDeviceID devid);
  fun get_audio_device_gain = SDL_GetAudioDeviceGain(devid : AudioDeviceID) : Float32
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetAudioDeviceGain(SDL_AudioDeviceID devid, float gain);
  fun set_audio_device_gain = SDL_SetAudioDeviceGain(devid : AudioDeviceID, gain : Float32) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_CloseAudioDevice(SDL_AudioDeviceID devid);
  fun close_audio_device = SDL_CloseAudioDevice(devid : AudioDeviceID) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_BindAudioStreams(SDL_AudioDeviceID devid, SDL_AudioStream * const *streams, int num_streams);
  fun bind_audio_streams = SDL_BindAudioStreams(devid : AudioDeviceID, streams : AudioStream**, num_streams : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_BindAudioStream(SDL_AudioDeviceID devid, SDL_AudioStream *stream);
  fun bind_audio_stream = SDL_BindAudioStream(devid : AudioDeviceID, stream : AudioStream*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_UnbindAudioStreams(SDL_AudioStream * const *streams, int num_streams);
  fun unbind_audio_streams = SDL_UnbindAudioStreams(streams : AudioStream**, num_streams : Int) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_UnbindAudioStream(SDL_AudioStream *stream);
  fun unbind_audio_stream = SDL_UnbindAudioStream(stream : AudioStream*) : Void
  # extern SDL_DECLSPEC SDL_AudioDeviceID SDLCALL SDL_GetAudioStreamDevice(SDL_AudioStream *stream);
  fun get_audio_stream_device = SDL_GetAudioStreamDevice(stream : AudioStream*) : AudioDeviceID
  # extern SDL_DECLSPEC SDL_AudioStream * SDLCALL SDL_CreateAudioStream(const SDL_AudioSpec *src_spec, const SDL_AudioSpec *dst_spec);
  fun create_audio_stream = SDL_CreateAudioStream(src_spec : AudioSpec*, dst_spec : AudioSpec*) : AudioStream*
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetAudioStreamProperties(SDL_AudioStream *stream);
  fun get_audio_stream_properties = SDL_GetAudioStreamProperties(stream : AudioStream*) : PropertiesID
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetAudioStreamFormat(SDL_AudioStream *stream, SDL_AudioSpec *src_spec, SDL_AudioSpec *dst_spec);
  fun get_audio_stream_format = SDL_GetAudioStreamFormat(stream : AudioStream*, src_spec : AudioSpec*, dst_spec : AudioSpec*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetAudioStreamFormat(SDL_AudioStream *stream, const SDL_AudioSpec *src_spec, const SDL_AudioSpec *dst_spec);
  fun set_audio_stream_format = SDL_SetAudioStreamFormat(stream : AudioStream*, src_spec : AudioSpec*, dst_spec : AudioSpec*) : Bool
  # extern SDL_DECLSPEC float SDLCALL SDL_GetAudioStreamFrequencyRatio(SDL_AudioStream *stream);
  fun get_audio_stream_frequency_ratio = SDL_GetAudioStreamFrequencyRatio(stream : AudioStream*) : Float32
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetAudioStreamFrequencyRatio(SDL_AudioStream *stream, float ratio);
  fun set_audio_stream_frequency_ratio = SDL_SetAudioStreamFrequencyRatio(stream : AudioStream*, ratio : Float32) : Bool
  # extern SDL_DECLSPEC float SDLCALL SDL_GetAudioStreamGain(SDL_AudioStream *stream);
  fun get_audio_stream_gain = SDL_GetAudioStreamGain(stream : AudioStream*) : Float32
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetAudioStreamGain(SDL_AudioStream *stream, float gain);
  fun set_audio_stream_gain = SDL_SetAudioStreamGain(stream : AudioStream*, gain : Float32) : Bool
  # extern SDL_DECLSPEC int * SDLCALL SDL_GetAudioStreamInputChannelMap(SDL_AudioStream *stream, int *count);
  fun get_audio_stream_input_channel_map = SDL_GetAudioStreamInputChannelMap(stream : AudioStream*, count : Int*) : Int*
  # extern SDL_DECLSPEC int * SDLCALL SDL_GetAudioStreamOutputChannelMap(SDL_AudioStream *stream, int *count);
  fun get_audio_stream_output_channel_map = SDL_GetAudioStreamOutputChannelMap(stream : AudioStream*, count : Int*) : Int*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetAudioStreamInputChannelMap(SDL_AudioStream *stream, const int *chmap, int count);
  fun set_audio_stream_input_channel_map = SDL_SetAudioStreamInputChannelMap(stream : AudioStream*, chmap : Int*, count : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetAudioStreamOutputChannelMap(SDL_AudioStream *stream, const int *chmap, int count);
  fun set_audio_stream_output_channel_map = SDL_SetAudioStreamOutputChannelMap(stream : AudioStream*, chmap : Int*, count : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_PutAudioStreamData(SDL_AudioStream *stream, const void *buf, int len);
  fun put_audio_stream_data = SDL_PutAudioStreamData(stream : AudioStream*, buf : Void*, len : Int) : Bool
  # typedef void (SDLCALL *SDL_AudioStreamDataCompleteCallback)(void *userdata, const void *buf, int buflen);
  alias AudioStreamDataCompleteCallback = (Void*, Void*, Int) -> Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_PutAudioStreamDataNoCopy(SDL_AudioStream *stream, const void *buf, int len, SDL_AudioStreamDataCompleteCallback callback, void *userdata);
  fun put_audio_stream_data_no_copy = SDL_PutAudioStreamDataNoCopy(stream : AudioStream*, buf : Void*, len : Int, callback : AudioStreamDataCompleteCallback, userdata : Void*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_PutAudioStreamPlanarData(SDL_AudioStream *stream, const void * const *channel_buffers, int num_channels, int num_samples);
  fun put_audio_stream_planar_data = SDL_PutAudioStreamPlanarData(stream : AudioStream*, channel_buffers : Void**, num_channels : Int, num_samples : Int) : Bool
  # extern SDL_DECLSPEC int SDLCALL SDL_GetAudioStreamData(SDL_AudioStream *stream, void *buf, int len);
  fun get_audio_stream_data = SDL_GetAudioStreamData(stream : AudioStream*, buf : Void*, len : Int) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_GetAudioStreamAvailable(SDL_AudioStream *stream);
  fun get_audio_stream_available = SDL_GetAudioStreamAvailable(stream : AudioStream*) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_GetAudioStreamQueued(SDL_AudioStream *stream);
  fun get_audio_stream_queued = SDL_GetAudioStreamQueued(stream : AudioStream*) : Int
  # extern SDL_DECLSPEC bool SDLCALL SDL_FlushAudioStream(SDL_AudioStream *stream);
  fun flush_audio_stream = SDL_FlushAudioStream(stream : AudioStream*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ClearAudioStream(SDL_AudioStream *stream);
  fun clear_audio_stream = SDL_ClearAudioStream(stream : AudioStream*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_PauseAudioStreamDevice(SDL_AudioStream *stream);
  fun pause_audio_stream_device = SDL_PauseAudioStreamDevice(stream : AudioStream*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ResumeAudioStreamDevice(SDL_AudioStream *stream);
  fun resume_audio_stream_device = SDL_ResumeAudioStreamDevice(stream : AudioStream*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_AudioStreamDevicePaused(SDL_AudioStream *stream);
  fun audio_stream_device_paused = SDL_AudioStreamDevicePaused(stream : AudioStream*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_LockAudioStream(SDL_AudioStream *stream);
  fun lock_audio_stream = SDL_LockAudioStream(stream : AudioStream*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_UnlockAudioStream(SDL_AudioStream *stream);
  fun unlock_audio_stream = SDL_UnlockAudioStream(stream : AudioStream*) : Bool
  # typedef void (SDLCALL *SDL_AudioStreamCallback)(void *userdata, SDL_AudioStream *stream, int additional_amount, int total_amount);
  alias AudioStreamCallback = (Void*, AudioStream*, Int, Int) -> Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetAudioStreamGetCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata);
  fun set_audio_stream_get_callback = SDL_SetAudioStreamGetCallback(stream : AudioStream*, callback : AudioStreamCallback, userdata : Void*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetAudioStreamPutCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata);
  fun set_audio_stream_put_callback = SDL_SetAudioStreamPutCallback(stream : AudioStream*, callback : AudioStreamCallback, userdata : Void*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyAudioStream(SDL_AudioStream *stream);
  fun destroy_audio_stream = SDL_DestroyAudioStream(stream : AudioStream*) : Void
  # extern SDL_DECLSPEC SDL_AudioStream * SDLCALL SDL_OpenAudioDeviceStream(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec, SDL_AudioStreamCallback callback, void *userdata);
  fun open_audio_device_stream = SDL_OpenAudioDeviceStream(devid : AudioDeviceID, spec : AudioSpec*, callback : AudioStreamCallback, userdata : Void*) : AudioStream*
  # typedef void (SDLCALL *SDL_AudioPostmixCallback)(void *userdata, const SDL_AudioSpec *spec, float *buffer, int buflen);
  alias AudioPostmixCallback = (Void*, AudioSpec*, Float32*, Int) -> Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetAudioPostmixCallback(SDL_AudioDeviceID devid, SDL_AudioPostmixCallback callback, void *userdata);
  fun set_audio_postmix_callback = SDL_SetAudioPostmixCallback(devid : AudioDeviceID, callback : AudioPostmixCallback, userdata : Void*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_LoadWAV_IO(SDL_IOStream *src, bool closeio, SDL_AudioSpec *spec, Uint8 **audio_buf, Uint32 *audio_len);
  fun loadwav_io = SDL_LoadWAV_IO(src : IOStream*, closeio : Bool, spec : AudioSpec*, audio_buf : UInt8*, audio_len : UInt32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_LoadWAV(const char *path, SDL_AudioSpec *spec, Uint8 **audio_buf, Uint32 *audio_len);
  fun loadwav = SDL_LoadWAV(path : Char*, spec : AudioSpec*, audio_buf : UInt8*, audio_len : UInt32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_MixAudio(Uint8 *dst, const Uint8 *src, SDL_AudioFormat format, Uint32 len, float volume);
  fun mix_audio = SDL_MixAudio(dst : UInt8*, src : UInt8*, format : AudioFormat, len : UInt32, volume : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ConvertAudioSamples(const SDL_AudioSpec *src_spec, const Uint8 *src_data, int src_len, const SDL_AudioSpec *dst_spec, Uint8 **dst_data, int *dst_len);
  fun convert_audio_samples = SDL_ConvertAudioSamples(src_spec : AudioSpec*, src_data : UInt8*, src_len : Int, dst_spec : AudioSpec*, dst_data : UInt8*, dst_len : Int*) : Bool
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetAudioFormatName(SDL_AudioFormat format);
  fun get_audio_format_name = SDL_GetAudioFormatName(format : AudioFormat) : Char*
  # extern SDL_DECLSPEC int SDLCALL SDL_GetSilenceValueForFormat(SDL_AudioFormat format);
  fun get_silence_value_for_format = SDL_GetSilenceValueForFormat(format : AudioFormat) : Int
end
