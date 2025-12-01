@[Link("sdl3")]
lib LibSdl3
  alias Bool = LibC::Char
  alias Char = LibC::Char
  alias Int = LibC::Int
  alias SizeT = LibC::SizeT
  alias VaListT = Void*

  {% if LibC.constants.includes?(:IntPtrT) %}
    alias IntPtrT = LibC::IntPtrT
  {% else %}
    {% if sizeof(Void*) == 8 %}
      alias IntPtrT  = Int64   # signed   intptr_t
      alias UIntPtrT = UInt64  # unsigned uintptr_t
    {% else %}
      alias IntPtrT  = Int32
      alias UIntPtrT = UInt32
    {% end %}
  {% end %}

  {% if flag?(:win32) %}
    alias WCharT = UInt16
  {% else %}
    alias WCharT = UInt32
  {% end %}
end

require "./lib_sdl3/stdinc"
require "./lib_sdl3/asyncio"
require "./lib_sdl3/atomic"
require "./lib_sdl3/audio"
require "./lib_sdl3/blendmode"
require "./lib_sdl3/camera"
require "./lib_sdl3/clipboard"
require "./lib_sdl3/cpuinfo"
require "./lib_sdl3/dialog"
require "./lib_sdl3/error"
require "./lib_sdl3/events"
require "./lib_sdl3/filesystem"
require "./lib_sdl3/gamepad"
require "./lib_sdl3/gpu"
require "./lib_sdl3/guid"
require "./lib_sdl3/haptic"
require "./lib_sdl3/hidapi"
require "./lib_sdl3/hints"
require "./lib_sdl3/init"
require "./lib_sdl3/iostream"
require "./lib_sdl3/joystick"
require "./lib_sdl3/keyboard"
require "./lib_sdl3/keycode"
require "./lib_sdl3/loadso"
require "./lib_sdl3/locale"
require "./lib_sdl3/log"
require "./lib_sdl3/messagebox"
require "./lib_sdl3/metal"
require "./lib_sdl3/misc"
require "./lib_sdl3/mouse"
require "./lib_sdl3/mutex"
require "./lib_sdl3/pen"
require "./lib_sdl3/pixels"
require "./lib_sdl3/platform"
require "./lib_sdl3/power"
require "./lib_sdl3/process"
require "./lib_sdl3/properties"
require "./lib_sdl3/rect"
require "./lib_sdl3/render"
require "./lib_sdl3/scancode"
require "./lib_sdl3/sensor"
require "./lib_sdl3/storage"
require "./lib_sdl3/surface"
require "./lib_sdl3/system"
require "./lib_sdl3/thread"
require "./lib_sdl3/time"
require "./lib_sdl3/timer"
require "./lib_sdl3/tray"
require "./lib_sdl3/touch"
require "./lib_sdl3/version"
require "./lib_sdl3/video"

