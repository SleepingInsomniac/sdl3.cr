lib LibSdl3
  alias DisplayID = UInt32 # typedef Uint32 SDL_DisplayID;
  alias WindowID = UInt32 # typedef Uint32 SDL_WindowID;

  enum SystemTheme
    Unknown # SDL_SYSTEM_THEME_UNKNOWN
    Light # SDL_SYSTEM_THEME_LIGHT
    Dark # SDL_SYSTEM_THEME_DARK
  end

  alias DisplayModeData = Void # typedef struct SDL_DisplayModeData SDL_DisplayModeData;

  struct DisplayMode
    displayID : DisplayID
    format : PixelFormat
    w : Int
    h : Int
    pixel_density : Float32
    refresh_rate : Float32
    refresh_rate_numerator : Int
    refresh_rate_denominator : Int
    internal : DisplayModeData*
  end

  enum DisplayOrientation
    Unknown # SDL_ORIENTATION_UNKNOWN
    Landscape # SDL_ORIENTATION_LANDSCAPE
    LandscapeFlipped # SDL_ORIENTATION_LANDSCAPE_FLIPPED
    Portrait # SDL_ORIENTATION_PORTRAIT
    PortraitFlipped # SDL_ORIENTATION_PORTRAIT_FLIPPED
  end

  alias Window = Void # typedef struct SDL_Window SDL_Window;

  @[Flags]
  enum WindowFlags : UInt64
    None = 0u64
    Fullscreen        = 0x0000000000000001u64 # < window is in fullscreen mode
    Opengl            = 0x0000000000000002u64 # < window usable with OpenGL context
    Occluded          = 0x0000000000000004u64 # < window is occluded
    Hidden            = 0x0000000000000008u64 # < window is neither mapped onto the desktop nor shown in the taskbar/dock/window list; SDL_ShowWindow() is required for it to become visible
    Borderless        = 0x0000000000000010u64 # < no window decoration
    Resizable         = 0x0000000000000020u64 # < window can be resized
    Minimized         = 0x0000000000000040u64 # < window is minimized
    Maximized         = 0x0000000000000080u64 # < window is maximized
    MouseGrabbed      = 0x0000000000000100u64 # < window has grabbed mouse input
    InputFocus        = 0x0000000000000200u64 # < window has input focus
    MouseFocus        = 0x0000000000000400u64 # < window has mouse focus
    External          = 0x0000000000000800u64 # < window not created by SDL
    Modal             = 0x0000000000001000u64 # < window is modal
    HighPixelDensity  = 0x0000000000002000u64 # < window uses high pixel density back buffer if possible
    MouseCapture      = 0x0000000000004000u64 # < window has mouse captured (unrelated to MOUSE_GRABBED)
    MouseRelativeMode = 0x0000000000008000u64 # < window has relative mode enabled
    AlwaysOnTop       = 0x0000000000010000u64 # < window should always be above others
    Utility           = 0x0000000000020000u64 # < window should be treated as a utility window, not showing in the task bar and window list
    Tooltip           = 0x0000000000040000u64 # < window should be treated as a tooltip and does not get mouse or keyboard focus, requires a parent window
    PopupMenu         = 0x0000000000080000u64 # < window should be treated as a popup menu, requires a parent window
    KeyboardGrabbed   = 0x0000000000100000u64 # < window has grabbed keyboard input
    Vulkan            = 0x0000000010000000u64 # < window usable for Vulkan surface
    Metal             = 0x0000000020000000u64 # < window usable for Metal view
    Transparent       = 0x0000000040000000u64 # < window with transparent buffer
    NotFocusable      = 0x0000000080000000u64 # < window should not be focusable
  end

  enum FlashOperation
    Cancel # SDL_FLASH_CANCEL
    Briefly # SDL_FLASH_BRIEFLY
    UntilFocused # SDL_FLASH_UNTIL_FOCUSED
  end

  enum ProgressState
    Invalid = -1 # SDL_PROGRESS_STATE_INVALID
    None # SDL_PROGRESS_STATE_NONE
    Indeterminate # SDL_PROGRESS_STATE_INDETERMINATE
    Normal # SDL_PROGRESS_STATE_NORMAL
    Paused # SDL_PROGRESS_STATE_PAUSED
    Error # SDL_PROGRESS_STATE_ERROR
  end

  alias GLContextState = Void # typedef struct SDL_GLContextState *SDL_GLContext;
  alias EGLDisplay = Void* # typedef void *SDL_EGLDisplay;
  alias EGLConfig = Void* # typedef void *SDL_EGLConfig;
  alias EGLSurface = Void* # typedef void *SDL_EGLSurface;
  alias EGLAttrib = IntPtrT # typedef intptr_t SDL_EGLAttrib;
  alias EGLint = Int # typedef int SDL_EGLint;

  # typedef SDL_EGLAttrib *(SDLCALL *SDL_EGLAttribArrayCallback)(void *userdata);
  alias EGLAttribArrayCallback = (Void*) -> EGLAttrib **
  # typedef SDL_EGLint *(SDLCALL *SDL_EGLIntArrayCallback)(void *userdata, SDL_EGLDisplay display, SDL_EGLConfig config);
  alias EGLIntArrayCallback = (Void*, EGLDisplay, EGLConfig) -> EGLint **

  enum GLAttr
    RedSize # SDL_GL_RED_SIZE
    GreenSize # SDL_GL_GREEN_SIZE
    BlueSize # SDL_GL_BLUE_SIZE
    AlphaSize # SDL_GL_ALPHA_SIZE
    BufferSize # SDL_GL_BUFFER_SIZE
    Doublebuffer # SDL_GL_DOUBLEBUFFER
    DepthSize # SDL_GL_DEPTH_SIZE
    StencilSize # SDL_GL_STENCIL_SIZE
    AccumRedSize # SDL_GL_ACCUM_RED_SIZE
    AccumGreenSize # SDL_GL_ACCUM_GREEN_SIZE
    AccumBlueSize # SDL_GL_ACCUM_BLUE_SIZE
    AccumAlphaSize # SDL_GL_ACCUM_ALPHA_SIZE
    Stereo # SDL_GL_STEREO
    Multisamplebuffers # SDL_GL_MULTISAMPLEBUFFERS
    Multisamplesamples # SDL_GL_MULTISAMPLESAMPLES
    AcceleratedVisual # SDL_GL_ACCELERATED_VISUAL
    RetainedBacking # SDL_GL_RETAINED_BACKING
    ContextMajorVersion # SDL_GL_CONTEXT_MAJOR_VERSION
    ContextMinorVersion # SDL_GL_CONTEXT_MINOR_VERSION
    ContextFlags # SDL_GL_CONTEXT_FLAGS
    ContextProfileMask # SDL_GL_CONTEXT_PROFILE_MASK
    ShareWithCurrentContext # SDL_GL_SHARE_WITH_CURRENT_CONTEXT
    FramebufferSrgbCapable # SDL_GL_FRAMEBUFFER_SRGB_CAPABLE
    ContextReleaseBehavior # SDL_GL_CONTEXT_RELEASE_BEHAVIOR
    ContextResetNotification # SDL_GL_CONTEXT_RESET_NOTIFICATION
    ContextNoError # SDL_GL_CONTEXT_NO_ERROR
    Floatbuffers # SDL_GL_FLOATBUFFERS
    EglPlatform # SDL_GL_EGL_PLATFORM
  end

  enum GLProfile : UInt32 # typedef Uint32 SDL_GLProfile;
    Core          = 0x0001  #< OpenGL Core Profile context */
    Compatibility = 0x0002  #< OpenGL Compatibility Profile context */
    Es            = 0x0004  #< GLX_CONTEXT_ES2_PROFILE_BIT_EXT */
  end

  enum GLContextFlag : UInt32 # typedef Uint32 SDL_GLContextFlag;
    Debug             = 0x0001
    ForwardCompatible = 0x0002
    RobustAccess      = 0x0004
    ResetIsolation    = 0x0008
  end

  enum GLContextReleaseFlag : UInt32 # typedef Uint32 SDL_GLContextReleaseFlag;
    None  = 0x0000
    Flush = 0x0001
  end

  enum GLContextResetNotification : UInt32 # typedef Uint32 SDL_GLContextResetNotification;
    NoNotification = 0x0000
    LoseContext    = 0x0001
  end

  # extern SDL_DECLSPEC int SDLCALL SDL_GetNumVideoDrivers(void);
  fun get_num_video_drivers = SDL_GetNumVideoDrivers : Int

  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetVideoDriver(int index);
  fun get_video_driver = SDL_GetVideoDriver(index : Int) : Char*

  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetCurrentVideoDriver(void);
  fun get_current_video_driver = SDL_GetCurrentVideoDriver : Char*

  # extern SDL_DECLSPEC SDL_SystemTheme SDLCALL SDL_GetSystemTheme(void);
  fun get_system_theme = SDL_GetSystemTheme : SystemTheme

  # extern SDL_DECLSPEC SDL_DisplayID * SDLCALL SDL_GetDisplays(int *count);
  fun get_displays = SDL_GetDisplays(count : Int*) : DisplayID*

  # extern SDL_DECLSPEC SDL_DisplayID SDLCALL SDL_GetPrimaryDisplay(void);
  fun get_primary_display = SDL_GetPrimaryDisplay : DisplayID

  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetDisplayProperties(SDL_DisplayID displayID);
  fun get_display_properties = SDL_GetDisplayProperties(displayID : DisplayID) : PropertiesID

  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetDisplayName(SDL_DisplayID displayID);
  fun get_display_name = SDL_GetDisplayName(displayID : DisplayID) : Char*

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetDisplayBounds(SDL_DisplayID displayID, SDL_Rect *rect);
  fun get_display_bounds = SDL_GetDisplayBounds(displayID : DisplayID, rect : Rect*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetDisplayUsableBounds(SDL_DisplayID displayID, SDL_Rect *rect);
  fun get_display_usable_bounds = SDL_GetDisplayUsableBounds(displayID : DisplayID, rect : Rect*) : Bool

  # extern SDL_DECLSPEC SDL_DisplayOrientation SDLCALL SDL_GetNaturalDisplayOrientation(SDL_DisplayID displayID);
  fun get_natural_display_orientation = SDL_GetNaturalDisplayOrientation(displayID : DisplayID) : DisplayOrientation

  # extern SDL_DECLSPEC SDL_DisplayOrientation SDLCALL SDL_GetCurrentDisplayOrientation(SDL_DisplayID displayID);
  fun get_current_display_orientation = SDL_GetCurrentDisplayOrientation(displayID : DisplayID) : DisplayOrientation

  # extern SDL_DECLSPEC float SDLCALL SDL_GetDisplayContentScale(SDL_DisplayID displayID);
  fun get_display_content_scale = SDL_GetDisplayContentScale(displayID : DisplayID) : Float32

  # extern SDL_DECLSPEC SDL_DisplayMode ** SDLCALL SDL_GetFullscreenDisplayModes(SDL_DisplayID displayID, int *count);
  fun get_fullscreen_display_modes = SDL_GetFullscreenDisplayModes(displayID : DisplayID, count : Int*) : DisplayMode**

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetClosestFullscreenDisplayMode(SDL_DisplayID displayID, int w, int h, float refresh_rate, bool include_high_density_modes, SDL_DisplayMode *closest);
  fun get_closest_fullscreen_display_mode = SDL_GetClosestFullscreenDisplayMode(displayID : DisplayID, w : Int, h : Int, refresh_rate : Float32, include_high_density_modes : Bool, closest : DisplayMode*) : Bool

  # extern SDL_DECLSPEC const SDL_DisplayMode * SDLCALL SDL_GetDesktopDisplayMode(SDL_DisplayID displayID);
  fun get_desktop_display_mode = SDL_GetDesktopDisplayMode(displayID : DisplayID) : DisplayMode*

  # extern SDL_DECLSPEC const SDL_DisplayMode * SDLCALL SDL_GetCurrentDisplayMode(SDL_DisplayID displayID);
  fun get_current_display_mode = SDL_GetCurrentDisplayMode(displayID : DisplayID) : DisplayMode*

  # extern SDL_DECLSPEC SDL_DisplayID SDLCALL SDL_GetDisplayForPoint(const SDL_Point *point);
  fun get_display_for_point = SDL_GetDisplayForPoint(point : Point*) : DisplayID

  # extern SDL_DECLSPEC SDL_DisplayID SDLCALL SDL_GetDisplayForRect(const SDL_Rect *rect);
  fun get_display_for_rect = SDL_GetDisplayForRect(rect : Rect*) : DisplayID

  # extern SDL_DECLSPEC SDL_DisplayID SDLCALL SDL_GetDisplayForWindow(SDL_Window *window);
  fun get_display_for_window = SDL_GetDisplayForWindow(window : Window*) : DisplayID

  # extern SDL_DECLSPEC float SDLCALL SDL_GetWindowPixelDensity(SDL_Window *window);
  fun get_window_pixel_density = SDL_GetWindowPixelDensity(window : Window*) : Float32

  # extern SDL_DECLSPEC float SDLCALL SDL_GetWindowDisplayScale(SDL_Window *window);
  fun get_window_display_scale = SDL_GetWindowDisplayScale(window : Window*) : Float32

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowFullscreenMode(SDL_Window *window, const SDL_DisplayMode *mode);
  fun set_window_fullscreen_mode = SDL_SetWindowFullscreenMode(window : Window*, mode : DisplayMode*) : Bool

  # extern SDL_DECLSPEC const SDL_DisplayMode * SDLCALL SDL_GetWindowFullscreenMode(SDL_Window *window);
  fun get_window_fullscreen_mode = SDL_GetWindowFullscreenMode(window : Window*) : DisplayMode*

  # extern SDL_DECLSPEC void * SDLCALL SDL_GetWindowICCProfile(SDL_Window *window, size_t *size);
  fun get_window_iccprofile = SDL_GetWindowICCProfile(window : Window*, size : LibC::SizeT*) : Void*

  # extern SDL_DECLSPEC SDL_PixelFormat SDLCALL SDL_GetWindowPixelFormat(SDL_Window *window);
  fun get_window_pixel_format = SDL_GetWindowPixelFormat(window : Window*) : PixelFormat

  # extern SDL_DECLSPEC SDL_Window ** SDLCALL SDL_GetWindows(int *count);
  fun get_windows = SDL_GetWindows(count : Int*) : Window**

  # extern SDL_DECLSPEC SDL_Window * SDLCALL SDL_CreateWindow(const char *title, int w, int h, SDL_WindowFlags flags);
  fun create_window = SDL_CreateWindow(title : Char*, w : Int, h : Int, flags : WindowFlags) : Window*

  # extern SDL_DECLSPEC SDL_Window * SDLCALL SDL_CreatePopupWindow(SDL_Window *parent, int offset_x, int offset_y, int w, int h, SDL_WindowFlags flags);
  fun create_popup_window = SDL_CreatePopupWindow(parent : Window*, offset_x : Int, offset_y : Int, w : Int, h : Int, flags : WindowFlags) : Window*

  # extern SDL_DECLSPEC SDL_Window * SDLCALL SDL_CreateWindowWithProperties(SDL_PropertiesID props);
  fun create_window_with_properties = SDL_CreateWindowWithProperties(props : PropertiesID) : Window*

  # extern SDL_DECLSPEC SDL_WindowID SDLCALL SDL_GetWindowID(SDL_Window *window);
  fun get_window_id = SDL_GetWindowID(window : Window*) : WindowID

  # extern SDL_DECLSPEC SDL_Window * SDLCALL SDL_GetWindowFromID(SDL_WindowID id);
  fun get_window_from_id = SDL_GetWindowFromID(id : WindowID) : Window*

  # extern SDL_DECLSPEC SDL_Window * SDLCALL SDL_GetWindowParent(SDL_Window *window);
  fun get_window_parent = SDL_GetWindowParent(window : Window*) : Window*

  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetWindowProperties(SDL_Window *window);
  fun get_window_properties = SDL_GetWindowProperties(window : Window*) : PropertiesID

  # extern SDL_DECLSPEC SDL_WindowFlags SDLCALL SDL_GetWindowFlags(SDL_Window *window);
  fun get_window_flags = SDL_GetWindowFlags(window : Window*) : WindowFlags

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowTitle(SDL_Window *window, const char *title);
  fun set_window_title = SDL_SetWindowTitle(window : Window*, title : Char*) : Bool

  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetWindowTitle(SDL_Window *window);
  fun get_window_title = SDL_GetWindowTitle(window : Window*) : Char*

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowIcon(SDL_Window *window, SDL_Surface *icon);
  fun set_window_icon = SDL_SetWindowIcon(window : Window*, icon : Surface*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowPosition(SDL_Window *window, int x, int y);
  fun set_window_position = SDL_SetWindowPosition(window : Window*, x : Int, y : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowPosition(SDL_Window *window, int *x, int *y);
  fun get_window_position = SDL_GetWindowPosition(window : Window*, x : Int*, y : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowSize(SDL_Window *window, int w, int h);
  fun set_window_size = SDL_SetWindowSize(window : Window*, w : Int, h : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowSize(SDL_Window *window, int *w, int *h);
  fun get_window_size = SDL_GetWindowSize(window : Window*, w : Int*, h : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowSafeArea(SDL_Window *window, SDL_Rect *rect);
  fun get_window_safe_area = SDL_GetWindowSafeArea(window : Window*, rect : Rect*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowAspectRatio(SDL_Window *window, float min_aspect, float max_aspect);
  fun set_window_aspect_ratio = SDL_SetWindowAspectRatio(window : Window*, min_aspect : Float32, max_aspect : Float32) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowAspectRatio(SDL_Window *window, float *min_aspect, float *max_aspect);
  fun get_window_aspect_ratio = SDL_GetWindowAspectRatio(window : Window*, min_aspect : Float32*, max_aspect : Float32*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowBordersSize(SDL_Window *window, int *top, int *left, int *bottom, int *right);
  fun get_window_borders_size = SDL_GetWindowBordersSize(window : Window*, top : Int*, left : Int*, bottom : Int*, right : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowSizeInPixels(SDL_Window *window, int *w, int *h);
  fun get_window_size_in_pixels = SDL_GetWindowSizeInPixels(window : Window*, w : Int*, h : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowMinimumSize(SDL_Window *window, int min_w, int min_h);
  fun set_window_minimum_size = SDL_SetWindowMinimumSize(window : Window*, min_w : Int, min_h : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowMinimumSize(SDL_Window *window, int *w, int *h);
  fun get_window_minimum_size = SDL_GetWindowMinimumSize(window : Window*, w : Int*, h : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowMaximumSize(SDL_Window *window, int max_w, int max_h);
  fun set_window_maximum_size = SDL_SetWindowMaximumSize(window : Window*, max_w : Int, max_h : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowMaximumSize(SDL_Window *window, int *w, int *h);
  fun get_window_maximum_size = SDL_GetWindowMaximumSize(window : Window*, w : Int*, h : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowBordered(SDL_Window *window, bool bordered);
  fun set_window_bordered = SDL_SetWindowBordered(window : Window*, bordered : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowResizable(SDL_Window *window, bool resizable);
  fun set_window_resizable = SDL_SetWindowResizable(window : Window*, resizable : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowAlwaysOnTop(SDL_Window *window, bool on_top);
  fun set_window_always_on_top = SDL_SetWindowAlwaysOnTop(window : Window*, on_top : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_ShowWindow(SDL_Window *window);
  fun show_window = SDL_ShowWindow(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_HideWindow(SDL_Window *window);
  fun hide_window = SDL_HideWindow(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_RaiseWindow(SDL_Window *window);
  fun raise_window = SDL_RaiseWindow(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_MaximizeWindow(SDL_Window *window);
  fun maximize_window = SDL_MaximizeWindow(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_MinimizeWindow(SDL_Window *window);
  fun minimize_window = SDL_MinimizeWindow(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_RestoreWindow(SDL_Window *window);
  fun restore_window = SDL_RestoreWindow(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowFullscreen(SDL_Window *window, bool fullscreen);
  fun set_window_fullscreen = SDL_SetWindowFullscreen(window : Window*, fullscreen : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SyncWindow(SDL_Window *window);
  fun sync_window = SDL_SyncWindow(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_WindowHasSurface(SDL_Window *window);
  fun window_has_surface = SDL_WindowHasSurface(window : Window*) : Bool

  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_GetWindowSurface(SDL_Window *window);
  fun get_window_surface = SDL_GetWindowSurface(window : Window*) : Surface*

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowSurfaceVSync(SDL_Window *window, int vsync);
  fun set_window_surface_vsync = SDL_SetWindowSurfaceVSync(window : Window*, vsync : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowSurfaceVSync(SDL_Window *window, int *vsync);
  fun get_window_surface_vsync = SDL_GetWindowSurfaceVSync(window : Window*, vsync : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_UpdateWindowSurface(SDL_Window *window);
  fun update_window_surface = SDL_UpdateWindowSurface(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_UpdateWindowSurfaceRects(SDL_Window *window, const SDL_Rect *rects, int numrects);
  fun update_window_surface_rects = SDL_UpdateWindowSurfaceRects(window : Window*, rects : Rect*, numrects : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_DestroyWindowSurface(SDL_Window *window);
  fun destroy_window_surface = SDL_DestroyWindowSurface(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowKeyboardGrab(SDL_Window *window, bool grabbed);
  fun set_window_keyboard_grab = SDL_SetWindowKeyboardGrab(window : Window*, grabbed : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowMouseGrab(SDL_Window *window, bool grabbed);
  fun set_window_mouse_grab = SDL_SetWindowMouseGrab(window : Window*, grabbed : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowKeyboardGrab(SDL_Window *window);
  fun get_window_keyboard_grab = SDL_GetWindowKeyboardGrab(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowMouseGrab(SDL_Window *window);
  fun get_window_mouse_grab = SDL_GetWindowMouseGrab(window : Window*) : Bool

  # extern SDL_DECLSPEC SDL_Window * SDLCALL SDL_GetGrabbedWindow(void);
  fun get_grabbed_window = SDL_GetGrabbedWindow : Window*

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowMouseRect(SDL_Window *window, const SDL_Rect *rect);
  fun set_window_mouse_rect = SDL_SetWindowMouseRect(window : Window*, rect : Rect*) : Bool

  # extern SDL_DECLSPEC const SDL_Rect * SDLCALL SDL_GetWindowMouseRect(SDL_Window *window);
  fun get_window_mouse_rect = SDL_GetWindowMouseRect(window : Window*) : Rect*

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowOpacity(SDL_Window *window, float opacity);
  fun set_window_opacity = SDL_SetWindowOpacity(window : Window*, opacity : Float32) : Bool

  # extern SDL_DECLSPEC float SDLCALL SDL_GetWindowOpacity(SDL_Window *window);
  fun get_window_opacity = SDL_GetWindowOpacity(window : Window*) : Float32

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowParent(SDL_Window *window, SDL_Window *parent);
  fun set_window_parent = SDL_SetWindowParent(window : Window*, parent : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowModal(SDL_Window *window, bool modal);
  fun set_window_modal = SDL_SetWindowModal(window : Window*, modal : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowFocusable(SDL_Window *window, bool focusable);
  fun set_window_focusable = SDL_SetWindowFocusable(window : Window*, focusable : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_ShowWindowSystemMenu(SDL_Window *window, int x, int y);
  fun show_window_system_menu = SDL_ShowWindowSystemMenu(window : Window*, x : Int, y : Int) : Bool

  enum HitTestResult
    Normal # SDL_HITTEST_NORMAL
    Draggable # SDL_HITTEST_DRAGGABLE
    ResizeTopleft # SDL_HITTEST_RESIZE_TOPLEFT
    ResizeTop # SDL_HITTEST_RESIZE_TOP
    ResizeTopright # SDL_HITTEST_RESIZE_TOPRIGHT
    ResizeRight # SDL_HITTEST_RESIZE_RIGHT
    ResizeBottomright # SDL_HITTEST_RESIZE_BOTTOMRIGHT
    ResizeBottom # SDL_HITTEST_RESIZE_BOTTOM
    ResizeBottomleft # SDL_HITTEST_RESIZE_BOTTOMLEFT
    ResizeLeft # SDL_HITTEST_RESIZE_LEFT
  end

  # typedef SDL_HitTestResult (SDLCALL *SDL_HitTest)(SDL_Window *win, const SDL_Point *area, void *data);
  alias HitTest = (Window*, Point*, Void*) -> HitTestResult*

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowHitTest(SDL_Window *window, SDL_HitTest callback, void *callback_data);
  fun set_window_hit_test = SDL_SetWindowHitTest(window : Window*, callback : HitTest, callback_data : Void*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowShape(SDL_Window *window, SDL_Surface *shape);
  fun set_window_shape = SDL_SetWindowShape(window : Window*, shape : Surface*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_FlashWindow(SDL_Window *window, SDL_FlashOperation operation);
  fun flash_window = SDL_FlashWindow(window : Window*, operation : FlashOperation) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowProgressState(SDL_Window *window, SDL_ProgressState state);
  fun set_window_progress_state = SDL_SetWindowProgressState(window : Window*, state : ProgressState) : Bool

  # extern SDL_DECLSPEC SDL_ProgressState SDLCALL SDL_GetWindowProgressState(SDL_Window *window);
  fun get_window_progress_state = SDL_GetWindowProgressState(window : Window*) : ProgressState

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowProgressValue(SDL_Window *window, float value);
  fun set_window_progress_value = SDL_SetWindowProgressValue(window : Window*, value : Float32) : Bool

  # extern SDL_DECLSPEC float SDLCALL SDL_GetWindowProgressValue(SDL_Window *window);
  fun get_window_progress_value = SDL_GetWindowProgressValue(window : Window*) : Float32

  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyWindow(SDL_Window *window);
  fun destroy_window = SDL_DestroyWindow(window : Window*) : Void

  # extern SDL_DECLSPEC bool SDLCALL SDL_ScreenSaverEnabled(void);
  fun screen_saver_enabled = SDL_ScreenSaverEnabled : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_EnableScreenSaver(void);
  fun enable_screen_saver = SDL_EnableScreenSaver : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_DisableScreenSaver(void);
  fun disable_screen_saver = SDL_DisableScreenSaver : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GL_LoadLibrary(const char *path);
  fun gl_load_library = SDL_GL_LoadLibrary(path : Char*) : Bool

  # extern SDL_DECLSPEC SDL_FunctionPointer SDLCALL SDL_GL_GetProcAddress(const char *proc);
  fun gl_get_proc_address = SDL_GL_GetProcAddress(proc : Char*) : FunctionPointer

  # extern SDL_DECLSPEC SDL_FunctionPointer SDLCALL SDL_EGL_GetProcAddress(const char *proc);
  fun egl_get_proc_address = SDL_EGL_GetProcAddress(proc : Char*) : FunctionPointer

  # extern SDL_DECLSPEC void SDLCALL SDL_GL_UnloadLibrary(void);
  fun gl_unload_library = SDL_GL_UnloadLibrary : Void

  # extern SDL_DECLSPEC bool SDLCALL SDL_GL_ExtensionSupported(const char *extension);
  fun gl_extension_supported = SDL_GL_ExtensionSupported(extension : Char*) : Bool

  # extern SDL_DECLSPEC void SDLCALL SDL_GL_ResetAttributes(void);
  fun gl_reset_attributes = SDL_GL_ResetAttributes : Void

  # extern SDL_DECLSPEC bool SDLCALL SDL_GL_SetAttribute(SDL_GLAttr attr, int value);
  fun gl_set_attribute = SDL_GL_SetAttribute(attr : GLAttr, value : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GL_GetAttribute(SDL_GLAttr attr, int *value);
  fun gl_get_attribute = SDL_GL_GetAttribute(attr : GLAttr, value : Int*) : Bool

  alias GLContext = Void*

  # extern SDL_DECLSPEC SDL_GLContext SDLCALL SDL_GL_CreateContext(SDL_Window *window);
  fun gl_create_context = SDL_GL_CreateContext(window : Window*) : GLContext

  # extern SDL_DECLSPEC bool SDLCALL SDL_GL_MakeCurrent(SDL_Window *window, SDL_GLContext context);
  fun gl_make_current = SDL_GL_MakeCurrent(window : Window*, context : GLContext) : Bool

  # extern SDL_DECLSPEC SDL_Window * SDLCALL SDL_GL_GetCurrentWindow(void);
  fun gl_get_current_window = SDL_GL_GetCurrentWindow : Window*

  # extern SDL_DECLSPEC SDL_GLContext SDLCALL SDL_GL_GetCurrentContext(void);
  fun gl_get_current_context = SDL_GL_GetCurrentContext : GLContext

  # extern SDL_DECLSPEC SDL_EGLDisplay SDLCALL SDL_EGL_GetCurrentDisplay(void);
  fun egl_get_current_display = SDL_EGL_GetCurrentDisplay : EGLDisplay

  # extern SDL_DECLSPEC SDL_EGLConfig SDLCALL SDL_EGL_GetCurrentConfig(void);
  fun egl_get_current_config = SDL_EGL_GetCurrentConfig : EGLConfig

  # extern SDL_DECLSPEC SDL_EGLSurface SDLCALL SDL_EGL_GetWindowSurface(SDL_Window *window);
  fun egl_get_window_surface = SDL_EGL_GetWindowSurface(window : Window*) : EGLSurface

  # extern SDL_DECLSPEC void SDLCALL SDL_EGL_SetAttributeCallbacks(SDL_EGLAttribArrayCallback platformAttribCallback, SDL_EGLIntArrayCallback surfaceAttribCallback, SDL_EGLIntArrayCallback contextAttribCallback, void *userdata);
  fun egl_set_attribute_callbacks = SDL_EGL_SetAttributeCallbacks(platformAttribCallback : EGLAttribArrayCallback, surfaceAttribCallback : EGLIntArrayCallback, contextAttribCallback : EGLIntArrayCallback, userdata : Void*) : Void

  # extern SDL_DECLSPEC bool SDLCALL SDL_GL_SetSwapInterval(int interval);
  fun gl_set_swap_interval = SDL_GL_SetSwapInterval(interval : Int) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GL_GetSwapInterval(int *interval);
  fun gl_get_swap_interval = SDL_GL_GetSwapInterval(interval : Int*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GL_SwapWindow(SDL_Window *window);
  fun gl_swap_window = SDL_GL_SwapWindow(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GL_DestroyContext(SDL_GLContext context);
  fun gl_destroy_context = SDL_GL_DestroyContext(context : GLContext) : Bool
end
