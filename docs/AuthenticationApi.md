# Blockmate::AuthenticationApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**user_api_authenticate_developer**](AuthenticationApi.md#user_api_authenticate_developer) | **GET** /v1/auth/developer | Authenticate developer |
| [**user_api_authenticate_project**](AuthenticationApi.md#user_api_authenticate_project) | **GET** /v1/auth | Authenticate project |


## user_api_authenticate_developer

> <UserAPIAuthenticateProject200Response> user_api_authenticate_developer

Authenticate developer

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure API key authorization: ProjectToken
  config.api_key['ProjectToken'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ProjectToken'] = 'Bearer'
end

api_instance = Blockmate::AuthenticationApi.new

begin
  # Authenticate developer
  result = api_instance.user_api_authenticate_developer
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AuthenticationApi->user_api_authenticate_developer: #{e}"
end
```

#### Using the user_api_authenticate_developer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAPIAuthenticateProject200Response>, Integer, Hash)> user_api_authenticate_developer_with_http_info

```ruby
begin
  # Authenticate developer
  data, status_code, headers = api_instance.user_api_authenticate_developer_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAPIAuthenticateProject200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling AuthenticationApi->user_api_authenticate_developer_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserAPIAuthenticateProject200Response**](UserAPIAuthenticateProject200Response.md)

### Authorization

[ProjectToken](../README.md#ProjectToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## user_api_authenticate_project

> <UserAPIAuthenticateProject200Response> user_api_authenticate_project

Authenticate project

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure API key authorization: ProjectToken
  config.api_key['ProjectToken'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ProjectToken'] = 'Bearer'
end

api_instance = Blockmate::AuthenticationApi.new

begin
  # Authenticate project
  result = api_instance.user_api_authenticate_project
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AuthenticationApi->user_api_authenticate_project: #{e}"
end
```

#### Using the user_api_authenticate_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAPIAuthenticateProject200Response>, Integer, Hash)> user_api_authenticate_project_with_http_info

```ruby
begin
  # Authenticate project
  data, status_code, headers = api_instance.user_api_authenticate_project_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAPIAuthenticateProject200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling AuthenticationApi->user_api_authenticate_project_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserAPIAuthenticateProject200Response**](UserAPIAuthenticateProject200Response.md)

### Authorization

[ProjectToken](../README.md#ProjectToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

