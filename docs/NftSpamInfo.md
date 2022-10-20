# Blockmate::NftSpamInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spam** | **String** | \&quot;true\&quot; if contract is spam, else \&quot;false\&quot; | [optional] |
| **classifications** | **Array&lt;String&gt;** | List of reasons why a contract was classified as spam. | [optional] |

## Example

```ruby
require 'blockmate'

instance = Blockmate::NftSpamInfo.new(
  is_spam: null,
  classifications: null
)
```

