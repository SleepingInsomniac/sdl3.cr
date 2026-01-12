require "../../src/sdl3"

Sdl3.init(Sdl3::InitFlags::Video | Sdl3::InitFlags::Audio) do
  window = Sdl3::Window.new("examples/audio/load-wav", 640, 480, Sdl3::Window::Flags::None)
  renderer = window.create_renderer
  renderer.logical_presentation = {640, 480, LibSdl3::RendererLogicalPresentation::Letterbox}

  path = "#{__DIR__}/sample.wav"
  data, spec = Sdl3::Audio.load_wav(path)
  stream = Sdl3::Audio::Stream.open(Sdl3::Audio::Device.default_playback, spec)
  puts stream.device.name
  stream.put_data(data)
  stream.flush
  stream.resume

  running = true
  while running
    while event = Sdl3::Events.poll
      case event
      when Sdl3::Event::Quit
        running = false
      end
    end

    renderer.clear
    renderer.present
  end
end
