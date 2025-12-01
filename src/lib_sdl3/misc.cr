lib LibSdl3
  # extern SDL_DECLSPEC bool SDLCALL SDL_OpenURL(const char *url);
  fun openurl = SDL_OpenURL(url : Char*) : Bool
end
