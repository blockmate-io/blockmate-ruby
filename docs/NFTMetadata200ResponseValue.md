# Blockmate::NFTMetadata200ResponseValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owned_nfts** | [**Array&lt;OwnedNft&gt;**](OwnedNft.md) |  | [optional] |
| **total_count** | **String** | String - Total number of NFTs owned by the given address. | [optional] |
| **block_hash** | **String** | String - The canonical head block hash of when your request was received | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::NFTMetadata200ResponseValue.new(
  owned_nfts: null,
  total_count: null,
  block_hash: null
)
```

