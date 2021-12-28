class OpenWeather
    include HTTParty # Include HTTParty module into class
    #debug_output $stdout # Command to debug code

    ##
    # Class initializer:
    # @param [String] location
    # @param [String] location - By city name - Docs 'https://openweathermap.org/current#name' for more info
    # @param [String] location - By city id - Docs 'https://openweathermap.org/current#cityid' for more info
    # @param [String] units - Docs 'https://openweathermap.org/current#data' for more info
    # @param [String] lang - Docs 'https://openweathermap.org/current#multi' for more info
    def initialize(location, units, lang)
        @base_url = "https://api.openweathermap.org/data/2.5/weather"
        @api_key = ENV['KLEVER_API_KEY']
        @location = location
        @units = units
        @lang = lang
    end

    def get_weather_by_city
        _query = { 
            query: {
                q: @location,
                units: @units,
                lang: @lang,
                appid: @api_key
            }
        }
        self.class.get(
            @base_url, 
            _query
        )
    end

    def get_weather_by_id
        _query = { 
            query: {
                id: @location,
                units: @units,
                lang: @lang,
                appid: @api_key
            }
        }
        self.class.get(
            @base_url, 
            _query
        )
    end
    
end