# BIN Lookup API - Dart/Flutter Client

BIN Lookup is a simple tool for looking up BIN number information. It returns information such as the bank, card type, and more based on the BIN number provided.

[![pub package](https://img.shields.io/pub/v/apiverve_binlookup.svg)](https://pub.dev/packages/apiverve_binlookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [BIN Lookup API](https://apiverve.com/marketplace/binlookup?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_binlookup: ^1.1.13
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
    "issuer": {
      "name": "JPMORGAN CHASE BANK, N.A.",
      "country": "United States",
      "phone": "1-800-432-3117",
      "website": "www.chase.com"
    },
    "location": {
      "country": "United States",
      "latitude": "37.0902",
      "longitude": "-95.7129",
      "alpha2": "US",
      "alpha3": "USA"
    }
  }
}
```

## API Reference

- **API Home:** [BIN Lookup API](https://apiverve.com/marketplace/binlookup?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/binlookup](https://docs.apiverve.com/ref/binlookup?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
