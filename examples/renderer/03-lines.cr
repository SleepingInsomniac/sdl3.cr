require "../../src/sdl3"

Sdl3.init(LibSdl3::InitFlags::Video) do
  window = Sdl3::Window.new("03-lines", 640, 480, Sdl3::Window::Flags::None)
  renderer = window.create_renderer
  renderer.logical_presentation = {640, 480, LibSdl3::RendererLogicalPresentation::Letterbox}

  line_points = {
    {100f32, 354f32},
    {220f32, 230f32},
    {140f32, 230f32},
    {320f32, 100f32},
    {500f32, 230f32},
    {420f32, 230f32},
    {540f32, 354f32},
    {400f32, 354f32},
    {100f32, 354f32}
  }

  running = true
  while running
    while event = Sdl3::Events.poll
      case event
      when Sdl3::Event::Quit
        running = false
      end
    end

    renderer.draw_color = {100u8, 100u8, 100u8, 255u8}
    renderer.clear

    renderer.draw_color = {127u8, 49u8, 32u8, 255u8}
    renderer.render_line(240, 450, 400, 450)
    renderer.render_line(240, 356, 400, 356)
    renderer.render_line(240, 356, 240, 450)
    renderer.render_line(400, 356, 400, 450)

    renderer.draw_color = {0u8, 255u8, 0u8, 255u8}
    renderer.render_lines(line_points)

    0.upto(360) do |i|
      size = 30.0f32
      x = 320.0f32
      y = 95.0f32 - (size / 2.0f32)
      renderer.draw_color = {rand(0u8..255u8), rand(0u8..255u8), rand(0u8..255u8), 255u8}
      renderer.render_line(x, y, x + Math.sin(i) * size, y + Math.cos(i) * size)
    end

    renderer.present
  end
end
