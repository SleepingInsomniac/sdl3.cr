lib LibSdl3
  type MetalView = Void* # typedef void *SDL_MetalView;

  # extern SDL_DECLSPEC SDL_MetalView SDLCALL SDL_Metal_CreateView(SDL_Window *window);
  fun metal__create_view = SDL_Metal_CreateView(window : Window*) : MetalView
  # extern SDL_DECLSPEC void SDLCALL SDL_Metal_DestroyView(SDL_MetalView view);
  fun metal__destroy_view = SDL_Metal_DestroyView(view : MetalView) : Void
  # extern SDL_DECLSPEC void * SDLCALL SDL_Metal_GetLayer(SDL_MetalView view);
  fun metal__get_layer = SDL_Metal_GetLayer(view : MetalView) : Void*
end
