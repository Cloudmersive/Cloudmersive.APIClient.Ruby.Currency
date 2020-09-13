# CloudmersiveCurrencyApiClient::CurrencyExchangeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**currency_exchange_convert_currency**](CurrencyExchangeApi.md#currency_exchange_convert_currency) | **POST** /currency/exchange-rates/convert/{source}/to/{destination} | Converts a price from the source currency into the destination currency
[**currency_exchange_get_available_currencies**](CurrencyExchangeApi.md#currency_exchange_get_available_currencies) | **POST** /currency/exchange-rates/list-available | Get a list of available currencies and corresponding countries
[**currency_exchange_get_exchange_rate**](CurrencyExchangeApi.md#currency_exchange_get_exchange_rate) | **POST** /currency/exchange-rates/get/{source}/to/{destination} | Gets the exchange rate from the source currency into the destination currency


# **currency_exchange_convert_currency**
> ConvertedCurrencyResult currency_exchange_convert_currency(source, destination, source_price)

Converts a price from the source currency into the destination currency

Automatically converts the price in the source currency into the destination currency using the latest available currency exchange rate data.

### Example
```ruby
# load the gem
require 'cloudmersive-currency-api-client'
# setup authorization
CloudmersiveCurrencyApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveCurrencyApiClient::CurrencyExchangeApi.new

source = 'source_example' # String | Source currency three-digit code (ISO 4217), e.g. USD, EUR, etc.

destination = 'destination_example' # String | Destination currency three-digit code (ISO 4217), e.g. USD, EUR, etc.

source_price = 1.2 # Float | Input price, such as 19.99 in source currency


begin
  #Converts a price from the source currency into the destination currency
  result = api_instance.currency_exchange_convert_currency(source, destination, source_price)
  p result
rescue CloudmersiveCurrencyApiClient::ApiError => e
  puts "Exception when calling CurrencyExchangeApi->currency_exchange_convert_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **String**| Source currency three-digit code (ISO 4217), e.g. USD, EUR, etc. | 
 **destination** | **String**| Destination currency three-digit code (ISO 4217), e.g. USD, EUR, etc. | 
 **source_price** | **Float**| Input price, such as 19.99 in source currency | 

### Return type

[**ConvertedCurrencyResult**](ConvertedCurrencyResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **currency_exchange_get_available_currencies**
> AvailableCurrencyResponse currency_exchange_get_available_currencies

Get a list of available currencies and corresponding countries

Enumerates available currencies and the countries that correspond to these currencies.

### Example
```ruby
# load the gem
require 'cloudmersive-currency-api-client'
# setup authorization
CloudmersiveCurrencyApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveCurrencyApiClient::CurrencyExchangeApi.new

begin
  #Get a list of available currencies and corresponding countries
  result = api_instance.currency_exchange_get_available_currencies
  p result
rescue CloudmersiveCurrencyApiClient::ApiError => e
  puts "Exception when calling CurrencyExchangeApi->currency_exchange_get_available_currencies: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AvailableCurrencyResponse**](AvailableCurrencyResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **currency_exchange_get_exchange_rate**
> ExchangeRateResult currency_exchange_get_exchange_rate(source, destination)

Gets the exchange rate from the source currency into the destination currency

Automatically gets the exchange rate from the source currency into the destination currency using the latest available currency exchange rate data.

### Example
```ruby
# load the gem
require 'cloudmersive-currency-api-client'
# setup authorization
CloudmersiveCurrencyApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveCurrencyApiClient::CurrencyExchangeApi.new

source = 'source_example' # String | Source currency three-digit code (ISO 4217), e.g. USD, EUR, etc.

destination = 'destination_example' # String | Destination currency three-digit code (ISO 4217), e.g. USD, EUR, etc.


begin
  #Gets the exchange rate from the source currency into the destination currency
  result = api_instance.currency_exchange_get_exchange_rate(source, destination)
  p result
rescue CloudmersiveCurrencyApiClient::ApiError => e
  puts "Exception when calling CurrencyExchangeApi->currency_exchange_get_exchange_rate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **String**| Source currency three-digit code (ISO 4217), e.g. USD, EUR, etc. | 
 **destination** | **String**| Destination currency three-digit code (ISO 4217), e.g. USD, EUR, etc. | 

### Return type

[**ExchangeRateResult**](ExchangeRateResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



