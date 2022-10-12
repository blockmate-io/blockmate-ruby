# Blockmate::AddressRiskReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** |  | [optional] |
| **request_datetime** | **String** |  | [optional] |
| **response_datetime** | **String** |  | [optional] |
| **address** | **String** |  |  |
| **chain** | **String** |  |  |
| **risk** | **Integer** |  |  |
| **details** | [**AddressRiskReportDetails**](AddressRiskReportDetails.md) |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::AddressRiskReport.new(
  case_id: 7c656013-5e9b-4c71-8322-6562c5a9b34c,
  request_datetime: 2022-10-04T12:32:44Z,
  response_datetime: 2022-10-04T12:32:44Z,
  address: 0xc50e6db1637423819edbccb20b15654338d65501,
  chain: eth,
  risk: 85,
  details: null
)
```

