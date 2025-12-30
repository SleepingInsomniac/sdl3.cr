module Sdl3
  class Texture < SdlObject(LibSdl3::Texture*)
    alias Access = LibSdl3::TextureAccess

    def initialize(@pointer, @owned = true)
    end

    def initialize(renderer : Renderer, format : LibSdl3::PixelFormat, access : Access, width : Int32, height : Int32)
      @pointer = LibSdl3.create_texture(renderer, format, access, width, height)
    end

    def initialize(renderer : Renderer, surface : Surface)
      @pointer = LibSdl3.create_texture_from_surface(renderer, surface)
    end

    def sdl_finalize
      LibSdl3.destroy_texture(self)
    end

    def properties
      @properties ||= Properties.new(LibSdl3.get_texture_properties(@pointer))
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
    # fun set_texture_blend_mode = SDL_SetTextureBlendMode(texture : Texture*, blend_mode : BlendMode) : Bool
    # fun get_texture_blend_mode = SDL_GetTextureBlendMode(texture : Texture*, blend_mode : BlendMode*) : Bool

    # fun set_texture_scale_mode = SDL_SetTextureScaleMode(texture : Texture*, scale_mode : ScaleMode) : Bool
    def scale_mode=(scale_mode : Sdl3::ScaleMode)
      result = LibSdl3.set_texture_scale_mode(self, scale_mode)
      Sdl3.raise_error unless result
    end

    # fun get_texture_scale_mode = SDL_GetTextureScaleMode(texture : Texture*, scale_mode : ScaleMode*) : Bool
    def scale_mode
      result = LibSdl3.get_texture_scale_mode(self)
      Sdl3.raise_error unless result
    end

    def update(rect : LibSdl3::Rect*?, pixels, pitch)
      updated = LibSdl3.update_texture(self, rect, pixels, pitch)
      Sdl3.raise_error unless updated
    end

    # fun updateyuv_texture = SDL_UpdateYUVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : Int, uplane : UInt8*, upitch : Int, vplane : UInt8*, vpitch : Int) : Bool
    # fun updatenv_texture = SDL_UpdateNVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : Int, u_vplane : UInt8*, u_vpitch : Int) : Bool

    def lock(rect : LibSdl3::Rect*? = nil) : Tuple(Slice(UInt8), Int32)
      width, height = self.size
      locked = LibSdl3.lock_texture(self, rect, out pixels_pointer, out pitch)
      Sdl3.raise_error unless locked
      {Slice.new(pixels_pointer.as(UInt8*), height.to_i32 * pitch), pitch}
    end

    def unlock
      LibSdl3.unlock_texture(self)
    end

    def lock(rect : LibSdl3::Rect*? = nil, & : Slice(UInt8), Int32 ->)
      pixels, pitch = lock(rect)
      yield(pixels, pitch)
      unlock
    end

    def lock_to_surface(rect : LibSdl3::Rect*?, surface : Surface)
      LibSdl3.lock_texture_to_surface(self, rect, surface)
    end
  end
end
