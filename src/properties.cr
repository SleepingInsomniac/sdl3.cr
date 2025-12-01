module Sdl3
  class Properties
    alias Type = LibSdl3::PropertyType

    def self.global
      Properties.new(LibSdl3.get_global_properties)
    end

    def self.copy(source : LibSdl3::PropertiesID, destination : LibSdl3::PropertiesID)
      LibSdl3.copy_properties(source, destination)
    end

    @id : LibSdl3::PropertiesID

    def initialize
      @id = LibSdl3.create_properties
    end

    def initialize(@id)
    end

    def finalize
      LibSdl3.destroy_properties(@id)
    end

    def lock
      LibSdl3.lock_properties(@id)
    end

    def unlock
      LibSdl3.unlock_properties(@id)
    end

    def type(name)
      LibSdl3.get_property_type(@id, name)
    end

    def clear(name)
      LibSdl3.clear_property(@id, name)
    end

    def has?(name)
      LibSdl3.has_property(@id, name)
    end

    def [](name)
      case String.new(type(name))
      when Type::Pointer then LibSdl3.get_pointer_property(@id, name)
      when Type::String  then String.new(LibSdl3.get_string_property(@id, name))
      when Type::Number  then LibSdl3.get_number_property(@id, name)
      when Type::Float   then LibSdl3.get_float_property(@id, name)
      when Type::Boolean then LibSdl3.get_boolean_property(@id, name)
      end
    end

    def []=(name, value)
      case value
      when String then LibSdl3.set_string_property(@id, name, value)
      when Int    then LibSdl3.set_number_property(@id, name, value)
      when Float  then LibSdl3.set_float_property(@id, name, value)
      when Bool   then LibSdl3.set_boolean_property(@id, name, value)
      else
        LibSdl3.set_pointer_property(@id, name, value)
      end
    end
  end
end
