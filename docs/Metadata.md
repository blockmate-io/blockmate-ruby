# Blockmate::Metadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image** | **String** | String - URL to the NFT asset image. Can be standard URLs pointing to images on conventional servers, IPFS, or Arweave. Most types of images (SVGs, PNGs, JPEGs, etc.) are supported by NFT marketplaces. | [optional] |
| **external_url** | **String** | String - The image URL that appears alongside the asset image on NFT platforms. | [optional] |
| **background_color** | **String** | String - Background color of the NFT item. Usually must be defined as a six-character hexadecimal. | [optional] |
| **name** | **String** | String - Name of the NFT asset. | [optional] |
| **description** | **String** | String - Human-readable description of the NFT asset. (Markdown is supported/rendered on OpenSea and other NFT platforms) | [optional] |
| **attributes** | [**Array&lt;MetadataAttributesInner&gt;**](MetadataAttributesInner.md) | Object - Traits/attributes/characteristics for each NFT asset. | [optional] |
| **media** | [**NftMedia**](NftMedia.md) |  | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::Metadata.new(
  image: null,
  external_url: null,
  background_color: null,
  name: null,
  description: null,
  attributes: null,
  media: null
)
```

