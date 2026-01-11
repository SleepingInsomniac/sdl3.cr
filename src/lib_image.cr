@[Link("sdl3-image")]
lib LibSdl3Image
  alias Bool = LibC::Char
  alias Char = LibC::Char
  alias Int  = LibC::Int

  alias Renderer = LibSdl3::Renderer
  alias Surface  = LibSdl3::Surface
  alias Texture  = LibSdl3::Texture
  alias IOStream = LibSdl3::IOStream

  # extern SDL_DECLSPEC int SDLCALL IMG_Version(void);
  fun img_version = IMG_Version : Int

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_Load(const char *file);
  fun load = IMG_Load(file : Char*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_Load_IO(SDL_IOStream *src, bool closeio);
  fun load_io = IMG_Load_IO(src : IOStream*, closeio : Bool) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadTyped_IO(SDL_IOStream *src, bool closeio, const char *type);
  fun load_typed_io = IMG_LoadTyped_IO(src : IOStream*, closeio : Bool, type : Char*) : Surface*

  # extern SDL_DECLSPEC SDL_Texture * SDLCALL IMG_LoadTexture(SDL_Renderer *renderer, const char *file);
  fun load_texture = IMG_LoadTexture(renderer : Renderer*, file : Char*) : Texture*

  # extern SDL_DECLSPEC SDL_Texture * SDLCALL IMG_LoadTexture_IO(SDL_Renderer *renderer, SDL_IOStream *src, bool closeio);
  fun load_texture_io = IMG_LoadTexture_IO(renderer : Renderer*, src : IOStream*, closeio : Bool) : Texture*

  # extern SDL_DECLSPEC SDL_Texture * SDLCALL IMG_LoadTextureTyped_IO(SDL_Renderer *renderer, SDL_IOStream *src, bool closeio, const char *type);
  fun load_texture_typed_io = IMG_LoadTextureTyped_IO(renderer : Renderer*, src : IOStream*, closeio : Bool, type : Char*) : Texture*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_GetClipboardImage(void);
  fun get_clipboard_image = IMG_GetClipboardImage : Surface*

  # extern SDL_DECLSPEC bool SDLCALL IMG_isANI(SDL_IOStream *src);
  fun ani? = IMG_isANI(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isAVIF(SDL_IOStream *src);
  fun avif? = IMG_isAVIF(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isCUR(SDL_IOStream *src);
  fun cur? = IMG_isCUR(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isBMP(SDL_IOStream *src);
  fun bmp? = IMG_isBMP(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isGIF(SDL_IOStream *src);
  fun gif? = IMG_isGIF(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isICO(SDL_IOStream *src);
  fun ico? = IMG_isICO(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isJPG(SDL_IOStream *src);
  fun jpg? = IMG_isJPG(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isJXL(SDL_IOStream *src);
  fun jxl? = IMG_isJXL(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isLBM(SDL_IOStream *src);
  fun lbm? = IMG_isLBM(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isPCX(SDL_IOStream *src);
  fun pcx? = IMG_isPCX(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isPNG(SDL_IOStream *src);
  fun png? = IMG_isPNG(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isPNM(SDL_IOStream *src);
  fun pnm? = IMG_isPNM(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isQOI(SDL_IOStream *src);
  fun qoi? = IMG_isQOI(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isSVG(SDL_IOStream *src);
  fun svg? = IMG_isSVG(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isTIF(SDL_IOStream *src);
  fun tif? = IMG_isTIF(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isWEBP(SDL_IOStream *src);
  fun webp? = IMG_isWEBP(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isXCF(SDL_IOStream *src);
  fun xcf? = IMG_isXCF(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isXPM(SDL_IOStream *src);
  fun xpm? = IMG_isXPM(src : IOStream*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_isXV(SDL_IOStream *src);
  fun xv? = IMG_isXV(src : IOStream*) : Bool

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadAVIF_IO(SDL_IOStream *src);
  fun load_avif_io = IMG_LoadAVIF_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadBMP_IO(SDL_IOStream *src);
  fun load_bmp_io = IMG_LoadBMP_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadCUR_IO(SDL_IOStream *src);
  fun load_cur_io = IMG_LoadCUR_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadGIF_IO(SDL_IOStream *src);
  fun load_gif_io = IMG_LoadGIF_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadICO_IO(SDL_IOStream *src);
  fun load_ico_io = IMG_LoadICO_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadJPG_IO(SDL_IOStream *src);
  fun load_jpg_io = IMG_LoadJPG_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadJXL_IO(SDL_IOStream *src);
  fun load_jxl_io = IMG_LoadJXL_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadLBM_IO(SDL_IOStream *src);
  fun load_lbm_io = IMG_LoadLBM_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadPCX_IO(SDL_IOStream *src);
  fun load_pcx_io = IMG_LoadPCX_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadPNG_IO(SDL_IOStream *src);
  fun load_png_io = IMG_LoadPNG_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadPNM_IO(SDL_IOStream *src);
  fun load_pnm_io = IMG_LoadPNM_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadSVG_IO(SDL_IOStream *src);
  fun load_svg_io = IMG_LoadSVG_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadSizedSVG_IO(SDL_IOStream *src, int width, int height);
  fun load_sized_svg_io = IMG_LoadSizedSVG_IO(src : IOStream*, width : Int, height : Int) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadQOI_IO(SDL_IOStream *src);
  fun load_qoi_io = IMG_LoadQOI_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadTGA_IO(SDL_IOStream *src);
  fun load_tga_io = IMG_LoadTGA_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadTIF_IO(SDL_IOStream *src);
  fun load_tif_io = IMG_LoadTIF_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadWEBP_IO(SDL_IOStream *src);
  fun load_webp_io = IMG_LoadWEBP_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadXCF_IO(SDL_IOStream *src);
  fun load_xcf_io = IMG_LoadXCF_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadXPM_IO(SDL_IOStream *src);
  fun load_xpm_io = IMG_LoadXPM_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_LoadXV_IO(SDL_IOStream *src);
  fun load_xv_io = IMG_LoadXV_IO(src : IOStream*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_ReadXPMFromArray(char **xpm);
  fun read_xpm_from_array = IMG_ReadXPMFromArray(xpm : Char*) : Surface*

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL IMG_ReadXPMFromArrayToRGB888(char **xpm);
  fun read_xpm_from_array_to_rgb888 = IMG_ReadXPMFromArrayToRGB888(xpm : Char*) : Surface*

  # extern SDL_DECLSPEC bool SDLCALL IMG_Save(SDL_Surface *surface, const char *file);
  fun save = IMG_Save(surface : Surface*, file : Char*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveTyped_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio, const char *type);
  fun save_typed_io = IMG_SaveTyped_IO(surface : Surface*, dst : IOStream*, closeio : Bool, type : Char*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveAVIF(SDL_Surface *surface, const char *file, int quality);
  fun save_avif = IMG_SaveAVIF(surface : Surface*, file : Char*, quality : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveAVIF_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio, int quality);
  fun save_avif_io = IMG_SaveAVIF_IO(surface : Surface*, dst : IOStream*, closeio : Bool, quality : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveBMP(SDL_Surface *surface, const char *file);
  fun save_bmp = IMG_SaveBMP(surface : Surface*, file : Char*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveBMP_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
  fun save_bmp_io = IMG_SaveBMP_IO(surface : Surface*, dst : IOStream*, closeio : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveCUR(SDL_Surface *surface, const char *file);
  fun save_cur = IMG_SaveCUR(surface : Surface*, file : Char*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveCUR_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
  fun save_cur_io = IMG_SaveCUR_IO(surface : Surface*, dst : IOStream*, closeio : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveGIF(SDL_Surface *surface, const char *file);
  fun save_gif = IMG_SaveGIF(surface : Surface*, file : Char*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveGIF_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
  fun save_gif_io = IMG_SaveGIF_IO(surface : Surface*, dst : IOStream*, closeio : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveICO(SDL_Surface *surface, const char *file);
  fun save_ico = IMG_SaveICO(surface : Surface*, file : Char*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveICO_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
  fun save_ico_io = IMG_SaveICO_IO(surface : Surface*, dst : IOStream*, closeio : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveJPG(SDL_Surface *surface, const char *file, int quality);
  fun save_jpg = IMG_SaveJPG(surface : Surface*, file : Char*, quality : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveJPG_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio, int quality);
  fun save_jpg_io = IMG_SaveJPG_IO(surface : Surface*, dst : IOStream*, closeio : Bool, quality : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SavePNG(SDL_Surface *surface, const char *file);
  fun save_png = IMG_SavePNG(surface : Surface*, file : Char*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SavePNG_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
  fun save_png_io = IMG_SavePNG_IO(surface : Surface*, dst : IOStream*, closeio : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveTGA(SDL_Surface *surface, const char *file);
  fun save_tga = IMG_SaveTGA(surface : Surface*, file : Char*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveTGA_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
  fun save_tga_io = IMG_SaveTGA_IO(surface : Surface*, dst : IOStream*, closeio : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveWEBP(SDL_Surface *surface, const char *file, float quality);
  fun save_webp = IMG_SaveWEBP(surface : Surface*, file : Char*, quality : Float32) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveWEBP_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio, float quality);
  fun save_webp_io = IMG_SaveWEBP_IO(surface : Surface*, dst : IOStream*, closeio : Bool, quality : Float32) : Bool

  struct Animation
    width : LibC::Int
    height : LibC::Int
    count : LibC::Int
    frames : Surface**
    delays : LibC::Int*
  end

  # extern SDL_DECLSPEC IMG_Animation * SDLCALL IMG_LoadAnimation(const char *file);
  fun load_animation = IMG_LoadAnimation(file : Char*) : Animation*

  # extern SDL_DECLSPEC IMG_Animation * SDLCALL IMG_LoadAnimation_IO(SDL_IOStream *src, bool closeio);
  fun load_animation_io = IMG_LoadAnimation_IO(src : IOStream*, closeio : Bool) : Animation*

  # extern SDL_DECLSPEC IMG_Animation * SDLCALL IMG_LoadAnimationTyped_IO(SDL_IOStream *src, bool closeio, const char *type);
  fun load_animation_typed_io = IMG_LoadAnimationTyped_IO(src : IOStream*, closeio : Bool, type : Char*) : Animation*

  # extern SDL_DECLSPEC IMG_Animation *SDLCALL IMG_LoadANIAnimation_IO(SDL_IOStream *src);
  fun load_ani_animation_io = IMG_LoadANIAnimation_IO(src : IOStream*) : Animation*

  # extern SDL_DECLSPEC IMG_Animation *SDLCALL IMG_LoadAPNGAnimation_IO(SDL_IOStream *src);
  fun load_apng_animation_io = IMG_LoadAPNGAnimation_IO(src : IOStream*) : Animation*

  # extern SDL_DECLSPEC IMG_Animation *SDLCALL IMG_LoadAVIFAnimation_IO(SDL_IOStream *src);
  fun load_avif_animation_io = IMG_LoadAVIFAnimation_IO(src : IOStream*) : Animation*

  # extern SDL_DECLSPEC IMG_Animation * SDLCALL IMG_LoadGIFAnimation_IO(SDL_IOStream *src);
  fun load_gif_animation_io = IMG_LoadGIFAnimation_IO(src : IOStream*) : Animation*

  # extern SDL_DECLSPEC IMG_Animation * SDLCALL IMG_LoadWEBPAnimation_IO(SDL_IOStream *src);
  fun load_webp_animation_io = IMG_LoadWEBPAnimation_IO(src : IOStream*) : Animation*

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveAnimation(IMG_Animation *anim, const char *file);
  fun save_animation = IMG_SaveAnimation(anim : Animation*, file : Char*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveAnimationTyped_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio, const char *type);
  fun save_animation_typed_io = IMG_SaveAnimationTyped_IO(anim : Animation*, dst : IOStream*, closeio : Bool, type : Char*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveANIAnimation_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio);
  fun save_ani_animation_io = IMG_SaveANIAnimation_IO(anim : Animation*, dst : IOStream*, closeio : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveAPNGAnimation_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio);
  fun save_apng_animation_io = IMG_SaveAPNGAnimation_IO(anim : Animation*, dst : IOStream*, closeio : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveAVIFAnimation_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio, int quality);
  fun save_avif_animation_io = IMG_SaveAVIFAnimation_IO(anim : Animation*, dst : IOStream*, closeio : Bool, quality : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveGIFAnimation_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio);
  fun save_gif_animation_io = IMG_SaveGIFAnimation_IO(anim : Animation*, dst : IOStream*, closeio : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_SaveWEBPAnimation_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio, int quality);
  fun save_webp_animation_io = IMG_SaveWEBPAnimation_IO(anim : Animation*, dst : IOStream*, closeio : Bool, quality : Int) : Bool

  # # extern SDL_DECLSPEC SDL_Cursor * SDLCALL IMG_CreateAnimatedCursor(IMG_Animation *anim, int hot_x, int hot_y);
  # fun create_animated_cursor = IMG_CreateAnimatedCursor(anim : Animation*, hot_x : Int, hot_y : Int) : Cursor*

  # extern SDL_DECLSPEC void SDLCALL IMG_FreeAnimation(IMG_Animation *anim);
  fun free_animation = IMG_FreeAnimation(anim : Animation*) : Void

  # typedef struct IMG_AnimationEncoder IMG_AnimationEncoder;
  alias AnimationEncoder = Void

  # extern SDL_DECLSPEC IMG_AnimationEncoder * SDLCALL IMG_CreateAnimationEncoder(const char *file);
  fun create_animation_encoder = IMG_CreateAnimationEncoder(file : Char*) : AnimationEncoder*

  # extern SDL_DECLSPEC IMG_AnimationEncoder * SDLCALL IMG_CreateAnimationEncoder_IO(SDL_IOStream *dst, bool closeio, const char *type);
  fun create_animation_encoder_io = IMG_CreateAnimationEncoder_IO(dst : IOStream*, closeio : Bool, type : Char*) : AnimationEncoder*

  # extern SDL_DECLSPEC IMG_AnimationEncoder * SDLCALL IMG_CreateAnimationEncoderWithProperties(SDL_PropertiesID props);
  fun create_animation_encoder_with_properties = IMG_CreateAnimationEncoderWithProperties(props : LibSdl3::PropertiesID) : AnimationEncoder*

  # extern SDL_DECLSPEC bool SDLCALL IMG_AddAnimationEncoderFrame(IMG_AnimationEncoder *encoder, SDL_Surface *surface, Uint64 duration);
  fun add_animation_encoder_frame = IMG_AddAnimationEncoderFrame(encoder : AnimationEncoder*, surface : Surface*, duration : UInt64) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_CloseAnimationEncoder(IMG_AnimationEncoder *encoder);
  fun close_animation_encoder = IMG_CloseAnimationEncoder(encoder : AnimationEncoder*) : Bool

  # typedef enum IMG_AnimationDecoderStatus
  enum AnimationDecoderStatus
    Invalid = -1
    Ok
    Failed
    Complete
  end

  # typedef struct IMG_AnimationDecoder IMG_AnimationDecoder;
  alias AnimationDecoder = Void

  # extern SDL_DECLSPEC IMG_AnimationDecoder * SDLCALL IMG_CreateAnimationDecoder(const char *file);
  fun create_animation_decoder = IMG_CreateAnimationDecoder(file : Char*) : AnimationDecoder*

  # extern SDL_DECLSPEC IMG_AnimationDecoder * SDLCALL IMG_CreateAnimationDecoder_IO(SDL_IOStream *src, bool closeio, const char *type);
  fun create_animation_decoder_io = IMG_CreateAnimationDecoder_IO(src : IOStream*, closeio : Bool, type : Char*) : AnimationDecoder*

  # extern SDL_DECLSPEC IMG_AnimationDecoder * SDLCALL IMG_CreateAnimationDecoderWithProperties(SDL_PropertiesID props);
  fun create_animation_decoder_with_properties = IMG_CreateAnimationDecoderWithProperties(props : LibSdl3::PropertiesID) : AnimationDecoder*

  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL IMG_GetAnimationDecoderProperties(IMG_AnimationDecoder* decoder);
  fun get_animation_decoder_properties = IMG_GetAnimationDecoderProperties(decoder : AnimationDecoder*) : LibSdl3::PropertiesID

  # extern SDL_DECLSPEC bool SDLCALL IMG_GetAnimationDecoderFrame(IMG_AnimationDecoder *decoder, SDL_Surface **frame, Uint64 *duration);
  fun get_animation_decoder_frame = IMG_GetAnimationDecoderFrame(decoder : AnimationDecoder*, frame : Surface*, duration : UInt64*) : Bool

  # extern SDL_DECLSPEC IMG_AnimationDecoderStatus SDLCALL IMG_GetAnimationDecoderStatus(IMG_AnimationDecoder *decoder);
  fun get_animation_decoder_status = IMG_GetAnimationDecoderStatus(decoder : AnimationDecoder*) : AnimationDecoderStatus

  # extern SDL_DECLSPEC bool SDLCALL IMG_ResetAnimationDecoder(IMG_AnimationDecoder *decoder);
  fun reset_animation_decoder = IMG_ResetAnimationDecoder(decoder : AnimationDecoder*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL IMG_CloseAnimationDecoder(IMG_AnimationDecoder *decoder);
  fun close_animation_decoder = IMG_CloseAnimationDecoder(decoder : AnimationDecoder*) : Bool
end
