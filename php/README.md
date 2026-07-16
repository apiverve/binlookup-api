# BIN Lookup API - PHP Package

BIN Lookup is a simple tool for looking up BIN number information. It returns information such as the bank, card type, and more based on the BIN number provided.

## Installation

Install via Composer:

```bash
composer require apiverve/binlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Binlookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['bin' => '448590']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Binlookup\Client;
use APIVerve\Binlookup\Exceptions\APIException;
use APIVerve\Binlookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['bin' => '448590']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/binlookup?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/binlookup?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/binlookup?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
