# This example creates an SDL window and renderer, and then draws some lines,
# rectangles and points to it every frame.

require "../../src/sdl3"

Sdl3.init(Sdl3::InitFlags::Video) do
  window = Sdl3::Window.new("02-Primitives", 640, 480, Sdl3::Window::Flags::None)
  renderer = window.create_renderer
  renderer.logical_presentation = {640, 480, LibSdl3::RendererLogicalPresentation::Letterbox}

  points = StaticArray(LibSdl3::FPoint, 500).new do
    LibSdl3::FPoint.new(x: rand(100.0..540.0), y: rand(100.0..380.0))
  end

  loop do
    LibSdl3.poll_event(out event)
    case event.type
    when LibSdl3::EventType::Quit
      break
    end

    rect = LibSdl3::FRect.new(x: 100, y: 100, w: 440, h: 280)

    renderer.draw_color = {33u8, 33u8, 33u8, 255u8}
    renderer.clear

    renderer.draw_color = {0u8, 0u8, 255u8, 255u8}
    renderer.fill_rect(rect)

    renderer.draw_color = {255u8, 0u8, 0u8, 255u8}
    renderer.render_points(points)

    renderer.draw_color = {0u8, 255u8, 0u8, 255u8}
    rect.x += 30
    rect.y += 30
    rect.w -= 60
    rect.h -= 60
    renderer.render_rect(rect)

    renderer.draw_color = {255u8, 255u8, 0u8, 255u8}
    renderer.render_line(0, 0, 640, 480)
    renderer.render_line(0, 480, 640, 0)

    renderer.present
  end
end
