# Blockmate::BalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance_sum** | [**Array&lt;Amount&gt;**](Amount.md) |  |  |
| **accounts** | [**Array&lt;BalanceResponseAccountsInner&gt;**](BalanceResponseAccountsInner.md) |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::BalanceResponse.new(
  balance_sum: null,
  accounts: null
)
```

