lib LibSdl3
  type Process = Void # typedef struct SDL_Process SDL_Process;

  # extern SDL_DECLSPEC SDL_Process * SDLCALL SDL_CreateProcess(const char * const *args, bool pipe_stdio);
  fun create_process = SDL_CreateProcess(args : Char**, pipe_stdio : Bool) : Process*

  enum ProcessIO
    StdioInherited # SDL_PROCESS_STDIO_INHERITED
    StdioNull # SDL_PROCESS_STDIO_NULL
    StdioApp # SDL_PROCESS_STDIO_APP
    StdioRedirect # SDL_PROCESS_STDIO_REDIRECT
  end

  # extern SDL_DECLSPEC SDL_Process * SDLCALL SDL_CreateProcessWithProperties(SDL_PropertiesID props);
  fun create_process_with_properties = SDL_CreateProcessWithProperties(props : PropertiesID) : Process*
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetProcessProperties(SDL_Process *process);
  fun get_process_properties = SDL_GetProcessProperties(process : Process*) : PropertiesID
  # extern SDL_DECLSPEC void * SDLCALL SDL_ReadProcess(SDL_Process *process, size_t *datasize, int *exitcode);
  fun read_process = SDL_ReadProcess(process : Process*, datasize : LibC::SizeT*, exitcode : Int*) : Void*
  # extern SDL_DECLSPEC SDL_IOStream * SDLCALL SDL_GetProcessInput(SDL_Process *process);
  fun get_process_input = SDL_GetProcessInput(process : Process*) : IOStream*
  # extern SDL_DECLSPEC SDL_IOStream * SDLCALL SDL_GetProcessOutput(SDL_Process *process);
  fun get_process_output = SDL_GetProcessOutput(process : Process*) : IOStream*
  # extern SDL_DECLSPEC bool SDLCALL SDL_KillProcess(SDL_Process *process, bool force);
  fun kill_process = SDL_KillProcess(process : Process*, force : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_WaitProcess(SDL_Process *process, bool block, int *exitcode);
  fun wait_process = SDL_WaitProcess(process : Process*, block : Bool, exitcode : Int*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyProcess(SDL_Process *process);
  fun destroy_process = SDL_DestroyProcess(process : Process*) : Void
end
