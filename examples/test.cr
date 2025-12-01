require "../../src/sdl3"

Sdl3.init(LibSdl3::InitFlags::Video) do
  window = Sdl3::Window.new("Test", 640, 480, Sdl3::Window::Flags::None)
  renderer = window.create_renderer
  renderer.logical_presentation = {640, 480, LibSdl3::RendererLogicalPresentation::Letterbox}
  surface = Sdl3::Surface.new(640, 480, LibSdl3::PixelFormat::Rgba32)
  surface.clear(0.3, 0.8, 0.1, 1.0)
  started_at = Time.monotonic.total_milliseconds

  loop do
    LibSdl3.poll_event(out event)
    case event.type
    when LibSdl3::EventType::Quit
      break
    end

    renderer.clear
    renderer.present
  end
end
