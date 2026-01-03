lib LibSdl3
  alias FunctionPointer = Void*

  # extern SDL_DECLSPEC void SDLCALL SDL_free(void *mem);
  fun free = SDL_free(mem : Void*) : Void
end
