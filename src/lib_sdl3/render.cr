lib LibSdl3
  struct Vertex
    position : FPoint
    color : FColor
    tex_coord : FPoint
  end

  enum TextureAccess
    Static # SDL_TEXTUREACCESS_STATIC
    Streaming # SDL_TEXTUREACCESS_STREAMING
    Target # SDL_TEXTUREACCESS_TARGET
  end

  enum TextureAddressMode
    Invalid = -1 # SDL_TEXTURE_ADDRESS_INVALID
    Auto # SDL_TEXTURE_ADDRESS_AUTO
    Clamp # SDL_TEXTURE_ADDRESS_CLAMP
    Wrap # SDL_TEXTURE_ADDRESS_WRAP
  end

  enum RendererLogicalPresentation
    Disabled # SDL_LOGICAL_PRESENTATION_DISABLED
    Stretch # SDL_LOGICAL_PRESENTATION_STRETCH
    Letterbox # SDL_LOGICAL_PRESENTATION_LETTERBOX
    Overscan # SDL_LOGICAL_PRESENTATION_OVERSCAN
    IntegerScale # SDL_LOGICAL_PRESENTATION_INTEGER_SCALE
  end

  type Renderer = Void # typedef struct SDL_Renderer SDL_Renderer;

  struct Texture
    format : PixelFormat
    w : Int
    h : Int
    refcount : Int
  end

  # extern SDL_DECLSPEC int SDLCALL SDL_GetNumRenderDrivers(void);
  fun get_num_render_drivers = SDL_GetNumRenderDrivers : Int
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetRenderDriver(int index);
  fun get_render_driver = SDL_GetRenderDriver(index : Int) : Char*
  # extern SDL_DECLSPEC bool SDLCALL SDL_CreateWindowAndRenderer(const char *title, int width, int height, SDL_WindowFlags window_flags, SDL_Window **window, SDL_Renderer **renderer);
  fun create_window_and_renderer = SDL_CreateWindowAndRenderer(title : Char*, width : Int, height : Int, window_flags : WindowFlags, window : Window*, renderer : Renderer*) : Bool
  # extern SDL_DECLSPEC SDL_Renderer * SDLCALL SDL_CreateRenderer(SDL_Window *window, const char *name);
  fun create_renderer = SDL_CreateRenderer(window : Window*, name : Char*) : Renderer*
  # extern SDL_DECLSPEC SDL_Renderer * SDLCALL SDL_CreateRendererWithProperties(SDL_PropertiesID props);
  fun create_renderer_with_properties = SDL_CreateRendererWithProperties(props : PropertiesID) : Renderer*
  # extern SDL_DECLSPEC SDL_Renderer * SDLCALL SDL_CreateGPURenderer(SDL_GPUDevice *device, SDL_Window *window);
  fun creategpu_renderer = SDL_CreateGPURenderer(device : GPUDevice*, window : Window*) : Renderer*
  # extern SDL_DECLSPEC SDL_GPUDevice * SDLCALL SDL_GetGPURendererDevice(SDL_Renderer *renderer);
  fun getgpu_renderer_device = SDL_GetGPURendererDevice(renderer : Renderer*) : GPUDevice*
  # extern SDL_DECLSPEC SDL_Renderer * SDLCALL SDL_CreateSoftwareRenderer(SDL_Surface *surface);
  fun create_software_renderer = SDL_CreateSoftwareRenderer(surface : Surface*) : Renderer*
  # extern SDL_DECLSPEC SDL_Renderer * SDLCALL SDL_GetRenderer(SDL_Window *window);
  fun get_renderer = SDL_GetRenderer(window : Window*) : Renderer*
  # extern SDL_DECLSPEC SDL_Window * SDLCALL SDL_GetRenderWindow(SDL_Renderer *renderer);
  fun get_render_window = SDL_GetRenderWindow(renderer : Renderer*) : Window*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetRendererName(SDL_Renderer *renderer);
  fun get_renderer_name = SDL_GetRendererName(renderer : Renderer*) : Char*
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetRendererProperties(SDL_Renderer *renderer);
  fun get_renderer_properties = SDL_GetRendererProperties(renderer : Renderer*) : PropertiesID
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderOutputSize(SDL_Renderer *renderer, int *w, int *h);
  fun get_render_output_size = SDL_GetRenderOutputSize(renderer : Renderer*, w : Int*, h : Int*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetCurrentRenderOutputSize(SDL_Renderer *renderer, int *w, int *h);
  fun get_current_render_output_size = SDL_GetCurrentRenderOutputSize(renderer : Renderer*, w : Int*, h : Int*) : Bool
  # extern SDL_DECLSPEC SDL_Texture * SDLCALL SDL_CreateTexture(SDL_Renderer *renderer, SDL_PixelFormat format, SDL_TextureAccess access, int w, int h);
  fun create_texture = SDL_CreateTexture(renderer : Renderer*, format : PixelFormat, access : TextureAccess, w : Int, h : Int) : Texture*
  # extern SDL_DECLSPEC SDL_Texture * SDLCALL SDL_CreateTextureFromSurface(SDL_Renderer *renderer, SDL_Surface *surface);
  fun create_texture_from_surface = SDL_CreateTextureFromSurface(renderer : Renderer*, surface : Surface*) : Texture*
  # extern SDL_DECLSPEC SDL_Texture * SDLCALL SDL_CreateTextureWithProperties(SDL_Renderer *renderer, SDL_PropertiesID props);
  fun create_texture_with_properties = SDL_CreateTextureWithProperties(renderer : Renderer*, props : PropertiesID) : Texture*
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetTextureProperties(SDL_Texture *texture);
  fun get_texture_properties = SDL_GetTextureProperties(texture : Texture*) : PropertiesID
  # extern SDL_DECLSPEC SDL_Renderer * SDLCALL SDL_GetRendererFromTexture(SDL_Texture *texture);
  fun get_renderer_from_texture = SDL_GetRendererFromTexture(texture : Texture*) : Renderer*
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetTextureSize(SDL_Texture *texture, float *w, float *h);
  fun get_texture_size = SDL_GetTextureSize(texture : Texture*, w : Float32*, h : Float32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetTexturePalette(SDL_Texture *texture, SDL_Palette *palette);
  fun set_texture_palette = SDL_SetTexturePalette(texture : Texture*, palette : Palette*) : Bool
  # extern SDL_DECLSPEC SDL_Palette * SDLCALL SDL_GetTexturePalette(SDL_Texture *texture);
  fun get_texture_palette = SDL_GetTexturePalette(texture : Texture*) : Palette*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetTextureColorMod(SDL_Texture *texture, Uint8 r, Uint8 g, Uint8 b);
  fun set_texture_color_mod = SDL_SetTextureColorMod(texture : Texture*, r : UInt8, g : UInt8, b : UInt8) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetTextureColorModFloat(SDL_Texture *texture, float r, float g, float b);
  fun set_texture_color_mod_float = SDL_SetTextureColorModFloat(texture : Texture*, r : Float32, g : Float32, b : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetTextureColorMod(SDL_Texture *texture, Uint8 *r, Uint8 *g, Uint8 *b);
  fun get_texture_color_mod = SDL_GetTextureColorMod(texture : Texture*, r : UInt8*, g : UInt8*, b : UInt8*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetTextureColorModFloat(SDL_Texture *texture, float *r, float *g, float *b);
  fun get_texture_color_mod_float = SDL_GetTextureColorModFloat(texture : Texture*, r : Float32*, g : Float32*, b : Float32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetTextureAlphaMod(SDL_Texture *texture, Uint8 alpha);
  fun set_texture_alpha_mod = SDL_SetTextureAlphaMod(texture : Texture*, alpha : UInt8) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetTextureAlphaModFloat(SDL_Texture *texture, float alpha);
  fun set_texture_alpha_mod_float = SDL_SetTextureAlphaModFloat(texture : Texture*, alpha : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetTextureAlphaMod(SDL_Texture *texture, Uint8 *alpha);
  fun get_texture_alpha_mod = SDL_GetTextureAlphaMod(texture : Texture*, alpha : UInt8*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetTextureAlphaModFloat(SDL_Texture *texture, float *alpha);
  fun get_texture_alpha_mod_float = SDL_GetTextureAlphaModFloat(texture : Texture*, alpha : Float32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetTextureBlendMode(SDL_Texture *texture, SDL_BlendMode blendMode);
  fun set_texture_blend_mode = SDL_SetTextureBlendMode(texture : Texture*, blend_mode : BlendMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetTextureBlendMode(SDL_Texture *texture, SDL_BlendMode *blendMode);
  fun get_texture_blend_mode = SDL_GetTextureBlendMode(texture : Texture*, blend_mode : BlendMode*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetTextureScaleMode(SDL_Texture *texture, SDL_ScaleMode scaleMode);
  fun set_texture_scale_mode = SDL_SetTextureScaleMode(texture : Texture*, scale_mode : ScaleMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetTextureScaleMode(SDL_Texture *texture, SDL_ScaleMode *scaleMode);
  fun get_texture_scale_mode = SDL_GetTextureScaleMode(texture : Texture*, scale_mode : ScaleMode*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_UpdateTexture(SDL_Texture *texture, const SDL_Rect *rect, const void *pixels, int pitch);
  fun update_texture = SDL_UpdateTexture(texture : Texture*, rect : Rect*, pixels : Void*, pitch : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_UpdateYUVTexture(SDL_Texture *texture, const SDL_Rect *rect, const Uint8 *Yplane, int Ypitch, const Uint8 *Uplane, int Upitch, const Uint8 *Vplane, int Vpitch);
  fun updateyuv_texture = SDL_UpdateYUVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : Int, uplane : UInt8*, upitch : Int, vplane : UInt8*, vpitch : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_UpdateNVTexture(SDL_Texture *texture, const SDL_Rect *rect, const Uint8 *Yplane, int Ypitch, const Uint8 *UVplane, int UVpitch);
  fun updatenv_texture = SDL_UpdateNVTexture(texture : Texture*, rect : Rect*, yplane : UInt8*, ypitch : Int, u_vplane : UInt8*, u_vpitch : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_LockTexture(SDL_Texture *texture, const SDL_Rect *rect, void **pixels, int *pitch);
  fun lock_texture = SDL_LockTexture(texture : Texture*, rect : Rect*, pixels : Void*, pitch : Int*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_LockTextureToSurface(SDL_Texture *texture, const SDL_Rect *rect, SDL_Surface **surface);
  fun lock_texture_to_surface = SDL_LockTextureToSurface(texture : Texture*, rect : Rect*, surface : Surface*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_UnlockTexture(SDL_Texture *texture);
  fun unlock_texture = SDL_UnlockTexture(texture : Texture*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRenderTarget(SDL_Renderer *renderer, SDL_Texture *texture);
  fun set_render_target = SDL_SetRenderTarget(renderer : Renderer*, texture : Texture*) : Bool
  # extern SDL_DECLSPEC SDL_Texture * SDLCALL SDL_GetRenderTarget(SDL_Renderer *renderer);
  fun get_render_target = SDL_GetRenderTarget(renderer : Renderer*) : Texture*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRenderLogicalPresentation(SDL_Renderer *renderer, int w, int h, SDL_RendererLogicalPresentation mode);
  fun set_render_logical_presentation = SDL_SetRenderLogicalPresentation(renderer : Renderer*, w : Int, h : Int, mode : RendererLogicalPresentation) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderLogicalPresentation(SDL_Renderer *renderer, int *w, int *h, SDL_RendererLogicalPresentation *mode);
  fun get_render_logical_presentation = SDL_GetRenderLogicalPresentation(renderer : Renderer*, w : Int*, h : Int*, mode : RendererLogicalPresentation*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderLogicalPresentationRect(SDL_Renderer *renderer, SDL_FRect *rect);
  fun get_render_logical_presentation_rect = SDL_GetRenderLogicalPresentationRect(renderer : Renderer*, rect : FRect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderCoordinatesFromWindow(SDL_Renderer *renderer, float window_x, float window_y, float *x, float *y);
  fun render_coordinates_from_window = SDL_RenderCoordinatesFromWindow(renderer : Renderer*, window_x : Float32, window_y : Float32, x : Float32*, y : Float32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderCoordinatesToWindow(SDL_Renderer *renderer, float x, float y, float *window_x, float *window_y);
  fun render_coordinates_to_window = SDL_RenderCoordinatesToWindow(renderer : Renderer*, x : Float32, y : Float32, window_x : Float32*, window_y : Float32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ConvertEventToRenderCoordinates(SDL_Renderer *renderer, SDL_Event *event);
  fun convert_event_to_render_coordinates = SDL_ConvertEventToRenderCoordinates(renderer : Renderer*, event : Event*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRenderViewport(SDL_Renderer *renderer, const SDL_Rect *rect);
  fun set_render_viewport = SDL_SetRenderViewport(renderer : Renderer*, rect : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderViewport(SDL_Renderer *renderer, SDL_Rect *rect);
  fun get_render_viewport = SDL_GetRenderViewport(renderer : Renderer*, rect : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderViewportSet(SDL_Renderer *renderer);
  fun render_viewport_set = SDL_RenderViewportSet(renderer : Renderer*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderSafeArea(SDL_Renderer *renderer, SDL_Rect *rect);
  fun get_render_safe_area = SDL_GetRenderSafeArea(renderer : Renderer*, rect : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRenderClipRect(SDL_Renderer *renderer, const SDL_Rect *rect);
  fun set_render_clip_rect = SDL_SetRenderClipRect(renderer : Renderer*, rect : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderClipRect(SDL_Renderer *renderer, SDL_Rect *rect);
  fun get_render_clip_rect = SDL_GetRenderClipRect(renderer : Renderer*, rect : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderClipEnabled(SDL_Renderer *renderer);
  fun render_clip_enabled = SDL_RenderClipEnabled(renderer : Renderer*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRenderScale(SDL_Renderer *renderer, float scaleX, float scaleY);
  fun set_render_scale = SDL_SetRenderScale(renderer : Renderer*, scalex : Float32, scaley : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderScale(SDL_Renderer *renderer, float *scaleX, float *scaleY);
  fun get_render_scale = SDL_GetRenderScale(renderer : Renderer*, scalex : Float32*, scaley : Float32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRenderDrawColor(SDL_Renderer *renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
  fun set_render_draw_color = SDL_SetRenderDrawColor(renderer : Renderer*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRenderDrawColorFloat(SDL_Renderer *renderer, float r, float g, float b, float a);
  fun set_render_draw_color_float = SDL_SetRenderDrawColorFloat(renderer : Renderer*, r : Float32, g : Float32, b : Float32, a : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderDrawColor(SDL_Renderer *renderer, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);
  fun get_render_draw_color = SDL_GetRenderDrawColor(renderer : Renderer*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderDrawColorFloat(SDL_Renderer *renderer, float *r, float *g, float *b, float *a);
  fun get_render_draw_color_float = SDL_GetRenderDrawColorFloat(renderer : Renderer*, r : Float32*, g : Float32*, b : Float32*, a : Float32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRenderColorScale(SDL_Renderer *renderer, float scale);
  fun set_render_color_scale = SDL_SetRenderColorScale(renderer : Renderer*, scale : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderColorScale(SDL_Renderer *renderer, float *scale);
  fun get_render_color_scale = SDL_GetRenderColorScale(renderer : Renderer*, scale : Float32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRenderDrawBlendMode(SDL_Renderer *renderer, SDL_BlendMode blendMode);
  fun set_render_draw_blend_mode = SDL_SetRenderDrawBlendMode(renderer : Renderer*, blend_mode : BlendMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderDrawBlendMode(SDL_Renderer *renderer, SDL_BlendMode *blendMode);
  fun get_render_draw_blend_mode = SDL_GetRenderDrawBlendMode(renderer : Renderer*, blend_mode : BlendMode*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderClear(SDL_Renderer *renderer);
  fun render_clear = SDL_RenderClear(renderer : Renderer*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderPoint(SDL_Renderer *renderer, float x, float y);
  fun render_point = SDL_RenderPoint(renderer : Renderer*, x : Float32, y : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderPoints(SDL_Renderer *renderer, const SDL_FPoint *points, int count);
  fun render_points = SDL_RenderPoints(renderer : Renderer*, points : FPoint*, count : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderLine(SDL_Renderer *renderer, float x1, float y1, float x2, float y2);
  fun render_line = SDL_RenderLine(renderer : Renderer*, x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderLines(SDL_Renderer *renderer, const SDL_FPoint *points, int count);
  fun render_lines = SDL_RenderLines(renderer : Renderer*, points : FPoint*, count : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderRect(SDL_Renderer *renderer, const SDL_FRect *rect);
  fun render_rect = SDL_RenderRect(renderer : Renderer*, rect : FRect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderRects(SDL_Renderer *renderer, const SDL_FRect *rects, int count);
  fun render_rects = SDL_RenderRects(renderer : Renderer*, rects : FRect*, count : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderFillRect(SDL_Renderer *renderer, const SDL_FRect *rect);
  fun render_fill_rect = SDL_RenderFillRect(renderer : Renderer*, rect : FRect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderFillRects(SDL_Renderer *renderer, const SDL_FRect *rects, int count);
  fun render_fill_rects = SDL_RenderFillRects(renderer : Renderer*, rects : FRect*, count : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderTexture(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, const SDL_FRect *dstrect);
  fun render_texture = SDL_RenderTexture(renderer : Renderer*, texture : Texture*, srcrect : FRect*, dstrect : FRect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderTextureRotated(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, const SDL_FRect *dstrect, double angle, const SDL_FPoint *center, SDL_FlipMode flip);
  fun render_texture_rotated = SDL_RenderTextureRotated(renderer : Renderer*, texture : Texture*, srcrect : FRect*, dstrect : FRect*, angle : Float64, center : FPoint*, flip : FlipMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderTextureAffine(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, const SDL_FPoint *origin, const SDL_FPoint *right, const SDL_FPoint *down);
  fun render_texture_affine = SDL_RenderTextureAffine(renderer : Renderer*, texture : Texture*, srcrect : FRect*, origin : FPoint*, right : FPoint*, down : FPoint*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderTextureTiled(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float scale, const SDL_FRect *dstrect);
  fun render_texture_tiled = SDL_RenderTextureTiled(renderer : Renderer*, texture : Texture*, srcrect : FRect*, scale : Float32, dstrect : FRect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderTexture9Grid(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const SDL_FRect *dstrect);
  fun render_texture_9_grid = SDL_RenderTexture9Grid(renderer : Renderer*, texture : Texture*, srcrect : FRect*, left_width : Float32, right_width : Float32, top_height : Float32, bottom_height : Float32, scale : Float32, dstrect : FRect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderTexture9GridTiled(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const SDL_FRect *dstrect, float tileScale);
  fun render_texture_9_grid_tiled = SDL_RenderTexture9GridTiled(renderer : Renderer*, texture : Texture*, srcrect : FRect*, left_width : Float32, right_width : Float32, top_height : Float32, bottom_height : Float32, scale : Float32, dstrect : FRect*, tile_scale : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderGeometry(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_Vertex *vertices, int num_vertices, const int *indices, int num_indices);
  fun render_geometry = SDL_RenderGeometry(renderer : Renderer*, texture : Texture*, vertices : Vertex*, num_vertices : Int, indices : Int*, num_indices : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderGeometryRaw(SDL_Renderer *renderer, SDL_Texture *texture, const float *xy, int xy_stride, const SDL_FColor *color, int color_stride, const float *uv, int uv_stride, int num_vertices, const void *indices, int num_indices, int size_indices);
  fun render_geometry_raw = SDL_RenderGeometryRaw(renderer : Renderer*, texture : Texture*, xy : Float32*, xy_stride : Int, color : FColor*, color_stride : Int, uv : Float32*, uv_stride : Int, num_vertices : Int, indices : Void*, num_indices : Int, size_indices : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRenderTextureAddressMode(SDL_Renderer *renderer, SDL_TextureAddressMode u_mode, SDL_TextureAddressMode v_mode);
  fun set_render_texture_address_mode = SDL_SetRenderTextureAddressMode(renderer : Renderer*, u_mode : TextureAddressMode, v_mode : TextureAddressMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderTextureAddressMode(SDL_Renderer *renderer, SDL_TextureAddressMode *u_mode, SDL_TextureAddressMode *v_mode);
  fun get_render_texture_address_mode = SDL_GetRenderTextureAddressMode(renderer : Renderer*, u_mode : TextureAddressMode*, v_mode : TextureAddressMode*) : Bool
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_RenderReadPixels(SDL_Renderer *renderer, const SDL_Rect *rect);
  fun render_read_pixels = SDL_RenderReadPixels(renderer : Renderer*, rect : Rect*) : Surface*
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderPresent(SDL_Renderer *renderer);
  fun render_present = SDL_RenderPresent(renderer : Renderer*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyTexture(SDL_Texture *texture);
  fun destroy_texture = SDL_DestroyTexture(texture : Texture*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyRenderer(SDL_Renderer *renderer);
  fun destroy_renderer = SDL_DestroyRenderer(renderer : Renderer*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_FlushRenderer(SDL_Renderer *renderer);
  fun flush_renderer = SDL_FlushRenderer(renderer : Renderer*) : Bool
  # extern SDL_DECLSPEC void * SDLCALL SDL_GetRenderMetalLayer(SDL_Renderer *renderer);
  fun get_render_metal_layer = SDL_GetRenderMetalLayer(renderer : Renderer*) : Void*
  # extern SDL_DECLSPEC void * SDLCALL SDL_GetRenderMetalCommandEncoder(SDL_Renderer *renderer);
  fun get_render_metal_command_encoder = SDL_GetRenderMetalCommandEncoder(renderer : Renderer*) : Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_AddVulkanRenderSemaphores(SDL_Renderer *renderer, Uint32 wait_stage_mask, Sint64 wait_semaphore, Sint64 signal_semaphore);
  fun add_vulkan_render_semaphores = SDL_AddVulkanRenderSemaphores(renderer : Renderer*, wait_stage_mask : UInt32, wait_semaphore : Int64, signal_semaphore : Int64) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRenderVSync(SDL_Renderer *renderer, int vsync);
  fun set_render_v_sync = SDL_SetRenderVSync(renderer : Renderer*, vsync : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRenderVSync(SDL_Renderer *renderer, int *vsync);
  fun get_render_v_sync = SDL_GetRenderVSync(renderer : Renderer*, vsync : Int*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderDebugText(SDL_Renderer *renderer, float x, float y, const char *str);
  fun render_debug_text = SDL_RenderDebugText(renderer : Renderer*, x : Float32, y : Float32, str : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenderDebugTextFormat(SDL_Renderer *renderer, float x, float y, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(4);
  fun render_debug_text_format = SDL_RenderDebugTextFormat(renderer : Renderer*, x : Float32, y : Float32, fmt : Char*, ...) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetDefaultTextureScaleMode(SDL_Renderer *renderer, SDL_ScaleMode scale_mode);
  fun set_default_texture_scale_mode = SDL_SetDefaultTextureScaleMode(renderer : Renderer*, scale_mode : ScaleMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetDefaultTextureScaleMode(SDL_Renderer *renderer, SDL_ScaleMode *scale_mode);
  fun get_default_texture_scale_mode = SDL_GetDefaultTextureScaleMode(renderer : Renderer*, scale_mode : ScaleMode*) : Bool

  struct GPURenderStateCreateInfo
    fragment_shader : GPUShader*
    num_sampler_bindings : Int32
    sampler_bindings : GPUTextureSamplerBinding*
    num_storage_textures : Int32
    storage_textures : GPUTexture**
    num_storage_buffers : Int32
    storage_buffers : GPUBuffer**
    props : PropertiesID
  end

  type GPURenderState = Void # typedef struct SDL_GPURenderState SDL_GPURenderState;
  # extern SDL_DECLSPEC SDL_GPURenderState * SDLCALL SDL_CreateGPURenderState(SDL_Renderer *renderer, SDL_GPURenderStateCreateInfo *createinfo);
  fun creategpu_render_state = SDL_CreateGPURenderState(renderer : Renderer*, createinfo : GPURenderStateCreateInfo*) : GPURenderState*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetGPURenderStateFragmentUniforms(SDL_GPURenderState *state, Uint32 slot_index, const void *data, Uint32 length);
  fun setgpu_render_state_fragment_uniforms = SDL_SetGPURenderStateFragmentUniforms(state : GPURenderState*, slot_index : UInt32, data : Void*, length : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetGPURenderState(SDL_Renderer *renderer, SDL_GPURenderState *state);
  fun setgpu_render_state = SDL_SetGPURenderState(renderer : Renderer*, state : GPURenderState*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyGPURenderState(SDL_GPURenderState *state);
  fun destroygpu_render_state = SDL_DestroyGPURenderState(state : GPURenderState*) : Void
end
