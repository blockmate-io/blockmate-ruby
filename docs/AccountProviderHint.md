# Blockmate::AccountProviderHint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** |  |  |
| **account_type** | **String** |  |  |
| **account_url** | **String** |  |  |
| **description** | **String** |  |  |
| **url** | **String** |  |  |
| **intro** | **String** |  | [optional] |
| **fields** | [**AccountProviderHintFields**](AccountProviderHintFields.md) |  |  |
| **oauth** | **Boolean** |  |  |
| **icon** | **String** |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::AccountProviderHint.new(
  account_name: btc,
  account_type: crypto_wallet,
  account_url: onchain/btc,
  description: Bitcoin (BTC),
  url: https://bitcoin.com,
  intro: Use your address to connect your account.,
  fields: null,
  oauth: false,
  icon: https://api.blockmate.io/v1/onchain/static/bitcoin.png
)
```

