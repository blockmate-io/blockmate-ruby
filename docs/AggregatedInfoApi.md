# Blockmate::AggregatedInfoApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**account_provider_hints_list**](AggregatedInfoApi.md#account_provider_hints_list) | **GET** /v1/aggregate/account_provider_hints | Get list of account providers hints |
| [**account_providers_list**](AggregatedInfoApi.md#account_providers_list) | **GET** /v1/aggregate/account_providers | Get list of account providers |
| [**accounts**](AggregatedInfoApi.md#accounts) | **GET** /v1/aggregate/accounts | List accounts |
| [**balance**](AggregatedInfoApi.md#balance) | **GET** /v1/aggregate/balance | Get balance |
| [**transactions**](AggregatedInfoApi.md#transactions) | **GET** /v1/aggregate/transactions | Get transactions |


## account_provider_hints_list

> <AccountProviderHint> account_provider_hints_list

Get list of account providers hints

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::AggregatedInfoApi.new

begin
  # Get list of account providers hints
  result = api_instance.account_provider_hints_list
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AggregatedInfoApi->account_provider_hints_list: #{e}"
end
```

#### Using the account_provider_hints_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountProviderHint>, Integer, Hash)> account_provider_hints_list_with_http_info

```ruby
begin
  # Get list of account providers hints
  data, status_code, headers = api_instance.account_provider_hints_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountProviderHint>
rescue Blockmate::ApiError => e
  puts "Error when calling AggregatedInfoApi->account_provider_hints_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AccountProviderHint**](AccountProviderHint.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## account_providers_list

> <AccountProvider> account_providers_list

Get list of account providers

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::AggregatedInfoApi.new

begin
  # Get list of account providers
  result = api_instance.account_providers_list
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AggregatedInfoApi->account_providers_list: #{e}"
end
```

#### Using the account_providers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountProvider>, Integer, Hash)> account_providers_list_with_http_info

```ruby
begin
  # Get list of account providers
  data, status_code, headers = api_instance.account_providers_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountProvider>
rescue Blockmate::ApiError => e
  puts "Error when calling AggregatedInfoApi->account_providers_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AccountProvider**](AccountProvider.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## accounts

> <Array<Account>> accounts

List accounts

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::AggregatedInfoApi.new

begin
  # List accounts
  result = api_instance.accounts
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AggregatedInfoApi->accounts: #{e}"
end
```

#### Using the accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Account>>, Integer, Hash)> accounts_with_http_info

```ruby
begin
  # List accounts
  data, status_code, headers = api_instance.accounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Account>>
rescue Blockmate::ApiError => e
  puts "Error when calling AggregatedInfoApi->accounts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## balance

> <Balance200Response> balance(opts)

Get balance

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::AggregatedInfoApi.new
opts = {
  currency: 'USD' # String | Currency to convert to. 
}

begin
  # Get balance
  result = api_instance.balance(opts)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AggregatedInfoApi->balance: #{e}"
end
```

#### Using the balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Balance200Response>, Integer, Hash)> balance_with_http_info(opts)

```ruby
begin
  # Get balance
  data, status_code, headers = api_instance.balance_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Balance200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling AggregatedInfoApi->balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | Currency to convert to.  | [optional] |

### Return type

[**Balance200Response**](Balance200Response.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transactions

> <Transactions200Response> transactions(opts)

Get transactions

### Examples

```ruby
require 'time'
require 'blockmate'
# setup authorization
Blockmate.configure do |config|
  # Configure Bearer authorization (JWT): UserJWT
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Blockmate::AggregatedInfoApi.new
opts = {
  since: Date.parse('Wed Jan 01 01:00:00 CET 2020'), # Date | Set time from which the transactions will be get. 
  _until: Date.parse('Sat Feb 01 01:00:00 CET 2020'), # Date | Set time to which the transactions will be get. The default value is the actual date. 
  limit: 10, # Float | Limit the number of the transactions in the response. Default page size is 50. 
  cursor: 'cursor_example', # String | Specify on requesting the next page. Use the `page_cursor` from the previous response. 
  currency: 'USD', # String | Currency to convert to. 
  account_filter: '497f6eca-6276-4993-bfeb-53cbbbba6f08' # String | Filter results to only provided account. When omitted, it returns all transactions from all accounts. 
}

begin
  # Get transactions
  result = api_instance.transactions(opts)
  p result
rescue Blockmate::ApiError => e
  puts "Error when calling AggregatedInfoApi->transactions: #{e}"
end
```

#### Using the transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Transactions200Response>, Integer, Hash)> transactions_with_http_info(opts)

```ruby
begin
  # Get transactions
  data, status_code, headers = api_instance.transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Transactions200Response>
rescue Blockmate::ApiError => e
  puts "Error when calling AggregatedInfoApi->transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **Date** | Set time from which the transactions will be get.  | [optional] |
| **_until** | **Date** | Set time to which the transactions will be get. The default value is the actual date.  | [optional] |
| **limit** | **Float** | Limit the number of the transactions in the response. Default page size is 50.  | [optional] |
| **cursor** | **String** | Specify on requesting the next page. Use the &#x60;page_cursor&#x60; from the previous response.  | [optional] |
| **currency** | **String** | Currency to convert to.  | [optional] |
| **account_filter** | **String** | Filter results to only provided account. When omitted, it returns all transactions from all accounts.  | [optional] |

### Return type

[**Transactions200Response**](Transactions200Response.md)

### Authorization

[UserJWT](../README.md#UserJWT)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

