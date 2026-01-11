module Sdl3
  class Cursor < SdlObject(LibSdl3::Cursor*)
    alias System = LibSdl3::SystemCursor

    def self.default
      ptr = LibSdl3.get_default_cursor
      Sdl3.raise_error if ptr.null?
      new(ptr)
    end

    def self.get
      ptr = LibSdl3.get_cursor
      Sdl3.raise_error if ptr.null?
      new(ptr)
    end

    def self.set(cursor : Cursor)
      Sdl3.raise_error unless LibSdl3.set_cursor(cursor)
    end

    def self.show
      LibSdl3.show_cursor
    end

    def self.hide
      LibSdl3.hide_cursor
    end

    def self.visible?
      LibSdl3.cursor_visible
    end

    # TODO
    # fun create_cursor = SDL_CreateCursor(data : UInt8*, mask : UInt8*, w : Int, h : Int, hot_x : Int, hot_y : Int) : Cursor*
    # fun create_color_cursor = SDL_CreateColorCursor(surface : Surface*, hot_x : Int, hot_y : Int) : Cursor*
    # fun create_animated_cursor = SDL_CreateAnimatedCursor(frames : CursorFrameInfo*, frame_count : Int, hot_x : Int, hot_y : Int) : Cursor*
    # fun create_system_cursor = SDL_CreateSystemCursor(id : SystemCursor) : Cursor*

    def sdl_finalize
      LibSdl3.destroy_cursor(@pointer)
    end
  end
end
