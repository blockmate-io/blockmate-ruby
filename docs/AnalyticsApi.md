# Blockmate::AnalyticsApi

All URIs are relative to *https://api.blockmate.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_analytics**](AnalyticsApi.md#get_analytics) | **GET** /v1/analytics/{account_provider}/account/{account_id}/stats | Get analytics focused on gaming |


## get_analytics

> <GetAnalytics200Response> get_analytics(account_provider, account_id)

Get analytics focused on gaming

Get analytics focused on gaming. All empty values are omitted from the response. Values are recalculated once per day.

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::AnalyticsApi.new
account_provider = 'onchain/btc' # String | URL value from account_providers method
account_id = '163b6df1-dc0b-4086-8922-6068fe1e653d' # String | Account ID

begin
  # Get analytics focused on gaming
  result = api_instance.get_analytics(account_provider, account_id)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics: #{e}"
end
```

#### Using the get_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAnalytics200Response>, Integer, Hash)> get_analytics_with_http_info(account_provider, account_id)

```ruby
begin
  # Get analytics focused on gaming
  data, status_code, headers = api_instance.get_analytics_with_http_info(account_provider, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAnalytics200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling AnalyticsApi->get_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_provider** | **String** | URL value from account_providers method |  |
| **account_id** | **String** | Account ID |  |

### Return type

[**GetAnalytics200Response**](GetAnalytics200Response.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

