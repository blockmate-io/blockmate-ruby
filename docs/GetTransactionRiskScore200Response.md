# Blockmate::GetTransactionRiskScore200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction** | **String** |  | [optional] |
| **risk** | **Integer** |  | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::GetTransactionRiskScore200Response.new(
  transaction: 0638e15482e9d0fdb08920666390a546f32dd6ab15ffc81ed97e67b73b0d7205,
  risk: 85
)
```

