lib LibSdl3
  @[Flags]
  enum SurfaceFlags : UInt32
    Preallocated  = 0x00000001u32 #< Surface uses preallocated pixel memory
    LockNeeded    = 0x00000002u32 #< Surface needs to be locked to access pixels
    Locked        = 0x00000004u32 #< Surface is currently locked
    SimdAligned   = 0x00000008u32 #< Surface uses pixel memory allocated with SDL_aligned_alloc()
  end

  enum ScaleMode
    Invalid = -1 # SDL_SCALEMODE_INVALID
    Nearest # SDL_SCALEMODE_NEAREST
    Linear # SDL_SCALEMODE_LINEAR
    Pixelart # SDL_SCALEMODE_PIXELART
  end

  enum FlipMode
    None # SDL_FLIP_NONE
    Horizontal # SDL_FLIP_HORIZONTAL
    Vertical # SDL_FLIP_VERTICAL
    HorizontalAndVertical = (Horizontal | Vertical) # SDL_FLIP_HORIZONTAL_AND_VERTICAL
  end

  struct Surface
    flags : SurfaceFlags
    format : PixelFormat
    w : Int
    h : Int
    pitch : Int
    pixels : Void*
    refcount : Int
    reserved : Void*
  end

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_CreateSurface(int width, int height, SDL_PixelFormat format);
  fun create_surface = SDL_CreateSurface(width : Int, height : Int, format : PixelFormat) : Surface*
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_CreateSurfaceFrom(int width, int height, SDL_PixelFormat format, void *pixels, int pitch);
  fun create_surface_from = SDL_CreateSurfaceFrom(width : Int, height : Int, format : PixelFormat, pixels : Void*, pitch : Int) : Surface*
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroySurface(SDL_Surface *surface);
  fun destroy_surface = SDL_DestroySurface(surface : Surface*) : Void
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetSurfaceProperties(SDL_Surface *surface);
  fun get_surface_properties = SDL_GetSurfaceProperties(surface : Surface*) : PropertiesID
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetSurfaceColorspace(SDL_Surface *surface, SDL_Colorspace colorspace);
  fun set_surface_colorspace = SDL_SetSurfaceColorspace(surface : Surface*, colorspace : Colorspace) : Bool
  # extern SDL_DECLSPEC SDL_Colorspace SDLCALL SDL_GetSurfaceColorspace(SDL_Surface *surface);
  fun get_surface_colorspace = SDL_GetSurfaceColorspace(surface : Surface*) : Colorspace
  # extern SDL_DECLSPEC SDL_Palette * SDLCALL SDL_CreateSurfacePalette(SDL_Surface *surface);
  fun create_surface_palette = SDL_CreateSurfacePalette(surface : Surface*) : Palette*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetSurfacePalette(SDL_Surface *surface, SDL_Palette *palette);
  fun set_surface_palette = SDL_SetSurfacePalette(surface : Surface*, palette : Palette*) : Bool
  # extern SDL_DECLSPEC SDL_Palette * SDLCALL SDL_GetSurfacePalette(SDL_Surface *surface);
  fun get_surface_palette = SDL_GetSurfacePalette(surface : Surface*) : Palette*
  # extern SDL_DECLSPEC bool SDLCALL SDL_AddSurfaceAlternateImage(SDL_Surface *surface, SDL_Surface *image);
  fun add_surface_alternate_image = SDL_AddSurfaceAlternateImage(surface : Surface*, image : Surface*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SurfaceHasAlternateImages(SDL_Surface *surface);
  fun surface_has_alternate_images = SDL_SurfaceHasAlternateImages(surface : Surface*) : Bool
  # extern SDL_DECLSPEC SDL_Surface ** SDLCALL SDL_GetSurfaceImages(SDL_Surface *surface, int *count);
  fun get_surface_images = SDL_GetSurfaceImages(surface : Surface*, count : Int*) : Surface**
  # extern SDL_DECLSPEC void SDLCALL SDL_RemoveSurfaceAlternateImages(SDL_Surface *surface);
  fun remove_surface_alternate_images = SDL_RemoveSurfaceAlternateImages(surface : Surface*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_LockSurface(SDL_Surface *surface);
  fun lock_surface = SDL_LockSurface(surface : Surface*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_UnlockSurface(SDL_Surface *surface);
  fun unlock_surface = SDL_UnlockSurface(surface : Surface*) : Void
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_LoadBMP_IO(SDL_IOStream *src, bool closeio);
  fun load_bmp_io = SDL_LoadBMP_IO(src : IOStream*, closeio : Bool) : Surface*
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_LoadBMP(const char *file);
  fun load_bmp = SDL_LoadBMP(file : Char*) : Surface*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SaveBMP_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
  fun save_bmp_io = SDL_SaveBMP_IO(surface : Surface*, dst : IOStream*, closeio : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SaveBMP(SDL_Surface *surface, const char *file);
  fun save_bmp = SDL_SaveBMP(surface : Surface*, file : Char*) : Bool
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_LoadPNG_IO(SDL_IOStream *src, bool closeio);
  fun load_png_io = SDL_LoadPNG_IO(src : IOStream*, closeio : Bool) : Surface*
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_LoadPNG(const char *file);
  fun load_png = SDL_LoadPNG(file : Char*) : Surface*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SavePNG_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
  fun save_png_io = SDL_SavePNG_IO(surface : Surface*, dst : IOStream*, closeio : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SavePNG(SDL_Surface *surface, const char *file);
  fun save_png = SDL_SavePNG(surface : Surface*, file : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetSurfaceRLE(SDL_Surface *surface, bool enabled);
  fun set_surface_rle = SDL_SetSurfaceRLE(surface : Surface*, enabled : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SurfaceHasRLE(SDL_Surface *surface);
  fun surface_has_rle = SDL_SurfaceHasRLE(surface : Surface*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetSurfaceColorKey(SDL_Surface *surface, bool enabled, Uint32 key);
  fun set_surface_color_key = SDL_SetSurfaceColorKey(surface : Surface*, enabled : Bool, key : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SurfaceHasColorKey(SDL_Surface *surface);
  fun surface_has_color_key = SDL_SurfaceHasColorKey(surface : Surface*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetSurfaceColorKey(SDL_Surface *surface, Uint32 *key);
  fun get_surface_color_key = SDL_GetSurfaceColorKey(surface : Surface*, key : UInt32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetSurfaceColorMod(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b);
  fun set_surface_color_mod = SDL_SetSurfaceColorMod(surface : Surface*, r : UInt8, g : UInt8, b : UInt8) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetSurfaceColorMod(SDL_Surface *surface, Uint8 *r, Uint8 *g, Uint8 *b);
  fun get_surface_color_mod = SDL_GetSurfaceColorMod(surface : Surface*, r : UInt8*, g : UInt8*, b : UInt8*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetSurfaceAlphaMod(SDL_Surface *surface, Uint8 alpha);
  fun set_surface_alpha_mod = SDL_SetSurfaceAlphaMod(surface : Surface*, alpha : UInt8) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetSurfaceAlphaMod(SDL_Surface *surface, Uint8 *alpha);
  fun get_surface_alpha_mod = SDL_GetSurfaceAlphaMod(surface : Surface*, alpha : UInt8*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetSurfaceBlendMode(SDL_Surface *surface, SDL_BlendMode blendMode);
  fun set_surface_blend_mode = SDL_SetSurfaceBlendMode(surface : Surface*, blendMode : BlendMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetSurfaceBlendMode(SDL_Surface *surface, SDL_BlendMode *blendMode);
  fun get_surface_blend_mode = SDL_GetSurfaceBlendMode(surface : Surface*, blendMode : BlendMode*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetSurfaceClipRect(SDL_Surface *surface, const SDL_Rect *rect);
  fun set_surface_clip_rect = SDL_SetSurfaceClipRect(surface : Surface*, rect : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetSurfaceClipRect(SDL_Surface *surface, SDL_Rect *rect);
  fun get_surface_clip_rect = SDL_GetSurfaceClipRect(surface : Surface*, rect : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_FlipSurface(SDL_Surface *surface, SDL_FlipMode flip);
  fun flip_surface = SDL_FlipSurface(surface : Surface*, flip : FlipMode) : Bool
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_RotateSurface(SDL_Surface *surface, float angle);
  fun rotate_surface = SDL_RotateSurface(surface : Surface*, angle : Float32) : Surface*
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_DuplicateSurface(SDL_Surface *surface);
  fun duplicate_surface = SDL_DuplicateSurface(surface : Surface*) : Surface*
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_ScaleSurface(SDL_Surface *surface, int width, int height, SDL_ScaleMode scaleMode);
  fun scale_surface = SDL_ScaleSurface(surface : Surface*, width : Int, height : Int, scaleMode : ScaleMode) : Surface*
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_ConvertSurface(SDL_Surface *surface, SDL_PixelFormat format);
  fun convert_surface = SDL_ConvertSurface(surface : Surface*, format : PixelFormat) : Surface*
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_ConvertSurfaceAndColorspace(SDL_Surface *surface, SDL_PixelFormat format, SDL_Palette *palette, SDL_Colorspace colorspace, SDL_PropertiesID props);
  fun convert_surface_and_colorspace = SDL_ConvertSurfaceAndColorspace(surface : Surface*, format : PixelFormat, palette : Palette*, colorspace : Colorspace, props : PropertiesID) : Surface*
  # extern SDL_DECLSPEC bool SDLCALL SDL_ConvertPixels(int width, int height, SDL_PixelFormat src_format, const void *src, int src_pitch, SDL_PixelFormat dst_format, void *dst, int dst_pitch);
  fun convert_pixels = SDL_ConvertPixels(width : Int, height : Int, src_format : PixelFormat, src : Void*, src_pitch : Int, dst_format : PixelFormat, dst : Void*, dst_pitch : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ConvertPixelsAndColorspace(int width, int height, SDL_PixelFormat src_format, SDL_Colorspace src_colorspace, SDL_PropertiesID src_properties, const void *src, int src_pitch, SDL_PixelFormat dst_format, SDL_Colorspace dst_colorspace, SDL_PropertiesID dst_properties, void *dst, int dst_pitch);
  fun convert_pixels_and_colorspace = SDL_ConvertPixelsAndColorspace(width : Int, height : Int, src_format : PixelFormat, src_colorspace : Colorspace, src_properties : PropertiesID, src : Void*, src_pitch : Int, dst_format : PixelFormat, dst_colorspace : Colorspace, dst_properties : PropertiesID, dst : Void*, dst_pitch : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_PremultiplyAlpha(int width, int height, SDL_PixelFormat src_format, const void *src, int src_pitch, SDL_PixelFormat dst_format, void *dst, int dst_pitch, bool linear);
  fun premultiply_alpha = SDL_PremultiplyAlpha(width : Int, height : Int, src_format : PixelFormat, src : Void*, src_pitch : Int, dst_format : PixelFormat, dst : Void*, dst_pitch : Int, linear : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_PremultiplySurfaceAlpha(SDL_Surface *surface, bool linear);
  fun premultiply_surface_alpha = SDL_PremultiplySurfaceAlpha(surface : Surface*, linear : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ClearSurface(SDL_Surface *surface, float r, float g, float b, float a);
  fun clear_surface = SDL_ClearSurface(surface : Surface*, r : Float32, g : Float32, b : Float32, a : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_FillSurfaceRect(SDL_Surface *dst, const SDL_Rect *rect, Uint32 color);
  fun fill_surface_rect = SDL_FillSurfaceRect(dst : Surface*, rect : Rect*, color : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_FillSurfaceRects(SDL_Surface *dst, const SDL_Rect *rects, int count, Uint32 color);
  fun fill_surface_rects = SDL_FillSurfaceRects(dst : Surface*, rects : Rect*, count : Int, color : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_BlitSurface(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
  fun blit_surface = SDL_BlitSurface(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_BlitSurfaceUnchecked(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
  fun blit_surface_unchecked = SDL_BlitSurfaceUnchecked(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_BlitSurfaceScaled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
  fun blit_surface_scaled = SDL_BlitSurfaceScaled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*, scaleMode : ScaleMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_BlitSurfaceUncheckedScaled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
  fun blit_surface_unchecked_scaled = SDL_BlitSurfaceUncheckedScaled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*, scaleMode : ScaleMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_StretchSurface(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
  fun stretch_surface = SDL_StretchSurface(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*, scaleMode : ScaleMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_BlitSurfaceTiled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
  fun blit_surface_tiled = SDL_BlitSurfaceTiled(src : Surface*, srcrect : Rect*, dst : Surface*, dstrect : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_BlitSurfaceTiledWithScale(SDL_Surface *src, const SDL_Rect *srcrect, float scale, SDL_ScaleMode scaleMode, SDL_Surface *dst, const SDL_Rect *dstrect);
  fun blit_surface_tiled_with_scale = SDL_BlitSurfaceTiledWithScale(src : Surface*, srcrect : Rect*, scale : Float32, scaleMode : ScaleMode, dst : Surface*, dstrect : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_BlitSurface9Grid(SDL_Surface *src, const SDL_Rect *srcrect, int left_width, int right_width, int top_height, int bottom_height, float scale, SDL_ScaleMode scaleMode, SDL_Surface *dst, const SDL_Rect *dstrect);
  fun blit_surface9_grid = SDL_BlitSurface9Grid(src : Surface*, srcrect : Rect*, left_width : Int, right_width : Int, top_height : Int, bottom_height : Int, scale : Float32, scaleMode : ScaleMode, dst : Surface*, dstrect : Rect*) : Bool
  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_MapSurfaceRGB(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b);
  fun map_surface_rgb = SDL_MapSurfaceRGB(surface : Surface*, r : UInt8, g : UInt8, b : UInt8) : UInt32
  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_MapSurfaceRGBA(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
  fun map_surface_rgba = SDL_MapSurfaceRGBA(surface : Surface*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : UInt32
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadSurfacePixel(SDL_Surface *surface, int x, int y, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);
  fun read_surface_pixel = SDL_ReadSurfacePixel(surface : Surface*, x : Int, y : Int, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadSurfacePixelFloat(SDL_Surface *surface, int x, int y, float *r, float *g, float *b, float *a);
  fun read_surface_pixel_float = SDL_ReadSurfacePixelFloat(surface : Surface*, x : Int, y : Int, r : Float32*, g : Float32*, b : Float32*, a : Float32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteSurfacePixel(SDL_Surface *surface, int x, int y, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
  fun write_surface_pixel = SDL_WriteSurfacePixel(surface : Surface*, x : Int, y : Int, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteSurfacePixelFloat(SDL_Surface *surface, int x, int y, float r, float g, float b, float a);
  fun write_surface_pixel_float = SDL_WriteSurfacePixelFloat(surface : Surface*, x : Int, y : Int, r : Float32, g : Float32, b : Float32, a : Float32) : Bool
end
