# Blockmate::Transaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **transaction_id** | **String** |  |  |
| **type** | **String** |  |  |
| **side** | **String** |  | [optional] |
| **amount** | [**Array&lt;Amount&gt;**](Amount.md) |  |  |
| **total** | [**Array&lt;Amount&gt;**](Amount.md) |  |  |
| **fee** | [**Array&lt;Amount&gt;**](Amount.md) |  |  |
| **created_at** | **String** |  |  |
| **inputs** | [**Array&lt;Movement&gt;**](Movement.md) |  |  |
| **outputs** | [**Array&lt;Movement&gt;**](Movement.md) |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::Transaction.new(
  account_id: 0940bb4a-0940-11ed-9ed1-00155d5116f0,
  transaction_id: 0xf77c19d9333bb26fd9d6773a18a8b5fd145e2fbb514ff2879cb478e13e2f8c23,
  type: crypto_wallet,
  side: some-side,
  amount: null,
  total: null,
  fee: null,
  created_at: 2022-07-21T09:21:37.384496+00:00,
  inputs: null,
  outputs: null
)
```

