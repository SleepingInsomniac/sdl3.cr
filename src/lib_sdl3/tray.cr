lib LibSdl3
  type Tray = Void # typedef struct SDL_Tray SDL_Tray;
  type TrayMenu = Void # typedef struct SDL_TrayMenu SDL_TrayMenu;
  type TrayEntry = Void # typedef struct SDL_TrayEntry SDL_TrayEntry;

  # typedef Uint32 SDL_TrayEntryFlags;
  @[Flags]
  enum TrayEntryFlags : UInt32
    Button     = 0x00000001u32
    Checkbox   = 0x00000002u32
    Submenu    = 0x00000004u32
    Disabled   = 0x80000000u32
    Checked    = 0x40000000u32
  end

  # typedef void (SDLCALL *SDL_TrayCallback)(void *userdata, SDL_TrayEntry *entry);
  alias TrayCallback = (Void*, TrayEntry*) -> Void*
  # extern SDL_DECLSPEC SDL_Tray * SDLCALL SDL_CreateTray(SDL_Surface *icon, const char *tooltip);
  fun create_tray = SDL_CreateTray(icon : Surface*, tooltip : Char*) : Tray*
  # extern SDL_DECLSPEC void SDLCALL SDL_SetTrayIcon(SDL_Tray *tray, SDL_Surface *icon);
  fun set_tray_icon = SDL_SetTrayIcon(tray : Tray*, icon : Surface*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_SetTrayTooltip(SDL_Tray *tray, const char *tooltip);
  fun set_tray_tooltip = SDL_SetTrayTooltip(tray : Tray*, tooltip : Char*) : Void
  # extern SDL_DECLSPEC SDL_TrayMenu * SDLCALL SDL_CreateTrayMenu(SDL_Tray *tray);
  fun create_tray_menu = SDL_CreateTrayMenu(tray : Tray*) : TrayMenu*
  # extern SDL_DECLSPEC SDL_TrayMenu * SDLCALL SDL_CreateTraySubmenu(SDL_TrayEntry *entry);
  fun create_tray_submenu = SDL_CreateTraySubmenu(entry : TrayEntry*) : TrayMenu*
  # extern SDL_DECLSPEC SDL_TrayMenu * SDLCALL SDL_GetTrayMenu(SDL_Tray *tray);
  fun get_tray_menu = SDL_GetTrayMenu(tray : Tray*) : TrayMenu*
  # extern SDL_DECLSPEC SDL_TrayMenu * SDLCALL SDL_GetTraySubmenu(SDL_TrayEntry *entry);
  fun get_tray_submenu = SDL_GetTraySubmenu(entry : TrayEntry*) : TrayMenu*
  # extern SDL_DECLSPEC const SDL_TrayEntry ** SDLCALL SDL_GetTrayEntries(SDL_TrayMenu *menu, int *count);
  fun get_tray_entries = SDL_GetTrayEntries(menu : TrayMenu*, count : Int*) : TrayEntry**
  # extern SDL_DECLSPEC void SDLCALL SDL_RemoveTrayEntry(SDL_TrayEntry *entry);
  fun remove_tray_entry = SDL_RemoveTrayEntry(entry : TrayEntry*) : Void
  # extern SDL_DECLSPEC SDL_TrayEntry * SDLCALL SDL_InsertTrayEntryAt(SDL_TrayMenu *menu, int pos, const char *label, SDL_TrayEntryFlags flags);
  fun insert_tray_entry_at = SDL_InsertTrayEntryAt(menu : TrayMenu*, pos : Int, label : Char*, flags : TrayEntryFlags) : TrayEntry*
  # extern SDL_DECLSPEC void SDLCALL SDL_SetTrayEntryLabel(SDL_TrayEntry *entry, const char *label);
  fun set_tray_entry_label = SDL_SetTrayEntryLabel(entry : TrayEntry*, label : Char*) : Void
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetTrayEntryLabel(SDL_TrayEntry *entry);
  fun get_tray_entry_label = SDL_GetTrayEntryLabel(entry : TrayEntry*) : Char*
  # extern SDL_DECLSPEC void SDLCALL SDL_SetTrayEntryChecked(SDL_TrayEntry *entry, bool checked);
  fun set_tray_entry_checked = SDL_SetTrayEntryChecked(entry : TrayEntry*, checked : Bool) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetTrayEntryChecked(SDL_TrayEntry *entry);
  fun get_tray_entry_checked = SDL_GetTrayEntryChecked(entry : TrayEntry*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_SetTrayEntryEnabled(SDL_TrayEntry *entry, bool enabled);
  fun set_tray_entry_enabled = SDL_SetTrayEntryEnabled(entry : TrayEntry*, enabled : Bool) : Void
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetTrayEntryEnabled(SDL_TrayEntry *entry);
  fun get_tray_entry_enabled = SDL_GetTrayEntryEnabled(entry : TrayEntry*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_SetTrayEntryCallback(SDL_TrayEntry *entry, SDL_TrayCallback callback, void *userdata);
  fun set_tray_entry_callback = SDL_SetTrayEntryCallback(entry : TrayEntry*, callback : TrayCallback, userdata : Void*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_ClickTrayEntry(SDL_TrayEntry *entry);
  fun click_tray_entry = SDL_ClickTrayEntry(entry : TrayEntry*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_DestroyTray(SDL_Tray *tray);
  fun destroy_tray = SDL_DestroyTray(tray : Tray*) : Void
  # extern SDL_DECLSPEC SDL_TrayMenu * SDLCALL SDL_GetTrayEntryParent(SDL_TrayEntry *entry);
  fun get_tray_entry_parent = SDL_GetTrayEntryParent(entry : TrayEntry*) : TrayMenu*
  # extern SDL_DECLSPEC SDL_TrayEntry * SDLCALL SDL_GetTrayMenuParentEntry(SDL_TrayMenu *menu);
  fun get_tray_menu_parent_entry = SDL_GetTrayMenuParentEntry(menu : TrayMenu*) : TrayEntry*
  # extern SDL_DECLSPEC SDL_Tray * SDLCALL SDL_GetTrayMenuParentTray(SDL_TrayMenu *menu);
  fun get_tray_menu_parent_tray = SDL_GetTrayMenuParentTray(menu : TrayMenu*) : Tray*
  # extern SDL_DECLSPEC void SDLCALL SDL_UpdateTrays(void);
  fun update_trays = SDL_UpdateTrays : Void
end
