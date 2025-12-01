lib LibSdl3
  enum IOStatus
    Ready # SDL_IO_STATUS_READY
    Error # SDL_IO_STATUS_ERROR
    Eof # SDL_IO_STATUS_EOF
    NotReady # SDL_IO_STATUS_NOT_READY
    Readonly # SDL_IO_STATUS_READONLY
    Writeonly # SDL_IO_STATUS_WRITEONLY
  end

  enum IOWhence
    SeekSet # SDL_IO_SEEK_SET
    SeekCur # SDL_IO_SEEK_CUR
    SeekEnd # SDL_IO_SEEK_END
  end

  struct IOStreamInterface
    version : UInt32
    size    : (Void*) -> Int64
    seek    : (Void*, Int64, IOWhence) -> Int64
    read    : (Void*, Void*, SizeT, IOStatus*) -> SizeT
    write   : (Void*, Void*, SizeT, IOStatus*) -> SizeT
    flush   : (Void*, IOStatus*) -> Bool
    close   : (Void*) -> Bool
  end

  alias IOStream = Void # typedef struct SDL_IOStream SDL_IOStream;

  # extern SDL_DECLSPEC SDL_IOStream * SDLCALL SDL_IOFromFile(const char *file, const char *mode);
  fun iofrom_file = SDL_IOFromFile(file : Char*, mode : Char*) : IOStream*
  # extern SDL_DECLSPEC SDL_IOStream * SDLCALL SDL_IOFromMem(void *mem, size_t size);
  fun iofrom_mem = SDL_IOFromMem(mem : Void*, size : LibC::SizeT) : IOStream*
  # extern SDL_DECLSPEC SDL_IOStream * SDLCALL SDL_IOFromConstMem(const void *mem, size_t size);
  fun iofrom_const_mem = SDL_IOFromConstMem(mem : Void*, size : LibC::SizeT) : IOStream*
  # extern SDL_DECLSPEC SDL_IOStream * SDLCALL SDL_IOFromDynamicMem(void);
  fun iofrom_dynamic_mem = SDL_IOFromDynamicMem : IOStream*
  # extern SDL_DECLSPEC SDL_IOStream * SDLCALL SDL_OpenIO(const SDL_IOStreamInterface *iface, void *userdata);
  fun open_io = SDL_OpenIO(iface : IOStreamInterface*, userdata : Void*) : IOStream*
  # extern SDL_DECLSPEC bool SDLCALL SDL_CloseIO(SDL_IOStream *context);
  fun close_io = SDL_CloseIO(context : IOStream*) : Bool
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetIOProperties(SDL_IOStream *context);
  fun get_ioproperties = SDL_GetIOProperties(context : IOStream*) : PropertiesID
  # extern SDL_DECLSPEC SDL_IOStatus SDLCALL SDL_GetIOStatus(SDL_IOStream *context);
  fun get_iostatus = SDL_GetIOStatus(context : IOStream*) : IOStatus
  # extern SDL_DECLSPEC Sint64 SDLCALL SDL_GetIOSize(SDL_IOStream *context);
  fun get_iosize = SDL_GetIOSize(context : IOStream*) : Int64
  # extern SDL_DECLSPEC Sint64 SDLCALL SDL_SeekIO(SDL_IOStream *context, Sint64 offset, SDL_IOWhence whence);
  fun seek_io = SDL_SeekIO(context : IOStream*, offset : Int64, whence : IOWhence) : Int64
  # extern SDL_DECLSPEC Sint64 SDLCALL SDL_TellIO(SDL_IOStream *context);
  fun tell_io = SDL_TellIO(context : IOStream*) : Int64
  # extern SDL_DECLSPEC size_t SDLCALL SDL_ReadIO(SDL_IOStream *context, void *ptr, size_t size);
  fun read_io = SDL_ReadIO(context : IOStream*, ptr : Void*, size : LibC::SizeT) : LibC::SizeT
  # extern SDL_DECLSPEC size_t SDLCALL SDL_WriteIO(SDL_IOStream *context, const void *ptr, size_t size);
  fun write_io = SDL_WriteIO(context : IOStream*, ptr : Void*, size : LibC::SizeT) : LibC::SizeT
  # extern SDL_DECLSPEC size_t SDLCALL SDL_IOprintf(SDL_IOStream *context, SDL_PRINTF_FORMAT_STRING const char *fmt, ...)  SDL_PRINTF_VARARG_FUNC(2);
  fun ioprintf = SDL_IOprintf(context : IOStream*, fmt : Char*, ...) : LibC::SizeT
  # extern SDL_DECLSPEC size_t SDLCALL SDL_IOvprintf(SDL_IOStream *context, SDL_PRINTF_FORMAT_STRING const char *fmt, va_list ap) SDL_PRINTF_VARARG_FUNCV(2);
  fun iovprintf = SDL_IOvprintf(context : IOStream*, fmt : Char*, ap : VaListT) : LibC::SizeT
  # extern SDL_DECLSPEC bool SDLCALL SDL_FlushIO(SDL_IOStream *context);
  fun flush_io = SDL_FlushIO(context : IOStream*) : Bool
  # extern SDL_DECLSPEC void * SDLCALL SDL_LoadFile_IO(SDL_IOStream *src, size_t *datasize, bool closeio);
  fun load_file_io = SDL_LoadFile_IO(src : IOStream*, datasize : LibC::SizeT*, closeio : Bool) : Void*
  # extern SDL_DECLSPEC void * SDLCALL SDL_LoadFile(const char *file, size_t *datasize);
  fun load_file = SDL_LoadFile(file : Char*, datasize : LibC::SizeT*) : Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SaveFile_IO(SDL_IOStream *src, const void *data, size_t datasize, bool closeio);
  fun save_file_io = SDL_SaveFile_IO(src : IOStream*, data : Void*, datasize : LibC::SizeT, closeio : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SaveFile(const char *file, const void *data, size_t datasize);
  fun save_file = SDL_SaveFile(file : Char*, data : Void*, datasize : LibC::SizeT) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadU8(SDL_IOStream *src, Uint8 *value);
  fun read_u8 = SDL_ReadU8(src : IOStream*, value : UInt8*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadS8(SDL_IOStream *src, Sint8 *value);
  fun read_s8 = SDL_ReadS8(src : IOStream*, value : Int8*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadU16LE(SDL_IOStream *src, Uint16 *value);
  fun read_u16_le = SDL_ReadU16LE(src : IOStream*, value : UInt16*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadS16LE(SDL_IOStream *src, Sint16 *value);
  fun read_s16_le = SDL_ReadS16LE(src : IOStream*, value : Int16*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadU16BE(SDL_IOStream *src, Uint16 *value);
  fun read_u16_be = SDL_ReadU16BE(src : IOStream*, value : UInt16*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadS16BE(SDL_IOStream *src, Sint16 *value);
  fun read_s16_be = SDL_ReadS16BE(src : IOStream*, value : Int16*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadU32LE(SDL_IOStream *src, Uint32 *value);
  fun read_u32_le = SDL_ReadU32LE(src : IOStream*, value : UInt32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadS32LE(SDL_IOStream *src, Sint32 *value);
  fun read_s32_le = SDL_ReadS32LE(src : IOStream*, value : Int32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadU32BE(SDL_IOStream *src, Uint32 *value);
  fun read_u32_be = SDL_ReadU32BE(src : IOStream*, value : UInt32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadS32BE(SDL_IOStream *src, Sint32 *value);
  fun read_s32_be = SDL_ReadS32BE(src : IOStream*, value : Int32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadU64LE(SDL_IOStream *src, Uint64 *value);
  fun read_u64_le = SDL_ReadU64LE(src : IOStream*, value : UInt64*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadS64LE(SDL_IOStream *src, Sint64 *value);
  fun read_s64_le = SDL_ReadS64LE(src : IOStream*, value : Int64*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadU64BE(SDL_IOStream *src, Uint64 *value);
  fun read_u64_be = SDL_ReadU64BE(src : IOStream*, value : UInt64*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadS64BE(SDL_IOStream *src, Sint64 *value);
  fun read_s64_be = SDL_ReadS64BE(src : IOStream*, value : Int64*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteU8(SDL_IOStream *dst, Uint8 value);
  fun write_u8 = SDL_WriteU8(dst : IOStream*, value : UInt8) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteS8(SDL_IOStream *dst, Sint8 value);
  fun write_s8 = SDL_WriteS8(dst : IOStream*, value : Int8) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteU16LE(SDL_IOStream *dst, Uint16 value);
  fun write_u16_le = SDL_WriteU16LE(dst : IOStream*, value : UInt16) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteS16LE(SDL_IOStream *dst, Sint16 value);
  fun write_s16_le = SDL_WriteS16LE(dst : IOStream*, value : Int16) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteU16BE(SDL_IOStream *dst, Uint16 value);
  fun write_u16_be = SDL_WriteU16BE(dst : IOStream*, value : UInt16) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteS16BE(SDL_IOStream *dst, Sint16 value);
  fun write_s16_be = SDL_WriteS16BE(dst : IOStream*, value : Int16) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteU32LE(SDL_IOStream *dst, Uint32 value);
  fun write_u32_le = SDL_WriteU32LE(dst : IOStream*, value : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteS32LE(SDL_IOStream *dst, Sint32 value);
  fun write_s32_le = SDL_WriteS32LE(dst : IOStream*, value : Int32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteU32BE(SDL_IOStream *dst, Uint32 value);
  fun write_u32_be = SDL_WriteU32BE(dst : IOStream*, value : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteS32BE(SDL_IOStream *dst, Sint32 value);
  fun write_s32_be = SDL_WriteS32BE(dst : IOStream*, value : Int32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteU64LE(SDL_IOStream *dst, Uint64 value);
  fun write_u64_le = SDL_WriteU64LE(dst : IOStream*, value : UInt64) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteS64LE(SDL_IOStream *dst, Sint64 value);
  fun write_s64_le = SDL_WriteS64LE(dst : IOStream*, value : Int64) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteU64BE(SDL_IOStream *dst, Uint64 value);
  fun write_u64_be = SDL_WriteU64BE(dst : IOStream*, value : UInt64) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteS64BE(SDL_IOStream *dst, Sint64 value);
  fun write_s64_be = SDL_WriteS64BE(dst : IOStream*, value : Int64) : Bool
end
