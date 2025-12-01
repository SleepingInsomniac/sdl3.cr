lib LibSdl3
  alias TouchID = UInt64 # typedef Uint64 SDL_TouchID;
  alias FingerID = UInt64 # typedef Uint64 SDL_FingerID;

  enum TouchDeviceType
    Invalid = -1 # SDL_TOUCH_DEVICE_INVALID
    Direct # SDL_TOUCH_DEVICE_DIRECT
    IndirectAbsolute # SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE
    IndirectRelative # SDL_TOUCH_DEVICE_INDIRECT_RELATIVE
  end

  struct Finger
    id : FingerID
    x : Float32
    y : Float32
    pressure : Float32
  end

  # extern SDL_DECLSPEC SDL_TouchID * SDLCALL SDL_GetTouchDevices(int *count);
  fun get_touch_devices = SDL_GetTouchDevices(count : Int*) : TouchID*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetTouchDeviceName(SDL_TouchID touchID);
  fun get_touch_device_name = SDL_GetTouchDeviceName(touchid : TouchID) : Char*
  # extern SDL_DECLSPEC SDL_TouchDeviceType SDLCALL SDL_GetTouchDeviceType(SDL_TouchID touchID);
  fun get_touch_device_type = SDL_GetTouchDeviceType(touchid : TouchID) : TouchDeviceType
  # extern SDL_DECLSPEC SDL_Finger ** SDLCALL SDL_GetTouchFingers(SDL_TouchID touchID, int *count);
  fun get_touch_fingers = SDL_GetTouchFingers(touchid : TouchID, count : Int*) : Finger**
end
