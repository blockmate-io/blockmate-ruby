=begin
#Blockmate

#Blockmate API OpenAPI documentation

The version of the OpenAPI document: 0.0.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Blockmate
  class ExchangeRateInfoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get current exchange rate
    # @param pairs [String] Currency pairs for which exchange rate should be returned (max 20 per request)
    # @param [Hash] opts the optional parameters
    # @return [Array<ExchangeRate>]
    def get_current_exchange_rate(pairs, opts = {})
      data, _status_code, _headers = get_current_exchange_rate_with_http_info(pairs, opts)
      data
    end

    # Get current exchange rate
    # @param pairs [String] Currency pairs for which exchange rate should be returned (max 20 per request)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ExchangeRate>, Integer, Hash)>] Array<ExchangeRate> data, response status code and response headers
    def get_current_exchange_rate_with_http_info(pairs, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExchangeRateInfoApi.get_current_exchange_rate ...'
      end
      # verify the required parameter 'pairs' is set
      if @api_client.config.client_side_validation && pairs.nil?
        fail ArgumentError, "Missing the required parameter 'pairs' when calling ExchangeRateInfoApi.get_current_exchange_rate"
      end
      # resource path
      local_var_path = '/v1/exchangerate/current'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pairs'] = pairs

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ExchangeRate>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectJWT', 'UserJWT']

      new_options = opts.merge(
        :operation => :"ExchangeRateInfoApi.get_current_exchange_rate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeRateInfoApi#get_current_exchange_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get historical exchange rate
    # @param pair [String] Currency pair for which exchange rates should be returned
    # @param days [String] Historical dates for which exchange rates should be returned (max 40 per request)
    # @param [Hash] opts the optional parameters
    # @return [Array<ExchangeRate>]
    def get_historical_exchange_rate(pair, days, opts = {})
      data, _status_code, _headers = get_historical_exchange_rate_with_http_info(pair, days, opts)
      data
    end

    # Get historical exchange rate
    # @param pair [String] Currency pair for which exchange rates should be returned
    # @param days [String] Historical dates for which exchange rates should be returned (max 40 per request)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ExchangeRate>, Integer, Hash)>] Array<ExchangeRate> data, response status code and response headers
    def get_historical_exchange_rate_with_http_info(pair, days, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExchangeRateInfoApi.get_historical_exchange_rate ...'
      end
      # verify the required parameter 'pair' is set
      if @api_client.config.client_side_validation && pair.nil?
        fail ArgumentError, "Missing the required parameter 'pair' when calling ExchangeRateInfoApi.get_historical_exchange_rate"
      end
      # verify the required parameter 'days' is set
      if @api_client.config.client_side_validation && days.nil?
        fail ArgumentError, "Missing the required parameter 'days' when calling ExchangeRateInfoApi.get_historical_exchange_rate"
      end
      # resource path
      local_var_path = '/v1/exchangerate/history'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pair'] = pair
      query_params[:'days'] = days

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ExchangeRate>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectJWT', 'UserJWT']

      new_options = opts.merge(
        :operation => :"ExchangeRateInfoApi.get_historical_exchange_rate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExchangeRateInfoApi#get_historical_exchange_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
