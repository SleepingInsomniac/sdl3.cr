@[Link("sdl3_ttf")]
lib LibSdl3TTF
  alias Bool = LibC::Char
  alias Char = LibC::Char
  alias Int  = LibC::Int

  alias PropertiesID = LibSdl3::PropertiesID
  alias Renderer     = LibSdl3::Renderer
  alias Surface      = LibSdl3::Surface
  alias Texture      = LibSdl3::Texture
  alias IOStream     = LibSdl3::IOStream
  alias Rect         = LibSdl3::Rect
  alias FColor       = LibSdl3::FColor
  alias Color        = LibSdl3::Color
  alias GPUDevice    = LibSdl3::GPUDevice
  alias GPUTexture   = LibSdl3::GPUTexture
  alias FPoint       = LibSdl3::FPoint
end

require "./lib_ttf/text_engine"
require "./lib_ttf/ttf"
