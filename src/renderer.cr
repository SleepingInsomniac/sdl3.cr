module Sdl3
  class Renderer < SdlObject(LibSdl3::Renderer*)
    alias LogicalPresentation = LibSdl3::RendererLogicalPresentation

    def self.num_drivers
      LibSdl3.get_num_render_drivers
    end

    def self.driver(index)
      String.new(LibSdl3.get_render_driver(index))
    end

    def initialize(window : LibSdl3::Window* | Window, name : String? = nil)
      @pointer = LibSdl3.create_renderer(window, name)
      Sdl3.raise_error unless @pointer
    end

    def initialize(props : LibSdl3::PropertiesID)
      @pointer = LibSdl3.create_renderer_with_properties(props)
      Sdl3.raise_error unless @pointer
    end

    def initialize(surface : Surface)
      @pointer = LibSdl3.create_software_renderer(surface)
      Sdl3.raise_error unless @pointer
    end

    def initialize(device : LibSdl3::GPUDevice*, window : LibSdl3::Window* | Window)
      @pointer = LibSdl3.creategpu_renderer(device, window)
      Sdl3.raise_error unless @pointer
    end

    def sdl_finalize
      LibSdl3.destroy_renderer(@pointer)
    end

    def logical_presentation=(presentation : Tuple(Int32, Int32, LogicalPresentation))
      w, h, p = presentation
      LibSdl3.set_render_logical_presentation(@pointer, w, h, p)
    end

    def logical_presentation?
      result = LibSdl3.get_render_logical_presentation(@pointer, out width, out height, out mode)
      if result
        {width, height, mode}
      else
        nil
      end
    end

    def clear
      LibSdl3.render_clear(@pointer)
    end

    def present
      LibSdl3.render_present(@pointer)
    end

    def draw_color=(color : Tuple(Float32, Float32, Float32, Float32))
      red, green, blue, alpha = color
      LibSdl3.set_render_draw_color_float(@pointer, red, green, blue, alpha)
    end

    def draw_color=(color : Tuple(UInt8, UInt8, UInt8, UInt8))
      red, green, blue, alpha = color
      LibSdl3.set_render_draw_color(@pointer, red, green, blue, alpha)
    end

    def render_point(x : Float32, y : Float32)
      LibSdl3.render_point(@pointer, x, y)
    end

    def render_points(points : Enumerable(LibSdl3::FPoint))
      LibSdl3.render_points(@pointer, points, points.size)
    end

    def render_points(points : FPoint*, size : Int32)
      LibSdl3.render_points(@pointer, points, size)
    end

    def fill_rect(rect : FRect*)
      LibSdl3.render_fill_rect(@pointer, rect)
    end

    def render_rect(rect : FRect*)
      LibSdl3.render_rect(@pointer, rect)
    end

    def render_rects(rects : FRect*, count : Int32)
      LibSdl3.render_rects(@pointer, rects, count)
    end

    def render_rects(rects : Enumerable(FRect))
      LibSdl3.render_rects(@pointer, rects, rects.size)
    end

    def render_line(x1 : Float32, y1 : Float32, x2 : Float32, y2 : Float32)
      LibSdl3.render_line(@pointer, x1, y1, x2, y2)
    end

    def render_lines(points : Enumerable(Tuple(Float32, Float32)))
      LibSdl3.render_lines(@pointer, pointerof(points).as(Pointer(LibSdl3::FPoint)), points.size)
    end

    def render_lines(points : Enumerable(FPoint))
      LibSdl3.render_lines(@pointer, points, points.size)
    end

    def render_lines(points : FPoint*, count : Int)
      LibSdl3.render_lines(@pointer, points, count)
    end

    def gpu_device
      LibSdl3.getgpu_renderer_device(@pointer)
    end

    def window
      @window ||= Window.new(LibSdl3.get_render_window(@pointer))
    end

    def name
      String.new(LibSdl3.get_renderer_name(@pointer))
    end

    def properties
      Properties.new(LibSdl3.get_renderer_properties(@pointer))
    end

    def output_size?
      result = LibSdl3.get_render_output_size(@pointer, out width, out height)
      if result
        {width, height}
      else
        nil
      end
    end

    def current_output_size?
      result = LibSdl3.get_current_render_output_size(@pointer, out width, out height)
      if result
        {width, height}
      else
        nil
      end
    end

    def create_texture(format : LibSdl3::PixelFormat, access : Texture::Access, width : Int32, height : Int32)
      pointer = LibSdl3.create_texture(self, format, access, width, height)
      Sdl3.raise_error unless pointer
      Texture.new(pointer)
    end

    def create_texture(surface : Surface)
      pointer = LibSdl3.create_texture_from_surface(self, surface)
      Sdl3.raise_error unless pointer
      Texture.new(pointer)
    end

    def create_texture(properties : Properties)
      pointer = LibSdl3.create_texture_with_properties(self, properties)
      Sdl3.raise_error unless pointer
      Texture.new(pointer)
    end

    def target=(texture : Texture)
      LibSdl3.set_render_target(self, texture)
    end

    def target
      pointer = LibSdl3.get_render_target(self)
      Sdl3.raise_error unless pointer
      Texture.new(pointer)
    end

    def flush
      LibSdl3.flush_renderer(self)
    end

    def logical_presentation_rect?
      result = LibSdl3.get_render_logical_presentation_rect(self, out rect)
      if result
        rect
      else
        nil
      end
    end

    def coordinates_from_window(window_x : Float32, window_y : Float32)
      result = LibSdl3.render_coordinates_from_window(self, window_x, window_y, out x, out y)
      {x, y}
    end

    def coordinates_to_window(x : Float32, y : Float32)
      result = LibSdl3.render_coordinates_to_window(@pointer, x, y, out window_x, out window_y)
      {window_x, window_y}
    end

    def convert_event_to_coordinates(event : Event)
      LibSdl3.convert_event_to_render_coordinates(@pointer, event)
    end

    def viewport=(rect : Rect)
      LibSdl3.set_render_viewport(@pointer, pointerof(rect))
    end

    def viewport
      result = LibSdl3.get_render_viewport(@pointer, out rect)
      rect
    end

    def viewport_set?
      LibSdl3.render_viewport_set(@pointer)
    end

    def safe_area
      result = LibSdl3.get_render_safe_area(@pointer, out rect)
      rect
    end

    def clip_rect=(rect : Rect)
      LibSdl3.set_render_clip_rect(@pointer, pointerof(rect))
    end

    def clip_rect
      LibSdl3.get_render_clip_rect(@pointer, out rect)
      rect
    end

    def clip_enabled?
      LibSdl3.render_clip_enabled(@pointer)
    end

    def scale=(scale : Tuple(Number, Number))
      x, y = scale
      LibSdl3.set_render_scale(@pointer, x.to_f32, y.to_f32)
    end

    def scale
      LibSdl3.get_render_scale(@pointer, out x, out y)
      {x, y}
    end

    def draw_color
      LibSdl3.get_render_draw_color(@pointer, out r, out g, out b, out a)
      {r, g, b, a}
    end

    def draw_color_float
      LibSdl3.get_render_draw_color_float(@pointer, out r, out g, out b, out a)
      {r, g, b, a}
    end

    def color_scale=(scale : Number)
      LibSdl3.set_render_color_scale(@pointer, scale.to_f32)
    end

    def color_scale
      LibSdl3.get_render_color_scale(@pointer, out scale)
      scale
    end

    def draw_blend_mode=(blend_mode : BlendMode)
      LibSdl3.set_render_draw_blend_mode(@pointer, blend_mode)
    end

    def draw_blend_mode
      LibSdl3.get_render_draw_blend_mode(@pointer, out blend_mode)
      blend_mode
    end

    def render_texture(texture : Texture, source_rect : FRect? = nil, dest_rect : FRect? = nil)
      sr = source_rect.try { |sr| pointerof(sr) } || Pointer(FRect).null
      dr = dest_rect.try { |dr| pointerof(dr) } || Pointer(FRect).null
      LibSdl3.render_texture(@pointer, texture, sr, dr)
    end

    def render_texture_rotated(texture : Texture, source_rect : FRect? = nil, dest_rect : FRect? = nil, angle : Float64 = 0.0, center : FPoint? = nil, flip : FlipMode = FlipMode::None)
      sr = source_rect.try { |sr| pointerof(sr) } || Pointer(FRect).null
      dr = dest_rect.try { |dr| pointerof(dr) } || Pointer(FRect).null
      c = center.try { |c| pointerof(c) } || Pointer(FPoint).null
      Sdl3.raise_error unless LibSdl3.render_texture_rotated(@pointer, texture, source_rect, dest_rect, angle, center, flip)
    end

    def render_texture_affine(texture : Texture, source_rect : FRect? = nil, origin : FPoint? = nil, right : FPoint? = nil, down : FPoint? = nil)
      sr = source_rect.try { |sr| pointerof(sr) } || Pointer(FRect).null
      o = origin.try { |o| pointerof(o) } || Pointer(FPoint).null
      r = right.try { |r| pointerof(r) } || Pointer(FPoint).null
      d = down.try { |d| pointerof(d) } || Pointer(FPoint).null
      Sdl3.raise_error unless LibSdl3.render_texture_affine(@pointer, texture, source_rect, o, r, d)
    end

    # LibSdl3.render_texture_tiled(@pointer, texture : Texture*, srcrect : FRect*, scale : Float32, dstrect : FRect*) : Bool
    # LibSdl3.render_texture_9_grid(@pointer, texture : Texture*, srcrect : FRect*, left_width : Float32, right_width : Float32, top_height : Float32, bottom_height : Float32, scale : Float32, dstrect : FRect*) : Bool
    # LibSdl3.render_texture_9_grid_tiled(@pointer, texture : Texture*, srcrect : FRect*, left_width : Float32, right_width : Float32, top_height : Float32, bottom_height : Float32, scale : Float32, dstrect : FRect*, tile_scale : Float32) : Bool
    # LibSdl3.render_geometry(@pointer, texture : Texture*, vertices : Vertex*, num_vertices : Int, indices : Int*, num_indices : Int) : Bool
    # LibSdl3.render_geometry_raw(@pointer, texture : Texture*, xy : Float32*, xy_stride : Int, color : FColor*, color_stride : Int, uv : Float32*, uv_stride : Int, num_vertices : Int, indices : Void*, num_indices : Int, size_indices : Int) : Bool
    # LibSdl3.set_render_texture_address_mode(@pointer, u_mode : TextureAddressMode, v_mode : TextureAddressMode) : Bool
    # LibSdl3.get_render_texture_address_mode(@pointer, u_mode : TextureAddressMode*, v_mode : TextureAddressMode*) : Bool

    def read_pixels(rect : Rect? = nil)
      r = rect.try { |r| pointerof(r) } || Pointer(Rect).null
      Surface.new(LibSdl3.render_read_pixels(@pointer, r))
    end

    # LibSdl3.get_render_metal_layer(@pointer) : Void*
    # LibSdl3.get_render_metal_command_encoder(@pointer) : Void*
    # LibSdl3.add_vulkan_render_semaphores(@pointer, wait_stage_mask : UInt32, wait_semaphore : Int64, signal_semaphore : Int64) : Bool

    def vsync=(value : Bool)
      Sdl3.raise_error unless LibSdl3.set_render_v_sync(@pointer, value ? 1 : 0)
    end

    def vsync?
      Sdl3.raise_error unless LibSdl3.get_render_v_sync(@pointer, out vsync)
      vsync > 0 ? true : false
    end

    def debug_text(x : Float32, y : Float32, string : String)
      Sdl3.raise_error unless LibSdl3.render_debug_text(@pointer, x, y, string)
    end

    # LibSdl3.render_debug_text_format(@pointer, x : Float32, y : Float32, fmt : Char*, ...) : Bool

    def default_texture_scale_mode=(scale_mode : ScaleMode)
      Sdl3.raise_error unless LibSdl3.set_default_texture_scale_mode(@pointer, scale_mode)
    end

    def default_texture_scale_mode
      Sdl3.raise_error unless LibSdl3.get_default_texture_scale_mode(@pointer, out scale_mode)
      scale_mode
    end
  end
end
