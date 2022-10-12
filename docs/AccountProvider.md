# Blockmate::AccountProvider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **type** | **String** |  |  |
| **url** | **String** |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::AccountProvider.new(
  name: btc,
  type: crypto_wallet,
  url: onchain/bitcoin
)
```

