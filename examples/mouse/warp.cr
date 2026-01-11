require "../../src/sdl3"

Sdl3.init(Sdl3::InitFlags::Video) do
  window = Sdl3::Window.new("Mouse warp", 640, 480, Sdl3::Window::Flags::None)
  renderer = window.create_renderer
  renderer.logical_presentation = {640, 480, Sdl3::Renderer::LogicalPresentation::Letterbox}

  puts Sdl3::Mouse.has_mouse?
  puts Sdl3::Mouse.mice.map(&.name)
  Sdl3::Mouse.warp(window, 10.0, 10.0)

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
