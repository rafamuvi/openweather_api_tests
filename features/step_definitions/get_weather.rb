# Step with no actions or instantiation since it's an simple API
Given('I am at the OpenWeather API') do
  #$base_uri = "https://api.openweathermap.org/data/2.5/weather"
end

# Search by city name
When('I search {string}') do |city|
  # Instantiate Class
  @weather = OpenWeather.new(city, nil, nil)
  # Make request
  @response = @weather.get_weather_by_city
end

# Search by city id
When('I search {int}') do |city_id|
  @weather = OpenWeather.new(city_id, "standard", "en")
  @response = @weather.get_weather_by_id
end

# Search nil
When('I search ') do
  @weather = OpenWeather.new(nil, "standard", "en")
  @response = @weather.get_weather_by_city
end

# weather_units.feature different step
When('I search in {string} with {string}') do |measure, units|
  puts "Testing with #{measure} measure"
  @weather = OpenWeather.new("Florianópolis", units, "en")
  @response = @weather.get_weather_by_city
end

Then('the response should match {string}') do |schema|
  # Compare response with jason schema in `./features/schemas/<schema>.json`
  expect(@response).to match_json_schema(schema)
end

Then('status code {string}') do |status_code|
  # Convert status_code from `get_weather.feature` example to integer
  @status_code = status_code.to_i
  # Compare expected status_code with actual
  expect(@response.code).to eq(@status_code)
end