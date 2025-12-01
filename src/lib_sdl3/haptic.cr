lib LibSdl3
  type Haptic = Void # typedef struct SDL_Haptic SDL_Haptic;
  alias HapticEffectType = UInt16 # typedef Uint16 SDL_HapticEffectType;
  alias HapticDirectionType = UInt8 # typedef Uint8 SDL_HapticDirectionType;
  alias HapticEffectID = Int # typedef int SDL_HapticEffectID;

  struct HapticDirection
    type : HapticDirectionType
    dir : Int32
  end

  struct HapticConstant
    type : HapticEffectType
    direction : HapticDirection
    length : UInt32
    delay : UInt16
    button : UInt16
    interval : UInt16
    level : Int16
    attack_length : UInt16
    attack_level : UInt16
    fade_length : UInt16
    fade_level : UInt16
  end

  struct HapticPeriodic
    type : HapticEffectType
    direction : HapticDirection
    length : UInt32
    delay : UInt16
    button : UInt16
    interval : UInt16
    period : UInt16
    magnitude : Int16
    offset : Int16
    phase : UInt16
    attack_length : UInt16
    attack_level : UInt16
    fade_length : UInt16
    fade_level : UInt16
  end

  struct HapticCondition
    type : HapticEffectType
    direction : HapticDirection
    length : UInt32
    delay : UInt16
    button : UInt16
    interval : UInt16
    right_sat : UInt16
    left_sat : UInt16
    right_coeff : Int16
    left_coeff : Int16
    deadband : UInt16
    center : Int16
  end

  struct HapticRamp
    type : HapticEffectType
    direction : HapticDirection
    length : UInt32
    delay : UInt16
    button : UInt16
    interval : UInt16
    ramp_start : Int16
    ramp_end : Int16
    attack_length : UInt16
    attack_level : UInt16
    fade_length : UInt16
    fade_level : UInt16
  end

  struct HapticLeftRight
    type : HapticEffectType
    length : UInt32
    large_magnitude : UInt16
    small_magnitude : UInt16
  end

  struct HapticCustom
    type : HapticEffectType
    direction : HapticDirection
    length : UInt32
    delay : UInt16
    button : UInt16
    interval : UInt16
    channels : UInt8
    period : UInt16
    samples : UInt16
    data : UInt16*
    attack_length : UInt16
    attack_level : UInt16
    fade_length : UInt16
    fade_level : UInt16
  end

  union HapticEffect
    type : HapticEffectType
    constant : HapticConstant
    periodic : HapticPeriodic
    condition : HapticCondition
    ramp : HapticRamp
    leftright : HapticLeftRight
    custom : HapticCustom
  end

  alias HapticID = UInt32 # typedef Uint32 SDL_HapticID;

  # extern SDL_DECLSPEC SDL_HapticID * SDLCALL SDL_GetHaptics(int *count);
  fun get_haptics = SDL_GetHaptics(count : Int*) : HapticID*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetHapticNameForID(SDL_HapticID instance_id);
  fun get_haptic_name_for_id = SDL_GetHapticNameForID(instance_id : HapticID) : Char*
  # extern SDL_DECLSPEC SDL_Haptic * SDLCALL SDL_OpenHaptic(SDL_HapticID instance_id);
  fun open_haptic = SDL_OpenHaptic(instance_id : HapticID) : Haptic*
  # extern SDL_DECLSPEC SDL_Haptic * SDLCALL SDL_GetHapticFromID(SDL_HapticID instance_id);
  fun get_haptic_from_id = SDL_GetHapticFromID(instance_id : HapticID) : Haptic*
  # extern SDL_DECLSPEC SDL_HapticID SDLCALL SDL_GetHapticID(SDL_Haptic *haptic);
  fun get_haptic_id = SDL_GetHapticID(haptic : Haptic*) : HapticID
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetHapticName(SDL_Haptic *haptic);
  fun get_haptic_name = SDL_GetHapticName(haptic : Haptic*) : Char*
  # extern SDL_DECLSPEC bool SDLCALL SDL_IsMouseHaptic(void);
  fun is_mouse_haptic = SDL_IsMouseHaptic : Bool
  # extern SDL_DECLSPEC SDL_Haptic * SDLCALL SDL_OpenHapticFromMouse(void);
  fun open_haptic_from_mouse = SDL_OpenHapticFromMouse : Haptic*
  # extern SDL_DECLSPEC bool SDLCALL SDL_IsJoystickHaptic(SDL_Joystick *joystick);
  fun is_joystick_haptic = SDL_IsJoystickHaptic(joystick : Joystick*) : Bool
  # extern SDL_DECLSPEC SDL_Haptic * SDLCALL SDL_OpenHapticFromJoystick(SDL_Joystick *joystick);
  fun open_haptic_from_joystick = SDL_OpenHapticFromJoystick(joystick : Joystick*) : Haptic*
  # extern SDL_DECLSPEC void SDLCALL SDL_CloseHaptic(SDL_Haptic *haptic);
  fun close_haptic = SDL_CloseHaptic(haptic : Haptic*) : Void
  # extern SDL_DECLSPEC int SDLCALL SDL_GetMaxHapticEffects(SDL_Haptic *haptic);
  fun get_max_haptic_effects = SDL_GetMaxHapticEffects(haptic : Haptic*) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_GetMaxHapticEffectsPlaying(SDL_Haptic *haptic);
  fun get_max_haptic_effects_playing = SDL_GetMaxHapticEffectsPlaying(haptic : Haptic*) : Int
  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_GetHapticFeatures(SDL_Haptic *haptic);
  fun get_haptic_features = SDL_GetHapticFeatures(haptic : Haptic*) : UInt32
  # extern SDL_DECLSPEC int SDLCALL SDL_GetNumHapticAxes(SDL_Haptic *haptic);
  fun get_num_haptic_axes = SDL_GetNumHapticAxes(haptic : Haptic*) : Int
  # extern SDL_DECLSPEC bool SDLCALL SDL_HapticEffectSupported(SDL_Haptic *haptic, const SDL_HapticEffect *effect);
  fun haptic_effect_supported = SDL_HapticEffectSupported(haptic : Haptic*, effect : HapticEffect*) : Bool
  # extern SDL_DECLSPEC SDL_HapticEffectID SDLCALL SDL_CreateHapticEffect(SDL_Haptic *haptic, const SDL_HapticEffect *effect);
  fun create_haptic_effect = SDL_CreateHapticEffect(haptic : Haptic*, effect : HapticEffect*) : HapticEffectID
  # extern SDL_DECLSPEC bool SDLCALL SDL_UpdateHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect, const SDL_HapticEffect *data);
  fun update_haptic_effect = SDL_UpdateHapticEffect(haptic : Haptic*, effect : HapticEffectID, data : HapticEffect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_RunHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect, Uint32 iterations);
  fun run_haptic_effect = SDL_RunHapticEffect(haptic : Haptic*, effect : HapticEffectID, iterations : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_StopHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect);
  fun stop_haptic_effect = SDL_StopHapticEffect(haptic : Haptic*, effect : HapticEffectID) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect);
  fun destroy_haptic_effect = SDL_DestroyHapticEffect(haptic : Haptic*, effect : HapticEffectID) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetHapticEffectStatus(SDL_Haptic *haptic, SDL_HapticEffectID effect);
  fun get_haptic_effect_status = SDL_GetHapticEffectStatus(haptic : Haptic*, effect : HapticEffectID) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetHapticGain(SDL_Haptic *haptic, int gain);
  fun set_haptic_gain = SDL_SetHapticGain(haptic : Haptic*, gain : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetHapticAutocenter(SDL_Haptic *haptic, int autocenter);
  fun set_haptic_autocenter = SDL_SetHapticAutocenter(haptic : Haptic*, autocenter : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_PauseHaptic(SDL_Haptic *haptic);
  fun pause_haptic = SDL_PauseHaptic(haptic : Haptic*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ResumeHaptic(SDL_Haptic *haptic);
  fun resume_haptic = SDL_ResumeHaptic(haptic : Haptic*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_StopHapticEffects(SDL_Haptic *haptic);
  fun stop_haptic_effects = SDL_StopHapticEffects(haptic : Haptic*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_HapticRumbleSupported(SDL_Haptic *haptic);
  fun haptic_rumble_supported = SDL_HapticRumbleSupported(haptic : Haptic*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_InitHapticRumble(SDL_Haptic *haptic);
  fun init_haptic_rumble = SDL_InitHapticRumble(haptic : Haptic*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_PlayHapticRumble(SDL_Haptic *haptic, float strength, Uint32 length);
  fun play_haptic_rumble = SDL_PlayHapticRumble(haptic : Haptic*, strength : Float32, length : UInt32) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_StopHapticRumble(SDL_Haptic *haptic);
  fun stop_haptic_rumble = SDL_StopHapticRumble(haptic : Haptic*) : Bool
end
