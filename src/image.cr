require "./lib_image"

module Sdl3
  module Image
    def self.version
      LibSdl3Image.img_version
    end

    def self.load(path : String)
      Surface.new(LibSdl3Image.load(path))
    end
  end
end
