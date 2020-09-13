=begin
#currencyapi

#The currency APIs help you retrieve exchange rates and convert prices between currencies easily.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

# Common files
require 'cloudmersive-currency-api-client/api_client'
require 'cloudmersive-currency-api-client/api_error'
require 'cloudmersive-currency-api-client/version'
require 'cloudmersive-currency-api-client/configuration'

# Models
require 'cloudmersive-currency-api-client/models/available_currency'
require 'cloudmersive-currency-api-client/models/available_currency_response'
require 'cloudmersive-currency-api-client/models/converted_currency_result'
require 'cloudmersive-currency-api-client/models/exchange_rate_result'

# APIs
require 'cloudmersive-currency-api-client/api/currency_exchange_api'

module CloudmersiveCurrencyApiClient
  class << self
    # Customize default settings for the SDK using block.
    #   CloudmersiveCurrencyApiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
