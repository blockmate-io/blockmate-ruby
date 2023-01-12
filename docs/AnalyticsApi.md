# Blockmate::AnalyticsApi

All URIs are relative to *https://api.blockmate.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account_analytics**](AnalyticsApi.md#get_account_analytics) | **GET** /v1/analytics/{account_provider}/account/{account_id}/stats | Get analytics focused on gaming for specified account and provider |
| [**get_project_analytics**](AnalyticsApi.md#get_project_analytics) | **GET** /v1/analytics/project/stats | Get analytics focused on gaming for whole project |
| [**get_provider_analytics**](AnalyticsApi.md#get_provider_analytics) | **GET** /v1/analytics/{account_provider}/stats | Get analytics focused on gaming for specified provider |
| [**get_user_analytics**](AnalyticsApi.md#get_user_analytics) | **GET** /v1/analytics/user/stats | Get analytics focused on gaming for this user |


## get_account_analytics

> <Analytics> get_account_analytics(account_provider, account_id)

Get analytics focused on gaming for specified account and provider

Get analytics focused on gaming for specified account and provider. All empty values are omitted from the response. Values are recalculated once per day.

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
  # Get analytics focused on gaming for specified account and provider
  result = api_instance.get_account_analytics(account_provider, account_id)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AnalyticsApi->get_account_analytics: #{e}"
end
```

#### Using the get_account_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Analytics>, Integer, Hash)> get_account_analytics_with_http_info(account_provider, account_id)

```ruby
begin
  # Get analytics focused on gaming for specified account and provider
  data, status_code, headers = api_instance.get_account_analytics_with_http_info(account_provider, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Analytics>
rescue Blockmate::ApiError => e
  puts "Error when calling AnalyticsApi->get_account_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_provider** | **String** | URL value from account_providers method |  |
| **account_id** | **String** | Account ID |  |

### Return type

[**Analytics**](Analytics.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_analytics

> <Hash<String, Analytics>> get_project_analytics

Get analytics focused on gaming for whole project

Get analytics focused on gaming for whole project. All empty values are omitted from the response. Values are recalculated once per day.

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): ProjectJWT
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::AnalyticsApi.new

begin
  # Get analytics focused on gaming for whole project
  result = api_instance.get_project_analytics
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AnalyticsApi->get_project_analytics: #{e}"
end
```

#### Using the get_project_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, Analytics>>, Integer, Hash)> get_project_analytics_with_http_info

```ruby
begin
  # Get analytics focused on gaming for whole project
  data, status_code, headers = api_instance.get_project_analytics_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, Analytics>>
rescue Blockmate::ApiError => e
  puts "Error when calling AnalyticsApi->get_project_analytics_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hash&lt;String, Analytics&gt;**](Analytics.md)

### Authorization

[ProjectJWT](../README.md#ProjectJWT), [UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_provider_analytics

> <Hash<String, Analytics>> get_provider_analytics(account_provider)

Get analytics focused on gaming for specified provider

Get analytics focused on gaming for specified provider. All empty values are omitted from the response. Values are recalculated once per day.

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

begin
  # Get analytics focused on gaming for specified provider
  result = api_instance.get_provider_analytics(account_provider)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AnalyticsApi->get_provider_analytics: #{e}"
end
```

#### Using the get_provider_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, Analytics>>, Integer, Hash)> get_provider_analytics_with_http_info(account_provider)

```ruby
begin
  # Get analytics focused on gaming for specified provider
  data, status_code, headers = api_instance.get_provider_analytics_with_http_info(account_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, Analytics>>
rescue Blockmate::ApiError => e
  puts "Error when calling AnalyticsApi->get_provider_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_provider** | **String** | URL value from account_providers method |  |

### Return type

[**Hash&lt;String, Analytics&gt;**](Analytics.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_analytics

> <Hash<String, Analytics>> get_user_analytics

Get analytics focused on gaming for this user

Get analytics focused on gaming for this user. All empty values are omitted from the response. Values are recalculated once per day.

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

begin
  # Get analytics focused on gaming for this user
  result = api_instance.get_user_analytics
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AnalyticsApi->get_user_analytics: #{e}"
end
```

#### Using the get_user_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, Analytics>>, Integer, Hash)> get_user_analytics_with_http_info

```ruby
begin
  # Get analytics focused on gaming for this user
  data, status_code, headers = api_instance.get_user_analytics_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, Analytics>>
rescue Blockmate::ApiError => e
  puts "Error when calling AnalyticsApi->get_user_analytics_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hash&lt;String, Analytics&gt;**](Analytics.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

