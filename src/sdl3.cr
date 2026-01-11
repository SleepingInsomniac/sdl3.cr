require "./lib_sdl3"

module Sdl3
  VERSION = {{ `shards version`.stringify }} # Bindings version

  alias InitFlags   = LibSdl3::InitFlags
  alias PixelFormat = LibSdl3::PixelFormat
  alias ScaleMode   = LibSdl3::ScaleMode
  alias FlipMode    = LibSdl3::FlipMode
  alias Scancode    = LibSdl3::Scancode
  alias Keycode     = LibSdl3::Keycode
  alias Keymod      = LibSdl3::Keymod
  alias Point       = LibSdl3::Point
  alias FPoint      = LibSdl3::FPoint
  alias Rect        = LibSdl3::Rect
  alias FRect       = LibSdl3::FRect
  alias Color       = LibSdl3::Color

  class Error < Exception
  end

  def self.init(flags : LibSdl3::InitFlags)
    LibSdl3.init(flags).tap do |result|
      raise_error unless result
    end
  end

  def self.raise_error
    raise Error.new(String.new(LibSdl3.get_error))
  end

  def self.quit
    LibSdl3.quit
  end

  def self.init(flags : LibSdl3::InitFlags, &)
    init(flags)
    yield
    quit
  end
end

require "./sdl_object"
require "./data"
require "./event"
require "./window"
require "./mouse"
require "./cursor"
require "./renderer"
require "./surface"
require "./texture"
require "./properties"
require "./camera"
require "./audio"
