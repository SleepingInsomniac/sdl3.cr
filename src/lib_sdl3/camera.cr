lib LibSdl3
  alias CameraID = UInt32 # typedef Uint32 SDL_CameraID;
  type Camera = Void # typedef struct SDL_Camera SDL_Camera;

  struct CameraSpec
    format : PixelFormat
    colorspace : Colorspace
    width : Int
    height : Int
    framerate_numerator : Int
    framerate_denominator : Int
  end

  enum CameraPosition
    Unknown # SDL_CAMERA_POSITION_UNKNOWN
    FrontFacing # SDL_CAMERA_POSITION_FRONT_FACING
    BackFacing # SDL_CAMERA_POSITION_BACK_FACING
  end

  enum CameraPermissionState
    Denied = -1 # SDL_CAMERA_PERMISSION_STATE_DENIED
    Pending # SDL_CAMERA_PERMISSION_STATE_PENDING
    Approved # SDL_CAMERA_PERMISSION_STATE_APPROVED
  end

  # end extern SDL_DECLSPEC int SDLCALL SDL_GetNumCameraDrivers(void);
  fun get_num_camera_drivers = SDL_GetNumCameraDrivers : Int
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetCameraDriver(int index);
  fun get_camera_driver = SDL_GetCameraDriver(index : Int) : Char*
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetCurrentCameraDriver(void);
  fun get_current_camera_driver = SDL_GetCurrentCameraDriver : Char*
  # extern SDL_DECLSPEC SDL_CameraID * SDLCALL SDL_GetCameras(int *count);
  fun get_cameras = SDL_GetCameras(count : Int*) : CameraID*
  # extern SDL_DECLSPEC SDL_CameraSpec ** SDLCALL SDL_GetCameraSupportedFormats(SDL_CameraID instance_id, int *count);
  fun get_camera_supported_formats = SDL_GetCameraSupportedFormats(instance_id : CameraID, count : Int*) : CameraSpec**
  # extern SDL_DECLSPEC const char * SDLCALL SDL_GetCameraName(SDL_CameraID instance_id);
  fun get_camera_name = SDL_GetCameraName(instance_id : CameraID) : Char*
  # extern SDL_DECLSPEC SDL_CameraPosition SDLCALL SDL_GetCameraPosition(SDL_CameraID instance_id);
  fun get_camera_position = SDL_GetCameraPosition(instance_id : CameraID) : CameraPosition
  # extern SDL_DECLSPEC SDL_Camera * SDLCALL SDL_OpenCamera(SDL_CameraID instance_id, const SDL_CameraSpec *spec);
  fun open_camera = SDL_OpenCamera(instance_id : CameraID, spec : CameraSpec*) : Camera*
  # extern SDL_DECLSPEC SDL_CameraPermissionState SDLCALL SDL_GetCameraPermissionState(SDL_Camera *camera);
  fun get_camera_permission_state = SDL_GetCameraPermissionState(camera : Camera*) : CameraPermissionState
  # extern SDL_DECLSPEC SDL_CameraID SDLCALL SDL_GetCameraID(SDL_Camera *camera);
  fun get_camera_id = SDL_GetCameraID(camera : Camera*) : CameraID
  # extern SDL_DECLSPEC SDL_PropertiesID SDLCALL SDL_GetCameraProperties(SDL_Camera *camera);
  fun get_camera_properties = SDL_GetCameraProperties(camera : Camera*) : PropertiesID
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetCameraFormat(SDL_Camera *camera, SDL_CameraSpec *spec);
  fun get_camera_format = SDL_GetCameraFormat(camera : Camera*, spec : CameraSpec*) : Bool
  # extern SDL_DECLSPEC SDL_Surface * SDLCALL SDL_AcquireCameraFrame(SDL_Camera *camera, Uint64 *timestampNS);
  fun acquire_camera_frame = SDL_AcquireCameraFrame(camera : Camera*, timestampns : UInt64*) : Surface*
  # extern SDL_DECLSPEC void SDLCALL SDL_ReleaseCameraFrame(SDL_Camera *camera, SDL_Surface *frame);
  fun release_camera_frame = SDL_ReleaseCameraFrame(camera : Camera*, frame : Surface*) : Void
  # extern SDL_DECLSPEC void SDLCALL SDL_CloseCamera(SDL_Camera *camera);
  fun close_camera = SDL_CloseCamera(camera : Camera*) : Void
end
