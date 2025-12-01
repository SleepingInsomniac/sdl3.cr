lib LibSdl3
  type GPUDevice = Void # typedef struct SDL_GPUDevice SDL_GPUDevice;
  type GPUBuffer = Void # typedef struct SDL_GPUBuffer SDL_GPUBuffer;
  type GPUTransferBuffer = Void # typedef struct SDL_GPUTransferBuffer SDL_GPUTransferBuffer;
  type GPUTexture = Void # typedef struct SDL_GPUTexture SDL_GPUTexture;
  type GPUSampler = Void # typedef struct SDL_GPUSampler SDL_GPUSampler;
  type GPUShader = Void # typedef struct SDL_GPUShader SDL_GPUShader;
  type GPUComputePipeline = Void # typedef struct SDL_GPUComputePipeline SDL_GPUComputePipeline;
  type GPUGraphicsPipeline = Void # typedef struct SDL_GPUGraphicsPipeline SDL_GPUGraphicsPipeline;
  type GPUCommandBuffer = Void # typedef struct SDL_GPUCommandBuffer SDL_GPUCommandBuffer;
  type GPURenderPass = Void # typedef struct SDL_GPURenderPass SDL_GPURenderPass;
  type GPUComputePass = Void # typedef struct SDL_GPUComputePass SDL_GPUComputePass;
  type GPUCopyPass = Void # typedef struct SDL_GPUCopyPass SDL_GPUCopyPass;
  type GPUFence = Void # typedef struct SDL_GPUFence SDL_GPUFence;

  enum GPUPrimitiveType
    Trianglelist # SDL_GPU_PRIMITIVETYPE_TRIANGLELIST
    Trianglestrip # SDL_GPU_PRIMITIVETYPE_TRIANGLESTRIP
    Linelist # SDL_GPU_PRIMITIVETYPE_LINELIST
    Linestrip # SDL_GPU_PRIMITIVETYPE_LINESTRIP
    Pointlist # SDL_GPU_PRIMITIVETYPE_POINTLIST
  end

  enum GPULoadOp
    Load # SDL_GPU_LOADOP_LOAD
    Clear # SDL_GPU_LOADOP_CLEAR
    DontCare # SDL_GPU_LOADOP_DONT_CARE
  end

  enum GPUStoreOp
    Store # SDL_GPU_STOREOP_STORE
    DontCare # SDL_GPU_STOREOP_DONT_CARE
    Resolve # SDL_GPU_STOREOP_RESOLVE
    ResolveAndStore # SDL_GPU_STOREOP_RESOLVE_AND_STORE
  end

  enum GPUIndexElementSize
    S16bit # SDL_GPU_INDEXELEMENTSIZE_16BIT
    S32bit # SDL_GPU_INDEXELEMENTSIZE_32BIT
  end

  enum GPUTextureFormat
    Invalid # SDL_GPU_TEXTUREFORMAT_INVALID
    A8Unorm # SDL_GPU_TEXTUREFORMAT_A8_UNORM
    R8Unorm # SDL_GPU_TEXTUREFORMAT_R8_UNORM
    R8g8Unorm # SDL_GPU_TEXTUREFORMAT_R8G8_UNORM
    R8g8b8a8Unorm # SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM
    R16Unorm # SDL_GPU_TEXTUREFORMAT_R16_UNORM
    R16g16Unorm # SDL_GPU_TEXTUREFORMAT_R16G16_UNORM
    R16g16b16a16Unorm # SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UNORM
    R10g10b10a2Unorm # SDL_GPU_TEXTUREFORMAT_R10G10B10A2_UNORM
    B5g6r5Unorm # SDL_GPU_TEXTUREFORMAT_B5G6R5_UNORM
    B5g5r5a1Unorm # SDL_GPU_TEXTUREFORMAT_B5G5R5A1_UNORM
    B4g4r4a4Unorm # SDL_GPU_TEXTUREFORMAT_B4G4R4A4_UNORM
    B8g8r8a8Unorm # SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM
    Bc1RgbaUnorm # SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM
    Bc2RgbaUnorm # SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM
    Bc3RgbaUnorm # SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM
    Bc4RUnorm # SDL_GPU_TEXTUREFORMAT_BC4_R_UNORM
    Bc5RgUnorm # SDL_GPU_TEXTUREFORMAT_BC5_RG_UNORM
    Bc7RgbaUnorm # SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM
    Bc6hRgbFloat # SDL_GPU_TEXTUREFORMAT_BC6H_RGB_FLOAT
    Bc6hRgbUfloat # SDL_GPU_TEXTUREFORMAT_BC6H_RGB_UFLOAT
    R8Snorm # SDL_GPU_TEXTUREFORMAT_R8_SNORM
    R8g8Snorm # SDL_GPU_TEXTUREFORMAT_R8G8_SNORM
    R8g8b8a8Snorm # SDL_GPU_TEXTUREFORMAT_R8G8B8A8_SNORM
    R16Snorm # SDL_GPU_TEXTUREFORMAT_R16_SNORM
    R16g16Snorm # SDL_GPU_TEXTUREFORMAT_R16G16_SNORM
    R16g16b16a16Snorm # SDL_GPU_TEXTUREFORMAT_R16G16B16A16_SNORM
    R16Float # SDL_GPU_TEXTUREFORMAT_R16_FLOAT
    R16g16Float # SDL_GPU_TEXTUREFORMAT_R16G16_FLOAT
    R16g16b16a16Float # SDL_GPU_TEXTUREFORMAT_R16G16B16A16_FLOAT
    R32Float # SDL_GPU_TEXTUREFORMAT_R32_FLOAT
    R32g32Float # SDL_GPU_TEXTUREFORMAT_R32G32_FLOAT
    R32g32b32a32Float # SDL_GPU_TEXTUREFORMAT_R32G32B32A32_FLOAT
    R11g11b10Ufloat # SDL_GPU_TEXTUREFORMAT_R11G11B10_UFLOAT
    R8Uint # SDL_GPU_TEXTUREFORMAT_R8_UINT
    R8g8Uint # SDL_GPU_TEXTUREFORMAT_R8G8_UINT
    R8g8b8a8Uint # SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UINT
    R16Uint # SDL_GPU_TEXTUREFORMAT_R16_UINT
    R16g16Uint # SDL_GPU_TEXTUREFORMAT_R16G16_UINT
    R16g16b16a16Uint # SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UINT
    R32Uint # SDL_GPU_TEXTUREFORMAT_R32_UINT
    R32g32Uint # SDL_GPU_TEXTUREFORMAT_R32G32_UINT
    R32g32b32a32Uint # SDL_GPU_TEXTUREFORMAT_R32G32B32A32_UINT
    R8Int # SDL_GPU_TEXTUREFORMAT_R8_INT
    R8g8Int # SDL_GPU_TEXTUREFORMAT_R8G8_INT
    R8g8b8a8Int # SDL_GPU_TEXTUREFORMAT_R8G8B8A8_INT
    R16Int # SDL_GPU_TEXTUREFORMAT_R16_INT
    R16g16Int # SDL_GPU_TEXTUREFORMAT_R16G16_INT
    R16g16b16a16Int # SDL_GPU_TEXTUREFORMAT_R16G16B16A16_INT
    R32Int # SDL_GPU_TEXTUREFORMAT_R32_INT
    R32g32Int # SDL_GPU_TEXTUREFORMAT_R32G32_INT
    R32g32b32a32Int # SDL_GPU_TEXTUREFORMAT_R32G32B32A32_INT
    R8g8b8a8UnormSrgb # SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM_SRGB
    B8g8r8a8UnormSrgb # SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM_SRGB
    Bc1RgbaUnormSrgb # SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM_SRGB
    Bc2RgbaUnormSrgb # SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM_SRGB
    Bc3RgbaUnormSrgb # SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM_SRGB
    Bc7RgbaUnormSrgb # SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM_SRGB
    D16Unorm # SDL_GPU_TEXTUREFORMAT_D16_UNORM
    D24Unorm # SDL_GPU_TEXTUREFORMAT_D24_UNORM
    D32Float # SDL_GPU_TEXTUREFORMAT_D32_FLOAT
    D24UnormS8Uint # SDL_GPU_TEXTUREFORMAT_D24_UNORM_S8_UINT
    D32FloatS8Uint # SDL_GPU_TEXTUREFORMAT_D32_FLOAT_S8_UINT
    Astc4x4Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM
    Astc5x4Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM
    Astc5x5Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM
    Astc6x5Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM
    Astc6x6Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM
    Astc8x5Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM
    Astc8x6Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM
    Astc8x8Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM
    Astc10x5Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM
    Astc10x6Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM
    Astc10x8Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM
    Astc10x10Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM
    Astc12x10Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM
    Astc12x12Unorm # SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM
    Astc4x4UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM_SRGB
    Astc5x4UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM_SRGB
    Astc5x5UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM_SRGB
    Astc6x5UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM_SRGB
    Astc6x6UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM_SRGB
    Astc8x5UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM_SRGB
    Astc8x6UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM_SRGB
    Astc8x8UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM_SRGB
    Astc10x5UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM_SRGB
    Astc10x6UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM_SRGB
    Astc10x8UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM_SRGB
    Astc10x10UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM_SRGB
    Astc12x10UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM_SRGB
    Astc12x12UnormSrgb # SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM_SRGB
    Astc4x4Float # SDL_GPU_TEXTUREFORMAT_ASTC_4x4_FLOAT
    Astc5x4Float # SDL_GPU_TEXTUREFORMAT_ASTC_5x4_FLOAT
    Astc5x5Float # SDL_GPU_TEXTUREFORMAT_ASTC_5x5_FLOAT
    Astc6x5Float # SDL_GPU_TEXTUREFORMAT_ASTC_6x5_FLOAT
    Astc6x6Float # SDL_GPU_TEXTUREFORMAT_ASTC_6x6_FLOAT
    Astc8x5Float # SDL_GPU_TEXTUREFORMAT_ASTC_8x5_FLOAT
    Astc8x6Float # SDL_GPU_TEXTUREFORMAT_ASTC_8x6_FLOAT
    Astc8x8Float # SDL_GPU_TEXTUREFORMAT_ASTC_8x8_FLOAT
    Astc10x5Float # SDL_GPU_TEXTUREFORMAT_ASTC_10x5_FLOAT
    Astc10x6Float # SDL_GPU_TEXTUREFORMAT_ASTC_10x6_FLOAT
    Astc10x8Float # SDL_GPU_TEXTUREFORMAT_ASTC_10x8_FLOAT
    Astc10x10Float # SDL_GPU_TEXTUREFORMAT_ASTC_10x10_FLOAT
    Astc12x10Float # SDL_GPU_TEXTUREFORMAT_ASTC_12x10_FLOAT
    Astc12x12Float # SDL_GPU_TEXTUREFORMAT_ASTC_12x12_FLOAT
  end

  type GPUTextureUsageFlags = UInt32 # typedef Uint32 SDL_GPUTextureUsageFlags;

  enum GPUTextureType
    T2d # SDL_GPU_TEXTURETYPE_2D
    T2dArray # SDL_GPU_TEXTURETYPE_2D_ARRAY
    T3d # SDL_GPU_TEXTURETYPE_3D
    TCube # SDL_GPU_TEXTURETYPE_CUBE
    TCubeArray # SDL_GPU_TEXTURETYPE_CUBE_ARRAY
  end

  enum GPUSampleCount
    S1 # SDL_GPU_SAMPLECOUNT_1
    S2 # SDL_GPU_SAMPLECOUNT_2
    S4 # SDL_GPU_SAMPLECOUNT_4
    S8 # SDL_GPU_SAMPLECOUNT_8
  end

  enum GPUCubeMapFace
    Positivex # SDL_GPU_CUBEMAPFACE_POSITIVEX
    Negativex # SDL_GPU_CUBEMAPFACE_NEGATIVEX
    Positivey # SDL_GPU_CUBEMAPFACE_POSITIVEY
    Negativey # SDL_GPU_CUBEMAPFACE_NEGATIVEY
    Positivez # SDL_GPU_CUBEMAPFACE_POSITIVEZ
    Negativez # SDL_GPU_CUBEMAPFACE_NEGATIVEZ
  end

  type GPUBufferUsageFlags = UInt32 # typedef Uint32 SDL_GPUBufferUsageFlags;

  enum GPUTransferBufferUsage
    Upload # SDL_GPU_TRANSFERBUFFERUSAGE_UPLOAD
    Download # SDL_GPU_TRANSFERBUFFERUSAGE_DOWNLOAD
  end

  enum GPUShaderStage
    Vertex # SDL_GPU_SHADERSTAGE_VERTEX
    Fragment # SDL_GPU_SHADERSTAGE_FRAGMENT
  end

  type GPUShaderFormat = UInt32 # typedef Uint32 SDL_GPUShaderFormat;

  enum GPUVertexElementFormat
    Invalid # SDL_GPU_VERTEXELEMENTFORMAT_INVALID
    Int # SDL_GPU_VERTEXELEMENTFORMAT_INT
    Int2 # SDL_GPU_VERTEXELEMENTFORMAT_INT2
    Int3 # SDL_GPU_VERTEXELEMENTFORMAT_INT3
    Int4 # SDL_GPU_VERTEXELEMENTFORMAT_INT4
    Uint # SDL_GPU_VERTEXELEMENTFORMAT_UINT
    Uint2 # SDL_GPU_VERTEXELEMENTFORMAT_UINT2
    Uint3 # SDL_GPU_VERTEXELEMENTFORMAT_UINT3
    Uint4 # SDL_GPU_VERTEXELEMENTFORMAT_UINT4
    Float # SDL_GPU_VERTEXELEMENTFORMAT_FLOAT
    Float2 # SDL_GPU_VERTEXELEMENTFORMAT_FLOAT2
    Float3 # SDL_GPU_VERTEXELEMENTFORMAT_FLOAT3
    Float4 # SDL_GPU_VERTEXELEMENTFORMAT_FLOAT4
    Byte2 # SDL_GPU_VERTEXELEMENTFORMAT_BYTE2
    Byte4 # SDL_GPU_VERTEXELEMENTFORMAT_BYTE4
    Ubyte2 # SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2
    Ubyte4 # SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4
    Byte2Norm # SDL_GPU_VERTEXELEMENTFORMAT_BYTE2_NORM
    Byte4Norm # SDL_GPU_VERTEXELEMENTFORMAT_BYTE4_NORM
    Ubyte2Norm # SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2_NORM
    Ubyte4Norm # SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4_NORM
    Short2 # SDL_GPU_VERTEXELEMENTFORMAT_SHORT2
    Short4 # SDL_GPU_VERTEXELEMENTFORMAT_SHORT4
    Ushort2 # SDL_GPU_VERTEXELEMENTFORMAT_USHORT2
    Ushort4 # SDL_GPU_VERTEXELEMENTFORMAT_USHORT4
    Short2Norm # SDL_GPU_VERTEXELEMENTFORMAT_SHORT2_NORM
    Short4Norm # SDL_GPU_VERTEXELEMENTFORMAT_SHORT4_NORM
    Ushort2Norm # SDL_GPU_VERTEXELEMENTFORMAT_USHORT2_NORM
    Ushort4Norm # SDL_GPU_VERTEXELEMENTFORMAT_USHORT4_NORM
    Half2 # SDL_GPU_VERTEXELEMENTFORMAT_HALF2
    Half4 # SDL_GPU_VERTEXELEMENTFORMAT_HALF4
  end

  enum GPUVertexInputRate
    Vertex # SDL_GPU_VERTEXINPUTRATE_VERTEX
    Instance # SDL_GPU_VERTEXINPUTRATE_INSTANCE
  end

  enum GPUFillMode
    Fill # SDL_GPU_FILLMODE_FILL
    Line # SDL_GPU_FILLMODE_LINE
  end

  enum GPUCullMode
    None # SDL_GPU_CULLMODE_NONE
    Front # SDL_GPU_CULLMODE_FRONT
    Back # SDL_GPU_CULLMODE_BACK
  end

  enum GPUFrontFace
    CounterClockwise # SDL_GPU_FRONTFACE_COUNTER_CLOCKWISE
    Clockwise # SDL_GPU_FRONTFACE_CLOCKWISE
  end

  enum GPUCompareOp
    Invalid # SDL_GPU_COMPAREOP_INVALID
    Never # SDL_GPU_COMPAREOP_NEVER
    Less # SDL_GPU_COMPAREOP_LESS
    Equal # SDL_GPU_COMPAREOP_EQUAL
    LessOrEqual # SDL_GPU_COMPAREOP_LESS_OR_EQUAL
    Greater # SDL_GPU_COMPAREOP_GREATER
    NotEqual # SDL_GPU_COMPAREOP_NOT_EQUAL
    GreaterOrEqual # SDL_GPU_COMPAREOP_GREATER_OR_EQUAL
    Always # SDL_GPU_COMPAREOP_ALWAYS
  end

  enum GPUStencilOp
    Invalid # SDL_GPU_STENCILOP_INVALID
    Keep # SDL_GPU_STENCILOP_KEEP
    Zero # SDL_GPU_STENCILOP_ZERO
    Replace # SDL_GPU_STENCILOP_REPLACE
    IncrementAndClamp # SDL_GPU_STENCILOP_INCREMENT_AND_CLAMP
    DecrementAndClamp # SDL_GPU_STENCILOP_DECREMENT_AND_CLAMP
    Invert # SDL_GPU_STENCILOP_INVERT
    IncrementAndWrap # SDL_GPU_STENCILOP_INCREMENT_AND_WRAP
    DecrementAndWrap # SDL_GPU_STENCILOP_DECREMENT_AND_WRAP
  end

  enum GPUBlendOp
    Invalid # SDL_GPU_BLENDOP_INVALID
    Add # SDL_GPU_BLENDOP_ADD
    Subtract # SDL_GPU_BLENDOP_SUBTRACT
    ReverseSubtract # SDL_GPU_BLENDOP_REVERSE_SUBTRACT
    Min # SDL_GPU_BLENDOP_MIN
    Max # SDL_GPU_BLENDOP_MAX
  end

  enum GPUBlendFactor
    Invalid # SDL_GPU_BLENDFACTOR_INVALID
    Zero # SDL_GPU_BLENDFACTOR_ZERO
    One # SDL_GPU_BLENDFACTOR_ONE
    SrcColor # SDL_GPU_BLENDFACTOR_SRC_COLOR
    OneMinusSrcColor # SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_COLOR
    DstColor # SDL_GPU_BLENDFACTOR_DST_COLOR
    OneMinusDstColor # SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_COLOR
    SrcAlpha # SDL_GPU_BLENDFACTOR_SRC_ALPHA
    OneMinusSrcAlpha # SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_ALPHA
    DstAlpha # SDL_GPU_BLENDFACTOR_DST_ALPHA
    OneMinusDstAlpha # SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_ALPHA
    ConstantColor # SDL_GPU_BLENDFACTOR_CONSTANT_COLOR
    OneMinusConstantColor # SDL_GPU_BLENDFACTOR_ONE_MINUS_CONSTANT_COLOR
    SrcAlphaSaturate # SDL_GPU_BLENDFACTOR_SRC_ALPHA_SATURATE
  end

  type GPUColorComponentFlags = UInt8 # typedef Uint8 SDL_GPUColorComponentFlags;

  enum GPUFilter
    Nearest # SDL_GPU_FILTER_NEAREST
    Linear # SDL_GPU_FILTER_LINEAR
  end

  enum GPUSamplerMipmapMode
    Nearest # SDL_GPU_SAMPLERMIPMAPMODE_NEAREST
    Linear # SDL_GPU_SAMPLERMIPMAPMODE_LINEAR
  end

  enum GPUSamplerAddressMode
    Repeat # SDL_GPU_SAMPLERADDRESSMODE_REPEAT
    MirroredRepeat # SDL_GPU_SAMPLERADDRESSMODE_MIRRORED_REPEAT
    ClampToEdge # SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE
  end

  enum GPUPresentMode
    Vsync # SDL_GPU_PRESENTMODE_VSYNC
    Immediate # SDL_GPU_PRESENTMODE_IMMEDIATE
    Mailbox # SDL_GPU_PRESENTMODE_MAILBOX
  end

  enum GPUSwapchainComposition
    Sdr # SDL_GPU_SWAPCHAINCOMPOSITION_SDR
    SdrLinear # SDL_GPU_SWAPCHAINCOMPOSITION_SDR_LINEAR
    HdrExtendedLinear # SDL_GPU_SWAPCHAINCOMPOSITION_HDR_EXTENDED_LINEAR
    Hdr10St2084 # SDL_GPU_SWAPCHAINCOMPOSITION_HDR10_ST2084
  end

  struct GPUViewport
    x : Float32
    y : Float32
    w : Float32
    h : Float32
    min_depth : Float32
    max_depth : Float32
  end

  struct GPUTextureTransferInfo
    transfer_buffer : GPUTransferBuffer*
    offset : UInt32
    pixels_per_row : UInt32
    rows_per_layer : UInt32
  end

  struct GPUTransferBufferLocation
    transfer_buffer : GPUTransferBuffer*
    offset : UInt32
  end

  struct GPUTextureLocation
    texture : GPUTexture*
    mip_level : UInt32
    layer : UInt32
    x : UInt32
    y : UInt32
    z : UInt32
  end

  struct GPUTextureRegion
    texture : GPUTexture*
    mip_level : UInt32
    layer : UInt32
    x : UInt32
    y : UInt32
    z : UInt32
    w : UInt32
    h : UInt32
    d : UInt32
  end

  struct GPUBlitRegion
    texture : GPUTexture*
    mip_level : UInt32
    layer_or_depth_plane : UInt32
    x : UInt32
    y : UInt32
    w : UInt32
    h : UInt32
  end

  struct GPUBufferLocation
    buffer : GPUBuffer*
    offset : UInt32
  end

  struct GPUBufferRegion
    buffer : GPUBuffer*
    offset : UInt32
    size : UInt32
  end

  struct GPUIndirectDrawCommand
    num_vertices : UInt32
    num_instances : UInt32
    first_vertex : UInt32
    first_instance : UInt32
  end

  struct GPUIndexedIndirectDrawCommand
    num_indices : UInt32
    num_instances : UInt32
    first_index : UInt32
    vertex_offset : Int32
    first_instance : UInt32
  end

  struct GPUIndirectDispatchCommand
    groupcount_x : UInt32
    groupcount_y : UInt32
    groupcount_z : UInt32
  end

  struct GPUSamplerCreateInfo
    min_filter : GPUFilter
    mag_filter : GPUFilter
    mipmap_mode : GPUSamplerMipmapMode
    address_mode_u : GPUSamplerAddressMode
    address_mode_v : GPUSamplerAddressMode
    address_mode_w : GPUSamplerAddressMode
    mip_lod_bias : Float32
    max_anisotropy : Float32
    compare_op : GPUCompareOp
    min_lod : Float32
    max_lod : Float32
    enable_anisotropy : Bool
    enable_compare : Bool
    padding1 : UInt8
    padding2 : UInt8
    props : PropertiesID
  end

  struct GPUVertexBufferDescription
    slot : UInt32
    pitch : UInt32
    input_rate : GPUVertexInputRate
    instance_step_rate : UInt32
  end

  struct GPUVertexAttribute
    location : UInt32
    buffer_slot : UInt32
    format : GPUVertexElementFormat
    offset : UInt32
  end

  struct GPUVertexInputState
    vertex_buffer_descriptions : GPUVertexBufferDescription*
    num_vertex_buffers : UInt32
    vertex_attributes : GPUVertexAttribute*
    num_vertex_attributes : UInt32
  end

  struct GPUStencilOpState
    fail_op : GPUStencilOp
    pass_op : GPUStencilOp
    depth_fail_op : GPUStencilOp
    compare_op : GPUCompareOp
  end

  struct GPUColorTargetBlendState
    src_color_blendfactor : GPUBlendFactor
    dst_color_blendfactor : GPUBlendFactor
    color_blend_op : GPUBlendOp
    src_alpha_blendfactor : GPUBlendFactor
    dst_alpha_blendfactor : GPUBlendFactor
    alpha_blend_op : GPUBlendOp
    color_write_mask : GPUColorComponentFlags
    enable_blend : Bool
    enable_color_write_mask : Bool
    padding1 : UInt8
    padding2 : UInt8
  end

  struct GPUShaderCreateInfo
    code_size : LibC::SizeT
    code : UInt8*
    entrypoint : Char*
    format : GPUShaderFormat
    stage : GPUShaderStage
    num_samplers : UInt32
    num_storage_textures : UInt32
    num_storage_buffers : UInt32
    num_uniform_buffers : UInt32
    props : PropertiesID
  end

  struct GPUTextureCreateInfo
    type : GPUTextureType
    format : GPUTextureFormat
    usage : GPUTextureUsageFlags
    width : UInt32
    height : UInt32
    layer_count_or_depth : UInt32
    num_levels : UInt32
    sample_count : GPUSampleCount
    props : PropertiesID
  end

  struct GPUBufferCreateInfo
    usage : GPUBufferUsageFlags
    size : UInt32
    props : PropertiesID
  end

  struct GPUTransferBufferCreateInfo
    usage : GPUTransferBufferUsage
    size : UInt32
    props : PropertiesID
  end

  struct GPURasterizerState
    fill_mode : GPUFillMode
    cull_mode : GPUCullMode
    front_face : GPUFrontFace
    depth_bias_ant_factor : Float32
    depth_bias_clamp : Float32
    depth_bias_slope_factor : Float32
    enable_depth_bias : Bool
    enable_depth_clip : Bool
    padding1 : UInt8
    padding2 : UInt8
  end

  struct GPUMultisampleState
    sample_count : GPUSampleCount
    sample_mask : UInt32
    enable_mask : Bool
    enable_alpha_to_coverage : Bool
    padding2 : UInt8
    padding3 : UInt8
  end

  struct GPUDepthStencilState
    compare_op : GPUCompareOp
    back_stencil_state : GPUStencilOpState
    front_stencil_state : GPUStencilOpState
    compare_mask : UInt8
    write_mask : UInt8
    enable_depth_test : Bool
    enable_depth_write : Bool
    enable_stencil_test : Bool
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct GPUColorTargetDescription
    format : GPUTextureFormat
    blend_state : GPUColorTargetBlendState
  end

  struct GPUGraphicsPipelineTargetInfo
    color_target_descriptions : GPUColorTargetDescription*
    num_color_targets : UInt32
    depth_stencil_format : GPUTextureFormat
    has_depth_stencil_target : Bool
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct GPUGraphicsPipelineCreateInfo
    vertex_shader : GPUShader*
    fragment_shader : GPUShader*
    vertex_input_state : GPUVertexInputState
    primitive_type : GPUPrimitiveType
    rasterizer_state : GPURasterizerState
    multisample_state : GPUMultisampleState
    depth_stencil_state : GPUDepthStencilState
    target_info : GPUGraphicsPipelineTargetInfo
    props : PropertiesID
  end

  struct GPUComputePipelineCreateInfo
    code_size : LibC::SizeT
    code : UInt8*
    entrypoint : Char*
    format : GPUShaderFormat
    num_samplers : UInt32
    num_readonly_storage_textures : UInt32
    num_readonly_storage_buffers : UInt32
    num_readwrite_storage_textures : UInt32
    num_readwrite_storage_buffers : UInt32
    num_uniform_buffers : UInt32
    threadcount_x : UInt32
    threadcount_y : UInt32
    threadcount_z : UInt32
    props : PropertiesID
  end

  struct GPUColorTargetInfo
    texture : GPUTexture*
    mip_level : UInt32
    layer_or_depth_plane : UInt32
    clear_color : FColor
    load_op : GPULoadOp
    store_op : GPUStoreOp
    resolve_texture : GPUTexture*
    resolve_mip_level : UInt32
    resolve_layer : UInt32
    cycle : Bool
    cycle_resolve_texture : Bool
    padding1 : UInt8
    padding2 : UInt8
  end

  struct GPUDepthStencilTargetInfo
    texture : GPUTexture*
    clear_depth : Float32
    load_op : GPULoadOp
    store_op : GPUStoreOp
    stencil_load_op : GPULoadOp
    stencil_store_op : GPUStoreOp
    cycle : Bool
    clear_stencil : UInt8
    mip_level : UInt8
    layer : UInt8
  end

  struct GPUBlitInfo
    source : GPUBlitRegion
    destination : GPUBlitRegion
    load_op : GPULoadOp
    clear_color : FColor
    flip_mode : FlipMode
    filter : GPUFilter
    cycle : Bool
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct GPUBufferBinding
    buffer : GPUBuffer*
    offset : UInt32
  end

  struct GPUTextureSamplerBinding
    texture : GPUTexture*
    sampler : GPUSampler*
  end

  struct GPUStorageBufferReadWriteBinding
    buffer : GPUBuffer*
    cycle : Bool
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct GPUStorageTextureReadWriteBinding
    texture : GPUTexture*
    mip_level : UInt32
    layer : UInt32
    cycle : Bool
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  # extern SDL_DECLSPEC bool SDLCALL SDL_GPUSupportsShaderFormats( SDL_GPUShaderFormat format_flags, const char *name);
  fun gpu_supports_shader_formats = SDL_GPUSupportsShaderFormats(format_flags : GPUShaderFormat, name : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GPUSupportsProperties( SDL_PropertiesID props);
  fun gpu_supports_properties = SDL_GPUSupportsProperties(props : PropertiesID) : Bool
  # extern SDL_DECLSPEC SDL_GPUDevice * SDLCALL SDL_CreateGPUDevice( SDL_GPUShaderFormat format_flags, bool debug_mode, const char *name);
  fun creategpu_device = SDL_CreateGPUDevice(format_flags : GPUShaderFormat, debug_mode : Bool, name : Char*) : GPUDevice*
  # extern SDL_DECLSPEC SDL_GPUDevice * SDLCALL SDL_CreateGPUDeviceWithProperties( SDL_PropertiesID props);
  fun creategpu_device_with_properties = SDL_CreateGPUDeviceWithProperties(props : PropertiesID) : GPUDevice*

  struct GPUVulkanOptions
    vulkan_api_version : UInt32
    feature_list : Void*
    vulkan_10_physical_device_features : Void*
    device_extension_count : UInt32
    device_extension_names : Char**
    instance_extension_count : UInt32
    instance_extension_names : Char**
  end

  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyGPUDevice(SDL_GPUDevice *device);
  fun destroygpu_device = SDL_DestroyGPUDevice(device : GPUDevice*) : Void
  # extern SDL_DECLSPEC int SDLCALL SDL_GetNumGPUDrivers(void);
  fun get_num_gpu_drivers = SDL_GetNumGPUDrivers : Int
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGPUDriver(int index);
  fun getgpu_driver = SDL_GetGPUDriver(index : Int) : Char*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGPUDeviceDriver(SDL_GPUDevice *device);
  fun getgpu_device_driver = SDL_GetGPUDeviceDriver(device : GPUDevice*) : Char*
  # extern SDL_DECLSPEC SDL_GPUShaderFormat SDLCALL SDL_GetGPUShaderFormats(SDL_GPUDevice *device);
  fun getgpu_shader_formats = SDL_GetGPUShaderFormats(device : GPUDevice*) : GPUShaderFormat
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetGPUDeviceProperties(SDL_GPUDevice *device);
  fun getgpu_device_properties = SDL_GetGPUDeviceProperties(device : GPUDevice*) : PropertiesID
  # extern SDL_DECLSPEC SDL_GPUComputePipeline * SDLCALL SDL_CreateGPUComputePipeline( SDL_GPUDevice *device, const SDL_GPUComputePipelineCreateInfo *createinfo);
  fun creategpu_compute_pipeline = SDL_CreateGPUComputePipeline(device : GPUDevice*, createinfo : GPUComputePipelineCreateInfo*) : GPUComputePipeline*
  # extern SDL_DECLSPEC SDL_GPUGraphicsPipeline * SDLCALL SDL_CreateGPUGraphicsPipeline( SDL_GPUDevice *device, const SDL_GPUGraphicsPipelineCreateInfo *createinfo);
  fun creategpu_graphics_pipeline = SDL_CreateGPUGraphicsPipeline(device : GPUDevice*, createinfo : GPUGraphicsPipelineCreateInfo*) : GPUGraphicsPipeline*
  # extern SDL_DECLSPEC SDL_GPUSampler * SDLCALL SDL_CreateGPUSampler( SDL_GPUDevice *device, const SDL_GPUSamplerCreateInfo *createinfo);
  fun creategpu_sampler = SDL_CreateGPUSampler(device : GPUDevice*, createinfo : GPUSamplerCreateInfo*) : GPUSampler*
  # extern SDL_DECLSPEC SDL_GPUShader * SDLCALL SDL_CreateGPUShader( SDL_GPUDevice *device, const SDL_GPUShaderCreateInfo *createinfo);
  fun creategpu_shader = SDL_CreateGPUShader(device : GPUDevice*, createinfo : GPUShaderCreateInfo*) : GPUShader*
  # extern SDL_DECLSPEC SDL_GPUTexture * SDLCALL SDL_CreateGPUTexture( SDL_GPUDevice *device, const SDL_GPUTextureCreateInfo *createinfo);
  fun creategpu_texture = SDL_CreateGPUTexture(device : GPUDevice*, createinfo : GPUTextureCreateInfo*) : GPUTexture*
  # extern SDL_DECLSPEC SDL_GPUBuffer * SDLCALL SDL_CreateGPUBuffer( SDL_GPUDevice *device, const SDL_GPUBufferCreateInfo *createinfo);
  fun creategpu_buffer = SDL_CreateGPUBuffer(device : GPUDevice*, createinfo : GPUBufferCreateInfo*) : GPUBuffer*
  # extern SDL_DECLSPEC SDL_GPUTransferBuffer * SDLCALL SDL_CreateGPUTransferBuffer( SDL_GPUDevice *device, const SDL_GPUTransferBufferCreateInfo *createinfo);
  fun creategpu_transfer_buffer = SDL_CreateGPUTransferBuffer(device : GPUDevice*, createinfo : GPUTransferBufferCreateInfo*) : GPUTransferBuffer*
  # extern SDL_DECLSPEC void SDLCALL SDL_SetGPUBufferName( SDL_GPUDevice *device, SDL_GPUBuffer *buffer, const char *text);
  fun setgpu_buffer_name = SDL_SetGPUBufferName(device : GPUDevice*, buffer : GPUBuffer*, text : Char*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_SetGPUTextureName( SDL_GPUDevice *device, SDL_GPUTexture *texture, const char *text);
  fun setgpu_texture_name = SDL_SetGPUTextureName(device : GPUDevice*, texture : GPUTexture*, text : Char*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_InsertGPUDebugLabel( SDL_GPUCommandBuffer *command_buffer, const char *text);
  fun insertgpu_debug_label = SDL_InsertGPUDebugLabel(command_buffer : GPUCommandBuffer*, text : Char*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_PushGPUDebugGroup( SDL_GPUCommandBuffer *command_buffer, const char *name);
  fun pushgpu_debug_group = SDL_PushGPUDebugGroup(command_buffer : GPUCommandBuffer*, name : Char*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_PopGPUDebugGroup( SDL_GPUCommandBuffer *command_buffer);
  fun popgpu_debug_group = SDL_PopGPUDebugGroup(command_buffer : GPUCommandBuffer*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_ReleaseGPUTexture( SDL_GPUDevice *device, SDL_GPUTexture *texture);
  fun releasegpu_texture = SDL_ReleaseGPUTexture(device : GPUDevice*, texture : GPUTexture*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_ReleaseGPUSampler( SDL_GPUDevice *device, SDL_GPUSampler *sampler);
  fun releasegpu_sampler = SDL_ReleaseGPUSampler(device : GPUDevice*, sampler : GPUSampler*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_ReleaseGPUBuffer( SDL_GPUDevice *device, SDL_GPUBuffer *buffer);
  fun releasegpu_buffer = SDL_ReleaseGPUBuffer(device : GPUDevice*, buffer : GPUBuffer*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_ReleaseGPUTransferBuffer( SDL_GPUDevice *device, SDL_GPUTransferBuffer *transfer_buffer);
  fun releasegpu_transfer_buffer = SDL_ReleaseGPUTransferBuffer(device : GPUDevice*, transfer_buffer : GPUTransferBuffer*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_ReleaseGPUComputePipeline( SDL_GPUDevice *device, SDL_GPUComputePipeline *compute_pipeline);
  fun releasegpu_compute_pipeline = SDL_ReleaseGPUComputePipeline(device : GPUDevice*, compute_pipeline : GPUComputePipeline*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_ReleaseGPUShader( SDL_GPUDevice *device, SDL_GPUShader *shader);
  fun releasegpu_shader = SDL_ReleaseGPUShader(device : GPUDevice*, shader : GPUShader*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_ReleaseGPUGraphicsPipeline( SDL_GPUDevice *device, SDL_GPUGraphicsPipeline *graphics_pipeline);
  fun releasegpu_graphics_pipeline = SDL_ReleaseGPUGraphicsPipeline(device : GPUDevice*, graphics_pipeline : GPUGraphicsPipeline*) : Void
  # extern SDL_DECLSPEC SDL_GPUCommandBuffer * SDLCALL SDL_AcquireGPUCommandBuffer( SDL_GPUDevice *device);
  fun acquiregpu_command_buffer = SDL_AcquireGPUCommandBuffer(device : GPUDevice*) : GPUCommandBuffer*
  # extern SDL_DECLSPEC void SDLCALL SDL_PushGPUVertexUniformData( SDL_GPUCommandBuffer *command_buffer, Uint32 slot_index, const void *data, Uint32 length);
  fun pushgpu_vertex_uniform_data = SDL_PushGPUVertexUniformData(command_buffer : GPUCommandBuffer*, slot_index : UInt32, data : Void*, length : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_PushGPUFragmentUniformData( SDL_GPUCommandBuffer *command_buffer, Uint32 slot_index, const void *data, Uint32 length);
  fun pushgpu_fragment_uniform_data = SDL_PushGPUFragmentUniformData(command_buffer : GPUCommandBuffer*, slot_index : UInt32, data : Void*, length : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_PushGPUComputeUniformData( SDL_GPUCommandBuffer *command_buffer, Uint32 slot_index, const void *data, Uint32 length);
  fun pushgpu_compute_uniform_data = SDL_PushGPUComputeUniformData(command_buffer : GPUCommandBuffer*, slot_index : UInt32, data : Void*, length : UInt32) : Void
  # extern SDL_DECLSPEC SDL_GPURenderPass * SDLCALL SDL_BeginGPURenderPass( SDL_GPUCommandBuffer *command_buffer, const SDL_GPUColorTargetInfo *color_target_infos, Uint32 num_color_targets, const SDL_GPUDepthStencilTargetInfo *depth_stencil_target_info);
  fun begingpu_render_pass = SDL_BeginGPURenderPass(command_buffer : GPUCommandBuffer*, color_target_infos : GPUColorTargetInfo*, num_color_targets : UInt32, depth_stencil_target_info : GPUDepthStencilTargetInfo*) : GPURenderPass*
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUGraphicsPipeline( SDL_GPURenderPass *render_pass, SDL_GPUGraphicsPipeline *graphics_pipeline);
  fun bindgpu_graphics_pipeline = SDL_BindGPUGraphicsPipeline(render_pass : GPURenderPass*, graphics_pipeline : GPUGraphicsPipeline*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_SetGPUViewport( SDL_GPURenderPass *render_pass, const SDL_GPUViewport *viewport);
  fun setgpu_viewport = SDL_SetGPUViewport(render_pass : GPURenderPass*, viewport : GPUViewport*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_SetGPUScissor( SDL_GPURenderPass *render_pass, const SDL_Rect *scissor);
  fun setgpu_scissor = SDL_SetGPUScissor(render_pass : GPURenderPass*, scissor : Rect*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_SetGPUBlendConstants( SDL_GPURenderPass *render_pass, SDL_FColor blend_constants);
  fun setgpu_blend_constants = SDL_SetGPUBlendConstants(render_pass : GPURenderPass*, blend_constants : FColor) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_SetGPUStencilReference( SDL_GPURenderPass *render_pass, Uint8 reference);
  fun setgpu_stencil_reference = SDL_SetGPUStencilReference(render_pass : GPURenderPass*, reference : UInt8) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUVertexBuffers( SDL_GPURenderPass *render_pass, Uint32 first_slot, const SDL_GPUBufferBinding *bindings, Uint32 num_bindings);
  fun bindgpu_vertex_buffers = SDL_BindGPUVertexBuffers(render_pass : GPURenderPass*, first_slot : UInt32, bindings : GPUBufferBinding*, num_bindings : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUIndexBuffer( SDL_GPURenderPass *render_pass, const SDL_GPUBufferBinding *binding, SDL_GPUIndexElementSize index_element_size);
  fun bindgpu_index_buffer = SDL_BindGPUIndexBuffer(render_pass : GPURenderPass*, binding : GPUBufferBinding*, index_element_size : GPUIndexElementSize) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUVertexSamplers( SDL_GPURenderPass *render_pass, Uint32 first_slot, const SDL_GPUTextureSamplerBinding *texture_sampler_bindings, Uint32 num_bindings);
  fun bindgpu_vertex_samplers = SDL_BindGPUVertexSamplers(render_pass : GPURenderPass*, first_slot : UInt32, texture_sampler_bindings : GPUTextureSamplerBinding*, num_bindings : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUVertexStorageTextures( SDL_GPURenderPass *render_pass, Uint32 first_slot, SDL_GPUTexture *const *storage_textures, Uint32 num_bindings);
  fun bindgpu_vertex_storage_textures = SDL_BindGPUVertexStorageTextures(render_pass : GPURenderPass*, first_slot : UInt32, storage_textures : GPUTexture**, num_bindings : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUVertexStorageBuffers( SDL_GPURenderPass *render_pass, Uint32 first_slot, SDL_GPUBuffer *const *storage_buffers, Uint32 num_bindings);
  fun bindgpu_vertex_storage_buffers = SDL_BindGPUVertexStorageBuffers(render_pass : GPURenderPass*, first_slot : UInt32, storage_buffers : GPUBuffer**, num_bindings : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUFragmentSamplers( SDL_GPURenderPass *render_pass, Uint32 first_slot, const SDL_GPUTextureSamplerBinding *texture_sampler_bindings, Uint32 num_bindings);
  fun bindgpu_fragment_samplers = SDL_BindGPUFragmentSamplers(render_pass : GPURenderPass*, first_slot : UInt32, texture_sampler_bindings : GPUTextureSamplerBinding*, num_bindings : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUFragmentStorageTextures( SDL_GPURenderPass *render_pass, Uint32 first_slot, SDL_GPUTexture *const *storage_textures, Uint32 num_bindings);
  fun bindgpu_fragment_storage_textures = SDL_BindGPUFragmentStorageTextures(render_pass : GPURenderPass*, first_slot : UInt32, storage_textures : GPUTexture**, num_bindings : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUFragmentStorageBuffers( SDL_GPURenderPass *render_pass, Uint32 first_slot, SDL_GPUBuffer *const *storage_buffers, Uint32 num_bindings);
  fun bindgpu_fragment_storage_buffers = SDL_BindGPUFragmentStorageBuffers(render_pass : GPURenderPass*, first_slot : UInt32, storage_buffers : GPUBuffer**, num_bindings : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DrawGPUIndexedPrimitives( SDL_GPURenderPass *render_pass, Uint32 num_indices, Uint32 num_instances, Uint32 first_index, Sint32 vertex_offset, Uint32 first_instance);
  fun drawgpu_indexed_primitives = SDL_DrawGPUIndexedPrimitives(render_pass : GPURenderPass*, num_indices : UInt32, num_instances : UInt32, first_index : UInt32, vertex_offset : Int32, first_instance : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DrawGPUPrimitives( SDL_GPURenderPass *render_pass, Uint32 num_vertices, Uint32 num_instances, Uint32 first_vertex, Uint32 first_instance);
  fun drawgpu_primitives = SDL_DrawGPUPrimitives(render_pass : GPURenderPass*, num_vertices : UInt32, num_instances : UInt32, first_vertex : UInt32, first_instance : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DrawGPUPrimitivesIndirect( SDL_GPURenderPass *render_pass, SDL_GPUBuffer *buffer, Uint32 offset, Uint32 draw_count);
  fun drawgpu_primitives_indirect = SDL_DrawGPUPrimitivesIndirect(render_pass : GPURenderPass*, buffer : GPUBuffer*, offset : UInt32, draw_count : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DrawGPUIndexedPrimitivesIndirect( SDL_GPURenderPass *render_pass, SDL_GPUBuffer *buffer, Uint32 offset, Uint32 draw_count);
  fun drawgpu_indexed_primitives_indirect = SDL_DrawGPUIndexedPrimitivesIndirect(render_pass : GPURenderPass*, buffer : GPUBuffer*, offset : UInt32, draw_count : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_EndGPURenderPass( SDL_GPURenderPass *render_pass);
  fun endgpu_render_pass = SDL_EndGPURenderPass(render_pass : GPURenderPass*) : Void
  # extern SDL_DECLSPEC SDL_GPUComputePass * SDLCALL SDL_BeginGPUComputePass( SDL_GPUCommandBuffer *command_buffer, const SDL_GPUStorageTextureReadWriteBinding *storage_texture_bindings, Uint32 num_storage_texture_bindings, const SDL_GPUStorageBufferReadWriteBinding *storage_buffer_bindings, Uint32 num_storage_buffer_bindings);
  fun begingpu_compute_pass = SDL_BeginGPUComputePass(command_buffer : GPUCommandBuffer*, storage_texture_bindings : GPUStorageTextureReadWriteBinding*, num_storage_texture_bindings : UInt32, storage_buffer_bindings : GPUStorageBufferReadWriteBinding*, num_storage_buffer_bindings : UInt32) : GPUComputePass*
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUComputePipeline( SDL_GPUComputePass *compute_pass, SDL_GPUComputePipeline *compute_pipeline);
  fun bindgpu_compute_pipeline = SDL_BindGPUComputePipeline(compute_pass : GPUComputePass*, compute_pipeline : GPUComputePipeline*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUComputeSamplers( SDL_GPUComputePass *compute_pass, Uint32 first_slot, const SDL_GPUTextureSamplerBinding *texture_sampler_bindings, Uint32 num_bindings);
  fun bindgpu_compute_samplers = SDL_BindGPUComputeSamplers(compute_pass : GPUComputePass*, first_slot : UInt32, texture_sampler_bindings : GPUTextureSamplerBinding*, num_bindings : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUComputeStorageTextures( SDL_GPUComputePass *compute_pass, Uint32 first_slot, SDL_GPUTexture *const *storage_textures, Uint32 num_bindings);
  fun bindgpu_compute_storage_textures = SDL_BindGPUComputeStorageTextures(compute_pass : GPUComputePass*, first_slot : UInt32, storage_textures : GPUTexture**, num_bindings : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BindGPUComputeStorageBuffers( SDL_GPUComputePass *compute_pass, Uint32 first_slot, SDL_GPUBuffer *const *storage_buffers, Uint32 num_bindings);
  fun bindgpu_compute_storage_buffers = SDL_BindGPUComputeStorageBuffers(compute_pass : GPUComputePass*, first_slot : UInt32, storage_buffers : GPUBuffer**, num_bindings : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DispatchGPUCompute( SDL_GPUComputePass *compute_pass, Uint32 groupcount_x, Uint32 groupcount_y, Uint32 groupcount_z);
  fun dispatchgpu_compute = SDL_DispatchGPUCompute(compute_pass : GPUComputePass*, groupcount_x : UInt32, groupcount_y : UInt32, groupcount_z : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DispatchGPUComputeIndirect( SDL_GPUComputePass *compute_pass, SDL_GPUBuffer *buffer, Uint32 offset);
  fun dispatchgpu_compute_indirect = SDL_DispatchGPUComputeIndirect(compute_pass : GPUComputePass*, buffer : GPUBuffer*, offset : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_EndGPUComputePass( SDL_GPUComputePass *compute_pass);
  fun endgpu_compute_pass = SDL_EndGPUComputePass(compute_pass : GPUComputePass*) : Void
  # extern SDL_DECLSPEC void * SDLCALL SDL_MapGPUTransferBuffer( SDL_GPUDevice *device, SDL_GPUTransferBuffer *transfer_buffer, bool cycle);
  fun mapgpu_transfer_buffer = SDL_MapGPUTransferBuffer(device : GPUDevice*, transfer_buffer : GPUTransferBuffer*, cycle : Bool) : Void*
  # extern SDL_DECLSPEC void SDLCALL SDL_UnmapGPUTransferBuffer( SDL_GPUDevice *device, SDL_GPUTransferBuffer *transfer_buffer);
  fun unmapgpu_transfer_buffer = SDL_UnmapGPUTransferBuffer(device : GPUDevice*, transfer_buffer : GPUTransferBuffer*) : Void
  # extern SDL_DECLSPEC SDL_GPUCopyPass * SDLCALL SDL_BeginGPUCopyPass( SDL_GPUCommandBuffer *command_buffer);
  fun begingpu_copy_pass = SDL_BeginGPUCopyPass(command_buffer : GPUCommandBuffer*) : GPUCopyPass*
  # extern SDL_DECLSPEC void SDLCALL SDL_UploadToGPUTexture( SDL_GPUCopyPass *copy_pass, const SDL_GPUTextureTransferInfo *source, const SDL_GPUTextureRegion *destination, bool cycle);
  fun upload_to_gpu_texture = SDL_UploadToGPUTexture(copy_pass : GPUCopyPass*, source : GPUTextureTransferInfo*, destination : GPUTextureRegion*, cycle : Bool) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_UploadToGPUBuffer( SDL_GPUCopyPass *copy_pass, const SDL_GPUTransferBufferLocation *source, const SDL_GPUBufferRegion *destination, bool cycle);
  fun upload_to_gpu_buffer = SDL_UploadToGPUBuffer(copy_pass : GPUCopyPass*, source : GPUTransferBufferLocation*, destination : GPUBufferRegion*, cycle : Bool) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_CopyGPUTextureToTexture( SDL_GPUCopyPass *copy_pass, const SDL_GPUTextureLocation *source, const SDL_GPUTextureLocation *destination, Uint32 w, Uint32 h, Uint32 d, bool cycle);
  fun copygpu_texture_to_texture = SDL_CopyGPUTextureToTexture(copy_pass : GPUCopyPass*, source : GPUTextureLocation*, destination : GPUTextureLocation*, w : UInt32, h : UInt32, d : UInt32, cycle : Bool) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_CopyGPUBufferToBuffer( SDL_GPUCopyPass *copy_pass, const SDL_GPUBufferLocation *source, const SDL_GPUBufferLocation *destination, Uint32 size, bool cycle);
  fun copygpu_buffer_to_buffer = SDL_CopyGPUBufferToBuffer(copy_pass : GPUCopyPass*, source : GPUBufferLocation*, destination : GPUBufferLocation*, size : UInt32, cycle : Bool) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DownloadFromGPUTexture( SDL_GPUCopyPass *copy_pass, const SDL_GPUTextureRegion *source, const SDL_GPUTextureTransferInfo *destination);
  fun download_from_gpu_texture = SDL_DownloadFromGPUTexture(copy_pass : GPUCopyPass*, source : GPUTextureRegion*, destination : GPUTextureTransferInfo*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DownloadFromGPUBuffer( SDL_GPUCopyPass *copy_pass, const SDL_GPUBufferRegion *source, const SDL_GPUTransferBufferLocation *destination);
  fun download_from_gpu_buffer = SDL_DownloadFromGPUBuffer(copy_pass : GPUCopyPass*, source : GPUBufferRegion*, destination : GPUTransferBufferLocation*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_EndGPUCopyPass( SDL_GPUCopyPass *copy_pass);
  fun endgpu_copy_pass = SDL_EndGPUCopyPass(copy_pass : GPUCopyPass*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_GenerateMipmapsForGPUTexture( SDL_GPUCommandBuffer *command_buffer, SDL_GPUTexture *texture);
  fun generate_mipmaps_for_gpu_texture = SDL_GenerateMipmapsForGPUTexture(command_buffer : GPUCommandBuffer*, texture : GPUTexture*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BlitGPUTexture( SDL_GPUCommandBuffer *command_buffer, const SDL_GPUBlitInfo *info);
  fun blitgpu_texture = SDL_BlitGPUTexture(command_buffer : GPUCommandBuffer*, info : GPUBlitInfo*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_WindowSupportsGPUSwapchainComposition( SDL_GPUDevice *device, SDL_Window *window, SDL_GPUSwapchainComposition swapchain_composition);
  fun window_supports_gpu_swapchain_composition = SDL_WindowSupportsGPUSwapchainComposition(device : GPUDevice*, window : Window*, swapchain_composition : GPUSwapchainComposition) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WindowSupportsGPUPresentMode( SDL_GPUDevice *device, SDL_Window *window, SDL_GPUPresentMode present_mode);
  fun window_supports_gpu_present_mode = SDL_WindowSupportsGPUPresentMode(device : GPUDevice*, window : Window*, present_mode : GPUPresentMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ClaimWindowForGPUDevice( SDL_GPUDevice *device, SDL_Window *window);
  fun claim_window_for_gpu_device = SDL_ClaimWindowForGPUDevice(device : GPUDevice*, window : Window*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_ReleaseWindowFromGPUDevice( SDL_GPUDevice *device, SDL_Window *window);
  fun release_window_from_gpu_device = SDL_ReleaseWindowFromGPUDevice(device : GPUDevice*, window : Window*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetGPUSwapchainParameters( SDL_GPUDevice *device, SDL_Window *window, SDL_GPUSwapchainComposition swapchain_composition, SDL_GPUPresentMode present_mode);
  fun setgpu_swapchain_parameters = SDL_SetGPUSwapchainParameters(device : GPUDevice*, window : Window*, swapchain_composition : GPUSwapchainComposition, present_mode : GPUPresentMode) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetGPUAllowedFramesInFlight( SDL_GPUDevice *device, Uint32 allowed_frames_in_flight);
  fun setgpu_allowed_frames_in_flight = SDL_SetGPUAllowedFramesInFlight(device : GPUDevice*, allowed_frames_in_flight : UInt32) : Bool
  # extern SDL_DECLSPEC SDL_GPUTextureFormat SDLCALL SDL_GetGPUSwapchainTextureFormat( SDL_GPUDevice *device, SDL_Window *window);
  fun getgpu_swapchain_texture_format = SDL_GetGPUSwapchainTextureFormat(device : GPUDevice*, window : Window*) : GPUTextureFormat
  # extern SDL_DECLSPEC bool SDLCALL SDL_AcquireGPUSwapchainTexture( SDL_GPUCommandBuffer *command_buffer, SDL_Window *window, SDL_GPUTexture **swapchain_texture, Uint32 *swapchain_texture_width, Uint32 *swapchain_texture_height);
  fun acquiregpu_swapchain_texture = SDL_AcquireGPUSwapchainTexture(command_buffer : GPUCommandBuffer*, window : Window*, swapchain_texture : GPUTexture*, swapchain_texture_width : UInt32*, swapchain_texture_height : UInt32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WaitForGPUSwapchain( SDL_GPUDevice *device, SDL_Window *window);
  fun wait_for_gpu_swapchain = SDL_WaitForGPUSwapchain(device : GPUDevice*, window : Window*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WaitAndAcquireGPUSwapchainTexture( SDL_GPUCommandBuffer *command_buffer, SDL_Window *window, SDL_GPUTexture **swapchain_texture, Uint32 *swapchain_texture_width, Uint32 *swapchain_texture_height);
  fun wait_and_acquire_gpu_swapchain_texture = SDL_WaitAndAcquireGPUSwapchainTexture(command_buffer : GPUCommandBuffer*, window : Window*, swapchain_texture : GPUTexture*, swapchain_texture_width : UInt32*, swapchain_texture_height : UInt32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SubmitGPUCommandBuffer( SDL_GPUCommandBuffer *command_buffer);
  fun submitgpu_command_buffer = SDL_SubmitGPUCommandBuffer(command_buffer : GPUCommandBuffer*) : Bool
  # extern SDL_DECLSPEC SDL_GPUFence * SDLCALL SDL_SubmitGPUCommandBufferAndAcquireFence( SDL_GPUCommandBuffer *command_buffer);
  fun submitgpu_command_buffer_and_acquire_fence = SDL_SubmitGPUCommandBufferAndAcquireFence(command_buffer : GPUCommandBuffer*) : GPUFence*
  # extern SDL_DECLSPEC bool SDLCALL SDL_CancelGPUCommandBuffer( SDL_GPUCommandBuffer *command_buffer);
  fun cancelgpu_command_buffer = SDL_CancelGPUCommandBuffer(command_buffer : GPUCommandBuffer*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WaitForGPUIdle( SDL_GPUDevice *device);
  fun wait_for_gpu_idle = SDL_WaitForGPUIdle(device : GPUDevice*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WaitForGPUFences( SDL_GPUDevice *device, bool wait_all, SDL_GPUFence *const *fences, Uint32 num_fences);
  fun wait_for_gpu_fences = SDL_WaitForGPUFences(device : GPUDevice*, wait_all : Bool, fences : GPUFence**, num_fences : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_QueryGPUFence( SDL_GPUDevice *device, SDL_GPUFence *fence);
  fun querygpu_fence = SDL_QueryGPUFence(device : GPUDevice*, fence : GPUFence*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_ReleaseGPUFence( SDL_GPUDevice *device, SDL_GPUFence *fence);
  fun releasegpu_fence = SDL_ReleaseGPUFence(device : GPUDevice*, fence : GPUFence*) : Void
  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_GPUTextureFormatTexelBlockSize( SDL_GPUTextureFormat format);
  fun gpu_texture_format_texel_block_size = SDL_GPUTextureFormatTexelBlockSize(format : GPUTextureFormat) : UInt32
  # extern SDL_DECLSPEC bool SDLCALL SDL_GPUTextureSupportsFormat( SDL_GPUDevice *device, SDL_GPUTextureFormat format, SDL_GPUTextureType type, SDL_GPUTextureUsageFlags usage);
  fun gpu_texture_supports_format = SDL_GPUTextureSupportsFormat(device : GPUDevice*, format : GPUTextureFormat, type : GPUTextureType, usage : GPUTextureUsageFlags) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GPUTextureSupportsSampleCount( SDL_GPUDevice *device, SDL_GPUTextureFormat format, SDL_GPUSampleCount sample_count);
  fun gpu_texture_supports_sample_count = SDL_GPUTextureSupportsSampleCount(device : GPUDevice*, format : GPUTextureFormat, sample_count : GPUSampleCount) : Bool
  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_CalculateGPUTextureFormatSize( SDL_GPUTextureFormat format, Uint32 width, Uint32 height, Uint32 depth_or_layer_count);
  fun calculategpu_texture_format_size = SDL_CalculateGPUTextureFormatSize(format : GPUTextureFormat, width : UInt32, height : UInt32, depth_or_layer_count : UInt32) : UInt32
  # extern SDL_DECLSPEC SDL_PixelFormat SDLCALL SDL_GetPixelFormatFromGPUTextureFormat(SDL_GPUTextureFormat format);
  fun get_pixel_format_from_gpu_texture_format = SDL_GetPixelFormatFromGPUTextureFormat(format : GPUTextureFormat) : PixelFormat
  # extern SDL_DECLSPEC SDL_GPUTextureFormat SDLCALL SDL_GetGPUTextureFormatFromPixelFormat(SDL_PixelFormat format);
  fun getgpu_texture_format_from_pixel_format = SDL_GetGPUTextureFormatFromPixelFormat(format : PixelFormat) : GPUTextureFormat
  # extern SDL_DECLSPEC void SDLCALL SDL_GDKSuspendGPU(SDL_GPUDevice *device);
  fun gdk_suspend_gpu = SDL_GDKSuspendGPU(device : GPUDevice*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_GDKResumeGPU(SDL_GPUDevice *device);
  fun gdk_resume_gpu = SDL_GDKResumeGPU(device : GPUDevice*) : Void
end
