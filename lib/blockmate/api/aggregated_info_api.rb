=begin
#Blockmate

#Blockmate API OpenAPI documentation

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Blockmate
  class AggregatedInfoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get list of account providers hints
    # @param [Hash] opts the optional parameters
    # @return [AccountProviderHint]
    def account_provider_hints_list(opts = {})
      data, _status_code, _headers = account_provider_hints_list_with_http_info(opts)
      data
    end

    # Get list of account providers hints
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountProviderHint, Integer, Hash)>] AccountProviderHint data, response status code and response headers
    def account_provider_hints_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AggregatedInfoApi.account_provider_hints_list ...'
      end
      # resource path
      local_var_path = '/v1/aggregate/account_provider_hints'

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
      return_type = opts[:debug_return_type] || 'AccountProviderHint'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['UserJWT']

      new_options = opts.merge(
        :operation => :"AggregatedInfoApi.account_provider_hints_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AggregatedInfoApi#account_provider_hints_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of account providers
    # @param [Hash] opts the optional parameters
    # @return [AccountProvider]
    def account_providers_list(opts = {})
      data, _status_code, _headers = account_providers_list_with_http_info(opts)
      data
    end

    # Get list of account providers
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountProvider, Integer, Hash)>] AccountProvider data, response status code and response headers
    def account_providers_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AggregatedInfoApi.account_providers_list ...'
      end
      # resource path
      local_var_path = '/v1/aggregate/account_providers'

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
      return_type = opts[:debug_return_type] || 'AccountProvider'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['UserJWT']

      new_options = opts.merge(
        :operation => :"AggregatedInfoApi.account_providers_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AggregatedInfoApi#account_providers_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List accounts
    # @param [Hash] opts the optional parameters
    # @return [Array<Account>]
    def accounts(opts = {})
      data, _status_code, _headers = accounts_with_http_info(opts)
      data
    end

    # List accounts
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Account>, Integer, Hash)>] Array<Account> data, response status code and response headers
    def accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AggregatedInfoApi.accounts ...'
      end
      # resource path
      local_var_path = '/v1/aggregate/accounts'

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
      return_type = opts[:debug_return_type] || 'Array<Account>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['UserJWT']

      new_options = opts.merge(
        :operation => :"AggregatedInfoApi.accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AggregatedInfoApi#accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get balance
    # @param [Hash] opts the optional parameters
    # @option opts [String] :currency Currency to convert to. 
    # @return [Balance200Response]
    def balance(opts = {})
      data, _status_code, _headers = balance_with_http_info(opts)
      data
    end

    # Get balance
    # @param [Hash] opts the optional parameters
    # @option opts [String] :currency Currency to convert to. 
    # @return [Array<(Balance200Response, Integer, Hash)>] Balance200Response data, response status code and response headers
    def balance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AggregatedInfoApi.balance ...'
      end
      # resource path
      local_var_path = '/v1/aggregate/balance'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'currency'] = opts[:'currency'] if !opts[:'currency'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Balance200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['UserJWT']

      new_options = opts.merge(
        :operation => :"AggregatedInfoApi.balance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AggregatedInfoApi#balance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transactions
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :since Set time from which the transactions will be get. 
    # @option opts [Date] :_until Set time to which the transactions will be get. The default value is the actual date. 
    # @option opts [Float] :limit Limit the number of the transactions in the response. Default page size is 50. 
    # @option opts [String] :cursor Specify on requesting the next page. Use the &#x60;page_cursor&#x60; from the previous response. 
    # @option opts [String] :currency Currency to convert to. 
    # @option opts [String] :account_filter Filter results to only provided account. When omitted, it returns all transactions from all accounts. 
    # @return [Transactions200Response]
    def transactions(opts = {})
      data, _status_code, _headers = transactions_with_http_info(opts)
      data
    end

    # Get transactions
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :since Set time from which the transactions will be get. 
    # @option opts [Date] :_until Set time to which the transactions will be get. The default value is the actual date. 
    # @option opts [Float] :limit Limit the number of the transactions in the response. Default page size is 50. 
    # @option opts [String] :cursor Specify on requesting the next page. Use the &#x60;page_cursor&#x60; from the previous response. 
    # @option opts [String] :currency Currency to convert to. 
    # @option opts [String] :account_filter Filter results to only provided account. When omitted, it returns all transactions from all accounts. 
    # @return [Array<(Transactions200Response, Integer, Hash)>] Transactions200Response data, response status code and response headers
    def transactions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AggregatedInfoApi.transactions ...'
      end
      pattern = Regexp.new(/^[0-9]{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])$/)
      if @api_client.config.client_side_validation && !opts[:'since'].nil? && opts[:'since'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"since\"]' when calling AggregatedInfoApi.transactions, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[0-9]{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])$/)
      if @api_client.config.client_side_validation && !opts[:'_until'].nil? && opts[:'_until'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"_until\"]' when calling AggregatedInfoApi.transactions, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v1/aggregate/transactions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'until'] = opts[:'_until'] if !opts[:'_until'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'currency'] = opts[:'currency'] if !opts[:'currency'].nil?
      query_params[:'account-filter'] = opts[:'account_filter'] if !opts[:'account_filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Transactions200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['UserJWT']

      new_options = opts.merge(
        :operation => :"AggregatedInfoApi.transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AggregatedInfoApi#transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
