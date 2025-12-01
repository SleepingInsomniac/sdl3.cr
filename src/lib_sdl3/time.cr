lib LibSdl3
  struct DateTime
    year : Int
    month : Int
    day : Int
    hour : Int
    minute : Int
    second : Int
    nanosecond : Int
    day_of_week : Int
    utc_offset : Int
  end

  enum DateFormat
    YYYYMMDD = 0 # SDL_DATE_FORMAT_YYYYMMDD
    DDMMYYYY = 1 # SDL_DATE_FORMAT_DDMMYYYY
    MMDDYYYY = 2 # SDL_DATE_FORMAT_MMDDYYYY
  end

  enum TimeFormat
    Format24 = 0 # SDL_TIME_FORMAT_24HR
    Format12 = 1 # SDL_TIME_FORMAT_12HR
  end

  alias Time = Int64

  # extern SDL_DECLSPEC bool SDLCALL SDL_GetDateTimeLocalePreferences(SDL_DateFormat *dateFormat, SDL_TimeFormat *timeFormat);
  fun get_date_time_locale_preferences = SDL_GetDateTimeLocalePreferences(date_format : DateFormat*, time_format : TimeFormat*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_GetCurrentTime(SDL_Time *ticks);
  fun get_current_time = SDL_GetCurrentTime(ticks : Time*) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_TimeToDateTime(SDL_Time ticks, SDL_DateTime *dt, bool localTime);
  fun time_to_date_time = SDL_TimeToDateTime(ticks : Time, dt : DateTime*, local_time : Bool) : Bool
  # extern SDL_DECLSPEC bool SDLCALL SDL_DateTimeToTime(const SDL_DateTime *dt, SDL_Time *ticks);
  fun date_time_to_time = SDL_DateTimeToTime(dt : DateTime*, ticks : Time*) : Bool
  # extern SDL_DECLSPEC void SDLCALL SDL_TimeToWindows(SDL_Time ticks, Uint32 *dwLowDateTime, Uint32 *dwHighDateTime);
  fun time_to_windows = SDL_TimeToWindows(ticks : Time, dw_low_date_time : UInt32*, dw_high_date_time : UInt32*) : Void
  # extern SDL_DECLSPEC SDL_Time SDLCALL SDL_TimeFromWindows(Uint32 dwLowDateTime, Uint32 dwHighDateTime);
  fun time_from_windows = SDL_TimeFromWindows(dw_low_date_time : UInt32, dw_high_date_time : UInt32) : Time
  # extern SDL_DECLSPEC int SDLCALL SDL_GetDaysInMonth(int year, int month);
  fun get_days_in_month = SDL_GetDaysInMonth(year : Int, month : Int) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_GetDayOfYear(int year, int month, int day);
  fun get_day_of_year = SDL_GetDayOfYear(year : Int, month : Int, day : Int) : Int
  # extern SDL_DECLSPEC int SDLCALL SDL_GetDayOfWeek(int year, int month, int day);
  fun get_day_of_week = SDL_GetDayOfWeek(year : Int, month : Int, day : Int) : Int
end
