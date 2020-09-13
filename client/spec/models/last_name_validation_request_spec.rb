=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CloudmersiveValidateApiClient::LastNameValidationRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LastNameValidationRequest' do
  before do
    # run before each test
    @instance = CloudmersiveValidateApiClient::LastNameValidationRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LastNameValidationRequest' do
    it 'should create an instance of LastNameValidationRequest' do
      expect(@instance).to be_instance_of(CloudmersiveValidateApiClient::LastNameValidationRequest)
    end
  end
  describe 'test attribute "last_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
