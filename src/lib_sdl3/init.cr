lib LibSdl3
  @[Flags]
  enum InitFlags : UInt32
    Audio     = 0x00000010u32 # `AUDIO` implies `EVENTS`
    Video     = 0x00000020u32 # `VIDEO` implies `EVENTS`, should be initialized on the main thread
    Joystick  = 0x00000200u32 # `JOYSTICK` implies `EVENTS`
    Haptic    = 0x00001000u32
    Gamepad   = 0x00002000u32 # `GAMEPAD` implies `JOYSTICK`
    Events    = 0x00004000u32
    Sensor    = 0x00008000u32 # `SENSOR` implies `EVENTS`
    Camera    = 0x00010000u32 # `CAMERA` implies `EVENTS`
  end

  fun init = SDL_Init(flags : InitFlags) : Bool
  fun quit = SDL_Quit
end
