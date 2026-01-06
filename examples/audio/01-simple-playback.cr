require "../../src/sdl3"

Sdl3.init(Sdl3::InitFlags::Video | Sdl3::InitFlags::Audio) do
  current_sine_sample = 0

  window = Sdl3::Window.new("examples/audio/simple-playback", 640, 480, Sdl3::Window::Flags::None)
  renderer = window.create_renderer
  renderer.logical_presentation = {640, 480, LibSdl3::RendererLogicalPresentation::Letterbox}

  spec = Sdl3::Audio::Spec.new(
    channels: 1,
    format: Sdl3::Audio::Format::F32,
    freq: 8000
  )

  stream = Sdl3::Audio::Stream.open(Sdl3::Audio::Device.default_playback, spec)
  stream.resume

  loop do
    case Sdl3::Events.poll
    when Sdl3::Event::Quit
      break
    end

    minimum_audio = (8000 * Sdl3::Audio.bytes_per_sample(spec.format)) // 2 # 8000 float samples per second. Half of that.
    if stream.queued < minimum_audio
      freq = 440
      samples = StaticArray(Float32, 512).new do |i|
        phase = current_sine_sample * freq / 8000.0
        current_sine_sample += 1
        Math.sin(phase * 2 * Math::PI).to_f32
      end

      current_sine_sample %= 8000
      stream.put_data(pointerof(samples), sizeof(typeof(samples)))
    end

    renderer.clear
    renderer.present
  end
end
