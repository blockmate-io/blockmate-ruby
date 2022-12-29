# Blockmate::ExchangeRateInfoApi

All URIs are relative to *https://api.blockmate.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_current_exchange_rate**](ExchangeRateInfoApi.md#get_current_exchange_rate) | **GET** /v1/exchangerate/current | Get current exchange rate |
| [**get_historical_exchange_rate**](ExchangeRateInfoApi.md#get_historical_exchange_rate) | **GET** /v1/exchangerate/history | Get historical exchange rate |


## get_current_exchange_rate

> <Array<ExchangeRate>> get_current_exchange_rate(pairs)

Get current exchange rate

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::ExchangeRateInfoApi.new
pairs = 'ETH/USD,BTC/EUR' # String | Currency pairs for which exchange rate should be returned

begin
  # Get current exchange rate
  result = api_instance.get_current_exchange_rate(pairs)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling ExchangeRateInfoApi->get_current_exchange_rate: #{e}"
end
```

#### Using the get_current_exchange_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ExchangeRate>>, Integer, Hash)> get_current_exchange_rate_with_http_info(pairs)

```ruby
begin
  # Get current exchange rate
  data, status_code, headers = api_instance.get_current_exchange_rate_with_http_info(pairs)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ExchangeRate>>
rescue Blockmate::ApiError => e
  puts "Error when calling ExchangeRateInfoApi->get_current_exchange_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pairs** | **String** | Currency pairs for which exchange rate should be returned |  |

### Return type

[**Array&lt;ExchangeRate&gt;**](ExchangeRate.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_historical_exchange_rate

> <Array<ExchangeRate>> get_historical_exchange_rate(pair, days)

Get historical exchange rate

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::ExchangeRateInfoApi.new
pair = 'ETH/USD' # String | Currency pair for which exchange rates should be returned
days = '2022-06-30,2022-06-29' # String | Historical dates for which exchange rates should be returned

begin
  # Get historical exchange rate
  result = api_instance.get_historical_exchange_rate(pair, days)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling ExchangeRateInfoApi->get_historical_exchange_rate: #{e}"
end
```

#### Using the get_historical_exchange_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ExchangeRate>>, Integer, Hash)> get_historical_exchange_rate_with_http_info(pair, days)

```ruby
begin
  # Get historical exchange rate
  data, status_code, headers = api_instance.get_historical_exchange_rate_with_http_info(pair, days)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ExchangeRate>>
rescue Blockmate::ApiError => e
  puts "Error when calling ExchangeRateInfoApi->get_historical_exchange_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pair** | **String** | Currency pair for which exchange rates should be returned |  |
| **days** | **String** | Historical dates for which exchange rates should be returned |  |

### Return type

[**Array&lt;ExchangeRate&gt;**](ExchangeRate.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

