lib LibSdl3
  alias PenID = UInt32

  @[Flags]
  enum PenInputFlags : UInt32
    Down      = (1u32 << 0)
    Button1   = (1u32 << 1)
    Button2   = (1u32 << 2)
    Button3   = (1u32 << 3)
    Button4   = (1u32 << 4)
    Button5   = (1u32 << 5)
    EraserTip = (1u32 << 30)
  end

  enum PenAxis
    PenAxisPressure # SDL_PEN_AXIS_PRESSURE
    PenAxisXtilt # SDL_PEN_AXIS_XTILT
    PenAxisYtilt # SDL_PEN_AXIS_YTILT
    PenAxisDistance # SDL_PEN_AXIS_DISTANCE
    PenAxisRotation # SDL_PEN_AXIS_ROTATION
    PenAxisSlider # SDL_PEN_AXIS_SLIDER
    PenAxisTangentialPressure # SDL_PEN_AXIS_TANGENTIAL_PRESSURE
    PenAxisCount # SDL_PEN_AXIS_COUNT
  end

  enum PenDeviceType
    PenDeviceTypeInvalid = -1 # SDL_PEN_DEVICE_TYPE_INVALID
    PenDeviceTypeUnknown # SDL_PEN_DEVICE_TYPE_UNKNOWN
    PenDeviceTypeDirect # SDL_PEN_DEVICE_TYPE_DIRECT
    PenDeviceTypeIndirect # SDL_PEN_DEVICE_TYPE_INDIRECT
  end

  # extern SDL_DECLSPEC SDL_PenDeviceType SDLCALL SDL_GetPenDeviceType(SDL_PenID instance_id);
  fun get_pen_device_type = SDL_GetPenDeviceType(instance_id : PenID) : PenDeviceType
end
