lib LibSdl3
  struct StorageInterface
    version : UInt32
    close           : (Void* -> Bool)
    ready           : (Void* -> Bool)
    enumerate       : (Void*, Char*, EnumerateDirectoryCallback, Void* -> Bool)
    info            : (Void*, Char*, Pointer(PathInfo) -> Bool)
    read_file       : (Void*, Char*, Void*, UInt64 -> Bool)
    write_file      : (Void*, Char*, Void*, UInt64 -> Bool)
    mkdir           : (Void*, Char* -> Bool)
    remove          : (Void*, Char* -> Bool)
    rename          : (Void*, Char*, Char* -> Bool)
    copy            : (Void*, Char*, Char* -> Bool)
    space_remaining : (Void* -> UInt64)
  end

  type Storage = Void # typedef struct SDL_Storage SDL_Storage;

  # extern SDL_DECLSPEC SDL_Storage * SDLCALL SDL_OpenTitleStorage(const char *override, SDL_PropertiesID props);
  fun open_title_storage = SDL_OpenTitleStorage(override : Char*, props : PropertiesID) : Storage*
  # extern SDL_DECLSPEC SDL_Storage * SDLCALL SDL_OpenUserStorage(const char *org, const char *app, SDL_PropertiesID props);
  fun open_user_storage = SDL_OpenUserStorage(org : Char*, app : Char*, props : PropertiesID) : Storage*
  # extern SDL_DECLSPEC SDL_Storage * SDLCALL SDL_OpenFileStorage(const char *path);
  fun open_file_storage = SDL_OpenFileStorage(path : Char*) : Storage*
  # extern SDL_DECLSPEC SDL_Storage * SDLCALL SDL_OpenStorage(const SDL_StorageInterface *iface, void *userdata);
  fun open_storage = SDL_OpenStorage(iface : StorageInterface*, userdata : Void*) : Storage*
  # extern SDL_DECLSPEC bool SDLCALL SDL_CloseStorage(SDL_Storage *storage);
  fun close_storage = SDL_CloseStorage(storage : Storage*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_StorageReady(SDL_Storage *storage);
  fun storage_ready = SDL_StorageReady(storage : Storage*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetStorageFileSize(SDL_Storage *storage, const char *path, Uint64 *length);
  fun get_storage_file_size = SDL_GetStorageFileSize(storage : Storage*, path : Char*, length : UInt64*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadStorageFile(SDL_Storage *storage, const char *path, void *destination, Uint64 length);
  fun read_storage_file = SDL_ReadStorageFile(storage : Storage*, path : Char*, destination : Void*, length : UInt64) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteStorageFile(SDL_Storage *storage, const char *path, const void *source, Uint64 length);
  fun write_storage_file = SDL_WriteStorageFile(storage : Storage*, path : Char*, source : Void*, length : UInt64) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_CreateStorageDirectory(SDL_Storage *storage, const char *path);
  fun create_storage_directory = SDL_CreateStorageDirectory(storage : Storage*, path : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_EnumerateStorageDirectory(SDL_Storage *storage, const char *path, SDL_EnumerateDirectoryCallback callback, void *userdata);
  fun enumerate_storage_directory = SDL_EnumerateStorageDirectory(storage : Storage*, path : Char*, callback : EnumerateDirectoryCallback, userdata : Void*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RemoveStoragePath(SDL_Storage *storage, const char *path);
  fun remove_storage_path = SDL_RemoveStoragePath(storage : Storage*, path : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenameStoragePath(SDL_Storage *storage, const char *oldpath, const char *newpath);
  fun rename_storage_path = SDL_RenameStoragePath(storage : Storage*, oldpath : Char*, newpath : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_CopyStorageFile(SDL_Storage *storage, const char *oldpath, const char *newpath);
  fun copy_storage_file = SDL_CopyStorageFile(storage : Storage*, oldpath : Char*, newpath : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetStoragePathInfo(SDL_Storage *storage, const char *path, SDL_PathInfo *info);
  fun get_storage_path_info = SDL_GetStoragePathInfo(storage : Storage*, path : Char*, info : PathInfo*) : Bool
  # extern SDL_DECLSPEC Uint64 SDLCALL SDL_GetStorageSpaceRemaining(SDL_Storage *storage);
  fun get_storage_space_remaining = SDL_GetStorageSpaceRemaining(storage : Storage*) : UInt64
  # extern SDL_DECLSPEC char ** SDLCALL SDL_GlobStorageDirectory(SDL_Storage *storage, const char *path, const char *pattern, SDL_GlobFlags flags, int *count);
  fun glob_storage_directory = SDL_GlobStorageDirectory(storage : Storage*, path : Char*, pattern : Char*, flags : GlobFlags, count : Int*) : Char**
end
