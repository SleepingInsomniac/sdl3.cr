require "../../src/sdl3"
require "../../src/ttf"

WIDTH = 640
HEIGHT = 480

Sdl3.init(Sdl3::InitFlags::Video) do
  Sdl3::TTF.init

  window = Sdl3::Window.new("TTF Hello World", WIDTH, HEIGHT, Sdl3::Window::Flags::None)
  renderer = window.create_renderer
  renderer.logical_presentation = {WIDTH, HEIGHT, LibSdl3::RendererLogicalPresentation::Letterbox}
  renderer.draw_color = { 50u8, 50u8, 100u8, 255u8 }

  # font = Sdl3::TTF::Font.open("/System/Library/Fonts/NewYorkItalic.ttf", 72)
  font = Sdl3::TTF::Font.open("/System/Library/Fonts/Palatino.ttc", 72)
  fg = Sdl3::Color.new(r: 255, g: 255, b: 255, a: 255)
  bg = Sdl3::Color.new(r: 0, g: 0, b: 0, a: 255)

  font.style = Sdl3::TTF::Font::Style::Underline

  lcd     = font.render_text_lcd("Hello World!", fg, bg)
  solid   = font.render_text_solid("Hello World!", fg)
  blended = font.render_text_blended("Hello World!", fg)
  shaded  = font.render_text_shaded("Hello World!", fg, bg)

  tlcd     = renderer.create_texture(lcd)
  tsolid   = renderer.create_texture(solid)
  tblended = renderer.create_texture(blended)
  tshaded  = renderer.create_texture(shaded)

  loop do
    event = Sdl3::Events.poll

    case event
    when Sdl3::Event::Quit
      break
    end

    renderer.clear

    renderer.render_texture(
      tlcd,
      nil,
      Sdl3::FRect.new(x: 0, y: 0, w: lcd.width, h: lcd.height)
    )

    renderer.render_texture(
      tsolid,
      nil,
      Sdl3::FRect.new(x: 0, y: lcd.height, w: solid.width, h: solid.height)
    )

    renderer.render_texture(
      tblended,
      nil,
      Sdl3::FRect.new(x: 0, y: lcd.height * 2, w: blended.width, h: blended.height)
    )

    renderer.render_texture(
      tshaded,
      nil,
      Sdl3::FRect.new(x: 0, y: lcd.height * 3, w: shaded.width, h: shaded.height)
    )

    renderer.present
  end

ensure
  Sdl3::TTF.quit
end
