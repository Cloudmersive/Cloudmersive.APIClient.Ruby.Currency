=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

# Common files
require 'cloudmersive-validate-api-client/api_client'
require 'cloudmersive-validate-api-client/api_error'
require 'cloudmersive-validate-api-client/version'
require 'cloudmersive-validate-api-client/configuration'

# Models
require 'cloudmersive-validate-api-client/models/address_get_servers_response'
require 'cloudmersive-validate-api-client/models/address_verify_syntax_only_response'
require 'cloudmersive-validate-api-client/models/check_response'
require 'cloudmersive-validate-api-client/models/country_details'
require 'cloudmersive-validate-api-client/models/country_list_result'
require 'cloudmersive-validate-api-client/models/first_name_validation_request'
require 'cloudmersive-validate-api-client/models/first_name_validation_response'
require 'cloudmersive-validate-api-client/models/full_email_validation_response'
require 'cloudmersive-validate-api-client/models/full_name_validation_request'
require 'cloudmersive-validate-api-client/models/full_name_validation_response'
require 'cloudmersive-validate-api-client/models/geolocate_response'
require 'cloudmersive-validate-api-client/models/get_gender_request'
require 'cloudmersive-validate-api-client/models/get_gender_response'
require 'cloudmersive-validate-api-client/models/get_timezones_request'
require 'cloudmersive-validate-api-client/models/get_timezones_response'
require 'cloudmersive-validate-api-client/models/ip_threat_response'
require 'cloudmersive-validate-api-client/models/last_name_validation_request'
require 'cloudmersive-validate-api-client/models/last_name_validation_response'
require 'cloudmersive-validate-api-client/models/lead_enrichment_request'
require 'cloudmersive-validate-api-client/models/lead_enrichment_response'
require 'cloudmersive-validate-api-client/models/parse_address_request'
require 'cloudmersive-validate-api-client/models/parse_address_response'
require 'cloudmersive-validate-api-client/models/phone_number_validate_request'
require 'cloudmersive-validate-api-client/models/phone_number_validation_response'
require 'cloudmersive-validate-api-client/models/timezone'
require 'cloudmersive-validate-api-client/models/tor_node_response'
require 'cloudmersive-validate-api-client/models/user_agent_validate_request'
require 'cloudmersive-validate-api-client/models/user_agent_validate_response'
require 'cloudmersive-validate-api-client/models/validate_address_request'
require 'cloudmersive-validate-api-client/models/validate_address_response'
require 'cloudmersive-validate-api-client/models/validate_city_request'
require 'cloudmersive-validate-api-client/models/validate_city_response'
require 'cloudmersive-validate-api-client/models/validate_country_request'
require 'cloudmersive-validate-api-client/models/validate_country_response'
require 'cloudmersive-validate-api-client/models/validate_identifier_request'
require 'cloudmersive-validate-api-client/models/validate_identifier_response'
require 'cloudmersive-validate-api-client/models/validate_postal_code_request'
require 'cloudmersive-validate-api-client/models/validate_postal_code_response'
require 'cloudmersive-validate-api-client/models/validate_state_request'
require 'cloudmersive-validate-api-client/models/validate_state_response'
require 'cloudmersive-validate-api-client/models/validate_url_request_full'
require 'cloudmersive-validate-api-client/models/validate_url_request_syntax_only'
require 'cloudmersive-validate-api-client/models/validate_url_response_full'
require 'cloudmersive-validate-api-client/models/validate_url_response_syntax_only'
require 'cloudmersive-validate-api-client/models/vat_lookup_request'
require 'cloudmersive-validate-api-client/models/vat_lookup_response'
require 'cloudmersive-validate-api-client/models/whois_response'

# APIs
require 'cloudmersive-validate-api-client/api/address_api'
require 'cloudmersive-validate-api-client/api/domain_api'
require 'cloudmersive-validate-api-client/api/email_api'
require 'cloudmersive-validate-api-client/api/ip_address_api'
require 'cloudmersive-validate-api-client/api/lead_enrichment_api'
require 'cloudmersive-validate-api-client/api/name_api'
require 'cloudmersive-validate-api-client/api/phone_number_api'
require 'cloudmersive-validate-api-client/api/user_agent_api'
require 'cloudmersive-validate-api-client/api/vat_api'

module CloudmersiveValidateApiClient
  class << self
    # Customize default settings for the SDK using block.
    #   CloudmersiveValidateApiClient.configure do |config|
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