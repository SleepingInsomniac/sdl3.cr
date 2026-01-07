module Sdl3
  class Texture < SdlObject(LibSdl3::Texture*)
    alias Access = LibSdl3::TextureAccess

    def initialize(@pointer, @owned = true)
    end

    def initialize(renderer : Renderer, format : PixelFormat, access : Access, width : Int32, height : Int32)
      @pointer = LibSdl3.create_texture(renderer, format, access, width, height)
    end

    def initialize(renderer : Renderer, surface : Surface)
      @pointer = LibSdl3.create_texture_from_surface(renderer, surface)
    end

    def sdl_finalize
      LibSdl3.destroy_texture(self)
    end

    def properties
      Properties.new(LibSdl3.get_texture_properties(self))
    end

    def renderer
      Renderer.new(LibSdl3.get_renderer_from_texture(self))
    end

    def size
      Sdl3.raise_error unless LibSdl3.get_texture_size(self, out width, out height)
      {width, height}
    end

    def palette
      ptr = LibSdl3.get_texture_palette(self)
      Sdl3.raise_error if ptr.null?
      ptr.value
    end

    # fun set_texture_color_mod = SDL_SetTextureColorMod(texture : Texture*, r : UInt8, g : UInt8, b : UInt8) : Bool
    # fun set_texture_color_mod_float = SDL_SetTextureColorModFloat(texture : Texture*, r : Float32, g : Float32, b : Float32) : Bool
    # fun get_texture_color_mod = SDL_GetTextureColorMod(texture : Texture*, r : UInt8*, g : UInt8*, b : UInt8*) : Bool
    # fun get_texture_color_mod_float = SDL_GetTextureColorModFloat(texture : Texture*, r : Float32*, g : Float32*, b : Float32*) : Bool

    # fun set_texture_alpha_mod = SDL_SetTextureAlphaMod(texture : Texture*, alpha : UInt8) : Bool
    # fun set_texture_alpha_mod_float = SDL_SetTextureAlphaModFloat(texture : Texture*, alpha : Float32) : Bool
    # fun get_texture_alpha_mod = SDL_GetTextureAlphaMod(texture : Texture*, alpha : UInt8*) : Bool
    # fun get_texture_alpha_mod_float = SDL_GetTextureAlphaModFloat(texture : Texture*, alpha : Float32*) : Bool

    # https://wiki.libsdl.org/SDL3/SDL_GetTextureBlendMode
    def blend_mode=(mode : BlendMode)
      result = LibSdl3.set_texture_blend_mode(self, mode)
      Sdl3.raise_error unless result
    end

    # https://wiki.libsdl.org/SDL3/SDL_GetTextureBlendMode
    def blend_mode
      result = LibSdl3.get_texture_blend_mode(self, out blend_mode)
      Sdl3.raise_error unless result
      blend_mode
    end

    # https://wiki.libsdl.org/SDL3/SDL_GetTextureScaleMode
    def scale_mode=(scale_mode : ScaleMode)
      result = LibSdl3.set_texture_scale_mode(self, scale_mode)
      Sdl3.raise_error unless result
    end

    # https://wiki.libsdl.org/SDL3/SDL_SetTextureScaleMode
    def scale_mode
      result = LibSdl3.get_texture_scale_mode(self)
      Sdl3.raise_error unless result
    end

    # https://wiki.libsdl.org/SDL3/SDL_UpdateTexture
    def update(rect : Rect?, pixels, pitch)
      r = rect.try { |r| pointerof(r) } || Pointer(Rect).null
      updated = LibSdl3.update_texture(self, r, pixels, pitch)
      Sdl3.raise_error unless updated
    end

    # fun updateyuv_texture = SDL_UpdateYUVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : Int, uplane : UInt8*, upitch : Int, vplane : UInt8*, vpitch : Int) : Bool
    # fun updatenv_texture = SDL_UpdateNVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : Int, u_vplane : UInt8*, u_vpitch : Int) : Bool

    # https://wiki.libsdl.org/SDL3/SDL_LockTexture
    def unsafe_lock(rect : LibSdl3::Rect? = nil) : Tuple(Pointer(Void), Int32)
      r = rect.try { |r| pointerof(r) } || Pointer(Rect).null
      locked = LibSdl3.lock_texture(self, r, out pixels_pointer, out pitch)
      Sdl3.raise_error unless locked
      {pixels_pointer, pitch}
    end

    # https://wiki.libsdl.org/SDL3/SDL_LockTexture
    def lock(rect : Rect? = nil) : Tuple(Slice(UInt8), Int32)
      r = rect.try { |r| pointerof(r) } || Pointer(Rect).null
      locked = LibSdl3.lock_texture(self, r, out pixels_pointer, out pitch)
      Sdl3.raise_error unless locked
      h = rect.try { |r| r.h } || size.last
      {Slice.new(pixels_pointer.as(UInt8*), h.to_i32 * pitch), pitch}
    end

    # https://wiki.libsdl.org/SDL3/SDL_UnlockTexture
    def unlock
      LibSdl3.unlock_texture(self)
    end

    # https://wiki.libsdl.org/SDL3/SDL_LockTexture
    def unsafe_lock(rect : Rect? = nil, & : Pointer(Void), Int32 ->)
      yield(*unsafe_lock(rect))
    ensure
      unlock
    end

    # https://wiki.libsdl.org/SDL3/SDL_LockTexture
    def lock(rect : Rect? = nil, & : Slice(UInt8), Int32 ->)
      yield(*lock(rect))
    ensure
      unlock
    end

    # https://wiki.libsdl.org/SDL3/SDL_LockTextureToSurface
    def lock_to_surface(rect : Rect?, surface : Surface)
      r = rect.try { |r| pointerof(r) } || Pointer(Rect).null
      LibSdl3.lock_texture_to_surface(self, r, surface)
    end
  end
end
