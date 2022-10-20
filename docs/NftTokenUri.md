# Blockmate::NftTokenUri

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **raw** | **String** | String - Uri representing the location of the NFT&#39;s original metadata blob. This is a backup for you to parse when the metadata field is not automatically populated. | [optional] |
| **gateway** | **String** | String - Public gateway uri for the raw uri above. | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::NftTokenUri.new(
  raw: null,
  gateway: null
)
```

