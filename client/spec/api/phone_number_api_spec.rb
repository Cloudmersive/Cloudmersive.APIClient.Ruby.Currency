=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveValidateApiClient::PhoneNumberApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PhoneNumberApi' do
  before do
    # run before each test
    @instance = CloudmersiveValidateApiClient::PhoneNumberApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PhoneNumberApi' do
    it 'should create an instance of PhoneNumberApi' do
      expect(@instance).to be_instance_of(CloudmersiveValidateApiClient::PhoneNumberApi)
    end
  end

  # unit tests for phone_number_syntax_only
  # Validate phone number (basic)
  # Validate a phone number by analyzing the syntax
  # @param value Phone number to validate in a PhoneNumberValidateRequest object.  Try a phone number such as \&quot;1.800.463.3339\&quot;, and either leave DefaultCountryCode blank or use \&quot;US\&quot;.
  # @param [Hash] opts the optional parameters
  # @return [PhoneNumberValidationResponse]
  describe 'phone_number_syntax_only test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
