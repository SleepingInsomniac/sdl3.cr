lib LibSdl3
  # extern SDL_DECLSPEC int SDLCALL SDL_GetVersion(void);
  fun get_version = SDL_GetVersion : Int
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetRevision(void);
  fun get_revision = SDL_GetRevision : Char*
end
