require 'httparty'
require 'rspec'
require 'json_matchers/rspec'
require 'dotenv'

JsonMatchers.schema_root = "features/schemas/"
Dotenv.load