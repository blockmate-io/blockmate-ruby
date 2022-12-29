# Blockmate::RiskInfoApi

All URIs are relative to *https://api.blockmate.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_address_risk_score**](RiskInfoApi.md#get_address_risk_score) | **GET** /v1/risk/score | Get address risk score |
| [**get_address_risk_score_case**](RiskInfoApi.md#get_address_risk_score_case) | **GET** /v1/risk/score/details/{case_id} | Get address risk score case |
| [**get_address_risk_score_details**](RiskInfoApi.md#get_address_risk_score_details) | **GET** /v1/risk/score/details | Get address risk score details |
| [**get_transaction_risk_score**](RiskInfoApi.md#get_transaction_risk_score) | **GET** /v1/risk/transaction/score | Get transaction risk score |
| [**get_transaction_risk_score_case**](RiskInfoApi.md#get_transaction_risk_score_case) | **GET** /v1/risk/transaction/score/details/{case_id} | Get transaction risk score case |
| [**get_transaction_risk_score_details**](RiskInfoApi.md#get_transaction_risk_score_details) | **GET** /v1/risk/transaction/score/details | Get transaction risk score details |


## get_address_risk_score

> <GetAddressRiskScore200Response> get_address_risk_score(opts)

Get address risk score

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::RiskInfoApi.new
opts = {
  address: 'bc1qjl7k0dpcsw3djmzq25qv6peavgxysq95pcduuq', # String | Address for which risk should be returned
  chain: 'btc' # String | Blockchain identifier
}

begin
  # Get address risk score
  result = api_instance.get_address_risk_score(opts)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_address_risk_score: #{e}"
end
```

#### Using the get_address_risk_score_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAddressRiskScore200Response>, Integer, Hash)> get_address_risk_score_with_http_info(opts)

```ruby
begin
  # Get address risk score
  data, status_code, headers = api_instance.get_address_risk_score_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAddressRiskScore200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_address_risk_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Address for which risk should be returned | [optional] |
| **chain** | **String** | Blockchain identifier | [optional] |

### Return type

[**GetAddressRiskScore200Response**](GetAddressRiskScore200Response.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_address_risk_score_case

> <AddressRiskReport> get_address_risk_score_case(case_id)

Get address risk score case

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::RiskInfoApi.new
case_id = '7c656013-5e9b-4c71-8322-6562c5a9b34c' # String | Case identifier

begin
  # Get address risk score case
  result = api_instance.get_address_risk_score_case(case_id)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_address_risk_score_case: #{e}"
end
```

#### Using the get_address_risk_score_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressRiskReport>, Integer, Hash)> get_address_risk_score_case_with_http_info(case_id)

```ruby
begin
  # Get address risk score case
  data, status_code, headers = api_instance.get_address_risk_score_case_with_http_info(case_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressRiskReport>
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_address_risk_score_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | Case identifier |  |

### Return type

[**AddressRiskReport**](AddressRiskReport.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_address_risk_score_details

> <AddressRiskReport> get_address_risk_score_details(opts)

Get address risk score details

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::RiskInfoApi.new
opts = {
  address: 'bc1qjl7k0dpcsw3djmzq25qv6peavgxysq95pcduuq', # String | Address for which risk should be returned
  chain: 'btc' # String | Blockchain identifier
}

begin
  # Get address risk score details
  result = api_instance.get_address_risk_score_details(opts)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_address_risk_score_details: #{e}"
end
```

#### Using the get_address_risk_score_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressRiskReport>, Integer, Hash)> get_address_risk_score_details_with_http_info(opts)

```ruby
begin
  # Get address risk score details
  data, status_code, headers = api_instance.get_address_risk_score_details_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressRiskReport>
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_address_risk_score_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Address for which risk should be returned | [optional] |
| **chain** | **String** | Blockchain identifier | [optional] |

### Return type

[**AddressRiskReport**](AddressRiskReport.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_risk_score

> <GetTransactionRiskScore200Response> get_transaction_risk_score(opts)

Get transaction risk score

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::RiskInfoApi.new
opts = {
  transaction: '0638e15482e9d0fdb08920666390a546f32dd6ab15ffc81ed97e67b73b0d7205', # String | Transaction hash for which risk should be returned
  chain: 'btc' # String | Blockchain identifier
}

begin
  # Get transaction risk score
  result = api_instance.get_transaction_risk_score(opts)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_transaction_risk_score: #{e}"
end
```

#### Using the get_transaction_risk_score_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactionRiskScore200Response>, Integer, Hash)> get_transaction_risk_score_with_http_info(opts)

```ruby
begin
  # Get transaction risk score
  data, status_code, headers = api_instance.get_transaction_risk_score_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionRiskScore200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_transaction_risk_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction** | **String** | Transaction hash for which risk should be returned | [optional] |
| **chain** | **String** | Blockchain identifier | [optional] |

### Return type

[**GetTransactionRiskScore200Response**](GetTransactionRiskScore200Response.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_risk_score_case

> <TransactionRiskReport> get_transaction_risk_score_case(case_id)

Get transaction risk score case

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::RiskInfoApi.new
case_id = '7149168f-ad69-4fc9-b027-a16b0ca13081' # String | Case identifier

begin
  # Get transaction risk score case
  result = api_instance.get_transaction_risk_score_case(case_id)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_transaction_risk_score_case: #{e}"
end
```

#### Using the get_transaction_risk_score_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionRiskReport>, Integer, Hash)> get_transaction_risk_score_case_with_http_info(case_id)

```ruby
begin
  # Get transaction risk score case
  data, status_code, headers = api_instance.get_transaction_risk_score_case_with_http_info(case_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionRiskReport>
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_transaction_risk_score_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | Case identifier |  |

### Return type

[**TransactionRiskReport**](TransactionRiskReport.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_risk_score_details

> <TransactionRiskReport> get_transaction_risk_score_details(opts)

Get transaction risk score details

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::RiskInfoApi.new
opts = {
  transaction: '0638e15482e9d0fdb08920666390a546f32dd6ab15ffc81ed97e67b73b0d7205', # String | Transaction hash for which risk should be returned
  chain: 'btc' # String | Blockchain identifier
}

begin
  # Get transaction risk score details
  result = api_instance.get_transaction_risk_score_details(opts)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_transaction_risk_score_details: #{e}"
end
```

#### Using the get_transaction_risk_score_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionRiskReport>, Integer, Hash)> get_transaction_risk_score_details_with_http_info(opts)

```ruby
begin
  # Get transaction risk score details
  data, status_code, headers = api_instance.get_transaction_risk_score_details_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionRiskReport>
rescue Blockmate::ApiError => e
  puts "Error when calling RiskInfoApi->get_transaction_risk_score_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction** | **String** | Transaction hash for which risk should be returned | [optional] |
| **chain** | **String** | Blockchain identifier | [optional] |

### Return type

[**TransactionRiskReport**](TransactionRiskReport.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

