@weather_units # Tag to run specific Feature
Feature: Change weather units response

    Scenario Outline: Change weather units response
        Given I am at the OpenWeather API
        When I search in <measure> with <units>
        Then the response should match <schema>
        And status code <status_code>

        ##
        # If your search with null/nil or wrong units it returns default
        # which is "standard" or Kelvin
        ##
        Examples:
            | measure      | units      | schema             | status_code |
            | "Kelvin"     | "standard" | "get_200_response" | "200"       |
            | "Celsius"    | "metric"   | "get_200_response" | "200"       |
            | "Fahrenheit" | "imperial" | "get_200_response" | "200"       |
