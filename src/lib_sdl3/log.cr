lib LibSdl3
  enum LogCategory
    Application # SDL_LOG_CATEGORY_APPLICATION
    Error # SDL_LOG_CATEGORY_ERROR
    Assert # SDL_LOG_CATEGORY_ASSERT
    System # SDL_LOG_CATEGORY_SYSTEM
    Audio # SDL_LOG_CATEGORY_AUDIO
    Video # SDL_LOG_CATEGORY_VIDEO
    Render # SDL_LOG_CATEGORY_RENDER
    Input # SDL_LOG_CATEGORY_INPUT
    Test # SDL_LOG_CATEGORY_TEST
    Gpu # SDL_LOG_CATEGORY_GPU
    Reserved2 # SDL_LOG_CATEGORY_RESERVED2
    Reserved3 # SDL_LOG_CATEGORY_RESERVED3
    Reserved4 # SDL_LOG_CATEGORY_RESERVED4
    Reserved5 # SDL_LOG_CATEGORY_RESERVED5
    Reserved6 # SDL_LOG_CATEGORY_RESERVED6
    Reserved7 # SDL_LOG_CATEGORY_RESERVED7
    Reserved8 # SDL_LOG_CATEGORY_RESERVED8
    Reserved9 # SDL_LOG_CATEGORY_RESERVED9
    Reserved10 # SDL_LOG_CATEGORY_RESERVED10
    Custom # SDL_LOG_CATEGORY_CUSTOM
  end

  enum LogPriority
    Invalid # SDL_LOG_PRIORITY_INVALID
    Trace # SDL_LOG_PRIORITY_TRACE
    Verbose # SDL_LOG_PRIORITY_VERBOSE
    Debug # SDL_LOG_PRIORITY_DEBUG
    Info # SDL_LOG_PRIORITY_INFO
    Warn # SDL_LOG_PRIORITY_WARN
    Error # SDL_LOG_PRIORITY_ERROR
    Critical # SDL_LOG_PRIORITY_CRITICAL
    Count # SDL_LOG_PRIORITY_COUNT
  end

  # extern SDL_DECLSPEC void SDLCALL SDL_SetLogPriorities(SDL_LogPriority priority);
  fun set_log_priorities = SDL_SetLogPriorities(priority : LogPriority) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_SetLogPriority(int category, SDL_LogPriority priority);
  fun set_log_priority = SDL_SetLogPriority(category : Int, priority : LogPriority) : Void
  # extern SDL_DECLSPEC SDL_LogPriority SDLCALL SDL_GetLogPriority(int category);
  fun get_log_priority = SDL_GetLogPriority(category : Int) : LogPriority
  # extern SDL_DECLSPEC void SDLCALL SDL_ResetLogPriorities(void);
  fun reset_log_priorities = SDL_ResetLogPriorities : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetLogPriorityPrefix(SDL_LogPriority priority, const char *prefix);
  fun set_log_priority_prefix = SDL_SetLogPriorityPrefix(priority : LogPriority, prefix : Char*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_Log(SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(1);
  fun log = SDL_Log(fmt : Char*, ...) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_LogTrace(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2);
  fun log_trace = SDL_LogTrace(category : Int, fmt : Char*, ...) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_LogVerbose(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2);
  fun log_verbose = SDL_LogVerbose(category : Int, fmt : Char*, ...) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_LogDebug(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2);
  fun log_debug = SDL_LogDebug(category : Int, fmt : Char*, ...) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_LogInfo(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2);
  fun log_info = SDL_LogInfo(category : Int, fmt : Char*, ...) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_LogWarn(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2);
  fun log_warn = SDL_LogWarn(category : Int, fmt : Char*, ...) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_LogError(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2);
  fun log_error = SDL_LogError(category : Int, fmt : Char*, ...) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_LogCritical(int category, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(2);
  fun log_critical = SDL_LogCritical(category : Int, fmt : Char*, ...) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_LogMessage(int category, SDL_LogPriority priority, SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(3);
  fun log_message = SDL_LogMessage(category : Int, priority : LogPriority, fmt : Char*, ...) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_LogMessageV(int category, SDL_LogPriority priority, SDL_PRINTF_FORMAT_STRING const char *fmt, va_list ap) SDL_PRINTF_VARARG_FUNCV(3);
  fun log_message_v = SDL_LogMessageV(category : Int, priority : LogPriority, fmt : Char*, ap : VaListT) : Void
  # typedef void (SDLCALL *SDL_LogOutputFunction)(void *userdata, int category, SDL_LogPriority priority, const char *message);
  alias LogOutputFunction = (Void*, Int, LogPriority, Char*) -> Void*
  # extern SDL_DECLSPEC SDL_LogOutputFunction SDLCALL SDL_GetDefaultLogOutputFunction(void);
  fun get_default_log_output_function = SDL_GetDefaultLogOutputFunction : LogOutputFunction
  # extern SDL_DECLSPEC void SDLCALL SDL_GetLogOutputFunction(SDL_LogOutputFunction *callback, void **userdata);
  fun get_log_output_function = SDL_GetLogOutputFunction(callback : LogOutputFunction*, userdata : Void*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_SetLogOutputFunction(SDL_LogOutputFunction callback, void *userdata);
  fun set_log_output_function = SDL_SetLogOutputFunction(callback : LogOutputFunction, userdata : Void*) : Void
end
