module Sdl3
  module TTF
    class Font < SdlObject(LibSdl3TTF::Font*)
      @[Flags]
      enum Style : LibSdl3TTF::FontStyleFlags
        Normal        = LibSdl3TTF::STYLE_NORMAL
        Bold          = LibSdl3TTF::STYLE_BOLD
        Italic        = LibSdl3TTF::STYLE_ITALIC
        Underline     = LibSdl3TTF::STYLE_UNDERLINE
        Strikethrough = LibSdl3TTF::STYLE_STRIKETHROUGH
      end

      def self.open(path : String, ptsize : Float32)
        ptr = LibSdl3TTF.open_font(path, ptsize)
        Sdl3.raise_error if ptr.null?
        new(ptr)
      end

      def sdl_finalize
        LibSdl3TTF.close_font(self)
      end

      def properties
        Properties.new(LibSdl3TTF.get_font_properties(self))
      end

      def style=(font_style : Style)
        LibSdl3TTF.set_font_style(self, font_style.value)
      end

      def style
        Style.new(LibSdl3TTF.get_font_style(self))
      end

      def outline=(thickness : Int32)
        LibSdl3TTF.set_font_outline(self, thickness)
      end

      def outline
        LibSdl3TTF.get_font_outline(self)
      end

      def render_text_solid(text : String, fg : Color)
        ptr = LibSdl3TTF.render_text_solid(self, text, text.bytesize, fg)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end

      def render_text_solid_wrapped(text : String, fg : Color, wrap_length : Int32)
        ptr = LibSdl3TTF.render_text_solid_wrapped(self, text, text.bytesize, fg, wrap_length)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end

      def render_glyph_solid(ch : Char, fg : Color)
        ptr = LibSdl3TTF.render_glyph_solid(self, ch.ord, fg)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end

      def render_text_shaded(text : String, fg : Color, bg : Color)
        ptr = LibSdl3TTF.render_text_shaded(self, text, text.bytesize, fg, bg)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end

      def render_text_shaded_wrapped(text : String, fg : Color, bg : Color, wrap_width : Int32)
        ptr = LibSdl3TTF.render_text_shaded_wrapped(self, text, text.bytesize, fg, bg, wrap_width)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end

      def render_glyph_shaded(ch : Char, fg : Color, bg : Color)
        ptr = LibSdl3TTF.render_glyph_shaded(self, ch.ord, fg, bg)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end

      def render_text_blended(text : String, fg : Color)
        ptr = LibSdl3TTF.render_text_blended(self, text, text.bytesize, fg)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end

      def render_text_blended_wrapped(text : String, fg : Color, wrap_width : Int32)
        ptr = LibSdl3TTF.render_text_blended_wrapped(self, text, text.bytesize, fg, wrap_width)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end

      def render_glyph_blended(ch : Char, fg : Color)
        ptr = LibSdl3TTF.render_glyph_blended(self, ch.ord, fg)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end

      def render_text_lcd(text : String, fg : Color, bg : Color)
        ptr = LibSdl3TTF.render_text_lcd(self, text, text.bytesize, fg, bg)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end

      def render_text_lcd_wrapped(text : String, fg : Color, bg : Color, wrap_width : Int32)
        ptr = LibSdl3TTF.render_text_lcd_wrapped(self, text, text.bytesize, fg, bg, wrap_width)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end

      def render_glyph_lcd(ch : Char, fg : Color, bg : Color)
        ptr = LibSdl3TTF.render_glyph_lcd(self, ch.ord, fg, bg)
        Sdl3.raise_error if ptr.null?
        Sdl3::Surface.new(ptr)
      end
    end
  end
end
