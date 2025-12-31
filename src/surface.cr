module Sdl3
  class Surface < SdlObject(LibSdl3::Surface*)
    alias Flags = LibSdl3::SurfaceFlags

    def self.load_png(path : String)
      new(LibSdl3.load_png(path))
    end

    def initialize(@pointer, @owned = true)
    end

    def initialize(width : Int32, height : Int32, format : PixelFormat)
      @pointer = LibSdl3.create_surface(width, height, format)
      Sdl3.raise_error unless @pointer
    end

    def sdl_finalize
      LibSdl3.destroy_surface(self)
    end

    def properties_id
      LibSdl3.get_surface_properties(self)
    end

    # fun set_surface_colorspace = SDL_SetSurfaceColorspace(surface : Surface*, colorspace : Colorspace) : Bool
    # fun get_surface_colorspace = SDL_GetSurfaceColorspace(surface : Surface*) : Colorspace

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
      pix_ptr = @pointer.value.pixels.as(Pointer(UInt8))
      Slice(UInt8).new(pix_ptr, width * pitch * height)
    end

    def clear(r, g, b, a)
      LibSdl3.clear_surface(self, r : Float32, g : Float32, b : Float32, a : Float32)
    end

    def blit(source_rect : Rect?, dest : Surface, dest_rect : Rect?)
      LibSdl3.blit_surface(self, pointerof(source_rect), dest, pointerof(dest_rect))
    end

    def convert(format : PixelFormat)
      Surface.new(LibSdl3.convert_surface(@pointer, format))
    end
  end
end
