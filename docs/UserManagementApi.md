# Blockmate::UserManagementApi

All URIs are relative to *https://api.blockmate.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**auth_user**](UserManagementApi.md#auth_user) | **GET** /v1/users/{id}/auth | Authenticate user |
| [**create_user**](UserManagementApi.md#create_user) | **POST** /v1/users | Create user |
| [**delete_user**](UserManagementApi.md#delete_user) | **DELETE** /v1/users/{id} | Delete user |
| [**get_user**](UserManagementApi.md#get_user) | **GET** /v1/users/{id} | Get user |
| [**list_users**](UserManagementApi.md#list_users) | **GET** /v1/users | List users |
| [**update_user**](UserManagementApi.md#update_user) | **POST** /v1/users/{id} | Update user |


## auth_user

> <AuthUser200Response> auth_user(id)

Authenticate user

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

api_instance = Blockmate::UserManagementApi.new
id = '4301140e-d639-11ec-9120-00155d03ab64' # String | User id

begin
  # Authenticate user
  result = api_instance.auth_user(id)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->auth_user: #{e}"
end
```

#### Using the auth_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthUser200Response>, Integer, Hash)> auth_user_with_http_info(id)

```ruby
begin
  # Authenticate user
  data, status_code, headers = api_instance.auth_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthUser200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->auth_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User id |  |

### Return type

[**AuthUser200Response**](AuthUser200Response.md)

### Authorization

[ProjectToken](../README.md#ProjectToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_user

> <User> create_user(opts)

Create user

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

api_instance = Blockmate::UserManagementApi.new
opts = {
  create_user_request: Blockmate::CreateUserRequest.new # CreateUserRequest | User
}

begin
  # Create user
  result = api_instance.create_user(opts)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> create_user_with_http_info(opts)

```ruby
begin
  # Create user
  data, status_code, headers = api_instance.create_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_user_request** | [**CreateUserRequest**](CreateUserRequest.md) | User | [optional] |

### Return type

[**User**](User.md)

### Authorization

[ProjectToken](../README.md#ProjectToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> <DeleteUser200Response> delete_user(id)

Delete user

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

api_instance = Blockmate::UserManagementApi.new
id = '4301140e-d639-11ec-9120-00155d03ab64' # String | User id

begin
  # Delete user
  result = api_instance.delete_user(id)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteUser200Response>, Integer, Hash)> delete_user_with_http_info(id)

```ruby
begin
  # Delete user
  data, status_code, headers = api_instance.delete_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteUser200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User id |  |

### Return type

[**DeleteUser200Response**](DeleteUser200Response.md)

### Authorization

[ProjectToken](../README.md#ProjectToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <User> get_user(id)

Get user

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

api_instance = Blockmate::UserManagementApi.new
id = '4301140e-d639-11ec-9120-00155d03ab64' # String | User id

begin
  # Get user
  result = api_instance.get_user(id)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_user_with_http_info(id)

```ruby
begin
  # Get user
  data, status_code, headers = api_instance.get_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User id |  |

### Return type

[**User**](User.md)

### Authorization

[ProjectToken](../README.md#ProjectToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <Array<User>> list_users

List users

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

api_instance = Blockmate::UserManagementApi.new

begin
  # List users
  result = api_instance.list_users
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<User>>, Integer, Hash)> list_users_with_http_info

```ruby
begin
  # List users
  data, status_code, headers = api_instance.list_users_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<User>>
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->list_users_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

[ProjectToken](../README.md#ProjectToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> <User> update_user(id, opts)

Update user

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

api_instance = Blockmate::UserManagementApi.new
id = '4301140e-d639-11ec-9120-00155d03ab64' # String | User id
opts = {
  create_user_request: Blockmate::CreateUserRequest.new # CreateUserRequest | User
}

begin
  # Update user
  result = api_instance.update_user(id, opts)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> update_user_with_http_info(id, opts)

```ruby
begin
  # Update user
  data, status_code, headers = api_instance.update_user_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Blockmate::ApiError => e
  puts "Error when calling UserManagementApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User id |  |
| **create_user_request** | [**CreateUserRequest**](CreateUserRequest.md) | User | [optional] |

### Return type

[**User**](User.md)

### Authorization

[ProjectToken](../README.md#ProjectToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

