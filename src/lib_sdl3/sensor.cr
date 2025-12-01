lib LibSdl3
  type Sensor = Void # typedef struct SDL_Sensor SDL_Sensor;
  alias SensorID = UInt32 # typedef Uint32 SDL_SensorID;

  STANDARD_GRAVITY = 9.80665_f32 # #define SDL_STANDARD_GRAVITY    9.80665f

  enum SensorType
    Invalid = -1 # SDL_SENSOR_INVALID
    Unknown # SDL_SENSOR_UNKNOWN
    Accel # SDL_SENSOR_ACCEL
    Gyro # SDL_SENSOR_GYRO
    AccelL # SDL_SENSOR_ACCEL_L
    GyroL # SDL_SENSOR_GYRO_L
    AccelR # SDL_SENSOR_ACCEL_R
    GyroR # SDL_SENSOR_GYRO_R
    Count # SDL_SENSOR_COUNT
  end

  # extern SDL_DECLSPEC SDL_SensorID * SDLCALL SDL_GetSensors(int *count);
  fun get_sensors = SDL_GetSensors(count : Int*) : SensorID*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetSensorNameForID(SDL_SensorID instance_id);
  fun get_sensor_name_for_id = SDL_GetSensorNameForID(instance_id : SensorID) : Char*
  # extern SDL_DECLSPEC SDL_SensorType SDLCALL SDL_GetSensorTypeForID(SDL_SensorID instance_id);
  fun get_sensor_type_for_id = SDL_GetSensorTypeForID(instance_id : SensorID) : SensorType
  # extern SDL_DECLSPEC int SDLCALL SDL_GetSensorNonPortableTypeForID(SDL_SensorID instance_id);
  fun get_sensor_non_portable_type_for_id = SDL_GetSensorNonPortableTypeForID(instance_id : SensorID) : Int
  # extern SDL_DECLSPEC SDL_Sensor * SDLCALL SDL_OpenSensor(SDL_SensorID instance_id);
  fun open_sensor = SDL_OpenSensor(instance_id : SensorID) : Sensor*
  # extern SDL_DECLSPEC SDL_Sensor * SDLCALL SDL_GetSensorFromID(SDL_SensorID instance_id);
  fun get_sensor_from_id = SDL_GetSensorFromID(instance_id : SensorID) : Sensor*
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetSensorProperties(SDL_Sensor *sensor);
  fun get_sensor_properties = SDL_GetSensorProperties(sensor : Sensor*) : PropertiesID
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetSensorName(SDL_Sensor *sensor);
  fun get_sensor_name = SDL_GetSensorName(sensor : Sensor*) : Char*
  # extern SDL_DECLSPEC SDL_SensorType SDLCALL SDL_GetSensorType(SDL_Sensor *sensor);
  fun get_sensor_type = SDL_GetSensorType(sensor : Sensor*) : SensorType
  # extern SDL_DECLSPEC int SDLCALL SDL_GetSensorNonPortableType(SDL_Sensor *sensor);
  fun get_sensor_non_portable_type = SDL_GetSensorNonPortableType(sensor : Sensor*) : Int
  # extern SDL_DECLSPEC SDL_SensorID SDLCALL SDL_GetSensorID(SDL_Sensor *sensor);
  fun get_sensor_id = SDL_GetSensorID(sensor : Sensor*) : SensorID
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetSensorData(SDL_Sensor *sensor, float *data, int num_values);
  fun get_sensor_data = SDL_GetSensorData(sensor : Sensor*, data : Float32*, num_values : Int) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_CloseSensor(SDL_Sensor *sensor);
  fun close_sensor = SDL_CloseSensor(sensor : Sensor*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_UpdateSensors(void);
  fun update_sensors = SDL_UpdateSensors : Void
end
