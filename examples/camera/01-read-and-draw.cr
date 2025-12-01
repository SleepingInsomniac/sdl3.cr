require "../../src/sdl3"

Sdl3.init(LibSdl3::InitFlags::Video | LibSdl3::InitFlags::Camera) do
  window = Sdl3::Window.new("examples/camera/read-and-draw", 640, 480, Sdl3::Window::Flags::None)
  renderer = window.create_renderer

  camera_ids = Sdl3::Camera.camera_ids
  camera = Sdl3::Camera.new(camera_ids[0])
  texture : Sdl3::Texture? = nil

  loop do
    event = Sdl3::Events.poll

    case event
    when Sdl3::Event::CameraDevice
      case event.type
      when .camera_device_approved?
        puts "User approved camera: #{event.which}"
      when .camera_device_denied?
        puts "User denied camera: #{event.which}"
      end
    when Sdl3::Event::Quit
      break
    end

    camera.frame do |frame, timestampns|
      unless texture
        renderer.logical_presentation = {frame.width, frame.height, Sdl3::Renderer::LogicalPresentation::Letterbox}
        texture = Sdl3::Texture.new(renderer, frame.format, Sdl3::Texture::Access::Streaming, frame.width, frame.height)
      end

      if texture
        texture.update(nil, frame.pixels, frame.pitch)
      end

      frame
    end

    renderer.draw_color = {0x99u8, 0x99u8, 0x99u8, 0xFFu8}
    renderer.clear

    if texture
      renderer.render_texture(texture)
    end

    renderer.present
  end
end
