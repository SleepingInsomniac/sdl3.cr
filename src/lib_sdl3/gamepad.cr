lib LibSdl3
  type Gamepad = Void # typedef struct SDL_Gamepad SDL_Gamepad;

  enum GamepadType
    Unknown = 0 # SDL_GAMEPAD_TYPE_UNKNOWN
    Standard # SDL_GAMEPAD_TYPE_STANDARD
    Xbox360 # SDL_GAMEPAD_TYPE_XBOX360
    Xboxone # SDL_GAMEPAD_TYPE_XBOXONE
    Ps3 # SDL_GAMEPAD_TYPE_PS3
    Ps4 # SDL_GAMEPAD_TYPE_PS4
    Ps5 # SDL_GAMEPAD_TYPE_PS5
    NintendoSwitchPro # SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO
    NintendoSwitchJoyconLeft # SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT
    NintendoSwitchJoyconRight # SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT
    NintendoSwitchJoyconPair # SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR
    Gamecube # SDL_GAMEPAD_TYPE_GAMECUBE
    Count # SDL_GAMEPAD_TYPE_COUNT
  end

  enum GamepadButton
    Invalid = -1 # SDL_GAMEPAD_BUTTON_INVALID
    South # SDL_GAMEPAD_BUTTON_SOUTH
    East # SDL_GAMEPAD_BUTTON_EAST
    West # SDL_GAMEPAD_BUTTON_WEST
    North # SDL_GAMEPAD_BUTTON_NORTH
    Back # SDL_GAMEPAD_BUTTON_BACK
    Guide # SDL_GAMEPAD_BUTTON_GUIDE
    Start # SDL_GAMEPAD_BUTTON_START
    LeftStick # SDL_GAMEPAD_BUTTON_LEFT_STICK
    RightStick # SDL_GAMEPAD_BUTTON_RIGHT_STICK
    LeftShoulder # SDL_GAMEPAD_BUTTON_LEFT_SHOULDER
    RightShoulder # SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER
    DpadUp # SDL_GAMEPAD_BUTTON_DPAD_UP
    DpadDown # SDL_GAMEPAD_BUTTON_DPAD_DOWN
    DpadLeft # SDL_GAMEPAD_BUTTON_DPAD_LEFT
    DpadRight # SDL_GAMEPAD_BUTTON_DPAD_RIGHT
    Misc1 # SDL_GAMEPAD_BUTTON_MISC1
    RightPaddle1 # SDL_GAMEPAD_BUTTON_RIGHT_PADDLE1
    LeftPaddle1 # SDL_GAMEPAD_BUTTON_LEFT_PADDLE1
    RightPaddle2 # SDL_GAMEPAD_BUTTON_RIGHT_PADDLE2
    LeftPaddle2 # SDL_GAMEPAD_BUTTON_LEFT_PADDLE2
    Touchpad # SDL_GAMEPAD_BUTTON_TOUCHPAD
    Misc2 # SDL_GAMEPAD_BUTTON_MISC2
    Misc3 # SDL_GAMEPAD_BUTTON_MISC3
    Misc4 # SDL_GAMEPAD_BUTTON_MISC4
    Misc5 # SDL_GAMEPAD_BUTTON_MISC5
    Misc6 # SDL_GAMEPAD_BUTTON_MISC6
    Count # SDL_GAMEPAD_BUTTON_COUNT
  end

  enum GamepadButtonLabel
    Unknown # SDL_GAMEPAD_BUTTON_LABEL_UNKNOWN
    A # SDL_GAMEPAD_BUTTON_LABEL_A
    B # SDL_GAMEPAD_BUTTON_LABEL_B
    X # SDL_GAMEPAD_BUTTON_LABEL_X
    Y # SDL_GAMEPAD_BUTTON_LABEL_Y
    Cross # SDL_GAMEPAD_BUTTON_LABEL_CROSS
    Circle # SDL_GAMEPAD_BUTTON_LABEL_CIRCLE
    Square # SDL_GAMEPAD_BUTTON_LABEL_SQUARE
    Triangle # SDL_GAMEPAD_BUTTON_LABEL_TRIANGLE
  end

  enum GamepadAxis
    Invalid = -1 # SDL_GAMEPAD_AXIS_INVALID
    Leftx # SDL_GAMEPAD_AXIS_LEFTX
    Lefty # SDL_GAMEPAD_AXIS_LEFTY
    Rightx # SDL_GAMEPAD_AXIS_RIGHTX
    Righty # SDL_GAMEPAD_AXIS_RIGHTY
    LeftTrigger # SDL_GAMEPAD_AXIS_LEFT_TRIGGER
    RightTrigger # SDL_GAMEPAD_AXIS_RIGHT_TRIGGER
    Count # SDL_GAMEPAD_AXIS_COUNT
  end

  enum GamepadBindingType
    BindtypeNone = 0 # SDL_GAMEPAD_BINDTYPE_NONE
    BindtypeButton # SDL_GAMEPAD_BINDTYPE_BUTTON
    BindtypeAxis # SDL_GAMEPAD_BINDTYPE_AXIS
    BindtypeHat # SDL_GAMEPAD_BINDTYPE_HAT
  end

  struct GamepadInputAxis
    axis : Int
    min : Int
    max : Int
  end

  struct GamepadInputHat
    hat : Int
    mask : Int
  end

  union GamepadInput
    button : Int
    axis : GamepadInputAxis
    hat : GamepadInputHat
  end

  struct GamepadBinding
    input_type : GamepadBindingType
    input : GamepadInput
    output : GamepadOutput
  end

  union GamepadOutput
    button : GamepadButton
    axis : GamepadOutputAxis
  end

  struct GamepadOutputAxis
    axis : GamepadAxis
    min : Int
    max : Int
  end

  # extern SDL_DECLSPEC int SDLCALL SDL_AddGamepadMapping(const char *mapping);
  fun add_gamepad_mapping = SDL_AddGamepadMapping(mapping : Char*) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_AddGamepadMappingsFromIO(SDL_IOStream *src, bool closeio);
  fun add_gamepad_mappings_from_io = SDL_AddGamepadMappingsFromIO(src : IOStream*, closeio : Bool) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_AddGamepadMappingsFromFile(const char *file);
  fun add_gamepad_mappings_from_file = SDL_AddGamepadMappingsFromFile(file : Char*) : Int
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReloadGamepadMappings(void);
  fun reload_gamepad_mappings = SDL_ReloadGamepadMappings : Bool
  # extern SDL_DECLSPEC char ** SDLCALL SDL_GetGamepadMappings(int *count);
  fun get_gamepad_mappings = SDL_GetGamepadMappings(count : Int*) : Char**
  # extern SDL_DECLSPEC char * SDLCALL SDL_GetGamepadMappingForGUID(SDL_GUID guid);
  fun get_gamepad_mapping_for_guid = SDL_GetGamepadMappingForGUID(guid : GUID) : Char*
  # extern SDL_DECLSPEC char * SDLCALL SDL_GetGamepadMapping(SDL_Gamepad *gamepad);
  fun get_gamepad_mapping = SDL_GetGamepadMapping(gamepad : Gamepad*) : Char*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetGamepadMapping(SDL_JoystickID instance_id, const char *mapping);
  fun set_gamepad_mapping = SDL_SetGamepadMapping(instance_id : JoystickID, mapping : Char*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_HasGamepad(void);
  fun has_gamepad = SDL_HasGamepad : Bool
  # extern SDL_DECLSPEC SDL_JoystickID * SDLCALL SDL_GetGamepads(int *count);
  fun get_gamepads = SDL_GetGamepads(count : Int*) : JoystickID*
  # extern SDL_DECLSPEC bool SDLCALL SDL_IsGamepad(SDL_JoystickID instance_id);
  fun is_gamepad = SDL_IsGamepad(instance_id : JoystickID) : Bool
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGamepadNameForID(SDL_JoystickID instance_id);
  fun get_gamepad_name_for_id = SDL_GetGamepadNameForID(instance_id : JoystickID) : Char*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGamepadPathForID(SDL_JoystickID instance_id);
  fun get_gamepad_path_for_id = SDL_GetGamepadPathForID(instance_id : JoystickID) : Char*
  # extern SDL_DECLSPEC int SDLCALL SDL_GetGamepadPlayerIndexForID(SDL_JoystickID instance_id);
  fun get_gamepad_player_index_for_id = SDL_GetGamepadPlayerIndexForID(instance_id : JoystickID) : Int
  # extern SDL_DECLSPEC SDL_GUID SDLCALL SDL_GetGamepadGUIDForID(SDL_JoystickID instance_id);
  fun get_gamepad_guid_for_id = SDL_GetGamepadGUIDForID(instance_id : JoystickID) : GUID
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetGamepadVendorForID(SDL_JoystickID instance_id);
  fun get_gamepad_vendor_for_id = SDL_GetGamepadVendorForID(instance_id : JoystickID) : UInt16
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetGamepadProductForID(SDL_JoystickID instance_id);
  fun get_gamepad_product_for_id = SDL_GetGamepadProductForID(instance_id : JoystickID) : UInt16
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetGamepadProductVersionForID(SDL_JoystickID instance_id);
  fun get_gamepad_product_version_for_id = SDL_GetGamepadProductVersionForID(instance_id : JoystickID) : UInt16
  # extern SDL_DECLSPEC SDL_GamepadType SDLCALL SDL_GetGamepadTypeForID(SDL_JoystickID instance_id);
  fun get_gamepad_type_for_id = SDL_GetGamepadTypeForID(instance_id : JoystickID) : GamepadType
  # extern SDL_DECLSPEC SDL_GamepadType SDLCALL SDL_GetRealGamepadTypeForID(SDL_JoystickID instance_id);
  fun get_real_gamepad_type_for_id = SDL_GetRealGamepadTypeForID(instance_id : JoystickID) : GamepadType
  # extern SDL_DECLSPEC char * SDLCALL SDL_GetGamepadMappingForID(SDL_JoystickID instance_id);
  fun get_gamepad_mapping_for_id = SDL_GetGamepadMappingForID(instance_id : JoystickID) : Char*
  # extern SDL_DECLSPEC SDL_Gamepad * SDLCALL SDL_OpenGamepad(SDL_JoystickID instance_id);
  fun open_gamepad = SDL_OpenGamepad(instance_id : JoystickID) : Gamepad*
  # extern SDL_DECLSPEC SDL_Gamepad * SDLCALL SDL_GetGamepadFromID(SDL_JoystickID instance_id);
  fun get_gamepad_from_id = SDL_GetGamepadFromID(instance_id : JoystickID) : Gamepad*
  # extern SDL_DECLSPEC SDL_Gamepad * SDLCALL SDL_GetGamepadFromPlayerIndex(int player_index);
  fun get_gamepad_from_player_index = SDL_GetGamepadFromPlayerIndex(player_index : Int) : Gamepad*
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetGamepadProperties(SDL_Gamepad *gamepad);
  fun get_gamepad_properties = SDL_GetGamepadProperties(gamepad : Gamepad*) : PropertiesID
  # extern SDL_DECLSPEC SDL_JoystickID SDLCALL SDL_GetGamepadID(SDL_Gamepad *gamepad);
  fun get_gamepad_id = SDL_GetGamepadID(gamepad : Gamepad*) : JoystickID
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGamepadName(SDL_Gamepad *gamepad);
  fun get_gamepad_name = SDL_GetGamepadName(gamepad : Gamepad*) : Char*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGamepadPath(SDL_Gamepad *gamepad);
  fun get_gamepad_path = SDL_GetGamepadPath(gamepad : Gamepad*) : Char*
  # extern SDL_DECLSPEC SDL_GamepadType SDLCALL SDL_GetGamepadType(SDL_Gamepad *gamepad);
  fun get_gamepad_type = SDL_GetGamepadType(gamepad : Gamepad*) : GamepadType
  # extern SDL_DECLSPEC SDL_GamepadType SDLCALL SDL_GetRealGamepadType(SDL_Gamepad *gamepad);
  fun get_real_gamepad_type = SDL_GetRealGamepadType(gamepad : Gamepad*) : GamepadType
  # extern SDL_DECLSPEC int SDLCALL SDL_GetGamepadPlayerIndex(SDL_Gamepad *gamepad);
  fun get_gamepad_player_index = SDL_GetGamepadPlayerIndex(gamepad : Gamepad*) : Int
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetGamepadPlayerIndex(SDL_Gamepad *gamepad, int player_index);
  fun set_gamepad_player_index = SDL_SetGamepadPlayerIndex(gamepad : Gamepad*, player_index : Int) : Bool
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetGamepadVendor(SDL_Gamepad *gamepad);
  fun get_gamepad_vendor = SDL_GetGamepadVendor(gamepad : Gamepad*) : UInt16
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetGamepadProduct(SDL_Gamepad *gamepad);
  fun get_gamepad_product = SDL_GetGamepadProduct(gamepad : Gamepad*) : UInt16
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetGamepadProductVersion(SDL_Gamepad *gamepad);
  fun get_gamepad_product_version = SDL_GetGamepadProductVersion(gamepad : Gamepad*) : UInt16
  # extern SDL_DECLSPEC Uint16 SDLCALL SDL_GetGamepadFirmwareVersion(SDL_Gamepad *gamepad);
  fun get_gamepad_firmware_version = SDL_GetGamepadFirmwareVersion(gamepad : Gamepad*) : UInt16
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGamepadSerial(SDL_Gamepad *gamepad);
  fun get_gamepad_serial = SDL_GetGamepadSerial(gamepad : Gamepad*) : Char*
  # extern SDL_DECLSPEC Uint64 SDLCALL SDL_GetGamepadSteamHandle(SDL_Gamepad *gamepad);
  fun get_gamepad_steam_handle = SDL_GetGamepadSteamHandle(gamepad : Gamepad*) : UInt64
  # extern SDL_DECLSPEC SDL_JoystickConnectionState SDLCALL SDL_GetGamepadConnectionState(SDL_Gamepad *gamepad);
  fun get_gamepad_connection_state = SDL_GetGamepadConnectionState(gamepad : Gamepad*) : JoystickConnectionState
  # extern SDL_DECLSPEC SDL_PowerState SDLCALL SDL_GetGamepadPowerInfo(SDL_Gamepad *gamepad, int *percent);
  fun get_gamepad_power_info = SDL_GetGamepadPowerInfo(gamepad : Gamepad*, percent : Int*) : PowerState
  # extern SDL_DECLSPEC bool SDLCALL SDL_GamepadConnected(SDL_Gamepad *gamepad);
  fun gamepad_connected = SDL_GamepadConnected(gamepad : Gamepad*) : Bool
  # extern SDL_DECLSPEC SDL_Joystick * SDLCALL SDL_GetGamepadJoystick(SDL_Gamepad *gamepad);
  fun get_gamepad_joystick = SDL_GetGamepadJoystick(gamepad : Gamepad*) : Joystick*
  # extern SDL_DECLSPEC void SDLCALL SDL_SetGamepadEventsEnabled(bool enabled);
  fun set_gamepad_events_enabled = SDL_SetGamepadEventsEnabled(enabled : Bool) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_GamepadEventsEnabled(void);
  fun gamepad_events_enabled = SDL_GamepadEventsEnabled : Bool
  # extern SDL_DECLSPEC SDL_GamepadBinding ** SDLCALL SDL_GetGamepadBindings(SDL_Gamepad *gamepad, int *count);
  fun get_gamepad_bindings = SDL_GetGamepadBindings(gamepad : Gamepad*, count : Int*) : GamepadBinding**
  # extern SDL_DECLSPEC void SDLCALL SDL_UpdateGamepads(void);
  fun update_gamepads = SDL_UpdateGamepads : Void
  # extern SDL_DECLSPEC SDL_GamepadType SDLCALL SDL_GetGamepadTypeFromString(const char *str);
  fun get_gamepad_type_from_string = SDL_GetGamepadTypeFromString(str : Char*) : GamepadType
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGamepadStringForType(SDL_GamepadType type);
  fun get_gamepad_string_for_type = SDL_GetGamepadStringForType(type : GamepadType) : Char*
  # extern SDL_DECLSPEC SDL_GamepadAxis SDLCALL SDL_GetGamepadAxisFromString(const char *str);
  fun get_gamepad_axis_from_string = SDL_GetGamepadAxisFromString(str : Char*) : GamepadAxis
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGamepadStringForAxis(SDL_GamepadAxis axis);
  fun get_gamepad_string_for_axis = SDL_GetGamepadStringForAxis(axis : GamepadAxis) : Char*
  # extern SDL_DECLSPEC bool SDLCALL SDL_GamepadHasAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);
  fun gamepad_has_axis = SDL_GamepadHasAxis(gamepad : Gamepad*, axis : GamepadAxis) : Bool
  # extern SDL_DECLSPEC Sint16 SDLCALL SDL_GetGamepadAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);
  fun get_gamepad_axis = SDL_GetGamepadAxis(gamepad : Gamepad*, axis : GamepadAxis) : Int16
  # extern SDL_DECLSPEC SDL_GamepadButton SDLCALL SDL_GetGamepadButtonFromString(const char *str);
  fun get_gamepad_button_from_string = SDL_GetGamepadButtonFromString(str : Char*) : GamepadButton
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGamepadStringForButton(SDL_GamepadButton button);
  fun get_gamepad_string_for_button = SDL_GetGamepadStringForButton(button : GamepadButton) : Char*
  # extern SDL_DECLSPEC bool SDLCALL SDL_GamepadHasButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
  fun gamepad_has_button = SDL_GamepadHasButton(gamepad : Gamepad*, button : GamepadButton) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetGamepadButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
  fun get_gamepad_button = SDL_GetGamepadButton(gamepad : Gamepad*, button : GamepadButton) : Bool
  # extern SDL_DECLSPEC SDL_GamepadButtonLabel SDLCALL SDL_GetGamepadButtonLabelForType(SDL_GamepadType type, SDL_GamepadButton button);
  fun get_gamepad_button_label_for_type = SDL_GetGamepadButtonLabelForType(type : GamepadType, button : GamepadButton) : GamepadButtonLabel
  # extern SDL_DECLSPEC SDL_GamepadButtonLabel SDLCALL SDL_GetGamepadButtonLabel(SDL_Gamepad *gamepad, SDL_GamepadButton button);
  fun get_gamepad_button_label = SDL_GetGamepadButtonLabel(gamepad : Gamepad*, button : GamepadButton) : GamepadButtonLabel
  # extern SDL_DECLSPEC int SDLCALL SDL_GetNumGamepadTouchpads(SDL_Gamepad *gamepad);
  fun get_num_gamepad_touchpads = SDL_GetNumGamepadTouchpads(gamepad : Gamepad*) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_GetNumGamepadTouchpadFingers(SDL_Gamepad *gamepad, int touchpad);
  fun get_num_gamepad_touchpad_fingers = SDL_GetNumGamepadTouchpadFingers(gamepad : Gamepad*, touchpad : Int) : Int
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetGamepadTouchpadFinger(SDL_Gamepad *gamepad, int touchpad, int finger, bool *down, float *x, float *y, float *pressure);
  fun get_gamepad_touchpad_finger = SDL_GetGamepadTouchpadFinger(gamepad : Gamepad*, touchpad : Int, finger : Int, down : Bool*, x : Float32*, y : Float32*, pressure : Float32*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GamepadHasSensor(SDL_Gamepad *gamepad, SDL_SensorType type);
  fun gamepad_has_sensor = SDL_GamepadHasSensor(gamepad : Gamepad*, type : SensorType) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetGamepadSensorEnabled(SDL_Gamepad *gamepad, SDL_SensorType type, bool enabled);
  fun set_gamepad_sensor_enabled = SDL_SetGamepadSensorEnabled(gamepad : Gamepad*, type : SensorType, enabled : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GamepadSensorEnabled(SDL_Gamepad *gamepad, SDL_SensorType type);
  fun gamepad_sensor_enabled = SDL_GamepadSensorEnabled(gamepad : Gamepad*, type : SensorType) : Bool
  # extern SDL_DECLSPEC float SDLCALL SDL_GetGamepadSensorDataRate(SDL_Gamepad *gamepad, SDL_SensorType type);
  fun get_gamepad_sensor_data_rate = SDL_GetGamepadSensorDataRate(gamepad : Gamepad*, type : SensorType) : Float32
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetGamepadSensorData(SDL_Gamepad *gamepad, SDL_SensorType type, float *data, int num_values);
  fun get_gamepad_sensor_data = SDL_GetGamepadSensorData(gamepad : Gamepad*, type : SensorType, data : Float32*, num_values : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RumbleGamepad(SDL_Gamepad *gamepad, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);
  fun rumble_gamepad = SDL_RumbleGamepad(gamepad : Gamepad*, low_frequency_rumble : UInt16, high_frequency_rumble : UInt16, duration_ms : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RumbleGamepadTriggers(SDL_Gamepad *gamepad, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);
  fun rumble_gamepad_triggers = SDL_RumbleGamepadTriggers(gamepad : Gamepad*, left_rumble : UInt16, right_rumble : UInt16, duration_ms : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetGamepadLED(SDL_Gamepad *gamepad, Uint8 red, Uint8 green, Uint8 blue);
  fun set_gamepad_led = SDL_SetGamepadLED(gamepad : Gamepad*, red : UInt8, green : UInt8, blue : UInt8) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SendGamepadEffect(SDL_Gamepad *gamepad, const void *data, int size);
  fun send_gamepad_effect = SDL_SendGamepadEffect(gamepad : Gamepad*, data : Void*, size : Int) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_CloseGamepad(SDL_Gamepad *gamepad);
  fun close_gamepad = SDL_CloseGamepad(gamepad : Gamepad*) : Void
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGamepadAppleSFSymbolsNameForButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
  fun get_gamepad_apple_sf_symbols_name_for_button = SDL_GetGamepadAppleSFSymbolsNameForButton(gamepad : Gamepad*, button : GamepadButton) : Char*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetGamepadAppleSFSymbolsNameForAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);
  fun get_gamepad_apple_sf_symbols_name_for_axis = SDL_GetGamepadAppleSFSymbolsNameForAxis(gamepad : Gamepad*, axis : GamepadAxis) : Char*
end
