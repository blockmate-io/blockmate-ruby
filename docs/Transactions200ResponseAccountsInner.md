# Blockmate::Transactions200ResponseAccountsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **description** | **String** |  |  |
| **verified** | **Boolean** |  |  |
| **type** | **String** |  |  |
| **state** | [**BalanceResponseAccountsInnerState**](BalanceResponseAccountsInnerState.md) |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::Transactions200ResponseAccountsInner.new(
  id: 0940bb4a-0940-11ed-9ed1-00155d5116f0,
  description: My account,
  verified: true,
  type: crypto_wallet,
  state: null
)
```

