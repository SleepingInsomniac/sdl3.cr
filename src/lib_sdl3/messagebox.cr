lib LibSdl3
  # typedef Uint32 SDL_MessageBoxFlags;
  @[Flags]
  enum MessageBoxFlags : UInt32
   Error              = 0x00000010u32
   Warning            = 0x00000020u32
   Information        = 0x00000040u32
   ButtonsLeftToRight = 0x00000080u32
   ButtonsRightToLeft = 0x00000100u32
  end

  # typedef Uint32 SDL_MessageBoxButtonFlags;
  @[Flags]
  enum MessageBoxButtonFlags : UInt32
    ReturnkeyDefault = 0x00000001u32
    EscapekeyDefault = 0x00000002u32
  end

  struct MessageBoxButtonData
    flags : MessageBoxButtonFlags
    button_id : Int
    text : Char*
  end

  struct MessageBoxColor
    r : UInt8
    g : UInt8
    b : UInt8
  end

  enum MessageBoxColorType
    Background # SDL_MESSAGEBOX_COLOR_BACKGROUND
    Text # SDL_MESSAGEBOX_COLOR_TEXT
    ButtonBorder # SDL_MESSAGEBOX_COLOR_BUTTON_BORDER
    ButtonBackground # SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND
    ButtonSelected # SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED
    Count # SDL_MESSAGEBOX_COLOR_COUNT
  end

  struct MessageBoxColorScheme
    colors : MessageBoxColor[MessageBoxColorType::Count]
  end

  struct MessageBoxData
    flags : MessageBoxFlags
    window : Window*
    title : Char*
    message : Char*
    numbuttons : Int
    buttons : MessageBoxButtonData*
    color_scheme : MessageBoxColorScheme*
  end

  # extern SDL_DECLSPEC bool SDLCALL SDL_ShowMessageBox(const SDL_MessageBoxData *messageboxdata, int *buttonid);
  fun show_message_box = SDL_ShowMessageBox(message_box_data : MessageBoxData*, button_id : Int*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_ShowSimpleMessageBox(SDL_MessageBoxFlags flags, const char *title, const char *message, SDL_Window *window);
  fun show_simple_message_box = SDL_ShowSimpleMessageBox(flags : MessageBoxFlags, title : Char*, message : Char*, window : Window*) : Bool
end
