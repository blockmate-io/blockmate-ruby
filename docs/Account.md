# Blockmate::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  |  |
| **verified** | **Boolean** |  |  |
| **type** | **String** |  |  |
| **url** | **String** |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::Account.new(
  id: 4cf7cf36-52a2-11ec-85b8-00155de33000,
  name: btc,
  description: My account,
  verified: true,
  type: crypto_wallet,
  url: onchain/bitcoin/account/4cf7cf36-52a2-11ec-85b8-00155de33000
)
```

