module Sdl3
  struct Mouse
    alias ID = LibSdl3::MouseID
    alias Button = LibSdl3::MouseButtonFlags
    alias WheelDirection = LibSdl3::MouseWheelDirection

    def self.has_mouse?
      LibSdl3.has_mouse
    end

    def self.mice
      ptr = LibSdl3.get_mice(out count)
      Sdl3.raise_error if ptr.null?
      Array(Mouse).new(count) { |i| Mouse.new(ptr[i]) }
    ensure
      if ptr && !ptr.null?
        LibSdl3.free(ptr.as(Void*))
      end
    end

    def self.focused_window?
      ptr = LibSdl3.get_mouse_focus
      return nil if ptr.null
      Window.new(ptr, owned: false) # borrowed pointer
    end

    # https://wiki.libsdl.org/SDL3/SDL_GetMouseState
    def self.state
      button_flags = LibSdl3.get_mouse_state(out x, out y)
      {x: x, y: y, button_flags: button_flags}
    end

    # https://wiki.libsdl.org/SDL3/SDL_GetGlobalMouseState
    def self.global_state
      button_flags = LibSdl3.get_global_mouse_state(out x, out y)
      {x: x, y: y, button_flags: button_flags}
    end

    # https://wiki.libsdl.org/SDL3/SDL_GetRelativeMouseState
    def self.relative_state
      button_flags = LibSdl3.get_relative_mouse_state(out x, out y)
      {x: x, y: y, button_flags: button_flags}
    end

    def self.warp(window : Window, x, y)
      LibSdl3.warp_mouse_in_window(window, x, y)
    end

    def self.warp(x, y)
      LibSdl3.warp_mouse_global(x, y)
    end

    def self.capture=(enabled : Bool)
      LibSdl3.capture_mouse(enabled)
    end

    getter id : ID

    def initialize(@id)
    end

    def name
      ptr = LibSdl3.get_mouse_name_for_id(@id)
      Sdl3.raise_error if ptr.null?
      String.new(ptr)
    end
  end
end
