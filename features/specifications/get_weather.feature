@get_weather # Tag to run specific Feature
Feature: Get Current City Weather

    Scenario Outline: Get city weather
        Given I am at the OpenWeather API
        When I search <city>
        Then the response should match <schema>
        And status code <status_code>

        ##
        # Examples:
        # 1 example searchs for a real city name with accent
        # 2 example searchs for a real city name without accent
        # 3 example searchs for a real city id
        # 4 example searchs for a fake city id
        # 5 example searchs for a fake city name
        # 6 example searchs for null/nil city name
        ##
        Examples:
            | city            | schema             | status_code |
            | "Florianópolis" | "get_200_response" | "200"       |
            | "London"        | "get_200_response" | "200"       |
            | 3463237         | "get_200_response" | "200"       |
            | 5656565         | "get_404_response" | "404"       |
            | "NaoExiste"     | "get_404_response" | "404"       |
            |                 | "get_400_response" | "400"       |