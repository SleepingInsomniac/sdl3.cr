lib LibSdl3TTF
  enum DrawCommand
    Noop # TTF_DRAW_COMMAND_NOOP
    Fill # TTF_DRAW_COMMAND_FILL
    Copy # TTF_DRAW_COMMAND_COPY
  end

  struct FillOperation
    cmd : DrawCommand
    rect : Rect
  end

  struct CopyOperation
    cmd : DrawCommand
    text_offset : Int
    glyph_font : Font*
    glyph_index : UInt32
    src : Rect
    dst : Rect
    reserved : Void*
  end

  union DrawOperation
    cmd : DrawCommand
    fill : FillOperation
    copy : CopyOperation
  end

  type TextLayout = Void # typedef struct TTF_TextLayout TTF_TextLayout;

  struct TextData
    font : Font*
    color : FColor
    needs_layout_update : Bool
    layout : TextLayout*
    x : Int
    y : Int
    w : Int
    h : Int
    num_ops : Int
    ops : DrawOperation*
    num_clusters : Int
    clusters : SubString*
    props : PropertiesID
    needs_engine_update : Bool
    engine : TextEngine*
    engine_text : Void*
  end

  struct TextEngine
    version : UInt32
    userdata : Void*
    create_text : (Void*, Text*) -> Bool
    destroy_text : (Void*, Text*) -> Bool
  end
end
