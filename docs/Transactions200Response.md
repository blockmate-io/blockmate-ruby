# Blockmate::Transactions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_cursor** | **String** | Use this as &#x60;cursor&#x60; in the next request to get the next page. The &#x60;page_cursor&#x60; has a one hour validity. | [optional] |
| **accounts** | [**Array&lt;Transactions200ResponseAccountsInner&gt;**](Transactions200ResponseAccountsInner.md) |  | [optional] |
| **transactions** | [**Array&lt;Transaction&gt;**](Transaction.md) |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::Transactions200Response.new(
  page_cursor: null,
  accounts: null,
  transactions: null
)
```

