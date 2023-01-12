# Blockmate::ExchangeRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency_pair** | **String** |  |  |
| **date** | **String** |  |  |
| **rate** | **Float** |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::ExchangeRate.new(
  currency_pair: eth/usd,
  date: 2022-06-30,
  rate: 1053.9613
)
```

