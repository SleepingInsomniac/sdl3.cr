lib LibSdl3
  # extern SDL_DECLSPEC Uint64 SDLCALL SDL_GetTicks(void);
  fun get_ticks = SDL_GetTicks : UInt64
  # extern SDL_DECLSPEC Uint64 SDLCALL SDL_GetTicksNS(void);
  fun get_ticks_ns = SDL_GetTicksNS : UInt64
  # extern SDL_DECLSPEC Uint64 SDLCALL SDL_GetPerformanceCounter(void);
  fun get_performance_counter = SDL_GetPerformanceCounter : UInt64
  # extern SDL_DECLSPEC Uint64 SDLCALL SDL_GetPerformanceFrequency(void);
  fun get_performance_frequency = SDL_GetPerformanceFrequency : UInt64
  # extern SDL_DECLSPEC void SDLCALL SDL_Delay(Uint32 ms);
  fun delay = SDL_Delay(ms : UInt32) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DelayNS(Uint64 ns);
  fun delayns = SDL_DelayNS(ns : UInt64) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DelayPrecise(Uint64 ns);
  fun delay_precise = SDL_DelayPrecise(ns : UInt64) : Void
  alias TimerID = UInt32 # typedef Uint32 SDL_TimerID;
  # typedef Uint32 (SDLCALL *SDL_TimerCallback)(void *userdata, SDL_TimerID timerID, Uint32 interval);
  alias TimerCallback = (Void*, TimerID, UInt32) -> UInt32*
  # extern SDL_DECLSPEC SDL_TimerID SDLCALL SDL_AddTimer(Uint32 interval, SDL_TimerCallback callback, void *userdata);
  fun add_timer = SDL_AddTimer(interval : UInt32, callback : TimerCallback, userdata : Void*) : TimerID
  # typedef Uint64 (SDLCALL *SDL_NSTimerCallback)(void *userdata, SDL_TimerID timerID, Uint64 interval);
  alias NSTimerCallback = (Void*, TimerID, UInt64) -> UInt64*
  # extern SDL_DECLSPEC SDL_TimerID SDLCALL SDL_AddTimerNS(Uint64 interval, SDL_NSTimerCallback callback, void *userdata);
  fun add_timer_ns = SDL_AddTimerNS(interval : UInt64, callback : NSTimerCallback, userdata : Void*) : TimerID
  # extern SDL_DECLSPEC bool SDLCALL SDL_RemoveTimer(SDL_TimerID id);
  fun remove_timer = SDL_RemoveTimer(id : TimerID) : Bool
end
