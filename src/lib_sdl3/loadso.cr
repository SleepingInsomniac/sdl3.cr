lib LibSdl3
  type SharedObject = Void # typedef struct SDL_SharedObject SDL_SharedObject;
  # extern SDL_DECLSPEC SDL_SharedObject * SDLCALL SDL_LoadObject(const char *sofile);
  fun load_object = SDL_LoadObject(sofile : Char*) : SharedObject*
  # extern SDL_DECLSPEC SDL_FunctionPointer SDLCALL SDL_LoadFunction(SDL_SharedObject *handle, const char *name);
  fun load_function = SDL_LoadFunction(handle : SharedObject*, name : Char*) : FunctionPointer
  # extern SDL_DECLSPEC void SDLCALL SDL_UnloadObject(SDL_SharedObject *handle);
  fun unload_object = SDL_UnloadObject(handle : SharedObject*) : Void
end
