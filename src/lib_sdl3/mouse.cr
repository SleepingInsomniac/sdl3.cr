lib LibSdl3
  alias MouseID = UInt32

  type Cursor = Void

  enum SystemCursor
    SystemCursorDefault # SDL_SYSTEM_CURSOR_DEFAULT
    SystemCursorText # SDL_SYSTEM_CURSOR_TEXT
    SystemCursorWait # SDL_SYSTEM_CURSOR_WAIT
    SystemCursorCrosshair # SDL_SYSTEM_CURSOR_CROSSHAIR
    SystemCursorProgress # SDL_SYSTEM_CURSOR_PROGRESS
    SystemCursorNwseResize # SDL_SYSTEM_CURSOR_NWSE_RESIZE
    SystemCursorNeswResize # SDL_SYSTEM_CURSOR_NESW_RESIZE
    SystemCursorEwResize # SDL_SYSTEM_CURSOR_EW_RESIZE
    SystemCursorNsResize # SDL_SYSTEM_CURSOR_NS_RESIZE
    SystemCursorMove # SDL_SYSTEM_CURSOR_MOVE
    SystemCursorNotAllowed # SDL_SYSTEM_CURSOR_NOT_ALLOWED
    SystemCursorPointer # SDL_SYSTEM_CURSOR_POINTER
    SystemCursorNwResize # SDL_SYSTEM_CURSOR_NW_RESIZE
    SystemCursorNResize # SDL_SYSTEM_CURSOR_N_RESIZE
    SystemCursorNeResize # SDL_SYSTEM_CURSOR_NE_RESIZE
    SystemCursorEResize # SDL_SYSTEM_CURSOR_E_RESIZE
    SystemCursorSeResize # SDL_SYSTEM_CURSOR_SE_RESIZE
    SystemCursorSResize # SDL_SYSTEM_CURSOR_S_RESIZE
    SystemCursorSwResize # SDL_SYSTEM_CURSOR_SW_RESIZE
    SystemCursorWResize # SDL_SYSTEM_CURSOR_W_RESIZE
    SystemCursorCoun # SDL_SYSTEM_CURSOR_COUN
  end

  enum MouseWheelDirection
    MousewheelNormal # SDL_MOUSEWHEEL_NORMAL
    MousewheelFlipped # SDL_MOUSEWHEEL_FLIPPED
  end

  # TODO: Surface
  # struct CursorFrameInfo
  #   surface : Surface*
  #   duration : UInt32
  # end

  @[Flags]
  enum MouseButtonFlags : UInt32
    Left    = 1
    Middle  = 2
    Right   = 3
    X1      = 4
    X2      = 5
  end

  # typedef void (SDLCALL *SDL_MouseMotionTransformCallback)(
  #     void *userdata,
  #     Uint64 timestamp,
  #     SDL_Window *window,
  #     SDL_MouseID mouseID,
  #     float *x, float *y
  # );

  # extern SDL_DECLSPEC bool SDLCALL SDL_HasMouse(void);
  fun has_mouse = SDL_HasMouse : Bool

  # extern SDL_DECLSPEC SDL_MouseID * SDLCALL SDL_GetMice(int *count);
  fun get_mice = SDL_GetMice(count : Int*) : MouseID*

  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetMouseNameForID(SDL_MouseID instance_id);
  fun get_mouse_name_for_id = SDL_GetMouseNameForID(instance_id : MouseID) : Char*

  # extern SDL_DECLSPEC SDL_Window * SDLCALL SDL_GetMouseFocus(void);
  fun get_mouse_focus = SDL_GetMouseFocus : Window*

  # extern SDL_DECLSPEC SDL_MouseButtonFlags SDLCALL SDL_GetMouseState(float *x, float *y);
  fun get_mouse_state = SDL_GetMouseState(x : Float32*, y : Float32*) : MouseButtonFlags

  # extern SDL_DECLSPEC SDL_MouseButtonFlags SDLCALL SDL_GetGlobalMouseState(float *x, float *y);
  fun get_global_mouse_state = SDL_GetGlobalMouseState(x : Float32*, y : Float32*) : MouseButtonFlags

  # extern SDL_DECLSPEC SDL_MouseButtonFlags SDLCALL SDL_GetRelativeMouseState(float *x, float *y);
  fun get_relative_mouse_state = SDL_GetRelativeMouseState(x : Float32*, y : Float32*) : MouseButtonFlags

  # extern SDL_DECLSPEC void SDLCALL SDL_WarpMouseInWindow(SDL_Window *window, float x, float y);
  fun warp_mouse_in_window = SDL_WarpMouseInWindow(window : Window*, x : Float32, y : Float32) : Void

  # extern SDL_DECLSPEC bool SDLCALL SDL_WarpMouseGlobal(float x, float y);
  fun warp_mouse_global = SDL_WarpMouseGlobal(x : Float32, y : Float32) : Bool

  # TODO: Surface
  # extern SDL_DECLSPEC bool SDLCALL SDL_SetRelativeMouseTransform(SDL_MouseMotionTransformCallback callback, void *userdata);
  # fun set_relative_mouse_transform = SDL_SetRelativeMouseTransform(callback : MouseMotionTransformCallback, userdata : Void*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetWindowRelativeMouseMode(SDL_Window *window, bool enabled);
  fun set_window_relative_mouse_mode = SDL_SetWindowRelativeMouseMode(window : Window*, enabled : Bool) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetWindowRelativeMouseMode(SDL_Window *window);
  fun get_window_relative_mouse_mode = SDL_GetWindowRelativeMouseMode(window : Window*) : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_CaptureMouse(bool enabled);
  fun capture_mouse = SDL_CaptureMouse(enabled : Bool) : Bool

  # extern SDL_DECLSPEC SDL_Cursor * SDLCALL SDL_CreateCursor(const Uint8 *data, const Uint8 *mask, int w, int h, int hot_x, int hot_y);
  fun create_cursor = SDL_CreateCursor(data : UInt8*, mask : UInt8*, w : Int, h : Int, hot_x : Int, hot_y : Int) : Cursor*

  # TODO: Surface
  # extern SDL_DECLSPEC SDL_Cursor * SDLCALL SDL_CreateColorCursor(SDL_Surface *surface, int hot_x, int hot_y);
  # fun create_color_cursor = SDL_CreateColorCursor(surface : Surface*, hot_x : Int, hot_y : Int) : Cursor*

  # TODO: Surface
  # extern SDL_DECLSPEC SDL_Cursor *SDLCALL SDL_CreateAnimatedCursor(SDL_CursorFrameInfo *frames, int frame_count, int hot_x, int hot_y);
  # fun create_animated_cursor = SDL_CreateAnimatedCursor(frames : CursorFrameInfo*, frame_count : Int, hot_x : Int, hot_y : Int) : Cursor*

  # extern SDL_DECLSPEC SDL_Cursor * SDLCALL SDL_CreateSystemCursor(SDL_SystemCursor id);
  fun create_system_cursor = SDL_CreateSystemCursor(id : SystemCursor) : Cursor*

  # extern SDL_DECLSPEC bool SDLCALL SDL_SetCursor(SDL_Cursor *cursor);
  fun set_cursor = SDL_SetCursor(cursor : Cursor*) : Bool

  # extern SDL_DECLSPEC SDL_Cursor * SDLCALL SDL_GetCursor(void);
  fun get_cursor = SDL_GetCursor : Cursor*

  # extern SDL_DECLSPEC SDL_Cursor * SDLCALL SDL_GetDefaultCursor(void);
  fun get_default_cursor = SDL_GetDefaultCursor : Cursor*

  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyCursor(SDL_Cursor *cursor);
  fun destroy_cursor = SDL_DestroyCursor(cursor : Cursor*) : Void

  # extern SDL_DECLSPEC bool SDLCALL SDL_ShowCursor(void);
  fun show_cursor = SDL_ShowCursor : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_HideCursor(void);
  fun hide_cursor = SDL_HideCursor : Bool

  # extern SDL_DECLSPEC bool SDLCALL SDL_CursorVisible(void);
  fun cursor_visible = SDL_CursorVisible : Bool
end
