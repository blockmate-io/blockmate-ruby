# Blockmate::AddressNameAndCategoryInfoApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_address_name_info**](AddressNameAndCategoryInfoApi.md#get_address_name_info) | **GET** /v1/addressname/simple | Get address name and category info |


## get_address_name_info

> <GetAddressNameInfo200Response> get_address_name_info(address, chain)

Get address name and category info

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
address = 'bc1qjl7k0dpcsw3djmzq25qv6peavgxysq95pcduuq' # String | Address for wich name and category should be returned
chain = 'btc' # String | Blockchain identifier

begin
  # Get address name and category info
  result = api_instance.get_address_name_info(address, chain)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AddressNameAndCategoryInfoApi->get_address_name_info: #{e}"
end
```

#### Using the get_address_name_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAddressNameInfo200Response>, Integer, Hash)> get_address_name_info_with_http_info(address, chain)

```ruby
begin
  # Get address name and category info
  data, status_code, headers = api_instance.get_address_name_info_with_http_info(address, chain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAddressNameInfo200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling AddressNameAndCategoryInfoApi->get_address_name_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Address for wich name and category should be returned |  |
| **chain** | **String** | Blockchain identifier |  |

### Return type

[**GetAddressNameInfo200Response**](GetAddressNameInfo200Response.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

