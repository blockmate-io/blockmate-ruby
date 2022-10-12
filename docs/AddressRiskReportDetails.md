# Blockmate::AddressRiskReportDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **own_categories** | [**Array&lt;RiskReportCategory&gt;**](RiskReportCategory.md) |  | [optional] |
| **source_of_funds_categories** | [**Array&lt;RiskReportCategory&gt;**](RiskReportCategory.md) |  | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::AddressRiskReportDetails.new(
  own_categories: null,
  source_of_funds_categories: null
)
```

