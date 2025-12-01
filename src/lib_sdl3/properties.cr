lib LibSdl3
  alias PropertiesID = UInt32 # typedef Uint32 SDL_PropertiesID;

  enum PropertyType
    Invalid # SDL_PROPERTY_TYPE_INVALID
    Pointer # SDL_PROPERTY_TYPE_POINTER
    String # SDL_PROPERTY_TYPE_STRING
    Number # SDL_PROPERTY_TYPE_NUMBER
    Float # SDL_PROPERTY_TYPE_FLOAT
    Boolean # SDL_PROPERTY_TYPE_BOOLEAN
  end

  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetGlobalProperties(void);
  fun get_global_properties = SDL_GetGlobalProperties : PropertiesID
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_CreateProperties(void);
  fun create_properties = SDL_CreateProperties : PropertiesID
  # extern SDL_DECLSPEC bool SDLCALL SDL_CopyProperties(SDL_PropertiesID src, SDL_PropertiesID dst);
  fun copy_properties = SDL_CopyProperties(src : PropertiesID, dst : PropertiesID) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_LockProperties(SDL_PropertiesID props);
  fun lock_properties = SDL_LockProperties(props : PropertiesID) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_UnlockProperties(SDL_PropertiesID props);
  fun unlock_properties = SDL_UnlockProperties(props : PropertiesID) : Void
  # typedef void (SDLCALL *SDL_CleanupPropertyCallback)(void *userdata, void *value);
  alias CleanupPropertyCallback = (Void*, Void*) -> Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetPointerPropertyWithCleanup(SDL_PropertiesID props, const char *name, void *value, SDL_CleanupPropertyCallback cleanup, void *userdata);
  fun set_pointer_property_with_cleanup = SDL_SetPointerPropertyWithCleanup(props : PropertiesID, name : Char*, value : Void*, cleanup : CleanupPropertyCallback, userdata : Void*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetPointerProperty(SDL_PropertiesID props, const char *name, void *value);
  fun set_pointer_property = SDL_SetPointerProperty(props : PropertiesID, name : Char*, value : Void*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetStringProperty(SDL_PropertiesID props, const char *name, const char *value);
  fun set_string_property = SDL_SetStringProperty(props : PropertiesID, name : Char*, value : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetNumberProperty(SDL_PropertiesID props, const char *name, Sint64 value);
  fun set_number_property = SDL_SetNumberProperty(props : PropertiesID, name : Char*, value : Int64) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetFloatProperty(SDL_PropertiesID props, const char *name, float value);
  fun set_float_property = SDL_SetFloatProperty(props : PropertiesID, name : Char*, value : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetBooleanProperty(SDL_PropertiesID props, const char *name, bool value);
  fun set_boolean_property = SDL_SetBooleanProperty(props : PropertiesID, name : Char*, value : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_HasProperty(SDL_PropertiesID props, const char *name);
  fun has_property = SDL_HasProperty(props : PropertiesID, name : Char*) : Bool
  # extern SDL_DECLSPEC SDL_PropertyType SDLCALL SDL_GetPropertyType(SDL_PropertiesID props, const char *name);
  fun get_property_type = SDL_GetPropertyType(props : PropertiesID, name : Char*) : PropertyType
  # extern SDL_DECLSPEC void * SDLCALL SDL_GetPointerProperty(SDL_PropertiesID props, const char *name, void *default_value);
  fun get_pointer_property = SDL_GetPointerProperty(props : PropertiesID, name : Char*, default_value : Void*) : Void*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetStringProperty(SDL_PropertiesID props, const char *name, const char *default_value);
  fun get_string_property = SDL_GetStringProperty(props : PropertiesID, name : Char*, default_value : Char*) : Char*
  # extern SDL_DECLSPEC Sint64 SDLCALL SDL_GetNumberProperty(SDL_PropertiesID props, const char *name, Sint64 default_value);
  fun get_number_property = SDL_GetNumberProperty(props : PropertiesID, name : Char*, default_value : Int64) : Int64
  # extern SDL_DECLSPEC float SDLCALL SDL_GetFloatProperty(SDL_PropertiesID props, const char *name, float default_value);
  fun get_float_property = SDL_GetFloatProperty(props : PropertiesID, name : Char*, default_value : Float32) : Float32
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetBooleanProperty(SDL_PropertiesID props, const char *name, bool default_value);
  fun get_boolean_property = SDL_GetBooleanProperty(props : PropertiesID, name : Char*, default_value : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ClearProperty(SDL_PropertiesID props, const char *name);
  fun clear_property = SDL_ClearProperty(props : PropertiesID, name : Char*) : Bool
  # typedef void (SDLCALL *SDL_EnumeratePropertiesCallback)(void *userdata, SDL_PropertiesID props, const char *name);
  alias EnumeratePropertiesCallback = (Void*, PropertiesID, Char*) -> Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_EnumerateProperties(SDL_PropertiesID props, SDL_EnumeratePropertiesCallback callback, void *userdata);
  fun enumerate_properties = SDL_EnumerateProperties(props : PropertiesID, callback : EnumeratePropertiesCallback, userdata : Void*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyProperties(SDL_PropertiesID props);
  fun destroy_properties = SDL_DestroyProperties(props : PropertiesID) : Void
end
