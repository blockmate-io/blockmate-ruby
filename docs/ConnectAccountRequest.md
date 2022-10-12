# Blockmate::ConnectAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet** | **String** |  |  |
| **description** | **String** |  |  |

## Example

```ruby
require 'blockmate'

instance = Blockmate::ConnectAccountRequest.new(
  wallet: bc1qjl7k0dpcsw3djmzq25qv6peavgxysq95pcduuq,
  description: some-description
)
```

