=begin
#Blockmate

#Blockmate API OpenAPI documentation

The version of the OpenAPI document: 0.0.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Blockmate
  class RiskInfoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get address risk score
    # @param [Hash] opts the optional parameters
    # @option opts [String] :address Address for which risk should be returned
    # @option opts [String] :chain Blockchain identifier
    # @return [GetAddressRiskScore200Response]
    def get_address_risk_score(opts = {})
      data, _status_code, _headers = get_address_risk_score_with_http_info(opts)
      data
    end

    # Get address risk score
    # @param [Hash] opts the optional parameters
    # @option opts [String] :address Address for which risk should be returned
    # @option opts [String] :chain Blockchain identifier
    # @return [Array<(GetAddressRiskScore200Response, Integer, Hash)>] GetAddressRiskScore200Response data, response status code and response headers
    def get_address_risk_score_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RiskInfoApi.get_address_risk_score ...'
      end
      # resource path
      local_var_path = '/v1/risk/score'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'address'] = opts[:'address'] if !opts[:'address'].nil?
      query_params[:'chain'] = opts[:'chain'] if !opts[:'chain'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetAddressRiskScore200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectJWT', 'UserJWT']

      new_options = opts.merge(
        :operation => :"RiskInfoApi.get_address_risk_score",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RiskInfoApi#get_address_risk_score\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get address risk score case
    # @param case_id [String] Case identifier
    # @param [Hash] opts the optional parameters
    # @return [AddressRiskReport]
    def get_address_risk_score_case(case_id, opts = {})
      data, _status_code, _headers = get_address_risk_score_case_with_http_info(case_id, opts)
      data
    end

    # Get address risk score case
    # @param case_id [String] Case identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddressRiskReport, Integer, Hash)>] AddressRiskReport data, response status code and response headers
    def get_address_risk_score_case_with_http_info(case_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RiskInfoApi.get_address_risk_score_case ...'
      end
      # verify the required parameter 'case_id' is set
      if @api_client.config.client_side_validation && case_id.nil?
        fail ArgumentError, "Missing the required parameter 'case_id' when calling RiskInfoApi.get_address_risk_score_case"
      end
      # resource path
      local_var_path = '/v1/risk/score/details/{case_id}'.sub('{' + 'case_id' + '}', CGI.escape(case_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AddressRiskReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectJWT', 'UserJWT']

      new_options = opts.merge(
        :operation => :"RiskInfoApi.get_address_risk_score_case",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RiskInfoApi#get_address_risk_score_case\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get address risk score details
    # @param [Hash] opts the optional parameters
    # @option opts [String] :address Address for which risk should be returned
    # @option opts [String] :chain Blockchain identifier
    # @return [AddressRiskReport]
    def get_address_risk_score_details(opts = {})
      data, _status_code, _headers = get_address_risk_score_details_with_http_info(opts)
      data
    end

    # Get address risk score details
    # @param [Hash] opts the optional parameters
    # @option opts [String] :address Address for which risk should be returned
    # @option opts [String] :chain Blockchain identifier
    # @return [Array<(AddressRiskReport, Integer, Hash)>] AddressRiskReport data, response status code and response headers
    def get_address_risk_score_details_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RiskInfoApi.get_address_risk_score_details ...'
      end
      # resource path
      local_var_path = '/v1/risk/score/details'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'address'] = opts[:'address'] if !opts[:'address'].nil?
      query_params[:'chain'] = opts[:'chain'] if !opts[:'chain'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AddressRiskReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectJWT', 'UserJWT']

      new_options = opts.merge(
        :operation => :"RiskInfoApi.get_address_risk_score_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RiskInfoApi#get_address_risk_score_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get multiple risk scores for addresses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :chain Blockchain identifier
    # @option opts [Array<String>] :request_body Addresses for which risk should be returned (maximum of 5000 in one request)
    # @return [Hash<String, Integer>]
    def get_multiple_address_risk_score(opts = {})
      data, _status_code, _headers = get_multiple_address_risk_score_with_http_info(opts)
      data
    end

    # Get multiple risk scores for addresses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :chain Blockchain identifier
    # @option opts [Array<String>] :request_body Addresses for which risk should be returned (maximum of 5000 in one request)
    # @return [Array<(Hash<String, Integer>, Integer, Hash)>] Hash<String, Integer> data, response status code and response headers
    def get_multiple_address_risk_score_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RiskInfoApi.get_multiple_address_risk_score ...'
      end
      # resource path
      local_var_path = '/v1/risk/score'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'chain'] = opts[:'chain'] if !opts[:'chain'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, Integer>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectJWT', 'UserJWT']

      new_options = opts.merge(
        :operation => :"RiskInfoApi.get_multiple_address_risk_score",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RiskInfoApi#get_multiple_address_risk_score\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transaction risk score
    # @param [Hash] opts the optional parameters
    # @option opts [String] :transaction Transaction hash for which risk should be returned
    # @option opts [String] :chain Blockchain identifier
    # @return [GetTransactionRiskScore200Response]
    def get_transaction_risk_score(opts = {})
      data, _status_code, _headers = get_transaction_risk_score_with_http_info(opts)
      data
    end

    # Get transaction risk score
    # @param [Hash] opts the optional parameters
    # @option opts [String] :transaction Transaction hash for which risk should be returned
    # @option opts [String] :chain Blockchain identifier
    # @return [Array<(GetTransactionRiskScore200Response, Integer, Hash)>] GetTransactionRiskScore200Response data, response status code and response headers
    def get_transaction_risk_score_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RiskInfoApi.get_transaction_risk_score ...'
      end
      # resource path
      local_var_path = '/v1/risk/transaction/score'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'transaction'] = opts[:'transaction'] if !opts[:'transaction'].nil?
      query_params[:'chain'] = opts[:'chain'] if !opts[:'chain'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetTransactionRiskScore200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectJWT', 'UserJWT']

      new_options = opts.merge(
        :operation => :"RiskInfoApi.get_transaction_risk_score",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RiskInfoApi#get_transaction_risk_score\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transaction risk score case
    # @param case_id [String] Case identifier
    # @param [Hash] opts the optional parameters
    # @return [TransactionRiskReport]
    def get_transaction_risk_score_case(case_id, opts = {})
      data, _status_code, _headers = get_transaction_risk_score_case_with_http_info(case_id, opts)
      data
    end

    # Get transaction risk score case
    # @param case_id [String] Case identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionRiskReport, Integer, Hash)>] TransactionRiskReport data, response status code and response headers
    def get_transaction_risk_score_case_with_http_info(case_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RiskInfoApi.get_transaction_risk_score_case ...'
      end
      # verify the required parameter 'case_id' is set
      if @api_client.config.client_side_validation && case_id.nil?
        fail ArgumentError, "Missing the required parameter 'case_id' when calling RiskInfoApi.get_transaction_risk_score_case"
      end
      # resource path
      local_var_path = '/v1/risk/transaction/score/details/{case_id}'.sub('{' + 'case_id' + '}', CGI.escape(case_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TransactionRiskReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectJWT', 'UserJWT']

      new_options = opts.merge(
        :operation => :"RiskInfoApi.get_transaction_risk_score_case",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RiskInfoApi#get_transaction_risk_score_case\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transaction risk score details
    # @param [Hash] opts the optional parameters
    # @option opts [String] :transaction Transaction hash for which risk should be returned
    # @option opts [String] :chain Blockchain identifier
    # @return [TransactionRiskReport]
    def get_transaction_risk_score_details(opts = {})
      data, _status_code, _headers = get_transaction_risk_score_details_with_http_info(opts)
      data
    end

    # Get transaction risk score details
    # @param [Hash] opts the optional parameters
    # @option opts [String] :transaction Transaction hash for which risk should be returned
    # @option opts [String] :chain Blockchain identifier
    # @return [Array<(TransactionRiskReport, Integer, Hash)>] TransactionRiskReport data, response status code and response headers
    def get_transaction_risk_score_details_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RiskInfoApi.get_transaction_risk_score_details ...'
      end
      # resource path
      local_var_path = '/v1/risk/transaction/score/details'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'transaction'] = opts[:'transaction'] if !opts[:'transaction'].nil?
      query_params[:'chain'] = opts[:'chain'] if !opts[:'chain'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TransactionRiskReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectJWT', 'UserJWT']

      new_options = opts.merge(
        :operation => :"RiskInfoApi.get_transaction_risk_score_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RiskInfoApi#get_transaction_risk_score_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
