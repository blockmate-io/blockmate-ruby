# Blockmate::GetAccountHint200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  |  |
| **url** | **String** |  |  |
| **intro** | **String** |  |  |
| **fields** | [**GetAccountHint200ResponseFields**](GetAccountHint200ResponseFields.md) |  |  |
| **oauth** | **Boolean** |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::GetAccountHint200Response.new(
  description: Bitcoin (BTC),
  url: some-url,
  intro: Use your address to connect your account.,
  fields: null,
  oauth: false
)
```

