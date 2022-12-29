# Blockmate::ENSApi

All URIs are relative to *https://api.blockmate.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_address_from_domain**](ENSApi.md#get_address_from_domain) | **GET** /v1/ens/addressFromDomain | Get address for specified ENS domain |
| [**get_domain_from_address**](ENSApi.md#get_domain_from_address) | **GET** /v1/ens/domainFromAddress | Get domain and metadata for specified ENS address |


## get_address_from_domain

> <GetAddressFromDomain200Response> get_address_from_domain(domain)

Get address for specified ENS domain

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::ENSApi.new
domain = 'alice.eth' # String | ENS domain for which Ethereum address should be returned

begin
  # Get address for specified ENS domain
  result = api_instance.get_address_from_domain(domain)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling ENSApi->get_address_from_domain: #{e}"
end
```

#### Using the get_address_from_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAddressFromDomain200Response>, Integer, Hash)> get_address_from_domain_with_http_info(domain)

```ruby
begin
  # Get address for specified ENS domain
  data, status_code, headers = api_instance.get_address_from_domain_with_http_info(domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAddressFromDomain200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling ENSApi->get_address_from_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | ENS domain for which Ethereum address should be returned |  |

### Return type

[**GetAddressFromDomain200Response**](GetAddressFromDomain200Response.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domain_from_address

> <GetDomainFromAddress200Response> get_domain_from_address(address)

Get domain and metadata for specified ENS address

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::ENSApi.new
address = '0xcd2e72aebe2a203b84f46deec948e6465db51c75' # String | Ethereum address for which domain and metadata should be returned

begin
  # Get domain and metadata for specified ENS address
  result = api_instance.get_domain_from_address(address)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling ENSApi->get_domain_from_address: #{e}"
end
```

#### Using the get_domain_from_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomainFromAddress200Response>, Integer, Hash)> get_domain_from_address_with_http_info(address)

```ruby
begin
  # Get domain and metadata for specified ENS address
  data, status_code, headers = api_instance.get_domain_from_address_with_http_info(address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomainFromAddress200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling ENSApi->get_domain_from_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Ethereum address for which domain and metadata should be returned |  |

### Return type

[**GetDomainFromAddress200Response**](GetDomainFromAddress200Response.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

