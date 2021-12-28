# OpenWeather API Tests
<br />

- Docs from the API used -> [OpenWeather Current Weather Data API](https://openweathermap.org/current)

<br />

### What this project uses:
- `Ruby` as the programming language
- `RSpec` for assertions and validations
- `HTTParty` to make requests
- `Cucumber` for BDD style
- `Json_Schema` to validate response schemas
- `Dotenv` to facilitate usage of environment variables

<br />

---
## Project Structure
---
<br />

```
.root
|   .env.example
|   .gitignore
|   Gemfile
|   README.md
|
|---features
|   |---api
|   |   |   OpenWeather.rb
|   |
|   |---schemas
|   |   |   get_200_response.json
|   |   |   get_400_response.json
|   |   |   get_404_response.json
|   |
|   |---specifications
|   |   |   get_weather.feature
|   |
|   |---step_definitions
|   |   |   get_weather.rb
|   |
|   |---support
|   |   |   env.rb
```

<br />

### Folders:
- `api` -> Classes and helpers
- `schemas` -> Json Schemas to validate responses
- `specifications` -> All `*.feature` files with Gherkin syntax
- `step_definitions` -> All `*.rb` files with steps to execute `*.feature` files
- `support` -> With `env.rb` that describes project "needs"

<br />

---
## Guide before run
---
<br />

1. First of all go to [OpenWeather site](https://openweathermap.org) and create an account to get an API_KEY;
   
2. Create an `.env` file based on `.env.example` and replace `<YOUR API KEY>` by your OpenWeather Account API Key
   
3. In order to run this project you need Ruby and RubyGems installed. If you don't have it, go to [Ruby download page](https://www.ruby-lang.org/en/downloads/) and to [RubyGems download page](https://rubygems.org/pages/download) and follow the steps.
   
4. With those installed run: 
    ```
    $ gem install bundler
    ```
    In order to install [Bundler](https://bundler.io), which is a manager for Ruby application's gems
   
5. With Bundler installed go to the terminal in your root folder and run: 
   ```
   $ bundle install
   ```
   It will install dependencies described in your `Gemfile` and create `Gemfile.lock`

<br />

---
## How to run
---
<br />

- ### If you followed all the steps above, go to the terminal in your root folder and:
  
- To run all tests:
   ```
   $ cucumber
   ```
  
- To run specific test with tag:
   ```
   $ cucumber -t @<your_tag>
   ```

<br />

---
## Contact
---
<br />

- Author -> Rafael Muniz

- Nickname -> rafamuvi
  
- Any questions or suggestions please contact me on my [LinkedIn profile](https://www.linkedin.com/in/rafael-muniz-vieira-b4239751/)

