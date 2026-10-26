# BIN Lookup API - Dart/Flutter Client

BIN Lookup is a BIN checker API: send the first 6 to 8 digits of a payment card and get the card brand, type (debit or credit), issuing bank and country of issuance back as JSON. Check incoming cards at checkout before you charge them.

[![pub package](https://img.shields.io/pub/v/apiverve_binlookup.svg)](https://pub.dev/packages/apiverve_binlookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [BIN Lookup API](https://apiverve.com/marketplace/binlookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_binlookup: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_binlookup/apiverve_binlookup.dart';

void main() async {
  final client = BinlookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'bin': '448590'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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
      "alpha3": "USA",
      "numeric": "840",
      "currency": "USD",
      "currencies": [
        "USD"
      ],
      "flag": "🇺🇸"
    },
    "number": {
      "scheme": "visa",
      "lengths": [
        16,
        18,
        19
      ],
      "luhn": true,
      "code": {
        "name": "CVV",
        "size": 3
      }
    }
  }
}
```

## API Reference

- **API Home:** [BIN Lookup API](https://apiverve.com/marketplace/binlookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/binlookup](https://docs.apiverve.com/ref/binlookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
