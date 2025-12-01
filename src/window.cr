module Sdl3
  class Window < SdlObject(LibSdl3::Window*)
    alias Flags = LibSdl3::WindowFlags
    @renderer : Renderer?

    def initialize(title : String, width : Int32, height : Int32, flags : Flags = Flags::None, @renderer = nil)
      @pointer = LibSdl3.create_window(title, width, height, flags)
      Sdl3.raise_error unless @pointer
    end

    def sdl_finalize
      LibSdl3.destroy_window(@pointer)
    end

    def renderer
      pointer = LibSdl3.get_renderer(self)
      return nil unless pointer

      @renderer ||= Renderer.new(pointer)
    end

    def create_renderer(name : String? = nil)
      @renderer ||= Renderer.new(self, name)
    end
  end
end
