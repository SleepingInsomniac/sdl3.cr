module Sdl3
  alias EventType = LibSdl3::EventType
  alias EventAction = LibSdl3::EventAction

  abstract struct Event
    struct Common < Event
      def _event
        @event.common
      end
    end

    struct Display < Event
      def _event
        @event.display
      end

      delegate display_id, data1, data2, to: _event
    end

    struct Window < Event
      def _event
        @event.window
      end

      delegate window_id, data1, data2, to: _event
    end

    struct KeyboardDevice < Event
      def _event
        @event.keyboard_device
      end

      delegate which, to: _event
    end

    struct Keyboard < Event
      def _event
        @event.keyboard
      end

      delegate window_id, which, scancode, key, mod, raw, down, repeat, to: _event
    end

    struct TextEditing < Event
      def _event
        @event.text_editing
      end

      delegate window_id, text, start, length, to: _event
    end

    struct TextEditingCandidates < Event
      def _event
        @event.text_editing_candidates
      end

      delegate window_id, candidates, num_candidates, selected_candidate, horizontal, to: _event
    end

    struct TextInput < Event
      def _event
        @event.text_input
      end

      delegate window_id, text, to: _event
    end

    struct MouseDevice < Event
      def _event
        @event.mouse_device
      end

      delegate which, to: _event
    end

    struct MouseMotion < Event
      def _event
        @event.mouse_motion
      end

      delegate window_id, which, state, x, y, xrel, yrel, to: _event
    end

    struct MouseButton < Event
      def _event
        @event.mouse_button
      end

      delegate window_id, which, button, down, clicks, x, y, to: _event
    end

    struct MouseWheel < Event
      def _event
        @event.mouse_wheel
      end

      delegate window_id, which, x, y, direction, mouse_x, mouse_y, integer_x, integer_y, to: _event
    end

    struct JoyAxis < Event
      def _event
        @event.joy_axis
      end

      delegate which, axis, value, to: _event
    end

    struct JoyBall < Event
      def _event
        @event.joy_ball
      end

      delegate which, ball, xrel, yrel, to: _event
    end

    struct JoyHat < Event
      def _event
        @event.joy_hat
      end

      delegate which, hat, value, to: _event
    end

    struct JoyButton < Event
      def _event
        @event.joy_button
      end

      delegate which, button, down, to: _event
    end

    struct JoyDevice < Event
      def _event
        @event.joy_device
      end

      delegate which, to: _event
    end

    struct JoyBattery < Event
      def _event
        @event.joy_battery
      end

      delegate which, state, percent, to: _event
    end

    struct GamepadAxis < Event
      def _event
        @event.gamepad_axis
      end

      delegate which, axis, value, to: _event
    end

    struct GamepadButton < Event
      def _event
        @event.gamepad_button
      end

      delegate which, button, down, to: _event
    end

    struct GamepadDevice < Event
      def _event
        @event.gamepad_device
      end

      delegate which, to: _event
    end

    struct GamepadTouchpad < Event
      def _event
        @event.gamepad_touchpad
      end

      delegate which, touchpad, finger, x, y, pressure, to: _event
    end

    struct GamepadSensor < Event
      def _event
        @event.gamepad_sensor
      end

      delegate which, sensor, data, sensor_timestamp, to: _event
    end

    struct AudioDevice < Event
      def _event
        @event.audio_device
      end

      delegate which, recording, to: _event
    end

    struct CameraDevice < Event
      def _event
        @event.camera_device
      end

      delegate which, to: _event
    end

    struct Render < Event
      def _event
        @event.render
      end

      delegate window_id, to: _event
    end

    struct TouchFinger < Event
      def _event
        @event.touch_finger
      end

      delegate touch_id, finger_id, x, y, dx, dy, pressure, window_id, to: _event
    end

    struct PinchFinger < Event
      def _event
        @event.pinch_finger
      end

      delegate scale, window_id, to: _event
    end

    struct PenProximity < Event
      def _event
        @event.pen_proximity
      end

      delegate window_id, which, to: _event
    end

    struct PenMotion < Event
      def _event
        @event.pen_motion
      end

      delegate window_id, which, pen_state, x, y, to: _event
    end

    struct PenTouch < Event
      def _event
        @event.pen_touch
      end

      delegate window_id, which, pen_state, x, y, eraser, down, to: _event
    end

    struct PenButton < Event
      def _event
        @event.pen_button
      end

      delegate window_id, which, pen_state, x, y, button, down, to: _event
    end

    struct PenAxis < Event
      def _event
        @event.pen_axis
      end

      delegate window_id, which, pen_state, x, y, axis, value, to: _event
    end

    struct Drop < Event
      def _event
        @event.drop
      end

      delegate window_id, x, y, source, data, to: _event
    end

    struct Clipboard < Event
      def _event
        @event.clipboard
      end

      delegate owner, num_mime_types, mime_types, to: _event
    end

    struct Sensor < Event
      def _event
        @event.sensor
      end

      delegate which, data, sensor_timestamp, to: _event
    end

    struct Quit < Event
      def _event
        @event.quit
      end
    end

    struct User < Event
      def _event
        @event.user
      end

      delegate window_id, code, data1, data2, to: _event
    end

    def self.from(event : LibSdl3::Event)
      case event.type
      when Sdl3::EventType::DisplayFirst..Sdl3::EventType::DisplayLast
        Display.new(event)
      when Sdl3::EventType::WindowFirst..Sdl3::EventType::WindowLast
        Window.new(event)
      when .key_up?, .key_down?
        Keyboard.new(event)
      when .text_editing?
        TextEditing.new(event)
      when .keymap_changed?, .keyboard_added?, .keyboard_removed?
        KeyboardDevice.new(event)
      when .text_editing_candidates?
        TextEditingCandidates.new(event)
      when .text_input?
        TextInput.new(event)
      when .mouse_motion?
        MouseMotion.new(event)
      when .mouse_button_down?, .mouse_button_up?
        MouseButton.new(event)
      when .mouse_wheel?
        MouseWheel.new(event)
      when .mouse_added?, .mouse_removed?
        MouseDevice.new(event)
      when .joystick_axis_motion?
        JoyAxis.new(event)
      when .joystick_ball_motion?
        JoyBall.new(event)
      when .joystick_hat_motion?
        JoyHat.new(event)
      when .joystick_button_down?, .joystick_button_up?
        JoyButton.new(event)
      when .joystick_added?, .joystick_removed?, .joystick_update_complete?
        JoyDevice.new(event)
      when .joystick_battery_updated?
        JoyBattery.new(event)
      when .gamepad_axis_motion?
        GamepadAxis.new(event)
      when .gamepad_button_down?, .gamepad_button_up?
        GamepadButton.new(event)
      when .gamepad_added?, .gamepad_removed?, .gamepad_remapped?, .gamepad_update_complete?
        GamepadDevice.new(event)
      when .gamepad_touchpad_down?, .gamepad_touchpad_motion?, .gamepad_touchpad_up?
        GamepadTouchpad.new(event)
      when .gamepad_sensor_update?
        GamepadSensor.new(event)
      when .gamepad_sensor_update?
        GamepadSensor.new(event)
      when .audio_device_added?, .audio_device_removed?, .audio_device_format_changed?
        AudioDevice.new(event)
      when .camera_device_added?, .camera_device_removed?, .camera_device_approved?, .camera_device_denied?
        CameraDevice.new(event)
      when .sensor_update?
        Sensor.new(event)
      when .quit?
        Quit.new(event)
      when .user?
        User.new(event)
      when .finger_down?, .finger_up?, .finger_motion?, .finger_canceled?
        TouchFinger.new(event)
      when .pinch_begin?, .pinch_update?, .pinch_end?
        PinchFinger.new(event)
      when .pen_proximity_in?, .pen_proximity_out?
        PenProximity.new(event)
      when .pen_down?, .pen_up?
        PenTouch.new(event)
      when .pen_motion?
        PenMotion.new(event)
      when .pen_button_down?, .pen_button_up?
        PenButton.new(event)
      when .pen_axis?
        PenAxis.new(event)
      when .render_targets_reset?, .render_device_reset?, .render_device_lost?
        Render.new(event)
      when .drop_file?, .drop_text?, .drop_begin?, .drop_complete?, .drop_position?
        Drop.new(event)
      when .clipboard_update?
        Clipboard.new(event)
      else
        Common.new(event)
      end
    end

    @event : LibSdl3::Event

    def initialize(@event : LibSdl3::Event)
    end

    def to_unsafe
      pointerof(@event)
    end

    def type : EventType
      EventType.new(_event.type)
    end

    def timestamp
      _event.timestamp
    end
  end

  module Events
    def self.poll
      Sdl3.raise_error unless LibSdl3.poll_event(out event)
      Event.from(event)
    end

    def self.pump
      LibSdl3.pump_events
    end

    def self.add(events : Slice(Event))
      LibSdl3.peep_events(events.to_unsafe, events.size, EventAction::Add)
    end

    def self.peek(limit, min_type : EventType = EventType::First, max_type : EventType = EventType::Last)
      events = Slice(Event).new(limit)
      count = LibSdl3.peep_events(events.to_unsafe, limit, EventAction::Peek, min_type, max_type)
      events[..count]
    end

    def self.count(min_type : EventType = EventType::First, max_type : EventType = EventType::Last)
      LibSdl3.peep_events(nil, 0, EventAction::Peek, min_type, max_type)
    end
  end
end
