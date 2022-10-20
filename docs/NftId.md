# Blockmate::NftId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_id** | **String** | String - The ID of the token. Can be in hex or decimal format. | [optional] |
| **token_metadata** | [**NftIdTokenMetadata**](NftIdTokenMetadata.md) |  | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::NftId.new(
  token_id: null,
  token_metadata: null
)
```

