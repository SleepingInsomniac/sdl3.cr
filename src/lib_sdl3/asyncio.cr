lib LibSdl3
  type AsyncIO = Void # typedef struct SDL_AsyncIO SDL_AsyncIO;

  enum AsyncIOTaskType
    Read # SDL_ASYNCIO_TASK_READ
    Write # SDL_ASYNCIO_TASK_WRITE
    Close # SDL_ASYNCIO_TASK_CLOSE
  end

  enum AsyncIOResult
    Complete # SDL_ASYNCIO_COMPLETE
    Failure # SDL_ASYNCIO_FAILURE
    Canceled # SDL_ASYNCIO_CANCELED
  end

  struct AsyncIOOutcome
    asyncio : AsyncIO*
    type : AsyncIOTaskType
    result : AsyncIOResult
    buffer : Void*
    offset : UInt64
    bytes_requested : UInt64
    bytes_transferred : UInt64
    userdata : Void*
  end

  type AsyncIOQueue = Void # typedef struct SDL_AsyncIOQueue SDL_AsyncIOQueue;

  # extern SDL_DECLSPEC SDL_AsyncIO * SDLCALL SDL_AsyncIOFromFile(const char *file, const char *mode);
  fun asyncio_from_file = SDL_AsyncIOFromFile(file : Char*, mode : Char*) : AsyncIO*
  # extern SDL_DECLSPEC Sint64 SDLCALL SDL_GetAsyncIOSize(SDL_AsyncIO *asyncio);
  fun get_async_io_size = SDL_GetAsyncIOSize(asyncio : AsyncIO*) : Int64
  # extern SDL_DECLSPEC bool SDLCALL SDL_ReadAsyncIO(SDL_AsyncIO *asyncio, void *ptr, Uint64 offset, Uint64 size, SDL_AsyncIOQueue *queue, void *userdata);
  fun read_async_io = SDL_ReadAsyncIO(asyncio : AsyncIO*, ptr : Void*, offset : UInt64, size : UInt64, queue : AsyncIOQueue*, userdata : Void*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WriteAsyncIO(SDL_AsyncIO *asyncio, void *ptr, Uint64 offset, Uint64 size, SDL_AsyncIOQueue *queue, void *userdata);
  fun write_async_io = SDL_WriteAsyncIO(asyncio : AsyncIO*, ptr : Void*, offset : UInt64, size : UInt64, queue : AsyncIOQueue*, userdata : Void*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_CloseAsyncIO(SDL_AsyncIO *asyncio, bool flush, SDL_AsyncIOQueue *queue, void *userdata);
  fun close_async_io = SDL_CloseAsyncIO(asyncio : AsyncIO*, flush : Bool, queue : AsyncIOQueue*, userdata : Void*) : Bool
  # extern SDL_DECLSPEC SDL_AsyncIOQueue * SDLCALL SDL_CreateAsyncIOQueue(void);
  fun create_async_io_queue = SDL_CreateAsyncIOQueue : AsyncIOQueue*
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyAsyncIOQueue(SDL_AsyncIOQueue *queue);
  fun destroy_async_io_queue = SDL_DestroyAsyncIOQueue(queue : AsyncIOQueue*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetAsyncIOResult(SDL_AsyncIOQueue *queue, SDL_AsyncIOOutcome *outcome);
  fun get_async_io_result = SDL_GetAsyncIOResult(queue : AsyncIOQueue*, outcome : AsyncIOOutcome*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WaitAsyncIOResult(SDL_AsyncIOQueue *queue, SDL_AsyncIOOutcome *outcome, Sint32 timeoutMS);
  fun wait_async_io_result = SDL_WaitAsyncIOResult(queue : AsyncIOQueue*, outcome : AsyncIOOutcome*, timeoutms : Int32) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_SignalAsyncIOQueue(SDL_AsyncIOQueue *queue);
  fun signal_async_io_queue = SDL_SignalAsyncIOQueue(queue : AsyncIOQueue*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_LoadFileAsync(const char *file, SDL_AsyncIOQueue *queue, void *userdata);
  fun load_file_async = SDL_LoadFileAsync(file : Char*, queue : AsyncIOQueue*, userdata : Void*) : Bool
end
