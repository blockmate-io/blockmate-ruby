# Blockmate::GetAddressRiskScore200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** |  | [optional] |
| **risk** | **Integer** |  | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::GetAddressRiskScore200Response.new(
  address: bc1qjl7k0dpcsw3djmzq25qv6peavgxysq95pcduuq,
  risk: 85
)
```

