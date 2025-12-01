lib LibSdl3
  enum PowerState
    PowerstateError = -1 # SDL_POWERSTATE_ERROR
    PowerstateUnknown # SDL_POWERSTATE_UNKNOWN
    PowerstateOnBattery # SDL_POWERSTATE_ON_BATTERY
    PowerstateNoBattery # SDL_POWERSTATE_NO_BATTERY
    PowerstateCharging # SDL_POWERSTATE_CHARGING
    PowerstateCharged # SDL_POWERSTATE_CHARGED
  end

  # extern SDL_DECLSPEC SDL_PowerState SDLCALL SDL_GetPowerInfo(int *seconds, int *percent);
  fun get_power_info = SDL_GetPowerInfo(seconds : Int*, percent : Int*) : PowerState
end
