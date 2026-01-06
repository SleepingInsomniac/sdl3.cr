require "./lib_ttf"

module Sdl3
  module TTF
    def self.version
      LibSdl3TTF.version
    end

    def self.init
      Sdl3.raise_error unless LibSdl3TTF.init
    end

    def self.quit
      LibSdl3TTF.quit
    end
  end
end

require "./ttf/font"
