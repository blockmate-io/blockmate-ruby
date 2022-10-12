# Blockmate::RiskReportCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adress** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **category_name** | **String** |  |  |
| **risk** | **Integer** |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::RiskReportCategory.new(
  adress: 0xc50e6db1637423819edbccb20b15654338d65501,
  name: some-name,
  category_name: some-category-name,
  risk: 85
)
```

