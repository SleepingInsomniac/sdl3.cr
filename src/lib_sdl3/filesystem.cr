lib LibSdl3
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetBasePath(void);
  fun get_base_path = SDL_GetBasePath : Char*
  # extern SDL_DECLSPEC char * SDLCALL SDL_GetPrefPath(const char *org, const char *app);
  fun get_pref_path = SDL_GetPrefPath(org : Char*, app : Char*) : Char*

  enum Folder
    Home # SDL_FOLDER_HOME
    Desktop # SDL_FOLDER_DESKTOP
    Documents # SDL_FOLDER_DOCUMENTS
    Downloads # SDL_FOLDER_DOWNLOADS
    Music # SDL_FOLDER_MUSIC
    Pictures # SDL_FOLDER_PICTURES
    Publicshare # SDL_FOLDER_PUBLICSHARE
    Savedgames # SDL_FOLDER_SAVEDGAMES
    Screenshots # SDL_FOLDER_SCREENSHOTS
    Templates # SDL_FOLDER_TEMPLATES
    Videos # SDL_FOLDER_VIDEOS
    Count # SDL_FOLDER_COUNT
  end

  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetUserFolder(SDL_Folder folder);
  fun get_user_folder = SDL_GetUserFolder(folder : Folder) : Char*

  enum PathType
    None # SDL_PATHTYPE_NONE
    File # SDL_PATHTYPE_FILE
    Directory # SDL_PATHTYPE_DIRECTORY
    Other # SDL_PATHTYPE_OTHER
  end

  struct PathInfo
    type : PathType
    size : UInt64
    create_time : Int64
    modify_time : Int64
    access_time : Int64
  end

  alias GlobFlags = UInt32 # typedef Uint32 SDL_GlobFlags;

  # extern SDL_DECLSPEC bool SDLCALL SDL_CreateDirectory(const char *path);
  fun create_directory = SDL_CreateDirectory(path : Char*) : Bool

  enum EnumerationResult
    EnumContinue # SDL_ENUM_CONTINUE
    EnumSuccess # SDL_ENUM_SUCCESS
    EnumFailure # SDL_ENUM_FAILURE
  end

  # typedef SDL_EnumerationResult (SDLCALL *SDL_EnumerateDirectoryCallback)(void *userdata, const char *dirname, const char *fname);
  alias EnumerateDirectoryCallback = (Void*, Char*, Char*) -> EnumerationResult*

  # extern SDL_DECLSPEC bool SDLCALL SDL_EnumerateDirectory(const char *path, SDL_EnumerateDirectoryCallback callback, void *userdata);
  fun enumerate_directory = SDL_EnumerateDirectory(path : Char*, callback : EnumerateDirectoryCallback, userdata : Void*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RemovePath(const char *path);
  fun remove_path = SDL_RemovePath(path : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RenamePath(const char *oldpath, const char *newpath);
  fun rename_path = SDL_RenamePath(oldpath : Char*, newpath : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_CopyFile(const char *oldpath, const char *newpath);
  fun copy_file = SDL_CopyFile(oldpath : Char*, newpath : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetPathInfo(const char *path, SDL_PathInfo *info);
  fun get_path_info = SDL_GetPathInfo(path : Char*, info : PathInfo*) : Bool
  # extern SDL_DECLSPEC char ** SDLCALL SDL_GlobDirectory(const char *path, const char *pattern, SDL_GlobFlags flags, int *count);
  fun glob_directory = SDL_GlobDirectory(path : Char*, pattern : Char*, flags : GlobFlags, count : Int*) : Char**
  # extern SDL_DECLSPEC char * SDLCALL SDL_GetCurrentDirectory(void);
  fun get_current_directory = SDL_GetCurrentDirectory : Char*
end
