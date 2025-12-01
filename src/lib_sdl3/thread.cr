lib LibSdl3
  type Thread = Void # typedef struct SDL_Thread SDL_Thread;
  alias ThreadID = UInt64 # typedef Uint64 SDL_ThreadID;
  alias TLSID = AtomicInt # typedef SDL_AtomicInt SDL_TLSID;

  enum ThreadPriority
    Low # SDL_THREAD_PRIORITY_LOW
    Normal # SDL_THREAD_PRIORITY_NORMAL
    High # SDL_THREAD_PRIORITY_HIGH
    TimeCritical # SDL_THREAD_PRIORITY_TIME_CRITICAL
  end

  enum ThreadState
    Unknown # SDL_THREAD_UNKNOWN
    Alive # SDL_THREAD_ALIVE
    Detached # SDL_THREAD_DETACHED
    Complete # SDL_THREAD_COMPLETE
  end

  # typedef int (SDLCALL *SDL_ThreadFunction) (void *data);
  alias ThreadFunction = (Void*) -> Int*

  # extern SDL_DECLSPEC SDL_Thread * SDLCALL SDL_CreateThread(SDL_ThreadFunction fn, const char *name, void *data);
  fun create_thread = SDL_CreateThread(fn : ThreadFunction, name : Char*, data : Void*) : Thread*
  # extern SDL_DECLSPEC SDL_Thread * SDLCALL SDL_CreateThreadWithProperties(SDL_PropertiesID props);
  fun create_thread_with_properties = SDL_CreateThreadWithProperties(props : PropertiesID) : Thread*
  # extern SDL_DECLSPEC SDL_Thread * SDLCALL SDL_CreateThreadRuntime(SDL_ThreadFunction fn, const char *name, void *data, SDL_FunctionPointer pfnBeginThread, SDL_FunctionPointer pfnEndThread);
  fun create_thread_runtime = SDL_CreateThreadRuntime(fn : ThreadFunction, name : Char*, data : Void*, pfn_begin_thread : FunctionPointer, pfn_end_thread : FunctionPointer) : Thread*
  # extern SDL_DECLSPEC SDL_Thread * SDLCALL SDL_CreateThreadWithPropertiesRuntime(SDL_PropertiesID props, SDL_FunctionPointer pfnBeginThread, SDL_FunctionPointer pfnEndThread);
  fun create_thread_with_properties_runtime = SDL_CreateThreadWithPropertiesRuntime(props : PropertiesID, pfn_begin_thread : FunctionPointer, pfn_end_thread : FunctionPointer) : Thread*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetThreadName(SDL_Thread *thread);
  fun get_thread_name = SDL_GetThreadName(thread : Thread*) : Char*
  # extern SDL_DECLSPEC SDL_ThreadID SDLCALL SDL_GetCurrentThreadID(void);
  fun get_current_thread_id = SDL_GetCurrentThreadID : ThreadID
  # extern SDL_DECLSPEC SDL_ThreadID SDLCALL SDL_GetThreadID(SDL_Thread *thread);
  fun get_thread_id = SDL_GetThreadID(thread : Thread*) : ThreadID
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetCurrentThreadPriority(SDL_ThreadPriority priority);
  fun set_current_thread_priority = SDL_SetCurrentThreadPriority(priority : ThreadPriority) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_WaitThread(SDL_Thread *thread, int *status);
  fun wait_thread = SDL_WaitThread(thread : Thread*, status : Int*) : Void
  # extern SDL_DECLSPEC SDL_ThreadState SDLCALL SDL_GetThreadState(SDL_Thread *thread);
  fun get_thread_state = SDL_GetThreadState(thread : Thread*) : ThreadState
  # extern SDL_DECLSPEC void SDLCALL SDL_DetachThread(SDL_Thread *thread);
  fun detach_thread = SDL_DetachThread(thread : Thread*) : Void
  # extern SDL_DECLSPEC void * SDLCALL SDL_GetTLS(SDL_TLSID *id);
  fun gettls = SDL_GetTLS(id : TLSID*) : Void*
  # typedef void (SDLCALL *SDL_TLSDestructorCallback)(void *value);
  alias TLSDestructorCallback = (Void*) -> Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetTLS(SDL_TLSID *id, const void *value, SDL_TLSDestructorCallback destructor);
  fun settls = SDL_SetTLS(id : TLSID*, value : Void*, destructor : TLSDestructorCallback) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_CleanupTLS(void);
  fun cleanuptls = SDL_CleanupTLS : Void
end
