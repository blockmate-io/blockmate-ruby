# Blockmate::GetDomainFromAddress200ResponseMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**Array&lt;GetDomainFromAddress200ResponseMetadataAttributesInner&gt;**](GetDomainFromAddress200ResponseMetadataAttributesInner.md) |  | [optional] |
| **background_image** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **image** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **is_normalized** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **name_length** | **Integer** |  | [optional] |
| **segment_length** | **Integer** |  | [optional] |
| **url** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::GetDomainFromAddress200ResponseMetadata.new(
  attributes: null,
  background_image: https://metadata.ens.domains/mainnet/avatar/alice.eth,
  description: alice.eth, an ENS name.,
  image: https://metadata.ens.domains/mainnet/0x57f1887a8BF19b14fC0dF6Fd9B2acc9Af147eA85/0x9c0257114eb9399a2985f8e75dad7600c5d89fe3824ffa99ec1c3eb8bf3b0501/image,
  image_url: https://metadata.ens.domains/mainnet/0x57f1887a8BF19b14fC0dF6Fd9B2acc9Af147eA85/0x9c0257114eb9399a2985f8e75dad7600c5d89fe3824ffa99ec1c3eb8bf3b0501/image,
  is_normalized: true,
  name: alice.eth,
  name_length: 5,
  segment_length: 5,
  url: https://app.ens.domains/name/alice.eth,
  version: 0
)
```

