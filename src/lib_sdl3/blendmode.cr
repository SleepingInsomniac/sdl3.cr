lib LibSdl3
  enum BlendMode : UInt32
    None                =  0x00000000u32 # < no blending: dstRGBA = srcRGBA */
    Blend               =  0x00000001u32 # < alpha blending: dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA)), dstA = srcA + (dstA * (1-srcA)) */
    BlendPremultiplied  =  0x00000010u32 # < pre-multiplied alpha blending: dstRGBA = srcRGBA + (dstRGBA * (1-srcA)) */
    Add                 =  0x00000002u32 # < additive blending: dstRGB = (srcRGB * srcA) + dstRGB, dstA = dstA */
    AddPremultiplied    =  0x00000020u32 # < pre-multiplied additive blending: dstRGB = srcRGB + dstRGB, dstA = dstA */
    Mod                 =  0x00000004u32 # < color modulate: dstRGB = srcRGB * dstRGB, dstA = dstA */
    Mul                 =  0x00000008u32 # < color multiply: dstRGB = (srcRGB * dstRGB) + (dstRGB * (1-srcA)), dstA = dstA */
    Invalid             =  0x7FFFFFFFu32
  end

  enum BlendOperation
    Add = 0x1 # SDL_BLENDOPERATION_ADD
    Subtract = 0x2 # SDL_BLENDOPERATION_SUBTRACT
    RevSubtract = 0x3 # SDL_BLENDOPERATION_REV_SUBTRACT
    Minimum = 0x4 # SDL_BLENDOPERATION_MINIMUM
    Maximum = 0x5 # SDL_BLENDOPERATION_MAXIMUM
  end

  enum BlendFactor
    Zero = 0x1 # SDL_BLENDFACTOR_ZERO
    One = 0x2 # SDL_BLENDFACTOR_ONE
    SrcColor = 0x3 # SDL_BLENDFACTOR_SRC_COLOR
    OneMinusSrcColor = 0x4 # SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR
    SrcAlpha = 0x5 # SDL_BLENDFACTOR_SRC_ALPHA
    OneMinusSrcAlpha = 0x6 # SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA
    DstColor = 0x7 # SDL_BLENDFACTOR_DST_COLOR
    OneMinusDstColor = 0x8 # SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR
    DstAlpha = 0x9 # SDL_BLENDFACTOR_DST_ALPHA
    OneMinusDstAlpha = 0xA # SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA
  end

  # extern SDL_DECLSPEC SDL_BlendMode SDLCALL SDL_ComposeCustomBlendMode(SDL_BlendFactor srcColorFactor, SDL_BlendFactor dstColorFactor, SDL_BlendOperation colorOperation, SDL_BlendFactor srcAlphaFactor, SDL_BlendFactor dstAlphaFactor, SDL_BlendOperation alphaOperation);
  fun compose_custom_blend_mode = SDL_ComposeCustomBlendMode(src_color_factor : BlendFactor, dst_color_factor : BlendFactor, color_operation : BlendOperation, src_alpha_factor : BlendFactor, dst_alpha_factor : BlendFactor, alpha_operation : BlendOperation) : BlendMode
end
