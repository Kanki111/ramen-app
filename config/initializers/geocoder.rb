Geocoder.configure(
  # Geocoding options
  timeout: 5,                 # geocoding service timeout (secs)
  lookup: :google,         # name of geocoding service (symbol)
  api_key: 'YOUR_API_KEY',               # API key for geocoding service
  units: :km,                 # :km for kilometers or :mi for miles
)