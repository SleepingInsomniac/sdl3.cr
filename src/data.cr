module Sdl3
  # Used for sized data that SDL owns
  class Data(T)
    forward_missing_to @slice
    @ptr : UInt8*
    getter slice : Slice(T)

    def initialize(@ptr, size : Int)
      slice_size = size // sizeof(T)
      @slice = Slice(T).new(@ptr.as(T*), slice_size)
    end

    def to_unsafe
      @ptr
    end

    def finalize
      LibSdl3.free(@ptr)
    end
  end
end
