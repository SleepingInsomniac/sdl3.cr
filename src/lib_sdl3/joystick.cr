lib LibSdl3
  type Joystick = Void # typedef struct SDL_Joystick SDL_Joystick;
  alias JoystickID = UInt32 # typedef Uint32 SDL_JoystickID;

  enum JoystickType
    Unknown # SDL_JOYSTICK_TYPE_UNKNOWN
    Gamepad # SDL_JOYSTICK_TYPE_GAMEPAD
    Wheel # SDL_JOYSTICK_TYPE_WHEEL
    ArcadeStick # SDL_JOYSTICK_TYPE_ARCADE_STICK
    FlightStick # SDL_JOYSTICK_TYPE_FLIGHT_STICK
    DancePad # SDL_JOYSTICK_TYPE_DANCE_PAD
    Guitar # SDL_JOYSTICK_TYPE_GUITAR
    DrumKit # SDL_JOYSTICK_TYPE_DRUM_KIT
    ArcadePad # SDL_JOYSTICK_TYPE_ARCADE_PAD
    Throttle # SDL_JOYSTICK_TYPE_THROTTLE
    Count # SDL_JOYSTICK_TYPE_COUNT
  end

  enum JoystickConnectionState
    Invalid = -1 # SDL_JOYSTICK_CONNECTION_INVALID
    Unknown # SDL_JOYSTICK_CONNECTION_UNKNOWN
    Wired # SDL_JOYSTICK_CONNECTION_WIRED
    Wireless # SDL_JOYSTICK_CONNECTION_WIRELESS
  end

  JOYSTICK_AXIS_MAX = 32767 # #define SDL_JOYSTICK_AXIS_MAX   32767
  JOYSTICK_AXIS_MIN = -32768 # #define SDL_JOYSTICK_AXIS_MIN   -32768

  # extern SDL_DECLSPEC void SDLCALL SDL_LockJoysticks(void) SDL_ACQUIRE(SDL_joystick_lock);
  fun lock_joysticks = SDL_LockJoysticks : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_UnlockJoysticks(void) SDL_RELEASE(SDL_joystick_lock);
  fun unlock_joysticks = SDL_UnlockJoysticks : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_HasJoystick(void);
  fun has_joystick = SDL_HasJoystick : Bool
  # extern SDL_DECLSPEC SDL_JoystickID * SDLCALL SDL_GetJoysticks(int *count);
  fun get_joysticks = SDL_GetJoysticks(count : Int*) : JoystickID*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetJoystickNameForID(SDL_JoystickID instance_id);
  fun get_joystick_name_for_id = SDL_GetJoystickNameForID(instance_id : JoystickID) : Char*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetJoystickPathForID(SDL_JoystickID instance_id);
  fun get_joystick_path_for_id = SDL_GetJoystickPathForID(instance_id : JoystickID) : Char*
  # extern SDL_DECLSPEC int SDLCALL SDL_GetJoystickPlayerIndexForID(SDL_JoystickID instance_id);
  fun get_joystick_player_index_for_id = SDL_GetJoystickPlayerIndexForID(instance_id : JoystickID) : Int
  # extern SDL_DECLSPEC SDL_GUID SDLCALL SDL_GetJoystickGUIDForID(SDL_JoystickID instance_id);
  fun get_joystick_guid_for_id = SDL_GetJoystickGUIDForID(instance_id : JoystickID) : GUID
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetJoystickVendorForID(SDL_JoystickID instance_id);
  fun get_joystick_vendor_for_id = SDL_GetJoystickVendorForID(instance_id : JoystickID) : UInt16
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetJoystickProductForID(SDL_JoystickID instance_id);
  fun get_joystick_product_for_id = SDL_GetJoystickProductForID(instance_id : JoystickID) : UInt16
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetJoystickProductVersionForID(SDL_JoystickID instance_id);
  fun get_joystick_product_version_for_id = SDL_GetJoystickProductVersionForID(instance_id : JoystickID) : UInt16
  # extern SDL_DECLSPEC SDL_JoystickType SDLCALL SDL_GetJoystickTypeForID(SDL_JoystickID instance_id);
  fun get_joystick_type_for_id = SDL_GetJoystickTypeForID(instance_id : JoystickID) : JoystickType
  # extern SDL_DECLSPEC SDL_Joystick * SDLCALL SDL_OpenJoystick(SDL_JoystickID instance_id);
  fun open_joystick = SDL_OpenJoystick(instance_id : JoystickID) : Joystick*
  # extern SDL_DECLSPEC SDL_Joystick * SDLCALL SDL_GetJoystickFromID(SDL_JoystickID instance_id);
  fun get_joystick_from_id = SDL_GetJoystickFromID(instance_id : JoystickID) : Joystick*
  # extern SDL_DECLSPEC SDL_Joystick * SDLCALL SDL_GetJoystickFromPlayerIndex(int player_index);
  fun get_joystick_from_player_index = SDL_GetJoystickFromPlayerIndex(player_index : Int) : Joystick*

  struct VirtualJoystickTouchpadDesc
    nfingers : UInt16
    padding : UInt16[3]
  end

  struct VirtualJoystickSensorDesc
    type : SensorType
    rate : Float32
  end

  alias VirtualJoystickUpdate            = (Void*)                      -> Void
  alias VirtualJoystickSetPlayerIndex    = (Void*, Int32)               -> Void
  alias VirtualJoystickRumble            = (Void*, UInt16, UInt16)      -> Bool
  alias VirtualJoystickRumbleTriggers    = (Void*, UInt16, UInt16)      -> Bool
  alias VirtualJoystickSetLED            = (Void*, UInt8, UInt8, UInt8) -> Bool
  alias VirtualJoystickSendEffect        = (Void*, Void*, Int32)        -> Bool
  alias VirtualJoystickSetSensorsEnabled = (Void*, Bool)                -> Bool
  alias VirtualJoystickCleanup           = (Void*)                      -> Void

  struct VirtualJoystickDesc
    version : UInt32
    type : UInt16
    padding : UInt16
    vendor_id : UInt16
    product_id : UInt16
    naxes : UInt16
    nbuttons : UInt16
    nballs : UInt16
    nhats : UInt16
    ntouchpads : UInt16
    nsensors : UInt16
    padding2 : UInt16[2]
    button_mask : UInt32
    axis_mask : UInt32
    name : Char*
    touchpads : VirtualJoystickTouchpadDesc*
    sensors : VirtualJoystickSensorDesc*
    userdata : Void*

    update              : VirtualJoystickUpdate
    set_player_index    : VirtualJoystickSetPlayerIndex
    rumble              : VirtualJoystickRumble
    rumble_triggers     : VirtualJoystickRumbleTriggers
    set_led             : VirtualJoystickSetLED
    send_effect         : VirtualJoystickSendEffect
    set_sensors_enabled : VirtualJoystickSetSensorsEnabled
    cleanup             : VirtualJoystickCleanup
  end

  # extern SDL_DECLSPEC SDL_JoystickID SDLCALL SDL_AttachVirtualJoystick(const SDL_VirtualJoystickDesc *desc);
  fun attach_virtual_joystick = SDL_AttachVirtualJoystick(desc : VirtualJoystickDesc*) : JoystickID
  # extern SDL_DECLSPEC bool SDLCALL SDL_DetachVirtualJoystick(SDL_JoystickID instance_id);
  fun detach_virtual_joystick = SDL_DetachVirtualJoystick(instance_id : JoystickID) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_IsJoystickVirtual(SDL_JoystickID instance_id);
  fun is_joystick_virtual = SDL_IsJoystickVirtual(instance_id : JoystickID) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetJoystickVirtualAxis(SDL_Joystick *joystick, int axis, Sint16 value);
  fun set_joystick_virtual_axis = SDL_SetJoystickVirtualAxis(joystick : Joystick*, axis : Int, value : Int16) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetJoystickVirtualBall(SDL_Joystick *joystick, int ball, Sint16 xrel, Sint16 yrel);
  fun set_joystick_virtual_ball = SDL_SetJoystickVirtualBall(joystick : Joystick*, ball : Int, xrel : Int16, yrel : Int16) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetJoystickVirtualButton(SDL_Joystick *joystick, int button, bool down);
  fun set_joystick_virtual_button = SDL_SetJoystickVirtualButton(joystick : Joystick*, button : Int, down : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetJoystickVirtualHat(SDL_Joystick *joystick, int hat, Uint8 value);
  fun set_joystick_virtual_hat = SDL_SetJoystickVirtualHat(joystick : Joystick*, hat : Int, value : UInt8) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetJoystickVirtualTouchpad(SDL_Joystick *joystick, int touchpad, int finger, bool down, float x, float y, float pressure);
  fun set_joystick_virtual_touchpad = SDL_SetJoystickVirtualTouchpad(joystick : Joystick*, touchpad : Int, finger : Int, down : Bool, x : Float32, y : Float32, pressure : Float32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SendJoystickVirtualSensorData(SDL_Joystick *joystick, SDL_SensorType type, Uint64 sensor_timestamp, const float *data, int num_values);
  fun send_joystick_virtual_sensor_data = SDL_SendJoystickVirtualSensorData(joystick : Joystick*, type : SensorType, sensor_timestamp : UInt64, data : Float32*, num_values : Int) : Bool
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetJoystickProperties(SDL_Joystick *joystick);
  fun get_joystick_properties = SDL_GetJoystickProperties(joystick : Joystick*) : PropertiesID
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetJoystickName(SDL_Joystick *joystick);
  fun get_joystick_name = SDL_GetJoystickName(joystick : Joystick*) : Char*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetJoystickPath(SDL_Joystick *joystick);
  fun get_joystick_path = SDL_GetJoystickPath(joystick : Joystick*) : Char*
  # extern SDL_DECLSPEC int SDLCALL SDL_GetJoystickPlayerIndex(SDL_Joystick *joystick);
  fun get_joystick_player_index = SDL_GetJoystickPlayerIndex(joystick : Joystick*) : Int
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetJoystickPlayerIndex(SDL_Joystick *joystick, int player_index);
  fun set_joystick_player_index = SDL_SetJoystickPlayerIndex(joystick : Joystick*, player_index : Int) : Bool
  # extern SDL_DECLSPEC SDL_GUID SDLCALL SDL_GetJoystickGUID(SDL_Joystick *joystick);
  fun get_joystick_guid = SDL_GetJoystickGUID(joystick : Joystick*) : GUID
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetJoystickVendor(SDL_Joystick *joystick);
  fun get_joystick_vendor = SDL_GetJoystickVendor(joystick : Joystick*) : UInt16
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetJoystickProduct(SDL_Joystick *joystick);
  fun get_joystick_product = SDL_GetJoystickProduct(joystick : Joystick*) : UInt16
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetJoystickProductVersion(SDL_Joystick *joystick);
  fun get_joystick_product_version = SDL_GetJoystickProductVersion(joystick : Joystick*) : UInt16
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetJoystickFirmwareVersion(SDL_Joystick *joystick);
  fun get_joystick_firmware_version = SDL_GetJoystickFirmwareVersion(joystick : Joystick*) : UInt16
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetJoystickSerial(SDL_Joystick *joystick);
  fun get_joystick_serial = SDL_GetJoystickSerial(joystick : Joystick*) : Char*
  # extern SDL_DECLSPEC SDL_JoystickType SDLCALL SDL_GetJoystickType(SDL_Joystick *joystick);
  fun get_joystick_type = SDL_GetJoystickType(joystick : Joystick*) : JoystickType
  # extern SDL_DECLSPEC void SDLCALL SDL_GetJoystickGUIDInfo(SDL_GUID guid, Uint16 *vendor, Uint16 *product, Uint16 *version, Uint16 *crc16);
  fun get_joystick_guid_info = SDL_GetJoystickGUIDInfo(guid : GUID, vendor : UInt16*, product : UInt16*, version : UInt16*, crc16 : UInt16*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_JoystickConnected(SDL_Joystick *joystick);
  fun joystick_connected = SDL_JoystickConnected(joystick : Joystick*) : Bool
  # extern SDL_DECLSPEC SDL_JoystickID SDLCALL SDL_GetJoystickID(SDL_Joystick *joystick);
  fun get_joystick_id = SDL_GetJoystickID(joystick : Joystick*) : JoystickID
  # extern SDL_DECLSPEC int SDLCALL SDL_GetNumJoystickAxes(SDL_Joystick *joystick);
  fun get_num_joystick_axes = SDL_GetNumJoystickAxes(joystick : Joystick*) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_GetNumJoystickBalls(SDL_Joystick *joystick);
  fun get_num_joystick_balls = SDL_GetNumJoystickBalls(joystick : Joystick*) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_GetNumJoystickHats(SDL_Joystick *joystick);
  fun get_num_joystick_hats = SDL_GetNumJoystickHats(joystick : Joystick*) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_GetNumJoystickButtons(SDL_Joystick *joystick);
  fun get_num_joystick_buttons = SDL_GetNumJoystickButtons(joystick : Joystick*) : Int
  # extern SDL_DECLSPEC void SDLCALL SDL_SetJoystickEventsEnabled(bool enabled);
  fun set_joystick_events_enabled = SDL_SetJoystickEventsEnabled(enabled : Bool) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_JoystickEventsEnabled(void);
  fun joystick_events_enabled = SDL_JoystickEventsEnabled : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_UpdateJoysticks(void);
  fun update_joysticks = SDL_UpdateJoysticks : Void
  # extern SDL_DECLSPEC Sint16 SDLCALL SDL_GetJoystickAxis(SDL_Joystick *joystick, int axis);
  fun get_joystick_axis = SDL_GetJoystickAxis(joystick : Joystick*, axis : Int) : Int16
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetJoystickAxisInitialState(SDL_Joystick *joystick, int axis, Sint16 *state);
  fun get_joystick_axis_initial_state = SDL_GetJoystickAxisInitialState(joystick : Joystick*, axis : Int, state : Int16*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetJoystickBall(SDL_Joystick *joystick, int ball, int *dx, int *dy);
  fun get_joystick_ball = SDL_GetJoystickBall(joystick : Joystick*, ball : Int, dx : Int*, dy : Int*) : Bool
  # extern SDL_DECLSPEC Uint8 SDLCALL SDL_GetJoystickHat(SDL_Joystick *joystick, int hat);
  fun get_joystick_hat = SDL_GetJoystickHat(joystick : Joystick*, hat : Int) : UInt8

  @[Flags]
  enum Hat : UInt32
    Centered = 0u32
    Up = 1u32
    Right = 2u32
    Down = 4u32
    Left = 8u32
    RightUp = Right | Up
    RightDown = Right | Down
    LeftUp = Left | Up
    LeftDown = Left | Down
  end

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetJoystickButton(SDL_Joystick *joystick, int button);
  fun get_joystick_button = SDL_GetJoystickButton(joystick : Joystick*, button : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RumbleJoystick(SDL_Joystick *joystick, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);
  fun rumble_joystick = SDL_RumbleJoystick(joystick : Joystick*, low_frequency_rumble : UInt16, high_frequency_rumble : UInt16, duration_ms : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RumbleJoystickTriggers(SDL_Joystick *joystick, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);
  fun rumble_joystick_triggers = SDL_RumbleJoystickTriggers(joystick : Joystick*, left_rumble : UInt16, right_rumble : UInt16, duration_ms : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetJoystickLED(SDL_Joystick *joystick, Uint8 red, Uint8 green, Uint8 blue);
  fun set_joystick_led = SDL_SetJoystickLED(joystick : Joystick*, red : UInt8, green : UInt8, blue : UInt8) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SendJoystickEffect(SDL_Joystick *joystick, const void *data, int size);
  fun send_joystick_effect = SDL_SendJoystickEffect(joystick : Joystick*, data : Void*, size : Int) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_CloseJoystick(SDL_Joystick *joystick);
  fun close_joystick = SDL_CloseJoystick(joystick : Joystick*) : Void
  # extern SDL_DECLSPEC SDL_JoystickConnectionState SDLCALL SDL_GetJoystickConnectionState(SDL_Joystick *joystick);
  fun get_joystick_connection_state = SDL_GetJoystickConnectionState(joystick : Joystick*) : JoystickConnectionState
  # extern SDL_DECLSPEC SDL_PowerState SDLCALL SDL_GetJoystickPowerInfo(SDL_Joystick *joystick, int *percent);
  fun get_joystick_power_info = SDL_GetJoystickPowerInfo(joystick : Joystick*, percent : Int*) : PowerState
end
