lib LibSdl3
  enum HintPriority
    Default # SDL_HINT_DEFAULT
    Normal # SDL_HINT_NORMAL
    Override # SDL_HINT_OVERRIDE
  end

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetHintWithPriority(const char *name, const char *value, SDL_HintPriority priority);
  fun set_hint_with_priority = SDL_SetHintWithPriority(name : Char*, value : Char*, priority : HintPriority) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetHint(const char *name, const char *value);
  fun set_hint = SDL_SetHint(name : Char*, value : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ResetHint(const char *name);
  fun reset_hint = SDL_ResetHint(name : Char*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_ResetHints(void);
  fun reset_hints = SDL_ResetHints : Void
  # extern SDL_DECLSPEC const char *SDLCALL SDL_GetHint(const char *name);
  fun get_hint = SDL_GetHint(name : Char*) : Char*
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetHintBoolean(const char *name, bool default_value);
  fun get_hint_boolean = SDL_GetHintBoolean(name : Char*, default_value : Bool) : Bool
  # typedef void(SDLCALL *SDL_HintCallback)(void *userdata, const char *name, const char *oldValue, const char *newValue);
  alias HintCallback = (Void*, Char*, Char*, Char*) -> Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_AddHintCallback(const char *name, SDL_HintCallback callback, void *userdata);
  fun add_hint_callback = SDL_AddHintCallback(name : Char*, callback : HintCallback, userdata : Void*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_RemoveHintCallback(const char *name, SDL_HintCallback callback, void *userdata);
  fun remove_hint_callback = SDL_RemoveHintCallback(name : Char*, callback : HintCallback, userdata : Void*) : Void
end
