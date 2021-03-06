=begin
#currencyapi

#The currency APIs help you retrieve exchange rates and convert prices between currencies easily.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CloudmersiveCurrencyApiClient::ConvertedCurrencyResult
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ConvertedCurrencyResult' do
  before do
    # run before each test
    @instance = CloudmersiveCurrencyApiClient::ConvertedCurrencyResult.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConvertedCurrencyResult' do
    it 'should create an instance of ConvertedCurrencyResult' do
      expect(@instance).to be_instance_of(CloudmersiveCurrencyApiClient::ConvertedCurrencyResult)
    end
  end
  describe 'test attribute "converted_price"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "iso_currency_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "currency_symbol"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "formatted_price_as_string"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
