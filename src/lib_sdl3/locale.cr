lib LibSdl3
  struct Locale
    language : Char*
    country : Char*
  end
  # extern SDL_DECLSPEC SDL_Locale ** SDLCALL SDL_GetPreferredLocales(int *count);
  fun get_preferred_locales = SDL_GetPreferredLocales(count : Int*) : Locale**
end
