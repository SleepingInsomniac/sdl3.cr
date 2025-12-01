lib LibSdl3
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetClipboardText(const char *text);
  fun set_clipboard_text = SDL_SetClipboardText(text : Char*) : Bool
  # extern SDL_DECLSPEC char * SDLCALL SDL_GetClipboardText(void);
  fun get_clipboard_text = SDL_GetClipboardText : Char*
  # extern SDL_DECLSPEC bool SDLCALL SDL_HasClipboardText(void);
  fun has_clipboard_text = SDL_HasClipboardText : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetPrimarySelectionText(const char *text);
  fun set_primary_selection_text = SDL_SetPrimarySelectionText(text : Char*) : Bool
  # extern SDL_DECLSPEC char * SDLCALL SDL_GetPrimarySelectionText(void);
  fun get_primary_selection_text = SDL_GetPrimarySelectionText : Char*
  # extern SDL_DECLSPEC bool SDLCALL SDL_HasPrimarySelectionText(void);
  fun has_primary_selection_text = SDL_HasPrimarySelectionText : Bool
  # typedef const void *(SDLCALL *SDL_ClipboardDataCallback)(void *userdata, const char *mime_type, size_t *size);
  alias ClipboardDataCallback = (Void*, Char*, LibC::SizeT*) -> Void**
  # typedef void (SDLCALL *SDL_ClipboardCleanupCallback)(void *userdata);
  alias ClipboardCleanupCallback = (Void*) -> Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetClipboardData(SDL_ClipboardDataCallback callback, SDL_ClipboardCleanupCallback cleanup, void *userdata, const char **mime_types, size_t num_mime_types);
  fun set_clipboard_data = SDL_SetClipboardData(callback : ClipboardDataCallback, cleanup : ClipboardCleanupCallback, userdata : Void*, mime_types : Char*, num_mime_types : LibC::SizeT) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ClearClipboardData(void);
  fun clear_clipboard_data = SDL_ClearClipboardData : Bool
  # extern SDL_DECLSPEC void * SDLCALL SDL_GetClipboardData(const char *mime_type, size_t *size);
  fun get_clipboard_data = SDL_GetClipboardData(mime_type : Char*, size : LibC::SizeT*) : Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_HasClipboardData(const char *mime_type);
  fun has_clipboard_data = SDL_HasClipboardData(mime_type : Char*) : Bool
  # extern SDL_DECLSPEC char ** SDLCALL SDL_GetClipboardMimeTypes(size_t *num_mime_types);
  fun get_clipboard_mime_types = SDL_GetClipboardMimeTypes(num_mime_types : LibC::SizeT*) : Char**
end
