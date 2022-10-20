# Blockmate::OwnedNft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract** | [**OwnedNftContract**](OwnedNftContract.md) |  | [optional] |
| **id** | [**NftId**](NftId.md) |  | [optional] |
| **balance** | **String** | String - Token balance | [optional] |
| **title** | **String** | String - Name of the NFT asset. | [optional] |
| **description** | **String** | String - Brief human-readable description | [optional] |
| **token_uri** | [**NftTokenUri**](NftTokenUri.md) |  | [optional] |
| **media** | [**OwnedNftMedia**](OwnedNftMedia.md) |  | [optional] |
| **metadata** | [**Metadata**](Metadata.md) |  | [optional] |
| **time_last_updated** | **String** | String - ISO timestamp of the last cache refresh for the information returned in the metadata field. | [optional] |
| **error** | **String** | String - A string describing a particular reason that we were unable to fetch complete metadata for the NFT. | [optional] |
| **contract_metadata** | [**NftContractMetadata**](NftContractMetadata.md) |  | [optional] |
| **spam_info** | [**NftSpamInfo**](NftSpamInfo.md) |  | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::OwnedNft.new(
  contract: null,
  id: null,
  balance: null,
  title: null,
  description: null,
  token_uri: null,
  media: null,
  metadata: null,
  time_last_updated: null,
  error: null,
  contract_metadata: null,
  spam_info: null
)
```

