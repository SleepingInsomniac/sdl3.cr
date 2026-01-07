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

    def properties
      Properties.new(LibSdl3.get_surface_properties(self))
    end

    # https://wiki.libsdl.org/SDL3/SDL_SetSurfaceColorspace
    def colorspace=(space : Colorspace)
      Sdl3.raise_error unless LibSdl3.set_surface_colorspace(self, space)
    end

    # https://wiki.libsdl.org/SDL3/SDL_GetSurfaceColorspace
    def colorspace
      LibSdl3.get_surface_colorspace(self)
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
      pix_ptr = @pointer.value.pixels.as(Pointer(UInt8))
      Slice(UInt8).new(pix_ptr, height * pitch)
    end

    def clear(r, g, b, a)
      LibSdl3.clear_surface(self, r, g, b, a)
    end

    # https://wiki.libsdl.org/SDL3/SDL_BlitSurface
    def blit(dest : Surface, source_rect : Rect? = nil, dest_rect : Rect? = nil)
      sr = source_rect.try { |r| pointerof(r) } || Pointer(Rect).null
      dr = dest_rect.try { |r| pointerof(r) } || Pointer(Rect).null
      LibSdl3.blit_surface(self, sr, dest, dr)
    end

    def convert(format : PixelFormat)
      Surface.new(LibSdl3.convert_surface(@pointer, format))
    end
  end
end
