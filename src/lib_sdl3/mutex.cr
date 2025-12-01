lib LibSdl3
  type Mutex = Void # typedef struct SDL_Mutex SDL_Mutex;
  # extern SDL_DECLSPEC SDL_Mutex * SDLCALL SDL_CreateMutex(void);
  fun create_mutex = SDL_CreateMutex : Mutex*
  # extern SDL_DECLSPEC void SDLCALL SDL_LockMutex(SDL_Mutex *mutex) SDL_ACQUIRE(mutex);
  fun lock_mutex = SDL_LockMutex(mutex : Mutex*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_TryLockMutex(SDL_Mutex *mutex) SDL_TRY_ACQUIRE(true, mutex);
  fun try_lock_mutex = SDL_TryLockMutex(mutex : Mutex*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_UnlockMutex(SDL_Mutex *mutex) SDL_RELEASE(mutex);
  fun unlock_mutex = SDL_UnlockMutex(mutex : Mutex*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyMutex(SDL_Mutex *mutex);
  fun destroy_mutex = SDL_DestroyMutex(mutex : Mutex*) : Void
  type RWLock = Void # typedef struct SDL_RWLock SDL_RWLock;
  # extern SDL_DECLSPEC SDL_RWLock * SDLCALL SDL_CreateRWLock(void);
  fun createrw_lock = SDL_CreateRWLock : RWLock*
  # extern SDL_DECLSPEC void SDLCALL SDL_LockRWLockForReading(SDL_RWLock *rwlock) SDL_ACQUIRE_SHARED(rwlock);
  fun lockrw_lock_for_reading = SDL_LockRWLockForReading(rwlock : RWLock*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_LockRWLockForWriting(SDL_RWLock *rwlock) SDL_ACQUIRE(rwlock);
  fun lockrw_lock_for_writing = SDL_LockRWLockForWriting(rwlock : RWLock*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_TryLockRWLockForReading(SDL_RWLock *rwlock) SDL_TRY_ACQUIRE_SHARED(true, rwlock);
  fun try_lock_rw_lock_for_reading = SDL_TryLockRWLockForReading(rwlock : RWLock*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_TryLockRWLockForWriting(SDL_RWLock *rwlock) SDL_TRY_ACQUIRE(true, rwlock);
  fun try_lock_rw_lock_for_writing = SDL_TryLockRWLockForWriting(rwlock : RWLock*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_UnlockRWLock(SDL_RWLock *rwlock) SDL_RELEASE_GENERIC(rwlock);
  fun unlockrw_lock = SDL_UnlockRWLock(rwlock : RWLock*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyRWLock(SDL_RWLock *rwlock);
  fun destroyrw_lock = SDL_DestroyRWLock(rwlock : RWLock*) : Void
  type Semaphore = Void # typedef struct SDL_Semaphore SDL_Semaphore;
  # extern SDL_DECLSPEC SDL_Semaphore * SDLCALL SDL_CreateSemaphore(Uint32 initial_value);
  fun create_semaphore = SDL_CreateSemaphore(initial_value : UInt32) : Semaphore*
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroySemaphore(SDL_Semaphore *sem);
  fun destroy_semaphore = SDL_DestroySemaphore(sem : Semaphore*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_WaitSemaphore(SDL_Semaphore *sem);
  fun wait_semaphore = SDL_WaitSemaphore(sem : Semaphore*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_TryWaitSemaphore(SDL_Semaphore *sem);
  fun try_wait_semaphore = SDL_TryWaitSemaphore(sem : Semaphore*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WaitSemaphoreTimeout(SDL_Semaphore *sem, Sint32 timeoutMS);
  fun wait_semaphore_timeout = SDL_WaitSemaphoreTimeout(sem : Semaphore*, timeoutms : Int32) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_SignalSemaphore(SDL_Semaphore *sem);
  fun signal_semaphore = SDL_SignalSemaphore(sem : Semaphore*) : Void
  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_GetSemaphoreValue(SDL_Semaphore *sem);
  fun get_semaphore_value = SDL_GetSemaphoreValue(sem : Semaphore*) : UInt32
  type Condition = Void # typedef struct SDL_Condition SDL_Condition;
  # extern SDL_DECLSPEC SDL_Condition * SDLCALL SDL_CreateCondition(void);
  fun create_condition = SDL_CreateCondition : Condition*
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyCondition(SDL_Condition *cond);
  fun destroy_condition = SDL_DestroyCondition(cond : Condition*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_SignalCondition(SDL_Condition *cond);
  fun signal_condition = SDL_SignalCondition(cond : Condition*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_BroadcastCondition(SDL_Condition *cond);
  fun broadcast_condition = SDL_BroadcastCondition(cond : Condition*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_WaitCondition(SDL_Condition *cond, SDL_Mutex *mutex);
  fun wait_condition = SDL_WaitCondition(cond : Condition*, mutex : Mutex*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_WaitConditionTimeout(SDL_Condition *cond, SDL_Mutex *mutex, Sint32 timeoutMS);
  fun wait_condition_timeout = SDL_WaitConditionTimeout(cond : Condition*, mutex : Mutex*, timeoutms : Int32) : Bool

  enum InitStatus
    Uninitialized # SDL_INIT_STATUS_UNINITIALIZED
    Initializing # SDL_INIT_STATUS_INITIALIZING
    Initialized # SDL_INIT_STATUS_INITIALIZED
    Uninitializing # SDL_INIT_STATUS_UNINITIALIZING
  end

  struct InitState
    status : AtomicInt
    thread : ThreadID
    reserved : Void*
  end

  # extern SDL_DECLSPEC bool SDLCALL SDL_ShouldInit(SDL_InitState *state);
  fun should_init = SDL_ShouldInit(state : InitState*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ShouldQuit(SDL_InitState *state);
  fun should_quit = SDL_ShouldQuit(state : InitState*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_SetInitialized(SDL_InitState *state, bool initialized);
  fun set_initialized = SDL_SetInitialized(state : InitState*, initialized : Bool) : Void
end
