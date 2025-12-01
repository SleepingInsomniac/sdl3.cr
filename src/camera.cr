module Sdl3
  class Camera < SdlObject(LibSdl3::Camera*)
    alias ID = LibSdl3::CameraID
    alias Spec = LibSdl3::CameraSpec
    alias Position = LibSdl3::CameraPosition
    alias PermissionState = LibSdl3::CameraPermissionState

    @@camera_ids : Slice(ID)?

    def self.num_drivers
      LibSdl3.get_num_camera_drivers
    end

    def self.driver(index)
      String.new(LibSdl3.get_camera_driver(index))
    end

    def self.current_driver
      String.new(LibSdl3.get_current_camera_driver)
    end

    def self.camera_ids
      return @@camera_ids.not_nil! if @@camera_ids

      id_ptr = LibSdl3.get_cameras(out count)
      Sdl3.raise_error if id_ptr.null?
      @@camera_ids = Slice.new(id_ptr, count)
      @@camera_ids.not_nil!
    end

    def initialize(@pointer, @owned = true)
    end

    def initialize(id : ID, spec : Spec*? = nil)
      @pointer = LibSdl3.open_camera(id, spec)
      Sdl3.raise_error unless @pointer
    end

    def sdl_finalize
      LibSdl3.close_camera(self)
    end

    def frame(&)
      surface_ptr = LibSdl3.acquire_camera_frame(self, out timestampns)
      return if surface_ptr.null?

      begin
        surface = Surface.new(surface_ptr, owned: false)
        yield surface, timestampns
      ensure
        LibSdl3.release_camera_frame(self, surface_ptr)
      end
    end
  end
end
