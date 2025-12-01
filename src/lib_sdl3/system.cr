lib LibSdl3
  # typedef struct tagMSG MSG;
  type MSG = Void
  alias TagMSG = MSG

  # typedef bool (SDLCALL *SDL_WindowsMessageHook)(void *userdata, MSG *msg);
  alias WindowsMessageHook = (Void*, MSG*) -> Bool*
  # extern SDL_DECLSPEC void SDLCALL SDL_SetWindowsMessageHook(SDL_WindowsMessageHook callback, void *userdata);
  fun set_windows_message_hook = SDL_SetWindowsMessageHook(callback : WindowsMessageHook, userdata : Void*) : Void
  #if defined(SDL_PLATFORM_WIN32) || defined(SDL_PLATFORM_WINGDK)
  # extern SDL_DECLSPEC int SDLCALL SDL_GetDirect3D9AdapterIndex(SDL_DisplayID displayID);
  fun get_direct_3d9_adapter_index = SDL_GetDirect3D9AdapterIndex(displayid : DisplayID) : Int
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetDXGIOutputInfo(SDL_DisplayID displayID, int *adapterIndex, int *outputIndex);
  fun getdxgi_output_info = SDL_GetDXGIOutputInfo(displayid : DisplayID, adapter_index : Int*, output_index : Int*) : Bool

  # typedef union _XEvent XEvent;
  type XEvent = Void

  # typedef bool (SDLCALL *SDL_X11EventHook)(void *userdata, XEvent *xevent);
  alias X11EventHook = (Void*, XEvent*) -> Bool*
  # extern SDL_DECLSPEC void SDLCALL SDL_SetX11EventHook(SDL_X11EventHook callback, void *userdata);
  fun setx11_event_hook = SDL_SetX11EventHook(callback : X11EventHook, userdata : Void*) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetLinuxThreadPriority(Sint64 threadID, int priority);
  fun set_linux_thread_priority = SDL_SetLinuxThreadPriority(threadid : Int64, priority : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetLinuxThreadPriorityAndPolicy(Sint64 threadID, int sdlPriority, int schedPolicy);
  fun set_linux_thread_priority_and_policy = SDL_SetLinuxThreadPriorityAndPolicy(threadid : Int64, sdl_priority : Int, sched_policy : Int) : Bool
  # typedef void (SDLCALL *SDL_iOSAnimationCallback)(void *userdata);
  alias IOSAnimationCallback = (Void*) -> Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetiOSAnimationCallback(SDL_Window *window, int interval, SDL_iOSAnimationCallback callback, void *callbackParam);
  fun setios_animation_callback = SDL_SetiOSAnimationCallback(window : Window*, interval : Int, callback : IOSAnimationCallback, callback_param : Void*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_SetiOSEventPump(bool enabled);
  fun setios_event_pump = SDL_SetiOSEventPump(enabled : Bool) : Void
  # extern SDL_DECLSPEC void * SDLCALL SDL_GetAndroidJNIEnv(void);
  fun get_android_jni_env = SDL_GetAndroidJNIEnv : Void*
  # extern SDL_DECLSPEC void * SDLCALL SDL_GetAndroidActivity(void);
  fun get_android_activity = SDL_GetAndroidActivity : Void*
  # extern SDL_DECLSPEC int SDLCALL SDL_GetAndroidSDKVersion(void);
  fun get_android_sdk_version = SDL_GetAndroidSDKVersion : Int
  # extern SDL_DECLSPEC bool SDLCALL SDL_IsChromebook(void);
  fun is_chromebook = SDL_IsChromebook : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_IsDeXMode(void);
  fun is_de_x_mode = SDL_IsDeXMode : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_SendAndroidBackButton(void);
  fun send_android_back_button = SDL_SendAndroidBackButton : Void
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetAndroidInternalStoragePath(void);
  fun get_android_internal_storage_path = SDL_GetAndroidInternalStoragePath : Char*
  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_GetAndroidExternalStorageState(void);
  fun get_android_external_storage_state = SDL_GetAndroidExternalStorageState : UInt32
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetAndroidExternalStoragePath(void);
  fun get_android_external_storage_path = SDL_GetAndroidExternalStoragePath : Char*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetAndroidCachePath(void);
  fun get_android_cache_path = SDL_GetAndroidCachePath : Char*
  # typedef void (SDLCALL *SDL_RequestAndroidPermissionCallback)(void *userdata, const char *permission, bool granted);
  alias RequestAndroidPermissionCallback = (Void*, Char*, Bool) -> Void*
  # extern SDL_DECLSPEC bool SDLCALL SDL_RequestAndroidPermission(const char *permission, SDL_RequestAndroidPermissionCallback cb, void *userdata);
  fun request_android_permission = SDL_RequestAndroidPermission(permission : Char*, cb : RequestAndroidPermissionCallback, userdata : Void*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ShowAndroidToast(const char *message, int duration, int gravity, int xoffset, int yoffset);
  fun show_android_toast = SDL_ShowAndroidToast(message : Char*, duration : Int, gravity : Int, xoffset : Int, yoffset : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_SendAndroidMessage(Uint32 command, int param);
  fun send_android_message = SDL_SendAndroidMessage(command : UInt32, param : Int) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_IsTablet(void);
  fun is_tablet = SDL_IsTablet : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_IsTV(void);
  fun istv = SDL_IsTV : Bool

  enum Sandbox
    None = 0 # SDL_SANDBOX_NONE
    UnknownContainer # SDL_SANDBOX_UNKNOWN_CONTAINER
    Flatpak # SDL_SANDBOX_FLATPAK
    Snap # SDL_SANDBOX_SNAP
    Macos # SDL_SANDBOX_MACOS
  end

  # extern SDL_DECLSPEC SDL_Sandbox SDLCALL SDL_GetSandbox(void);
  fun get_sandbox = SDL_GetSandbox : Sandbox
  # extern SDL_DECLSPEC void SDLCALL SDL_OnApplicationWillTerminate(void);
  fun on_application_will_terminate = SDL_OnApplicationWillTerminate : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_OnApplicationDidReceiveMemoryWarning(void);
  fun on_application_did_receive_memory_warning = SDL_OnApplicationDidReceiveMemoryWarning : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_OnApplicationWillEnterBackground(void);
  fun on_application_will_enter_background = SDL_OnApplicationWillEnterBackground : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_OnApplicationDidEnterBackground(void);
  fun on_application_did_enter_background = SDL_OnApplicationDidEnterBackground : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_OnApplicationWillEnterForeground(void);
  fun on_application_will_enter_foreground = SDL_OnApplicationWillEnterForeground : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_OnApplicationDidEnterForeground(void);
  fun on_application_did_enter_foreground = SDL_OnApplicationDidEnterForeground : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_OnApplicationDidChangeStatusBarOrientation(void);
  fun on_application_did_change_status_bar_orientation = SDL_OnApplicationDidChangeStatusBarOrientation : Void

  # typedef struct XTaskQueueObject *XTaskQueueHandle;
  type XTaskQueueObject = Void
  alias XTaskQueueHandle = XTaskQueueObject*

  # typedef struct XUser *XUserHandle;
  type XUser = Void
  alias XUserHandle = XUser*

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetGDKTaskQueue(XTaskQueueHandle *outTaskQueue);
  fun getgdk_task_queue = SDL_GetGDKTaskQueue(out_task_queue : XTaskQueueHandle*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetGDKDefaultUser(XUserHandle *outUserHandle);
  fun getgdk_default_user = SDL_GetGDKDefaultUser(out_user_handle : XUserHandle*) : Bool
end
