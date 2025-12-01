lib LibSdl3
  alias SpinLock = Int # typedef int SDL_SpinLock;

  # extern SDL_DECLSPEC bool SDLCALL SDL_TryLockSpinlock(SDL_SpinLock *lock);
  fun try_lock_spinlock = SDL_TryLockSpinlock(lock : SpinLock*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_LockSpinlock(SDL_SpinLock *lock);
  fun lock_spinlock = SDL_LockSpinlock(lock : SpinLock*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_UnlockSpinlock(SDL_SpinLock *lock);
  fun unlock_spinlock = SDL_UnlockSpinlock(lock : SpinLock*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_MemoryBarrierReleaseFunction(void);
  fun memory_barrier_release_function = SDL_MemoryBarrierReleaseFunction : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_MemoryBarrierAcquireFunction(void);
  fun memory_barrier_acquire_function = SDL_MemoryBarrierAcquireFunction : Void
  # typedef void (*SDL_KernelMemoryBarrierFunc)();
  alias KernelMemoryBarrierFunc = -> Void*

  struct AtomicInt
    value : Int
  end

  # end extern SDL_DECLSPEC bool SDLCALL SDL_CompareAndSwapAtomicInt(SDL_AtomicInt *a, int oldval, int newval);
  fun compare_and_swap_atomic_int = SDL_CompareAndSwapAtomicInt(a : AtomicInt*, oldval : Int, newval : Int) : Bool
  # extern SDL_DECLSPEC int SDLCALL SDL_SetAtomicInt(SDL_AtomicInt *a, int v);
  fun set_atomic_int = SDL_SetAtomicInt(a : AtomicInt*, v : Int) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_GetAtomicInt(SDL_AtomicInt *a);
  fun get_atomic_int = SDL_GetAtomicInt(a : AtomicInt*) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_AddAtomicInt(SDL_AtomicInt *a, int v);
  fun add_atomic_int = SDL_AddAtomicInt(a : AtomicInt*, v : Int) : Int

  struct AtomicU32
    value : UInt32
  end

  # end extern SDL_DECLSPEC bool SDLCALL SDL_CompareAndSwapAtomicU32(SDL_AtomicU32 *a, Uint32 oldval, Uint32 newval);
  fun compare_and_swap_atomic_u32 = SDL_CompareAndSwapAtomicU32(a : AtomicU32*, oldval : UInt32, newval : UInt32) : Bool
  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_SetAtomicU32(SDL_AtomicU32 *a, Uint32 v);
  fun set_atomic_u32 = SDL_SetAtomicU32(a : AtomicU32*, v : UInt32) : UInt32
  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_GetAtomicU32(SDL_AtomicU32 *a);
  fun get_atomic_u32 = SDL_GetAtomicU32(a : AtomicU32*) : UInt32
  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_AddAtomicU32(SDL_AtomicU32 *a, int v);
  fun add_atomic_u32 = SDL_AddAtomicU32(a : AtomicU32*, v : Int) : UInt32
  # extern SDL_DECLSPEC bool SDLCALL SDL_CompareAndSwapAtomicPointer(void **a, void *oldval, void *newval);
  fun compare_and_swap_atomic_pointer = SDL_CompareAndSwapAtomicPointer(a : Void*, oldval : Void*, newval : Void*) : Bool
  # extern SDL_DECLSPEC void * SDLCALL SDL_SetAtomicPointer(void **a, void *v);
  fun set_atomic_pointer = SDL_SetAtomicPointer(a : Void*, v : Void*) : Void*
  # extern SDL_DECLSPEC void * SDLCALL SDL_GetAtomicPointer(void **a);
  fun get_atomic_pointer = SDL_GetAtomicPointer(a : Void*) : Void*
end
