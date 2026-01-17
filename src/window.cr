module Sdl3
  class Window < SdlObject(LibSdl3::Window*)
    alias Flags = LibSdl3::WindowFlags
    alias ID = LibSdl3::WindowID

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

    def id
      LibSdl3.get_window_id(@pointer)
    end

    def popup(offset_x, offset_y, width, height, flags : Flags = Flags::None)
      LibSdl3.create_popup_window(self, offset_x, offset_y, width, height, flags)
    end

    def always_on_top=(value : Bool)
      LibSdl3.set_window_always_on_top(self, value ? 1 : 0)
    end

    def title
      String.new(LibSdl3.get_window_title(self))
    end

    def title=(title : String)
      LibSdl3.set_window_title(self, title)
    end

    def position
      LibSdl3.get_window_position(self, out x, out y)
      {x, y}
    end

    def position=(position : Tuple(Int32, Int32))
      LibSdl3.set_window_position(self, position[0], position[1])
    end

    def size
      LibSdl3.get_window_size(self, out x, out y)
      {x, y}
    end

    def size=(size : Tuple(Int32, Int32))
      LibSdl3.set_window_size(self, size[0], size[1])
    end

    def width
      size[0]
    end

    def height
      size[1]
    end

    def raise
      LibSdl3.raise_window(self)
    end

    def show
      LibSdl3.show_window(self)
    end

    def hide
      LibSdl3.hide_window(self)
    end

    def keyboard_grabbed?
      LibSdl3.get_window_keyboard_grab(self)
    end

    def keyboard_grabbed=(value : Bool)
      LibSdl3.set_window_keyboard_grab(self, value)
    end

    def surface
      LibSdl3.get_window_surface(self)
    end
  end
end
