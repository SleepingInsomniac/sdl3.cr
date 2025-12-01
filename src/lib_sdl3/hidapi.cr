lib LibSdl3
  type HIDDevice = Void # typedef struct SDL_hid_device SDL_hid_device;

  enum HIDBusType
    Unknown   = 0x00 # SDL_HID_API_BUS_UNKNOWN
    Usb       = 0x01 # SDL_HID_API_BUS_USB
    Bluetooth = 0x02 # SDL_HID_API_BUS_BLUETOOTH
    I2c       = 0x03 # SDL_HID_API_BUS_I2C
    Spi       = 0x04 # SDL_HID_API_BUS_SPI
  end

  struct HIDDeviceInfo
    path : Char*
    vendor_id : UInt16
    product_id : UInt16
    serial_number : WCharT*
    release_number : UInt16
    manufacturer_string : WCharT*
    product_string : WCharT*
    usage_page : UInt16
    usage : UInt16
    interface_number : Int
    interface_class : Int
    interface_subclass : Int
    interface_protocol : Int
    bus_type : HIDBusType
    next_device : HIDDeviceInfo*
  end

  # extern SDL_DECLSPEC int SDLCALL SDL_hid_init(void);
  fun hid_init = SDL_hid_init : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_exit(void);
  fun hid_exit = SDL_hid_exit : Int
  # extern SDL_DECLSPEC Uint32 SDLCALL SDL_hid_device_change_count(void);
  fun hid_device_change_count = SDL_hid_device_change_count : UInt32
  # extern SDL_DECLSPEC SDL_hid_device_info * SDLCALL SDL_hid_enumerate(unsigned short vendor_id, unsigned short product_id);
  fun hid_enumerate = SDL_hid_enumerate(vendor_id : UInt16, product_id : UInt16) : HIDDeviceInfo*
  # extern SDL_DECLSPEC void SDLCALL SDL_hid_free_enumeration(SDL_hid_device_info *devs);
  fun hid_free_enumeration = SDL_hid_free_enumeration(devs : HIDDeviceInfo*)
  # extern SDL_DECLSPEC SDL_hid_device * SDLCALL SDL_hid_open(unsigned short vendor_id, unsigned short product_id, const wchar_t *serial_number);
  fun hid_open = SDL_hid_open(vendor_id : UInt16, product_id : UInt16, serial_number : WCharT*) : HIDDevice*
  # extern SDL_DECLSPEC SDL_hid_device * SDLCALL SDL_hid_open_path(const char *path);
  fun hid_open_path = SDL_hid_open_path(path : Char*) : HIDDevice*
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_hid_get_properties(SDL_hid_device *dev);
  fun hid_get_properties = SDL_hid_get_properties(dev : HIDDevice*) : PropertiesID
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_write(SDL_hid_device *dev, const unsigned char *data, size_t length);
  fun hid_write = SDL_hid_write(dev : HIDDevice*, data : Char*, length : LibC::SizeT) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_read_timeout(SDL_hid_device *dev, unsigned char *data, size_t length, int milliseconds);
  fun hid_read_timeout = SDL_hid_read_timeout(dev : HIDDevice*, data : Char*, length : LibC::SizeT, milliseconds : Int) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_read(SDL_hid_device *dev, unsigned char *data, size_t length);
  fun hid_read = SDL_hid_read(dev : HIDDevice*, data : Char*, length : LibC::SizeT) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_set_nonblocking(SDL_hid_device *dev, int nonblock);
  fun hid_set_nonblocking = SDL_hid_set_nonblocking(dev : HIDDevice*, nonblock : Int) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_send_feature_report(SDL_hid_device *dev, const unsigned char *data, size_t length);
  fun hid_send_feature_report = SDL_hid_send_feature_report(dev : HIDDevice*, data : Char*, length : LibC::SizeT) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_get_feature_report(SDL_hid_device *dev, unsigned char *data, size_t length);
  fun hid_get_feature_report = SDL_hid_get_feature_report(dev : HIDDevice*, data : Char*, length : LibC::SizeT) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_get_input_report(SDL_hid_device *dev, unsigned char *data, size_t length);
  fun hid_get_input_report = SDL_hid_get_input_report(dev : HIDDevice*, data : Char*, length : LibC::SizeT) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_close(SDL_hid_device *dev);
  fun hid_close = SDL_hid_close(dev : HIDDevice*) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_get_manufacturer_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
  fun hid_get_manufacturer_string = SDL_hid_get_manufacturer_string(dev : HIDDevice*, string : WCharT*, maxlen : LibC::SizeT) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_get_product_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
  fun hid_get_product_string = SDL_hid_get_product_string(dev : HIDDevice*, string : WCharT*, maxlen : LibC::SizeT) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_get_serial_number_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
  fun hid_get_serial_number_string = SDL_hid_get_serial_number_string(dev : HIDDevice*, string : WCharT*, maxlen : LibC::SizeT) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_get_indexed_string(SDL_hid_device *dev, int string_index, wchar_t *string, size_t maxlen);
  fun hid_get_indexed_string = SDL_hid_get_indexed_string(dev : HIDDevice*, string_index : Int, string : WCharT*, maxlen : LibC::SizeT) : Int
  # extern SDL_DECLSPEC SDL_hid_device_info * SDLCALL SDL_hid_get_device_info(SDL_hid_device *dev);
  fun hid_get_device_info = SDL_hid_get_device_info(dev : HIDDevice*) : HIDDeviceInfo*
  # extern SDL_DECLSPEC int SDLCALL SDL_hid_get_report_descriptor(SDL_hid_device *dev, unsigned char *buf, size_t buf_size);
  fun hid_get_report_descriptor = SDL_hid_get_report_descriptor(dev : HIDDevice*, buf : Char*, buf_size : LibC::SizeT) : Int
  # extern SDL_DECLSPEC void SDLCALL SDL_hid_ble_scan(bool active);
  fun hid_ble_scan = SDL_hid_ble_scan(active : Bool) : Void
end
