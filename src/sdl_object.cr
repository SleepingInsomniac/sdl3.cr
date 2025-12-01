module Sdl3
  abstract class SdlObject(T)
    @owned : Bool = true
    @pointer : T

    def initialize(@pointer, @owned = true)
    end

    def to_unsafe
      @pointer
    end

    def finalize
      return unless @owned
      return if @pointer.null?

      sdl_finalize
    end

    abstract def sdl_finalize
  end
end
