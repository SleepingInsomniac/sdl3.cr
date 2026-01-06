lib LibSdl3TTF
  # extern SDL_DECLSPEC int SDLCALL TTF_Version(void);
  fun version = TTF_Version : Int

  # extern SDL_DECLSPEC void SDLCALL TTF_GetFreeTypeVersion(int *major, int *minor, int *patch);
  fun get_free_type_version = TTF_GetFreeTypeVersion(major : Int*, minor : Int*, patch : Int*) : Void

  # extern SDL_DECLSPEC void SDLCALL TTF_GetHarfBuzzVersion(int *major, int *minor, int *patch);
  fun get_harf_buzz_version = TTF_GetHarfBuzzVersion(major : Int*, minor : Int*, patch : Int*) : Void

  alias Font = Void

  # extern SDL_DECLSPEC bool SDLCALL TTF_Init(void);
  fun init = TTF_Init : Bool

  # extern SDL_DECLSPEC TTF_Font * SDLCALL TTF_OpenFont(const char *file, float ptsize);
  fun open_font = TTF_OpenFont(file : Char*, ptsize : Float32) : Font*

  # extern SDL_DECLSPEC TTF_Font * SDLCALL TTF_OpenFontIO(SDL_IOStream *src, bool closeio, float ptsize);
  fun open_font_io = TTF_OpenFontIO(src : IOStream*, closeio : Bool, ptsize : Float32) : Font*

  # extern SDL_DECLSPEC TTF_Font * SDLCALL TTF_OpenFontWithProperties(SDL_PropertiesID props);
  fun open_font_with_properties = TTF_OpenFontWithProperties(props : PropertiesID) : Font*

  # extern SDL_DECLSPEC TTF_Font * SDLCALL TTF_CopyFont(TTF_Font *existing_font);
  fun copy_font = TTF_CopyFont(existing_font : Font*) : Font*

  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL TTF_GetFontProperties(TTF_Font *font);
  fun get_font_properties = TTF_GetFontProperties(font : Font*) : PropertiesID

  # extern SDL_DECLSPEC Uint32 SDLCALL TTF_GetFontGeneration(TTF_Font *font);
  fun get_font_generation = TTF_GetFontGeneration(font : Font*) : UInt32

  # extern SDL_DECLSPEC bool SDLCALL TTF_AddFallbackFont(TTF_Font *font, TTF_Font *fallback);
  fun add_fallback_font = TTF_AddFallbackFont(font : Font*, fallback : Font*) : Bool

  # extern SDL_DECLSPEC void SDLCALL TTF_RemoveFallbackFont(TTF_Font *font, TTF_Font *fallback);
  fun remove_fallback_font = TTF_RemoveFallbackFont(font : Font*, fallback : Font*) : Void

  # extern SDL_DECLSPEC void SDLCALL TTF_ClearFallbackFonts(TTF_Font *font);
  fun clear_fallback_fonts = TTF_ClearFallbackFonts(font : Font*) : Void

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetFontSize(TTF_Font *font, float ptsize);
  fun set_font_size = TTF_SetFontSize(font : Font*, ptsize : Float32) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetFontSizeDPI(TTF_Font *font, float ptsize, int hdpi, int vdpi);
  fun set_font_size_dpi = TTF_SetFontSizeDPI(font : Font*, ptsize : Float32, hdpi : Int, vdpi : Int) : Bool

  # extern SDL_DECLSPEC float SDLCALL TTF_GetFontSize(TTF_Font *font);
  fun get_font_size = TTF_GetFontSize(font : Font*) : Float32

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetFontDPI(TTF_Font *font, int *hdpi, int *vdpi);
  fun get_font_dpi = TTF_GetFontDPI(font : Font*, hdpi : Int*, vdpi : Int*) : Bool

  alias FontStyleFlags = UInt32
  STYLE_NORMAL        = 0x00u32 # No special style
  STYLE_BOLD          = 0x01u32 # Bold style
  STYLE_ITALIC        = 0x02u32 # Italic style
  STYLE_UNDERLINE     = 0x04u32 # Underlined
  STYLE_STRIKETHROUGH = 0x08u32 # Strikethrough

  # extern SDL_DECLSPEC void SDLCALL TTF_SetFontStyle(TTF_Font *font, TTF_FontStyleFlags style);
  fun set_font_style = TTF_SetFontStyle(font : Font*, style : FontStyleFlags) : Void

  # extern SDL_DECLSPEC TTF_FontStyleFlags SDLCALL TTF_GetFontStyle(const TTF_Font *font);
  fun get_font_style = TTF_GetFontStyle(font : Font*) : FontStyleFlags

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetFontOutline(TTF_Font *font, int outline);
  fun set_font_outline = TTF_SetFontOutline(font : Font*, outline : Int) : Bool

  # extern SDL_DECLSPEC int SDLCALL TTF_GetFontOutline(const TTF_Font *font);
  fun get_font_outline = TTF_GetFontOutline(font : Font*) : Int

  enum HintingFlags
    Invalid = -1
    Normal
    Light
    Mono
    None
    LightSubpixel
  end

  # extern SDL_DECLSPEC void SDLCALL TTF_SetFontHinting(TTF_Font *font, TTF_HintingFlags hinting);
  fun set_font_hinting = TTF_SetFontHinting(font : Font*, hinting : HintingFlags) : Void

  # extern SDL_DECLSPEC int SDLCALL TTF_GetNumFontFaces(const TTF_Font *font);
  fun get_num_font_faces = TTF_GetNumFontFaces(font : Font*) : Int

  # extern SDL_DECLSPEC TTF_HintingFlags SDLCALL TTF_GetFontHinting(const TTF_Font *font);
  fun get_font_hinting = TTF_GetFontHinting(font : Font*) : HintingFlags

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetFontSDF(TTF_Font *font, bool enabled);
  fun set_font_sdf = TTF_SetFontSDF(font : Font*, enabled : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetFontSDF(const TTF_Font *font);
  fun get_font_sdf = TTF_GetFontSDF(font : Font*) : Bool

  # extern SDL_DECLSPEC int SDLCALL TTF_GetFontWeight(const TTF_Font *font);
  fun get_font_weight = TTF_GetFontWeight(font : Font*) : Int

  enum HorizontalAlignment
    Invalid = -1
    Left
    Center
    Right
  end

  # extern SDL_DECLSPEC void SDLCALL TTF_SetFontWrapAlignment(TTF_Font *font, TTF_HorizontalAlignment align);
  fun set_font_wrap_alignment = TTF_SetFontWrapAlignment(font : Font*, align : HorizontalAlignment) : Void

  # extern SDL_DECLSPEC TTF_HorizontalAlignment SDLCALL TTF_GetFontWrapAlignment(const TTF_Font *font);
  fun get_font_wrap_alignment = TTF_GetFontWrapAlignment(font : Font*) : HorizontalAlignment

  # extern SDL_DECLSPEC int SDLCALL TTF_GetFontHeight(const TTF_Font *font);
  fun get_font_height = TTF_GetFontHeight(font : Font*) : Int

  # extern SDL_DECLSPEC int SDLCALL TTF_GetFontAscent(const TTF_Font *font);
  fun get_font_ascent = TTF_GetFontAscent(font : Font*) : Int

  # extern SDL_DECLSPEC int SDLCALL TTF_GetFontDescent(const TTF_Font *font);
  fun get_font_descent = TTF_GetFontDescent(font : Font*) : Int

  # extern SDL_DECLSPEC void SDLCALL TTF_SetFontLineSkip(TTF_Font *font, int lineskip);
  fun set_font_line_skip = TTF_SetFontLineSkip(font : Font*, lineskip : Int) : Void

  # extern SDL_DECLSPEC int SDLCALL TTF_GetFontLineSkip(const TTF_Font *font);
  fun get_font_line_skip = TTF_GetFontLineSkip(font : Font*) : Int

  # extern SDL_DECLSPEC void SDLCALL TTF_SetFontKerning(TTF_Font *font, bool enabled);
  fun set_font_kerning = TTF_SetFontKerning(font : Font*, enabled : Bool) : Void

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetFontKerning(const TTF_Font *font);
  fun get_font_kerning = TTF_GetFontKerning(font : Font*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_FontIsFixedWidth(const TTF_Font *font);
  fun font_is_fixed_width = TTF_FontIsFixedWidth(font : Font*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_FontIsScalable(const TTF_Font *font);
  fun font_is_scalable = TTF_FontIsScalable(font : Font*) : Bool

  # extern SDL_DECLSPEC const char * SDLCALL TTF_GetFontFamilyName(const TTF_Font *font);
  fun get_font_family_name = TTF_GetFontFamilyName(font : Font*) : Char*

  # extern SDL_DECLSPEC const char * SDLCALL TTF_GetFontStyleName(const TTF_Font *font);
  fun get_font_style_name = TTF_GetFontStyleName(font : Font*) : Char*

  enum Direction
    Invalid = 0
    LTR = 4
    RTL
    TTB
    BTT
  end

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetFontDirection(TTF_Font *font, TTF_Direction direction);
  fun set_font_direction = TTF_SetFontDirection(font : Font*, direction : Direction) : Bool

  # extern SDL_DECLSPEC TTF_Direction SDLCALL TTF_GetFontDirection(TTF_Font *font);
  fun get_font_direction = TTF_GetFontDirection(font : Font*) : Direction

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetFontCharSpacing(TTF_Font *font, int spacing);
  fun set_font_char_spacing = TTF_SetFontCharSpacing(font : Font*, spacing : Int) : Bool

  # extern SDL_DECLSPEC int SDLCALL TTF_GetFontCharSpacing(TTF_Font *font);
  fun get_font_char_spacing = TTF_GetFontCharSpacing(font : Font*) : Int

  # extern SDL_DECLSPEC Uint32 SDLCALL TTF_StringToTag(const char *string);
  fun string_to_tag = TTF_StringToTag(string : Char*) : UInt32

  # extern SDL_DECLSPEC void SDLCALL TTF_TagToString(Uint32 tag, char *string, size_t size);
  fun tag_to_string = TTF_TagToString(tag : UInt32, string : Char*, size : LibC::SizeT) : Void

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetFontScript(TTF_Font *font, Uint32 script);
  fun set_font_script = TTF_SetFontScript(font : Font*, script : UInt32) : Bool

  # extern SDL_DECLSPEC Uint32 SDLCALL TTF_GetFontScript(TTF_Font *font);
  fun get_font_script = TTF_GetFontScript(font : Font*) : UInt32

  # extern SDL_DECLSPEC Uint32 SDLCALL TTF_GetGlyphScript(Uint32 ch);
  fun get_glyph_script = TTF_GetGlyphScript(ch : UInt32) : UInt32

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetFontLanguage(TTF_Font *font, const char *language_bcp47);
  fun set_font_language = TTF_SetFontLanguage(font : Font*, language_bcp47 : Char*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_FontHasGlyph(TTF_Font *font, Uint32 ch);
  fun font_has_glyph = TTF_FontHasGlyph(font : Font*, ch : UInt32) : Bool

  enum ImageType
    Invalid
    Alpha
    Color
    Sdf
  end

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_GetGlyphImage(TTF_Font *font, Uint32 ch, TTF_ImageType *image_type);
  fun get_glyph_image = TTF_GetGlyphImage(font : Font*, ch : UInt32, image_type : ImageType*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_GetGlyphImageForIndex(TTF_Font *font, Uint32 glyph_index, TTF_ImageType *image_type);
  fun get_glyph_image_for_index = TTF_GetGlyphImageForIndex(font : Font*, glyph_index : UInt32, image_type : ImageType*) : Surface*

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetGlyphMetrics(TTF_Font *font, Uint32 ch, int *minx, int *maxx, int *miny, int *maxy, int *advance);
  fun get_glyph_metrics = TTF_GetGlyphMetrics(font : Font*, ch : UInt32, minx : Int*, maxx : Int*, miny : Int*, maxy : Int*, advance : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetGlyphKerning(TTF_Font *font, Uint32 previous_ch, Uint32 ch, int *kerning);
  fun get_glyph_kerning = TTF_GetGlyphKerning(font : Font*, previous_ch : UInt32, ch : UInt32, kerning : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetStringSize(TTF_Font *font, const char *text, size_t length, int *w, int *h);
  fun get_string_size = TTF_GetStringSize(font : Font*, text : Char*, length : LibC::SizeT, w : Int*, h : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetStringSizeWrapped(TTF_Font *font, const char *text, size_t length, int wrap_width, int *w, int *h);
  fun get_string_size_wrapped = TTF_GetStringSizeWrapped(font : Font*, text : Char*, length : LibC::SizeT, wrap_width : Int, w : Int*, h : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_MeasureString(TTF_Font *font, const char *text, size_t length, int max_width, int *measured_width, size_t *measured_length);
  fun measure_string = TTF_MeasureString(font : Font*, text : Char*, length : LibC::SizeT, max_width : Int, measured_width : Int*, measured_length : LibC::SizeT*) : Bool

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Solid(TTF_Font *font, const char *text, size_t length, SDL_Color fg);
  fun render_text_solid = TTF_RenderText_Solid(font : Font*, text : Char*, length : LibC::SizeT, fg : Color) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Solid_Wrapped(TTF_Font *font, const char *text, size_t length, SDL_Color fg, int wrapLength);
  fun render_text_solid_wrapped = TTF_RenderText_Solid_Wrapped(font : Font*, text : Char*, length : LibC::SizeT, fg : Color, wrap_length : Int) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Solid(TTF_Font *font, Uint32 ch, SDL_Color fg);
  fun render_glyph_solid = TTF_RenderGlyph_Solid(font : Font*, ch : UInt32, fg : Color) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Shaded(TTF_Font *font, const char *text, size_t length, SDL_Color fg, SDL_Color bg);
  fun render_text_shaded = TTF_RenderText_Shaded(font : Font*, text : Char*, length : LibC::SizeT, fg : Color, bg : Color) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Shaded_Wrapped(TTF_Font *font, const char *text, size_t length, SDL_Color fg, SDL_Color bg, int wrap_width);
  fun render_text_shaded_wrapped = TTF_RenderText_Shaded_Wrapped(font : Font*, text : Char*, length : LibC::SizeT, fg : Color, bg : Color, wrap_width : Int) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Shaded(TTF_Font *font, Uint32 ch, SDL_Color fg, SDL_Color bg);
  fun render_glyph_shaded = TTF_RenderGlyph_Shaded(font : Font*, ch : UInt32, fg : Color, bg : Color) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Blended(TTF_Font *font, const char *text, size_t length, SDL_Color fg);
  fun render_text_blended = TTF_RenderText_Blended(font : Font*, text : Char*, length : LibC::SizeT, fg : Color) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_Blended_Wrapped(TTF_Font *font, const char *text, size_t length, SDL_Color fg, int wrap_width);
  fun render_text_blended_wrapped = TTF_RenderText_Blended_Wrapped(font : Font*, text : Char*, length : LibC::SizeT, fg : Color, wrap_width : Int) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_Blended(TTF_Font *font, Uint32 ch, SDL_Color fg);
  fun render_glyph_blended = TTF_RenderGlyph_Blended(font : Font*, ch : UInt32, fg : Color) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_LCD(TTF_Font *font, const char *text, size_t length, SDL_Color fg, SDL_Color bg);
  fun render_text_lcd = TTF_RenderText_LCD(font : Font*, text : Char*, length : LibC::SizeT, fg : Color, bg : Color) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderText_LCD_Wrapped(TTF_Font *font, const char *text, size_t length, SDL_Color fg, SDL_Color bg, int wrap_width);
  fun render_text_lcd_wrapped = TTF_RenderText_LCD_Wrapped(font : Font*, text : Char*, length : LibC::SizeT, fg : Color, bg : Color, wrap_width : Int) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL TTF_RenderGlyph_LCD(TTF_Font *font, Uint32 ch, SDL_Color fg, SDL_Color bg);
  fun render_glyph_lcd = TTF_RenderGlyph_LCD(font : Font*, ch : UInt32, fg : Color, bg : Color) : Surface*

  struct Text
    text : Char*
    num_lines : Int
    refcount : Int
    internal : TextData*
  end

  # extern SDL_DECLSPEC TTF_TextEngine * SDLCALL TTF_CreateSurfaceTextEngine(void);
  fun create_surface_text_engine = TTF_CreateSurfaceTextEngine : TextEngine*

  # extern SDL_DECLSPEC bool SDLCALL TTF_DrawSurfaceText(TTF_Text *text, int x, int y, SDL_Surface *surface);
  fun draw_surface_text = TTF_DrawSurfaceText(text : Text*, x : Int, y : Int, surface : Surface*) : Bool

  # extern SDL_DECLSPEC void SDLCALL TTF_DestroySurfaceTextEngine(TTF_TextEngine *engine);
  fun destroy_surface_text_engine = TTF_DestroySurfaceTextEngine(engine : TextEngine*) : Void

  # extern SDL_DECLSPEC TTF_TextEngine * SDLCALL TTF_CreateRendererTextEngine(SDL_Renderer *renderer);
  fun create_renderer_text_engine = TTF_CreateRendererTextEngine(renderer : Renderer*) : TextEngine*

  # extern SDL_DECLSPEC TTF_TextEngine * SDLCALL TTF_CreateRendererTextEngineWithProperties(SDL_PropertiesID props);
  fun create_renderer_text_engine_with_properties = TTF_CreateRendererTextEngineWithProperties(props : PropertiesID) : TextEngine*

  # extern SDL_DECLSPEC bool SDLCALL TTF_DrawRendererText(TTF_Text *text, float x, float y);
  fun draw_renderer_text = TTF_DrawRendererText(text : Text*, x : Float32, y : Float32) : Bool

  # extern SDL_DECLSPEC void SDLCALL TTF_DestroyRendererTextEngine(TTF_TextEngine *engine);
  fun destroy_renderer_text_engine = TTF_DestroyRendererTextEngine(engine : TextEngine*) : Void

  # extern SDL_DECLSPEC TTF_TextEngine * SDLCALL TTF_CreateGPUTextEngine(SDL_GPUDevice *device);
  fun create_gpu_text_engine = TTF_CreateGPUTextEngine(device : GPUDevice*) : TextEngine*

  # extern SDL_DECLSPEC TTF_TextEngine * SDLCALL TTF_CreateGPUTextEngineWithProperties(SDL_PropertiesID props);
  fun create_gpu_text_engine_with_properties = TTF_CreateGPUTextEngineWithProperties(props : PropertiesID) : TextEngine*

  struct GPUAtlasDrawSequence
    atlas_texture : GPUTexture*
    xy : FPoint*
    uv : FPoint*
    num_vertices : Int
    indices : Int*
    num_indices : Int
    image_type : ImageType
    next : GPUAtlasDrawSequence*
  end

  # extern SDL_DECLSPEC TTF_GPUAtlasDrawSequence * SDLCALL TTF_GetGPUTextDrawData(TTF_Text *text);
  fun get_gpu_text_draw_data = TTF_GetGPUTextDrawData(text : Text*) : GPUAtlasDrawSequence*

  # extern SDL_DECLSPEC void SDLCALL TTF_DestroyGPUTextEngine(TTF_TextEngine *engine);
  fun destroy_gpu_text_engine = TTF_DestroyGPUTextEngine(engine : TextEngine*) : Void

  enum GPUTextEngineWinding
    Invalid = -1
    Clockwise
    CounterClockwise
  end

  # extern SDL_DECLSPEC void SDLCALL TTF_SetGPUTextEngineWinding(TTF_TextEngine *engine, TTF_GPUTextEngineWinding winding);
  fun set_gpu_text_engine_winding = TTF_SetGPUTextEngineWinding(engine : TextEngine*, winding : GPUTextEngineWinding) : Void

  # extern SDL_DECLSPEC TTF_GPUTextEngineWinding SDLCALL TTF_GetGPUTextEngineWinding(const TTF_TextEngine *engine);
  fun get_gpu_text_engine_winding = TTF_GetGPUTextEngineWinding(engine : TextEngine*) : GPUTextEngineWinding

  # extern SDL_DECLSPEC TTF_Text * SDLCALL TTF_CreateText(TTF_TextEngine *engine, TTF_Font *font, const char *text, size_t length);
  fun create_text = TTF_CreateText(engine : TextEngine*, font : Font*, text : Char*, length : LibC::SizeT) : Text*

  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL TTF_GetTextProperties(TTF_Text *text);
  fun get_text_properties = TTF_GetTextProperties(text : Text*) : PropertiesID

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetTextEngine(TTF_Text *text, TTF_TextEngine *engine);
  fun set_text_engine = TTF_SetTextEngine(text : Text*, engine : TextEngine*) : Bool

  # extern SDL_DECLSPEC TTF_TextEngine * SDLCALL TTF_GetTextEngine(TTF_Text *text);
  fun get_text_engine = TTF_GetTextEngine(text : Text*) : TextEngine*

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetTextFont(TTF_Text *text, TTF_Font *font);
  fun set_text_font = TTF_SetTextFont(text : Text*, font : Font*) : Bool

  # extern SDL_DECLSPEC TTF_Font * SDLCALL TTF_GetTextFont(TTF_Text *text);
  fun get_text_font = TTF_GetTextFont(text : Text*) : Font*

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetTextDirection(TTF_Text *text, TTF_Direction direction);
  fun set_text_direction = TTF_SetTextDirection(text : Text*, direction : Direction) : Bool

  # extern SDL_DECLSPEC TTF_Direction SDLCALL TTF_GetTextDirection(TTF_Text *text);
  fun get_text_direction = TTF_GetTextDirection(text : Text*) : Direction

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetTextScript(TTF_Text *text, Uint32 script);
  fun set_text_script = TTF_SetTextScript(text : Text*, script : UInt32) : Bool

  # extern SDL_DECLSPEC Uint32 SDLCALL TTF_GetTextScript(TTF_Text *text);
  fun get_text_script = TTF_GetTextScript(text : Text*) : UInt32

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetTextColor(TTF_Text *text, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
  fun set_text_color = TTF_SetTextColor(text : Text*, r : UInt8, g : UInt8, b : UInt8, a : UInt8) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetTextColorFloat(TTF_Text *text, float r, float g, float b, float a);
  fun set_text_color_float = TTF_SetTextColorFloat(text : Text*, r : Float32, g : Float32, b : Float32, a : Float32) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetTextColor(TTF_Text *text, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);
  fun get_text_color = TTF_GetTextColor(text : Text*, r : UInt8*, g : UInt8*, b : UInt8*, a : UInt8*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetTextColorFloat(TTF_Text *text, float *r, float *g, float *b, float *a);
  fun get_text_color_float = TTF_GetTextColorFloat(text : Text*, r : Float32*, g : Float32*, b : Float32*, a : Float32*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetTextPosition(TTF_Text *text, int x, int y);
  fun set_text_position = TTF_SetTextPosition(text : Text*, x : Int, y : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetTextPosition(TTF_Text *text, int *x, int *y);
  fun get_text_position = TTF_GetTextPosition(text : Text*, x : Int*, y : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetTextWrapWidth(TTF_Text *text, int wrap_width);
  fun set_text_wrap_width = TTF_SetTextWrapWidth(text : Text*, wrap_width : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetTextWrapWidth(TTF_Text *text, int *wrap_width);
  fun get_text_wrap_width = TTF_GetTextWrapWidth(text : Text*, wrap_width : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetTextWrapWhitespaceVisible(TTF_Text *text, bool visible);
  fun set_text_wrap_whitespace_visible = TTF_SetTextWrapWhitespaceVisible(text : Text*, visible : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_TextWrapWhitespaceVisible(TTF_Text *text);
  fun text_wrap_whitespace_visible = TTF_TextWrapWhitespaceVisible(text : Text*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_SetTextString(TTF_Text *text, const char *string, size_t length);
  fun set_text_string = TTF_SetTextString(text : Text*, string : Char*, length : LibC::SizeT) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_InsertTextString(TTF_Text *text, int offset, const char *string, size_t length);
  fun insert_text_string = TTF_InsertTextString(text : Text*, offset : Int, string : Char*, length : LibC::SizeT) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_AppendTextString(TTF_Text *text, const char *string, size_t length);
  fun append_text_string = TTF_AppendTextString(text : Text*, string : Char*, length : LibC::SizeT) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_DeleteTextString(TTF_Text *text, int offset, int length);
  fun delete_text_string = TTF_DeleteTextString(text : Text*, offset : Int, length : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetTextSize(TTF_Text *text, int *w, int *h);
  fun get_text_size = TTF_GetTextSize(text : Text*, w : Int*, h : Int*) : Bool

  alias SubStringFlags = UInt32
  SUBSTRING_DIRECTION_MASK    = 0x000000FFu32 # The mask for the flow direction for this substring
  SUBSTRING_TEXT_START        = 0x00000100u32 # This substring contains the beginning of the text
  SUBSTRING_LINE_START        = 0x00000200u32 # This substring contains the beginning of line `line_index`
  SUBSTRING_LINE_END          = 0x00000400u32 # This substring contains the end of line `line_index`
  SUBSTRING_TEXT_END          = 0x00000800u32 # This substring contains the end of the text

  struct SubString
    flags : SubStringFlags
    offset : Int
    length : Int
    line_index : Int
    cluster_index : Int
    rect : Rect
  end

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetTextSubString(TTF_Text *text, int offset, TTF_SubString *substring);
  fun get_text_sub_string = TTF_GetTextSubString(text : Text*, offset : Int, substring : SubString*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetTextSubStringForLine(TTF_Text *text, int line, TTF_SubString *substring);
  fun get_text_sub_string_for_line = TTF_GetTextSubStringForLine(text : Text*, line : Int, substring : SubString*) : Bool

  # extern SDL_DECLSPEC TTF_SubString ** SDLCALL TTF_GetTextSubStringsForRange(TTF_Text *text, int offset, int length, int *count);
  fun get_text_sub_strings_for_range = TTF_GetTextSubStringsForRange(text : Text*, offset : Int, length : Int, count : Int*) : SubString**

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetTextSubStringForPoint(TTF_Text *text, int x, int y, TTF_SubString *substring);
  fun get_text_sub_string_for_point = TTF_GetTextSubStringForPoint(text : Text*, x : Int, y : Int, substring : SubString*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetPreviousTextSubString(TTF_Text *text, const TTF_SubString *substring, TTF_SubString *previous);
  fun get_previous_text_sub_string = TTF_GetPreviousTextSubString(text : Text*, substring : SubString*, previous : SubString*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_GetNextTextSubString(TTF_Text *text, const TTF_SubString *substring, TTF_SubString *next);
  fun get_next_text_sub_string = TTF_GetNextTextSubString(text : Text*, substring : SubString*, next : SubString*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL TTF_UpdateText(TTF_Text *text);
  fun update_text = TTF_UpdateText(text : Text*) : Bool

  # extern SDL_DECLSPEC void SDLCALL TTF_DestroyText(TTF_Text *text);
  fun destroy_text = TTF_DestroyText(text : Text*) : Void

  # extern SDL_DECLSPEC void SDLCALL TTF_CloseFont(TTF_Font *font);
  fun close_font = TTF_CloseFont(font : Font*) : Void

  # extern SDL_DECLSPEC void SDLCALL TTF_Quit(void);
  fun quit = TTF_Quit : Void

  # extern SDL_DECLSPEC int SDLCALL TTF_WasInit(void);
  fun was_init = TTF_WasInit : Int
end

