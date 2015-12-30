Geocoder.configure(
  :lookup => :google,
  :use_https => true,
  :api_key => ENV['GEOCODER_API_KEY'],
)