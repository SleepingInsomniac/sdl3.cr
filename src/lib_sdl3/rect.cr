lib LibSdl3
  struct Point
    x : Int
    y : Int
  end

  struct FPoint
    x : Float32
    y : Float32
  end

  struct Rect
    x : Int
    y : Int
    w : Int
    h : Int
  end

  struct FRect
    x : Float32
    y : Float32
    w : Float32
    h : Float32
  end

  # extern SDL_DECLSPEC bool SDLCALL SDL_HasRectIntersection(const SDL_Rect *A, const SDL_Rect *B);
  fun has_rect_intersection = SDL_HasRectIntersection(a : Rect*, b : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRectIntersection(const SDL_Rect *A, const SDL_Rect *B, SDL_Rect *result);
  fun get_rect_intersection = SDL_GetRectIntersection(a : Rect*, b : Rect*, result : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRectUnion(const SDL_Rect *A, const SDL_Rect *B, SDL_Rect *result);
  fun get_rect_union = SDL_GetRectUnion(a : Rect*, b : Rect*, result : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRectEnclosingPoints(const SDL_Point *points, int count, const SDL_Rect *clip, SDL_Rect *result);
  fun get_rect_enclosing_points = SDL_GetRectEnclosingPoints(points : Point*, count : Int, clip : Rect*, result : Rect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRectAndLineIntersection(const SDL_Rect *rect, int *X1, int *Y1, int *X2, int *Y2);
  fun get_rect_and_line_intersection = SDL_GetRectAndLineIntersection(rect : Rect*, x1 : Int*, y1 : Int*, x2 : Int*, y2 : Int*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_HasRectIntersectionFloat(const SDL_FRect *A, const SDL_FRect *B);
  fun has_rect_intersection_float = SDL_HasRectIntersectionFloat(a : FRect*, b : FRect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRectIntersectionFloat(const SDL_FRect *A, const SDL_FRect *B, SDL_FRect *result);
  fun get_rect_intersection_float = SDL_GetRectIntersectionFloat(a : FRect*, b : FRect*, result : FRect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRectUnionFloat(const SDL_FRect *A, const SDL_FRect *B, SDL_FRect *result);
  fun get_rect_union_float = SDL_GetRectUnionFloat(a : FRect*, b : FRect*, result : FRect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRectEnclosingPointsFloat(const SDL_FPoint *points, int count, const SDL_FRect *clip, SDL_FRect *result);
  fun get_rect_enclosing_points_float = SDL_GetRectEnclosingPointsFloat(points : FPoint*, count : Int, clip : FRect*, result : FRect*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetRectAndLineIntersectionFloat(const SDL_FRect *rect, float *X1, float *Y1, float *X2, float *Y2);
  fun get_rect_and_line_intersection_float = SDL_GetRectAndLineIntersectionFloat(rect : FRect*, x1 : Float32*, y1 : Float32*, x2 : Float32*, y2 : Float32*) : Bool
end
