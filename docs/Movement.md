# Blockmate::Movement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** |  |  |
| **currency** | **String** |  |  |
| **currency_name** | **String** |  |  |
| **currency_symbol** | **String** |  |  |
| **value** | **Float** |  |  |
| **owned** | **Boolean** |  |  |
| **fee** | **Boolean** |  |  |
| **image_name** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::Movement.new(
  address: 0xc50e6db1637423819edbccb20b15654338d65501,
  currency: ETHEREUM:0xdAC17F958D2ee523a2206206994597C13D831ec7,
  currency_name: Tether USD,
  currency_symbol: USDT,
  value: 1.2,
  owned: true,
  fee: false,
  image_name: Alvibop,
  image_url: https://storage.googleapis.com/starly-prod.appspot.com/users/07SXODs3nHWOc0udxtCA7hU9KgR2/collections/pSYegq3aubUCodcy1t4u/cards/16/converted_cover1632338824700_600x800.mp4
)
```

