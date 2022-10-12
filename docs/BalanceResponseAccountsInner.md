# Blockmate::BalanceResponseAccountsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **description** | **String** |  |  |
| **type** | **String** |  |  |
| **balance** | [**Array&lt;Amount&gt;**](Amount.md) |  |  |
| **state** | [**BalanceResponseAccountsInnerState**](BalanceResponseAccountsInnerState.md) |  |  |
| **name** | **String** |  |  |
| **verified** | **Boolean** |  |  |
| **url** | **String** |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::BalanceResponseAccountsInner.new(
  account_id: 9f0f06ae-08d7-11ed-b3ef-00155d0eaa6e,
  description: My account,
  type: null,
  balance: null,
  state: null,
  name: some-name,
  verified: true,
  url: some-url
)
```

