# Blockmate::AccountProviderInfoApi

All URIs are relative to *https://api.blockmate.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**connect_account**](AccountProviderInfoApi.md#connect_account) | **POST** /v1/{account_provider}/connect | Connect new account |
| [**delete_account**](AccountProviderInfoApi.md#delete_account) | **DELETE** /v1/{account_provider}/account/{account_id} | Delete account |
| [**get_account_hint**](AccountProviderInfoApi.md#get_account_hint) | **GET** /v1/{account_provider}/connect | Get account hint |


## connect_account

> <ConnectAccount200Response> connect_account(account_provider, opts)

Connect new account

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

api_instance = Blockmate::AccountProviderInfoApi.new
account_provider = 'onchain/btc' # String | URL value from account_providers method
opts = {
  connect_account_request: Blockmate::ConnectAccountRequest.new({wallet: 'bc1qjl7k0dpcsw3djmzq25qv6peavgxysq95pcduuq', description: 'some-description'}) # ConnectAccountRequest | OK
}

begin
  # Connect new account
  result = api_instance.connect_account(account_provider, opts)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AccountProviderInfoApi->connect_account: #{e}"
end
```

#### Using the connect_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectAccount200Response>, Integer, Hash)> connect_account_with_http_info(account_provider, opts)

```ruby
begin
  # Connect new account
  data, status_code, headers = api_instance.connect_account_with_http_info(account_provider, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectAccount200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling AccountProviderInfoApi->connect_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_provider** | **String** | URL value from account_providers method |  |
| **connect_account_request** | [**ConnectAccountRequest**](ConnectAccountRequest.md) | OK | [optional] |

### Return type

[**ConnectAccount200Response**](ConnectAccount200Response.md)

### Authorization

[ProjectToken](../README.md#ProjectToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_account

> delete_account(account_provider, account_id)

Delete account

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::AccountProviderInfoApi.new
account_provider = 'onchain/btc' # String | URL value from account_providers method
account_id = '163b6df1-dc0b-4086-8922-6068fe1e653d' # String | Account ID

begin
  # Delete account
  api_instance.delete_account(account_provider, account_id)
rescue Blockmate::ApiError => e
  puts "Error when calling AccountProviderInfoApi->delete_account: #{e}"
end
```

#### Using the delete_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_account_with_http_info(account_provider, account_id)

```ruby
begin
  # Delete account
  data, status_code, headers = api_instance.delete_account_with_http_info(account_provider, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Blockmate::ApiError => e
  puts "Error when calling AccountProviderInfoApi->delete_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_provider** | **String** | URL value from account_providers method |  |
| **account_id** | **String** | Account ID |  |

### Return type

nil (empty response body)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_hint

> <GetAccountHint200Response> get_account_hint(account_provider)

Get account hint

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::AccountProviderInfoApi.new
account_provider = 'onchain/btc' # String | URL value from account_providers method

begin
  # Get account hint
  result = api_instance.get_account_hint(account_provider)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AccountProviderInfoApi->get_account_hint: #{e}"
end
```

#### Using the get_account_hint_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountHint200Response>, Integer, Hash)> get_account_hint_with_http_info(account_provider)

```ruby
begin
  # Get account hint
  data, status_code, headers = api_instance.get_account_hint_with_http_info(account_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountHint200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling AccountProviderInfoApi->get_account_hint_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_provider** | **String** | URL value from account_providers method |  |

### Return type

[**GetAccountHint200Response**](GetAccountHint200Response.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

