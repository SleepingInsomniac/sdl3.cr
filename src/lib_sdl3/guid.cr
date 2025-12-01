lib LibSdl3
  struct GUID
    data : UInt8[16]
  end

  # extern SDL_DECLSPEC void SDLCALL SDL_GUIDToString(SDL_GUID guid, char *pszGUID, int cbGUID);
  fun guid_to_string = SDL_GUIDToString(guid : GUID, psz_guid : Char*, cb_guid : Int) : Void
  # extern SDL_DECLSPEC SDL_GUID SDLCALL SDL_StringToGUID(const char *pchGUID);
  fun string_to_guid = SDL_StringToGUID(pch_guid : Char*) : GUID
end
