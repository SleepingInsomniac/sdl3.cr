module Sdl3
  struct Rect
    # TODO
    # # https://wiki.libsdl.org/SDL3/SDL_GetRectEnclosingPoints
    # def self.enclosing(points)
    #   if LibSdl3.get_rect_enclosing_points(points, points.size, nil, out result)
    #     Rect.new(result.value)
    #   end
    # end

    @rect : LibSdl3::Rect

    def initialize(rect_ptr : LibSdl3::Rect*)
      @rect = rect_ptr.value
    end

    def initialize(x : Int32, y : Int32, w : Int32, h : Int32)
      @rect = LibSdl3::Rect.new
      @rect.x = x
      @rect.y = y
      @rect.w = w
      @rect.h = h
    end

    delegate x, y, w, h, to: @rect

    def to_unsafe
      pointerof(@rect)
    end

    # https://wiki.libsdl.org/SDL3/SDL_HasRectIntersection
    def intersects?(other : Rect)
      LibSdl3.has_rect_intersection(self, other)
    end

    # https://wiki.libsdl.org/SDL3/SDL_GetRectIntersection
    def intersection(other : Rect)
      if LibSdl3.get_rect_intersection(self, other, out result)
        Rect.new(result.value)
      else
        nil
      end
    end

    # https://wiki.libsdl.org/SDL3/SDL_GetRectUnion
    def union(other : Rect)
      if LibSdl3.get_rect_union(other, other, out result)
        Rect.new(result.value)
      else
        nil
      end
    end

    # TODO
    # # https://wiki.libsdl.org/SDL3/SDL_GetRectAndLineIntersection
    # def line_intersection
    #   # LibSdl3.get_rect_and_line_intersection(rect : Rect*, x1 : Int*, y1 : Int*, x2 : Int*, y2 : Int*) : Bool
    # end
  end
end
