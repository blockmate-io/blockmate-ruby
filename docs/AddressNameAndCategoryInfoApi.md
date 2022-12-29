# Blockmate::AddressNameAndCategoryInfoApi

All URIs are relative to *https://api.blockmate.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_address_name_info_multi**](AddressNameAndCategoryInfoApi.md#get_address_name_info_multi) | **POST** /v1/addressname/multi | Get address name and category info for multiple addresses |
| [**get_address_name_info_single**](AddressNameAndCategoryInfoApi.md#get_address_name_info_single) | **GET** /v1/addressname/simple | Get address name and category info for single address |


## get_address_name_info_multi

> <Hash<String, GetAddressNameInfoSingle200Response>> get_address_name_info_multi(chain, opts)

Get address name and category info for multiple addresses

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::AddressNameAndCategoryInfoApi.new
chain = 'btc' # String | Blockchain identifier
opts = {
  request_body: ['bc1qjl7k0dpcsw3djmzq25qv6peavgxysq95pcduuq'] # Array<String> | OK
}

begin
  # Get address name and category info for multiple addresses
  result = api_instance.get_address_name_info_multi(chain, opts)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AddressNameAndCategoryInfoApi->get_address_name_info_multi: #{e}"
end
```

#### Using the get_address_name_info_multi_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, GetAddressNameInfoSingle200Response>>, Integer, Hash)> get_address_name_info_multi_with_http_info(chain, opts)

```ruby
begin
  # Get address name and category info for multiple addresses
  data, status_code, headers = api_instance.get_address_name_info_multi_with_http_info(chain, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, GetAddressNameInfoSingle200Response>>
rescue Blockmate::ApiError => e
  puts "Error when calling AddressNameAndCategoryInfoApi->get_address_name_info_multi_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain** | **String** | Blockchain identifier |  |
| **request_body** | [**Array&lt;String&gt;**](String.md) | OK | [optional] |

### Return type

[**Hash&lt;String, GetAddressNameInfoSingle200Response&gt;**](GetAddressNameInfoSingle200Response.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_address_name_info_single

> <GetAddressNameInfoSingle200Response> get_address_name_info_single(address, chain)

Get address name and category info for single address

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::AddressNameAndCategoryInfoApi.new
address = 'bc1qjl7k0dpcsw3djmzq25qv6peavgxysq95pcduuq' # String | Address for which name and category should be returned
chain = 'btc' # String | Blockchain identifier

begin
  # Get address name and category info for single address
  result = api_instance.get_address_name_info_single(address, chain)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AddressNameAndCategoryInfoApi->get_address_name_info_single: #{e}"
end
```

#### Using the get_address_name_info_single_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAddressNameInfoSingle200Response>, Integer, Hash)> get_address_name_info_single_with_http_info(address, chain)

```ruby
begin
  # Get address name and category info for single address
  data, status_code, headers = api_instance.get_address_name_info_single_with_http_info(address, chain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAddressNameInfoSingle200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling AddressNameAndCategoryInfoApi->get_address_name_info_single_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Address for which name and category should be returned |  |
| **chain** | **String** | Blockchain identifier |  |

### Return type

[**GetAddressNameInfoSingle200Response**](GetAddressNameInfoSingle200Response.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

