# Blockmate::NftContractMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | String - NFT contract name. | [optional] |
| **symbol** | **String** | String - NFT contract symbol abbreviation. | [optional] |
| **total_supply** | **String** | String - Total number of NFTs in a given NFT collection. | [optional] |
| **token_type** | **String** | String - &#39;ERC721&#39; or &#39;ERC1155&#39; | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::NftContractMetadata.new(
  name: null,
  symbol: null,
  total_supply: null,
  token_type: null
)
```

