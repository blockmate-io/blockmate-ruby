# Blockmate::AccountProviderHintFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** |  | [optional] |
| **api_secret** | **String** |  | [optional] |
| **api_passphrase** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **wallet** | **String** |  | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::AccountProviderHintFields.new(
  api_key: API Key,
  api_secret: API Secret,
  api_passphrase: API Passphrase,
  description: Account description,
  wallet: Address
)
```

