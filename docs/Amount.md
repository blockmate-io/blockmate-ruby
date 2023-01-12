# Blockmate::Amount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** |  |  |
| **currency** | **String** |  |  |
| **currency_name** | **String** |  |  |
| **currency_symbol** | **String** |  |  |
| **image_name** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **converted_currency** | **String** |  | [optional] |
| **converted_value** | **Float** |  | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::Amount.new(
  value: 1.2,
  currency: ETHEREUM:0xdAC17F958D2ee523a2206206994597C13D831ec7,
  currency_name: Tether USD,
  currency_symbol: USDT,
  image_name: Alvibop,
  image_url: https://storage.googleapis.com/starly-prod.appspot.com/users/07SXODs3nHWOc0udxtCA7hU9KgR2/collections/pSYegq3aubUCodcy1t4u/cards/16/converted_cover1632338824700_600x800.mp4,
  converted_currency: USD,
  converted_value: 1.2
)
```

