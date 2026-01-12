# This example code creates an SDL window and renderer, and then clears the
# window to a different color every frame, so you'll effectively get a window
# that's smoothly fading between colors.

require "../../src/sdl3"

Sdl3.init(LibSdl3::InitFlags::Video) do
  window = Sdl3::Window.new("01-Clear", 640, 480, Sdl3::Window::Flags::None)
  renderer = window.create_renderer
  renderer.logical_presentation = {640, 480, LibSdl3::RendererLogicalPresentation::Letterbox}

  started_at = Time.monotonic.total_milliseconds

  running = true
  while running
    while event = Sdl3::Events.poll
      case event
      when Sdl3::Event::Quit
        running = false
      end
    end

    elapsed_time = Time.monotonic.total_milliseconds - started_at
    now = elapsed_time / 1000.0
    red = 0.5 + 0.5 * Math.sin(now)
    green = 0.5 + 0.5 * Math.sin(now + Math::PI * 2 / 3)
    blue = 0.5 + 0.5 * Math.sin(now + Math::PI * 4 / 3)

    renderer.draw_color = {red.to_f32, green.to_f32, blue.to_f32, 1.0f32}
    renderer.clear
    renderer.present
  end
end
