lib LibSdl3
  struct DialogFileFilter
    name : Char*
    pattern : Char*
  end

  # typedef void (SDLCALL *SDL_DialogFileCallback)(void *userdata, const char * const *filelist, int filter);
  alias DialogFileCallback = (Void*, Char**, Int) -> Void
  # extern SDL_DECLSPEC void SDLCALL SDL_ShowOpenFileDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const SDL_DialogFileFilter *filters, int nfilters, const char *default_location, bool allow_many);
  fun show_open_file_dialog = SDL_ShowOpenFileDialog(callback : DialogFileCallback, userdata : Void*, window : Window*, filters : DialogFileFilter*, nfilters : Int, default_location : Char*, allow_many : Bool)
  # extern SDL_DECLSPEC void SDLCALL SDL_ShowSaveFileDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const SDL_DialogFileFilter *filters, int nfilters, const char *default_location);
  fun show_save_file_dialog = SDL_ShowSaveFileDialog(callback : DialogFileCallback, userdata : Void*, window : Window*, filters : DialogFileFilter*, nfilters : Int, default_location : Char*)
  # extern SDL_DECLSPEC void SDLCALL SDL_ShowOpenFolderDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const char *default_location, bool allow_many);
  fun show_open_folder_dialog = SDL_ShowOpenFolderDialog(callback : DialogFileCallback, userdata : Void*, window : Window*, default_location : Char*, allow_many : Bool)

  enum FileDialogType
    Openfile # SDL_FILEDIALOG_OPENFILE
    Savefile # SDL_FILEDIALOG_SAVEFILE
    Openfolder # SDL_FILEDIALOG_OPENFOLDER
  end

  # extern SDL_DECLSPEC void SDLCALL SDL_ShowFileDialogWithProperties(SDL_FileDialogType type, SDL_DialogFileCallback callback, void *userdata, SDL_PropertiesID props);
  fun show_file_dialog_with_properties = SDL_ShowFileDialogWithProperties(type : FileDialogType, callback : DialogFileCallback, userdata : Void*, props : PropertiesID)
end
