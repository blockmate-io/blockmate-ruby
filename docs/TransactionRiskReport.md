# Blockmate::TransactionRiskReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** |  | [optional] |
| **request_datetime** | **String** |  | [optional] |
| **response_datetime** | **String** |  | [optional] |
| **transaction** | **String** |  | [optional] |
| **chain** | **String** |  |  |
| **risk** | **Integer** |  |  |
| **details** | [**Hash&lt;String, AddressRiskReportDetails&gt;**](AddressRiskReportDetails.md) | Keys are addresses from transaction inputs or outputs |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::TransactionRiskReport.new(
  case_id: 7149168f-ad69-4fc9-b027-a16b0ca13081,
  request_datetime: 2022-10-04T12:32:44Z,
  response_datetime: 2022-10-04T12:32:44Z,
  transaction: 0638e15482e9d0fdb08920666390a546f32dd6ab15ffc81ed97e67b73b0d7205,
  chain: btc,
  risk: 85,
  details: null
)
```

