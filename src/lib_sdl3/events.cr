lib LibSdl3
  enum EventType : UInt32
    First = 0                                 # SDL_EVENT_FIRST
    # Application
    Quit = 0x100                              # SDL_EVENT_QUIT
    Terminating                               # SDL_EVENT_TERMINATING
    LowMemory                                 # SDL_EVENT_LOW_MEMORY
    WillEnterBackground                       # SDL_EVENT_WILL_ENTER_BACKGROUND
    DidEnterBackground                        # SDL_EVENT_DID_ENTER_BACKGROUND
    WillEnterForeground                       # SDL_EVENT_WILL_ENTER_FOREGROUND
    DidEnterForeground                        # SDL_EVENT_DID_ENTER_FOREGROUND
    LocaleChanged                             # SDL_EVENT_LOCALE_CHANGED
    SystemThemeChanged                        # SDL_EVENT_SYSTEM_THEME_CHANGED
    # Display
    DisplayOrientation = 0x151                # SDL_EVENT_DISPLAY_ORIENTATION
    DisplayAdded                              # SDL_EVENT_DISPLAY_ADDED
    DisplayRemoved                            # SDL_EVENT_DISPLAY_REMOVED
    DisplayMoved                              # SDL_EVENT_DISPLAY_MOVED
    DisplayDesktopModeChanged                 # SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED
    DisplayCurrentModeChanged                 # SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED
    DisplayContentScaleChanged                # SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED
    DisplayUsableBoundsChanged                # SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED
    DisplayFirst = DisplayOrientation         # SDL_EVENT_DISPLAY_FIRST
    DisplayLast = DisplayUsableBoundsChanged  # SDL_EVENT_DISPLAY_LAST
    # Window
    WindowShown = 0x202                       # SDL_EVENT_WINDOW_SHOWN
    WindowHidden                              # SDL_EVENT_WINDOW_HIDDEN
    WindowExposed                             # SDL_EVENT_WINDOW_EXPOSED
    WindowMoved                               # SDL_EVENT_WINDOW_MOVED
    WindowResized                             # SDL_EVENT_WINDOW_RESIZED
    WindowPixelSizeChanged                    # SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED
    WindowMetalViewResized                    # SDL_EVENT_WINDOW_METAL_VIEW_RESIZED
    WindowMinimized                           # SDL_EVENT_WINDOW_MINIMIZED
    WindowMaximized                           # SDL_EVENT_WINDOW_MAXIMIZED
    WindowRestored                            # SDL_EVENT_WINDOW_RESTORED
    WindowMouseEnter                          # SDL_EVENT_WINDOW_MOUSE_ENTER
    WindowMouseLeave                          # SDL_EVENT_WINDOW_MOUSE_LEAVE
    WindowFocusGained                         # SDL_EVENT_WINDOW_FOCUS_GAINED
    WindowFocusLost                           # SDL_EVENT_WINDOW_FOCUS_LOST
    WindowCloseRequested                      # SDL_EVENT_WINDOW_CLOSE_REQUESTED
    WindowHitTest                             # SDL_EVENT_WINDOW_HIT_TEST
    WindowIccprofChanged                      # SDL_EVENT_WINDOW_ICCPROF_CHANGED
    WindowDisplayChanged                      # SDL_EVENT_WINDOW_DISPLAY_CHANGED
    WindowDisplayScaleChanged                 # SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED
    WindowSafeAreaChanged                     # SDL_EVENT_WINDOW_SAFE_AREA_CHANGED
    WindowOccluded                            # SDL_EVENT_WINDOW_OCCLUDED
    WindowEnterFullscreen                     # SDL_EVENT_WINDOW_ENTER_FULLSCREEN
    WindowLeaveFullscreen                     # SDL_EVENT_WINDOW_LEAVE_FULLSCREEN
    WindowDestroyed                           # SDL_EVENT_WINDOW_DESTROYED
    WindowHdrStateChanged                     # SDL_EVENT_WINDOW_HDR_STATE_CHANGED
    WindowFirst = WindowShown                 # SDL_EVENT_WINDOW_FIRST
    WindowLast = WindowHdrStateChanged        # SDL_EVENT_WINDOW_LAST
    # Keyboard
    KeyDown = 0x300                           # SDL_EVENT_KEY_DOWN
    KeyUp                                     # SDL_EVENT_KEY_UP
    TextEditing                               # SDL_EVENT_TEXT_EDITING
    TextInput                                 # SDL_EVENT_TEXT_INPUT
    KeymapChanged                             # SDL_EVENT_KEYMAP_CHANGED
    KeyboardAdded                             # SDL_EVENT_KEYBOARD_ADDED
    KeyboardRemoved                           # SDL_EVENT_KEYBOARD_REMOVED
    TextEditingCandidates                     # SDL_EVENT_TEXT_EDITING_CANDIDATES
    ScreenKeyboardShown                       # SDL_EVENT_SCREEN_KEYBOARD_SHOWN
    ScreenKeyboardHidden                      # SDL_EVENT_SCREEN_KEYBOARD_HIDDEN
    # Mouse
    MouseMotion = 0x400                       # SDL_EVENT_MOUSE_MOTION
    MouseButtonDown                           # SDL_EVENT_MOUSE_BUTTON_DOWN
    MouseButtonUp                             # SDL_EVENT_MOUSE_BUTTON_UP
    MouseWheel                                # SDL_EVENT_MOUSE_WHEEL
    MouseAdded                                # SDL_EVENT_MOUSE_ADDED
    MouseRemoved                              # SDL_EVENT_MOUSE_REMOVED
    # Joystick
    JoystickAxisMotion = 0x600                # SDL_EVENT_JOYSTICK_AXIS_MOTION
    JoystickBallMotion                        # SDL_EVENT_JOYSTICK_BALL_MOTION
    JoystickHatMotion                         # SDL_EVENT_JOYSTICK_HAT_MOTION
    JoystickButtonDown                        # SDL_EVENT_JOYSTICK_BUTTON_DOWN
    JoystickButtonUp                          # SDL_EVENT_JOYSTICK_BUTTON_UP
    JoystickAdded                             # SDL_EVENT_JOYSTICK_ADDED
    JoystickRemoved                           # SDL_EVENT_JOYSTICK_REMOVED
    JoystickBatteryUpdated                    # SDL_EVENT_JOYSTICK_BATTERY_UPDATED
    JoystickUpdateComplete                    # SDL_EVENT_JOYSTICK_UPDATE_COMPLETE
    # Gamepad
    GamepadAxisMotion = 0x650                 # SDL_EVENT_GAMEPAD_AXIS_MOTION
    GamepadButtonDown                         # SDL_EVENT_GAMEPAD_BUTTON_DOWN
    GamepadButtonUp                           # SDL_EVENT_GAMEPAD_BUTTON_UP
    GamepadAdded                              # SDL_EVENT_GAMEPAD_ADDED
    GamepadRemoved                            # SDL_EVENT_GAMEPAD_REMOVED
    GamepadRemapped                           # SDL_EVENT_GAMEPAD_REMAPPED
    GamepadTouchpadDown                       # SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN
    GamepadTouchpadMotion                     # SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION
    GamepadTouchpadUp                         # SDL_EVENT_GAMEPAD_TOUCHPAD_UP
    GamepadSensorUpdate                       # SDL_EVENT_GAMEPAD_SENSOR_UPDATE
    GamepadUpdateComplete                     # SDL_EVENT_GAMEPAD_UPDATE_COMPLETE
    GamepadSteamHandleUpdated                 # SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED
    # Touch
    FingerDown = 0x700                        # SDL_EVENT_FINGER_DOWN
    FingerUp                                  # SDL_EVENT_FINGER_UP
    FingerMotion                              # SDL_EVENT_FINGER_MOTION
    FingerCanceled                            # SDL_EVENT_FINGER_CANCELED
    # Pinch
    PinchBegin = 0x710                        # SDL_EVENT_PINCH_BEGIN
    PinchUpdate                               # SDL_EVENT_PINCH_UPDATE
    PinchEnd                                  # SDL_EVENT_PINCH_END
    # Clipboard
    ClipboardUpdate = 0x900                   # SDL_EVENT_CLIPBOARD_UPDATE
    # Drop
    DropFile = 0x1000                         # SDL_EVENT_DROP_FILE
    DropText                                  # SDL_EVENT_DROP_TEXT
    DropBegin                                 # SDL_EVENT_DROP_BEGIN
    DropComplete                              # SDL_EVENT_DROP_COMPLETE
    DropPosition                              # SDL_EVENT_DROP_POSITION
    # Audio
    AudioDeviceAdded = 0x1100                 # SDL_EVENT_AUDIO_DEVICE_ADDED
    AudioDeviceRemoved                        # SDL_EVENT_AUDIO_DEVICE_REMOVED
    AudioDeviceFormatChanged                  # SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED
    # Sensor
    SensorUpdate = 0x1200                     # SDL_EVENT_SENSOR_UPDATE
    # Pen
    PenProximityIn = 0x1300                   # SDL_EVENT_PEN_PROXIMITY_IN
    PenProximityOut                           # SDL_EVENT_PEN_PROXIMITY_OUT
    PenDown                                   # SDL_EVENT_PEN_DOWN
    PenUp                                     # SDL_EVENT_PEN_UP
    PenButtonDown                             # SDL_EVENT_PEN_BUTTON_DOWN
    PenButtonUp                               # SDL_EVENT_PEN_BUTTON_UP
    PenMotion                                 # SDL_EVENT_PEN_MOTION
    PenAxis                                   # SDL_EVENT_PEN_AXIS
    # Camera
    CameraDeviceAdded = 0x1400                # SDL_EVENT_CAMERA_DEVICE_ADDED
    CameraDeviceRemoved                       # SDL_EVENT_CAMERA_DEVICE_REMOVED
    CameraDeviceApproved                      # SDL_EVENT_CAMERA_DEVICE_APPROVED
    CameraDeviceDenied                        # SDL_EVENT_CAMERA_DEVICE_DENIED
    # Render
    RenderTargetsReset = 0x2000               # SDL_EVENT_RENDER_TARGETS_RESET
    RenderDeviceReset                         # SDL_EVENT_RENDER_DEVICE_RESET
    RenderDeviceLost                          # SDL_EVENT_RENDER_DEVICE_LOST
    # Private
    Private0 = 0x4000                         # SDL_EVENT_PRIVATE0
    Private1                                  # SDL_EVENT_PRIVATE1
    Private2                                  # SDL_EVENT_PRIVATE2
    Private3                                  # SDL_EVENT_PRIVATE3
    # Internal
    PollSentinel = 0x7F00                     # SDL_EVENT_POLL_SENTINEL
    # User
    User = 0x8000                             # SDL_EVENT_USER
    # Private
    Last = 0xFFFF                             # SDL_EVENT_LAST
    EnumPadding = 0x7FFFFFF                   # SDL_EVENT_ENUM_PADDING
  end

  struct CommonEvent
    type : UInt32
    reserved : UInt32
    timestamp : UInt64
  end

  struct DisplayEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    display_id : DisplayID
    data1 : Int32
    data2 : Int32
  end

  struct WindowEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    data1 : Int32
    data2 : Int32
  end

  struct KeyboardDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : KeyboardID
  end

  struct KeyboardEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : KeyboardID
    scancode : Scancode
    key : Keycode
    mod : Keymod
    raw : UInt16
    down : Bool
    repeat : Bool
  end

  struct TextEditingEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    text : Char*
    start : Int32
    length : Int32
  end

  struct TextEditingCandidatesEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    candidates : Char**
    num_candidates : Int32
    selected_candidate : Int32
    horizontal : Bool
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct TextInputEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    text : Char*
  end

  struct MouseDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : MouseID
  end

  struct MouseMotionEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : MouseID
    state : MouseButtonFlags
    x : Float32
    y : Float32
    xrel : Float32
    yrel : Float32
  end

  struct MouseButtonEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : MouseID
    button : UInt8
    down : Bool
    clicks : UInt8
    padding : UInt8
    x : Float32
    y : Float32
  end

  struct MouseWheelEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : MouseID
    x : Float32
    y : Float32
    direction : MouseWheelDirection
    mouse_x : Float32
    mouse_y : Float32
    integer_x : Int32
    integer_y : Int32
  end

  struct JoyAxisEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    axis : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
    value : Int16
    padding4 : UInt16
  end

  struct JoyBallEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    ball : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
    xrel : Int16
    yrel : Int16
  end

  struct JoyHatEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    hat : UInt8
    value : UInt8
    padding1 : UInt8
    padding2 : UInt8
  end

  struct JoyButtonEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    button : UInt8
    down : Bool
    padding1 : UInt8
    padding2 : UInt8
  end

  struct JoyDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
  end

  struct JoyBatteryEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    state : PowerState
    percent : Int
  end

  struct GamepadAxisEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    axis : UInt8
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
    value : Int16
    padding4 : UInt16
  end

  struct GamepadButtonEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    button : UInt8
    down : Bool
    padding1 : UInt8
    padding2 : UInt8
  end

  struct GamepadDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
  end

  struct GamepadTouchpadEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    touchpad : Int32
    finger : Int32
    x : Float32
    y : Float32
    pressure : Float32
  end

  struct GamepadSensorEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : JoystickID
    sensor : Int32
    data : Float32[3]
    sensor_timestamp : UInt64
  end

  struct AudioDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : AudioDeviceID
    recording : Bool
    padding1 : UInt8
    padding2 : UInt8
    padding3 : UInt8
  end

  struct CameraDeviceEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : CameraID
  end

  struct RenderEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
  end

  struct TouchFingerEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    touch_id : TouchID
    finger_id : FingerID
    x : Float32
    y : Float32
    dx : Float32
    dy : Float32
    pressure : Float32
    window_id : WindowID
  end

  struct PinchFingerEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    scale : Float32
    window_id : WindowID
  end

  struct PenProximityEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : PenID
  end

  struct PenMotionEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : PenID
    pen_state : PenInputFlags
    x : Float32
    y : Float32
  end

  struct PenTouchEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : PenID
    pen_state : PenInputFlags
    x : Float32
    y : Float32
    eraser : Bool
    down : Bool
  end

  struct PenButtonEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : PenID
    pen_state : PenInputFlags
    x : Float32
    y : Float32
    button : UInt8
    down : Bool
  end

  struct PenAxisEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    which : PenID
    pen_state : PenInputFlags
    x : Float32
    y : Float32
    axis : PenAxis
    value : Float32
  end

  struct DropEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    x : Float32
    y : Float32
    source : Char*
    data : Char*
  end

  struct ClipboardEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    owner : Bool
    num_mime_types : Int32
    mime_types : Char**
  end

  struct SensorEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
    which : SensorID
    data : Float32[6]
    sensor_timestamp : UInt64
  end

  struct QuitEvent
    type : EventType
    reserved : UInt32
    timestamp : UInt64
  end

  struct UserEvent
    type : UInt32
    reserved : UInt32
    timestamp : UInt64
    window_id : WindowID
    code : Int32
    data1 : Void*
    data2 : Void*
  end

  union Event
    type : EventType
    common                  : CommonEvent
    display                 : DisplayEvent
    window                  : WindowEvent
    keyboard_device         : KeyboardDeviceEvent
    keyboard                : KeyboardEvent
    text_editing            : TextEditingEvent
    text_editing_candidates : TextEditingCandidatesEvent
    text_input              : TextInputEvent
    mouse_device            : MouseDeviceEvent
    mouse_motion            : MouseMotionEvent
    mouse_button            : MouseButtonEvent
    mouse_wheel             : MouseWheelEvent
    joy_device              : JoyDeviceEvent
    joy_axis                : JoyAxisEvent
    joy_ball                : JoyBallEvent
    joy_hat                 : JoyHatEvent
    joy_button              : JoyButtonEvent
    joy_battery             : JoyBatteryEvent
    gamepad_device          : GamepadDeviceEvent
    gamepad_axis            : GamepadAxisEvent
    gamepad_button          : GamepadButtonEvent
    gamepad_touchpad        : GamepadTouchpadEvent
    gamepad_sensor          : GamepadSensorEvent
    audio_device            : AudioDeviceEvent
    camera_device           : CameraDeviceEvent
    sensor                  : SensorEvent
    quit                    : QuitEvent
    user                    : UserEvent
    touch_finger            : TouchFingerEvent
    pinch_finger            : PinchFingerEvent
    pen_proximity           : PenProximityEvent
    pen_touch               : PenTouchEvent
    pen_motion              : PenMotionEvent
    pen_button              : PenButtonEvent
    pen_axis                : PenAxisEvent
    render                  : RenderEvent
    drop                    : DropEvent
    clipboard               : ClipboardEvent
    padding : UInt8[128]
  end

  # extern SDL_DECLSPEC void SDLCALL SDL_PumpEvents(void);
  fun pump_events = SDL_PumpEvents

  enum EventAction
    Add # SDL_ADDEVENT
    Peek # SDL_PEEKEVENT
    Get # SDL_GETEVENT
  end

  # extern SDL_DECLSPEC int SDLCALL SDL_PeepEvents(SDL_Event *events, int numevents, SDL_EventAction action, Uint32 minType, Uint32 maxType);
  fun peep_events = SDL_PeepEvents(events : Event*, numevents : Int, action : EventAction, minType : EventType, maxType : EventType) : Int

  # extern SDL_DECLSPEC bool SDLCALL SDL_HasEvent(Uint32 type);
  fun has_event = SDL_HasEvent(type : EventType) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_HasEvents(Uint32 minType, Uint32 maxType);
  fun has_events = SDL_HasEvents(minType : EventType, maxType : EventType) : Bool

  # extern SDL_DECLSPEC void SDLCALL SDL_FlushEvent(Uint32 type);
  fun flush_event = SDL_FlushEvent(type : EventType) : Void

  # extern SDL_DECLSPEC void SDLCALL SDL_FlushEvents(Uint32 minType, Uint32 maxType);
  fun flush_events = SDL_FlushEvents(minType : EventType, maxType : EventType) : Void

  # extern SDL_DECLSPEC bool SDLCALL SDL_PollEvent(SDL_Event *event);
  fun poll_event = SDL_PollEvent(event : Event*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_WaitEvent(SDL_Event *event);
  fun wait_event = SDL_WaitEvent(event : Event*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_WaitEventTimeout(SDL_Event *event, Sint32 timeoutMS);
  fun wait_event_timeout = SDL_WaitEventTimeout(event : Event*, timeoutMS : Int32) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_PushEvent(SDL_Event *event);
  fun push_event = SDL_PushEvent(event : Event*) : Bool

  # typedef bool (SDLCALL *SDL_EventFilter)(void *userdata, SDL_Event *event);
  alias EventFilter = (Void*, Event*) -> Bool

  # extern SDL_DECLSPEC void SDLCALL SDL_SetEventFilter(SDL_EventFilter filter, void *userdata);
  fun set_event_filter = SDL_SetEventFilter(filter : EventFilter, userdata : Void*) : Void

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetEventFilter(SDL_EventFilter *filter, void **userdata);
  fun get_event_filter = SDL_GetEventFilter(filter : EventFilter*, userdata : Void*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_AddEventWatch(SDL_EventFilter filter, void *userdata);
  fun add_event_watch = SDL_AddEventWatch(filter : EventFilter, userdata : Void*) : Bool

  # extern SDL_DECLSPEC void SDLCALL SDL_RemoveEventWatch(SDL_EventFilter filter, void *userdata);
  fun remove_event_watch = SDL_RemoveEventWatch(filter : EventFilter, userdata : Void*) : Void

  # extern SDL_DECLSPEC void SDLCALL SDL_FilterEvents(SDL_EventFilter filter, void *userdata);
  fun filter_events = SDL_FilterEvents(filter : EventFilter, userdata : Void*) : Void

  # extern SDL_DECLSPEC void SDLCALL SDL_SetEventEnabled(Uint32 type, bool enabled);
  fun set_event_enabled = SDL_SetEventEnabled(type : EventType, enabled : Bool) : Void

  # extern SDL_DECLSPEC bool SDLCALL SDL_EventEnabled(Uint32 type);
  fun event_enabled = SDL_EventEnabled(type : EventType) : Bool

  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_RegisterEvents(int numevents);
  fun register_events = SDL_RegisterEvents(numevents : Int) : UInt32

  # extern SDL_DECLSPEC SDL_Window * SDLCALL SDL_GetWindowFromEvent(const SDL_Event *event);
  fun get_window_from_event = SDL_GetWindowFromEvent(event : Event*) : Window*

  # extern SDL_DECLSPEC int SDLCALL SDL_GetEventDescription(const SDL_Event *event, char *buf, int buflen);
  fun get_event_description = SDL_GetEventDescription(event : Event*, buf : Char*, buflen : Int) : Int
end
