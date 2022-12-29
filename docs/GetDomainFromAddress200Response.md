# Blockmate::GetDomainFromAddress200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** |  | [optional] |
| **metadata** | [**GetDomainFromAddress200ResponseMetadata**](GetDomainFromAddress200ResponseMetadata.md) |  | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::GetDomainFromAddress200Response.new(
  domain: alice.eth,
  metadata: null
)
```

