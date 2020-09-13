=begin
#currencyapi

#The currency APIs help you retrieve exchange rates and convert prices between currencies easily.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'uri'

module CloudmersiveCurrencyApiClient
  class CurrencyExchangeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Converts a price from the source currency into the destination currency
    # Automatically converts the price in the source currency into the destination currency using the latest available currency exchange rate data.
    # @param source Source currency three-digit code (ISO 4217), e.g. USD, EUR, etc.
    # @param destination Destination currency three-digit code (ISO 4217), e.g. USD, EUR, etc.
    # @param source_price Input price, such as 19.99 in source currency
    # @param [Hash] opts the optional parameters
    # @return [ConvertedCurrencyResult]
    def currency_exchange_convert_currency(source, destination, source_price, opts = {})
      data, _status_code, _headers = currency_exchange_convert_currency_with_http_info(source, destination, source_price, opts)
      data
    end

    # Converts a price from the source currency into the destination currency
    # Automatically converts the price in the source currency into the destination currency using the latest available currency exchange rate data.
    # @param source Source currency three-digit code (ISO 4217), e.g. USD, EUR, etc.
    # @param destination Destination currency three-digit code (ISO 4217), e.g. USD, EUR, etc.
    # @param source_price Input price, such as 19.99 in source currency
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConvertedCurrencyResult, Fixnum, Hash)>] ConvertedCurrencyResult data, response status code and response headers
    def currency_exchange_convert_currency_with_http_info(source, destination, source_price, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrencyExchangeApi.currency_exchange_convert_currency ...'
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling CurrencyExchangeApi.currency_exchange_convert_currency"
      end
      # verify the required parameter 'destination' is set
      if @api_client.config.client_side_validation && destination.nil?
        fail ArgumentError, "Missing the required parameter 'destination' when calling CurrencyExchangeApi.currency_exchange_convert_currency"
      end
      # verify the required parameter 'source_price' is set
      if @api_client.config.client_side_validation && source_price.nil?
        fail ArgumentError, "Missing the required parameter 'source_price' when calling CurrencyExchangeApi.currency_exchange_convert_currency"
      end
      # resource path
      local_var_path = '/currency/exchange-rates/convert/{source}/to/{destination}'.sub('{' + 'source' + '}', source.to_s).sub('{' + 'destination' + '}', destination.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(source_price)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConvertedCurrencyResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrencyExchangeApi#currency_exchange_convert_currency\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a list of available currencies and corresponding countries
    # Enumerates available currencies and the countries that correspond to these currencies.
    # @param [Hash] opts the optional parameters
    # @return [AvailableCurrencyResponse]
    def currency_exchange_get_available_currencies(opts = {})
      data, _status_code, _headers = currency_exchange_get_available_currencies_with_http_info(opts)
      data
    end

    # Get a list of available currencies and corresponding countries
    # Enumerates available currencies and the countries that correspond to these currencies.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AvailableCurrencyResponse, Fixnum, Hash)>] AvailableCurrencyResponse data, response status code and response headers
    def currency_exchange_get_available_currencies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrencyExchangeApi.currency_exchange_get_available_currencies ...'
      end
      # resource path
      local_var_path = '/currency/exchange-rates/list-available'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AvailableCurrencyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrencyExchangeApi#currency_exchange_get_available_currencies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the exchange rate from the source currency into the destination currency
    # Automatically gets the exchange rate from the source currency into the destination currency using the latest available currency exchange rate data.
    # @param source Source currency three-digit code (ISO 4217), e.g. USD, EUR, etc.
    # @param destination Destination currency three-digit code (ISO 4217), e.g. USD, EUR, etc.
    # @param [Hash] opts the optional parameters
    # @return [ExchangeRateResult]
    def currency_exchange_get_exchange_rate(source, destination, opts = {})
      data, _status_code, _headers = currency_exchange_get_exchange_rate_with_http_info(source, destination, opts)
      data
    end

    # Gets the exchange rate from the source currency into the destination currency
    # Automatically gets the exchange rate from the source currency into the destination currency using the latest available currency exchange rate data.
    # @param source Source currency three-digit code (ISO 4217), e.g. USD, EUR, etc.
    # @param destination Destination currency three-digit code (ISO 4217), e.g. USD, EUR, etc.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExchangeRateResult, Fixnum, Hash)>] ExchangeRateResult data, response status code and response headers
    def currency_exchange_get_exchange_rate_with_http_info(source, destination, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrencyExchangeApi.currency_exchange_get_exchange_rate ...'
      end
      # verify the required parameter 'source' is set
      if @api_client.config.client_side_validation && source.nil?
        fail ArgumentError, "Missing the required parameter 'source' when calling CurrencyExchangeApi.currency_exchange_get_exchange_rate"
      end
      # verify the required parameter 'destination' is set
      if @api_client.config.client_side_validation && destination.nil?
        fail ArgumentError, "Missing the required parameter 'destination' when calling CurrencyExchangeApi.currency_exchange_get_exchange_rate"
      end
      # resource path
      local_var_path = '/currency/exchange-rates/get/{source}/to/{destination}'.sub('{' + 'source' + '}', source.to_s).sub('{' + 'destination' + '}', destination.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExchangeRateResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrencyExchangeApi#currency_exchange_get_exchange_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
