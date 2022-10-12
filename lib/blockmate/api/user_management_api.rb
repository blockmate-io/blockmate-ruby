=begin
#Blockmate

#Blockmate API OpenAPI documentation

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module Blockmate
  class UserManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Authenticate user
    # @param id [String] User id
    # @param [Hash] opts the optional parameters
    # @return [AuthUser200Response]
    def auth_user(id, opts = {})
      data, _status_code, _headers = auth_user_with_http_info(id, opts)
      data
    end

    # Authenticate user
    # @param id [String] User id
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthUser200Response, Integer, Hash)>] AuthUser200Response data, response status code and response headers
    def auth_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserManagementApi.auth_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserManagementApi.auth_user"
      end
      # resource path
      local_var_path = '/v1/users/{id}/auth'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'AuthUser200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectToken']

      new_options = opts.merge(
        :operation => :"UserManagementApi.auth_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserManagementApi#auth_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create user
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUserRequest] :create_user_request User
    # @return [User]
    def create_user(opts = {})
      data, _status_code, _headers = create_user_with_http_info(opts)
      data
    end

    # Create user
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUserRequest] :create_user_request User
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def create_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserManagementApi.create_user ...'
      end
      # resource path
      local_var_path = '/v1/users'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_user_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'User'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectToken']

      new_options = opts.merge(
        :operation => :"UserManagementApi.create_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserManagementApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete user
    # @param id [String] User id
    # @param [Hash] opts the optional parameters
    # @return [DeleteUser200Response]
    def delete_user(id, opts = {})
      data, _status_code, _headers = delete_user_with_http_info(id, opts)
      data
    end

    # Delete user
    # @param id [String] User id
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteUser200Response, Integer, Hash)>] DeleteUser200Response data, response status code and response headers
    def delete_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserManagementApi.delete_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserManagementApi.delete_user"
      end
      # resource path
      local_var_path = '/v1/users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeleteUser200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectToken']

      new_options = opts.merge(
        :operation => :"UserManagementApi.delete_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserManagementApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user
    # @param id [String] User id
    # @param [Hash] opts the optional parameters
    # @return [User]
    def get_user(id, opts = {})
      data, _status_code, _headers = get_user_with_http_info(id, opts)
      data
    end

    # Get user
    # @param id [String] User id
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def get_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserManagementApi.get_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserManagementApi.get_user"
      end
      # resource path
      local_var_path = '/v1/users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'User'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectToken']

      new_options = opts.merge(
        :operation => :"UserManagementApi.get_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserManagementApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List users
    # @param [Hash] opts the optional parameters
    # @return [Array<User>]
    def list_users(opts = {})
      data, _status_code, _headers = list_users_with_http_info(opts)
      data
    end

    # List users
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<User>, Integer, Hash)>] Array<User> data, response status code and response headers
    def list_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserManagementApi.list_users ...'
      end
      # resource path
      local_var_path = '/v1/users'

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
      return_type = opts[:debug_return_type] || 'Array<User>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectToken']

      new_options = opts.merge(
        :operation => :"UserManagementApi.list_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserManagementApi#list_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update user
    # @param id [String] User id
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUserRequest] :create_user_request User
    # @return [User]
    def update_user(id, opts = {})
      data, _status_code, _headers = update_user_with_http_info(id, opts)
      data
    end

    # Update user
    # @param id [String] User id
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUserRequest] :create_user_request User
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def update_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserManagementApi.update_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserManagementApi.update_user"
      end
      # resource path
      local_var_path = '/v1/users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_user_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'User'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ProjectToken']

      new_options = opts.merge(
        :operation => :"UserManagementApi.update_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserManagementApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
