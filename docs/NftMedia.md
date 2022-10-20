# Blockmate::NftMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **raw** | **String** | String - Uri representing the location of the NFT&#39;s original metadata blob. This is a backup for you to parse when the metadata field is not automatically populated. | [optional] |
| **gateway** | **String** | String - Public gateway uri for the raw uri above. | [optional] |
| **thumbnail** | **String** | URL for a resized thumbnail of the NFT media asset. | [optional] |
| **format** | **String** | The media format (jpg, gif, png, etc.) of the gateway and thumbnail assets. | [optional] |
| **bytes** | **Integer** | The size of the media asset in bytes. | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::NftMedia.new(
  raw: null,
  gateway: null,
  thumbnail: null,
  format: null,
  bytes: null
)
```

