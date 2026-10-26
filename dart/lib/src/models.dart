/// Response models for the BIN Lookup API.

/// API Response wrapper.
class BinlookupResponse {
  final String status;
  final dynamic error;
  final BinlookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BinlookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BinlookupResponse.fromJson(Map<String, dynamic> json) => BinlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BinlookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the BIN Lookup API.

class BinlookupData {
  String? bin;
  String? brand;
  String? type;
  String? category;
  String? country;
  BinlookupDataIssuer? issuer;
  BinlookupDataLocation? location;
  BinlookupDataNumber? number;

  BinlookupData({
    this.bin,
    this.brand,
    this.type,
    this.category,
    this.country,
    this.issuer,
    this.location,
    this.number,
  });

  factory BinlookupData.fromJson(Map<String, dynamic> json) => BinlookupData(
      bin: json['bin'],
      brand: json['brand'],
      type: json['type'],
      category: json['category'],
      country: json['country'],
      issuer: json['issuer'] != null ? BinlookupDataIssuer.fromJson(json['issuer']) : null,
      location: json['location'] != null ? BinlookupDataLocation.fromJson(json['location']) : null,
      number: json['number'] != null ? BinlookupDataNumber.fromJson(json['number']) : null,
    );
}

class BinlookupDataIssuer {
  String? name;
  String? country;
  String? phone;
  String? website;

  BinlookupDataIssuer({
    this.name,
    this.country,
    this.phone,
    this.website,
  });

  factory BinlookupDataIssuer.fromJson(Map<String, dynamic> json) => BinlookupDataIssuer(
      name: json['name'],
      country: json['country'],
      phone: json['phone'],
      website: json['website'],
    );
}

class BinlookupDataLocation {
  String? latitude;
  String? longitude;
  String? alpha2;
  String? alpha3;
  String? numeric;
  String? currency;
  List<String>? currencies;
  String? flag;

  BinlookupDataLocation({
    this.latitude,
    this.longitude,
    this.alpha2,
    this.alpha3,
    this.numeric,
    this.currency,
    this.currencies,
    this.flag,
  });

  factory BinlookupDataLocation.fromJson(Map<String, dynamic> json) => BinlookupDataLocation(
      latitude: json['latitude'],
      longitude: json['longitude'],
      alpha2: json['alpha2'],
      alpha3: json['alpha3'],
      numeric: json['numeric'],
      currency: json['currency'],
      currencies: (json['currencies'] as List?)?.cast<String>(),
      flag: json['flag'],
    );
}

class BinlookupDataNumber {
  String? scheme;
  List<num>? lengths;
  bool? luhn;
  BinlookupDataNumberCode? code;

  BinlookupDataNumber({
    this.scheme,
    this.lengths,
    this.luhn,
    this.code,
  });

  factory BinlookupDataNumber.fromJson(Map<String, dynamic> json) => BinlookupDataNumber(
      scheme: json['scheme'],
      lengths: (json['lengths'] as List?)?.cast<num>(),
      luhn: json['luhn'],
      code: json['code'] != null ? BinlookupDataNumberCode.fromJson(json['code']) : null,
    );
}

class BinlookupDataNumberCode {
  String? name;
  num? size;

  BinlookupDataNumberCode({
    this.name,
    this.size,
  });

  factory BinlookupDataNumberCode.fromJson(Map<String, dynamic> json) => BinlookupDataNumberCode(
      name: json['name'],
      size: json['size'],
    );
}

class BinlookupRequest {
  String bin;

  BinlookupRequest({
    required this.bin,
  });

  Map<String, dynamic> toJson() => {
      'bin': bin,
    };
}
