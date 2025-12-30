module Sdl3
  class Surface < SdlObject(LibSdl3::Surface*)
    alias Flags = LibSdl3::SurfaceFlags

    def initialize(@pointer, @owned = true)
    end

    def initialize(width : Int32, height : Int32, format : PixelFormat)
      @pointer = LibSdl3.create_surface(width, height, format)
      Sdl3.raise_error unless @pointer
    end

    def sdl_finalize
      LibSdl3.destroy_surface(self)
    end

    def lock
      LibSdl3.lock_surface(self)
    end

    def unlock
      LibSdl3.unlock_surface(self)
    end

    def lock(&)
      lock
      yield
    ensure
      unlock
    end

    def flags
      @pointer.value.flags
    end

    def format
      @pointer.value.format
    end

    def width
      @pointer.value.w
    end

    def height
      @pointer.value.h
    end

    def pitch
      @pointer.value.pitch
    end

    def pixels
      @pointer.value.pixels
    end

    def clear(r, g, b, a)
      LibSdl3.clear_surface(self, r : Float32, g : Float32, b : Float32, a : Float32)
    end
  end
end
