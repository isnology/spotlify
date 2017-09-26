module SongsHelper
  
  # Format seconds as mins:seconds
  def format_duration(seconds)
    mm = seconds / 60
    ss = '%02d' % (seconds % 60)
    "#{mm}:#{ss}"
  end
  
  # construct a decade class name
  def decade(date)
    "decade-#{(date.year / 10) % 10}"
  end
end
