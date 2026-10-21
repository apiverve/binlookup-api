# BIN Lookup API - Ruby Gem

BIN Lookup checks the first six digits of a payment card to return card brand, type, issuing bank, and country of issuance. Pass a card BIN to inspect whether incoming cards are debit, credit, or prepaid.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_binlookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_binlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_binlookup'

# Initialize the client
client = APIVerve::Binlookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ bin: "448590" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ bin: "448590" })
  puts response["data"]
rescue APIVerve::Binlookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Binlookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Binlookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "bin": "448590",
    "brand": "VISA",
    "type": "CREDIT",
    "category": "PURCHASING",
    "country": "United States",
    "issuer": {
      "name": "JPMORGAN CHASE BANK, N.A.",
      "country": "United States",
      "phone": "1-800-432-3117",
      "website": "www.chase.com"
    },
    "location": {
      "latitude": "37.0902",
      "longitude": "-95.7129",
      "alpha2": "US",
      "alpha3": "USA"
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/binlookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/binlookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/binlookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
