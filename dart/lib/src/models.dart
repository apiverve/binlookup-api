/// Response models for the BIN Lookup API.

/// API Response wrapper.
class BinlookupResponse {
  final String status;
  final dynamic error;
  final BinlookupData? data;

  BinlookupResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory BinlookupResponse.fromJson(Map<String, dynamic> json) => BinlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BinlookupData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the BIN Lookup API.

class BinlookupData {
  String? bin;
  String? brand;
  String? type;
  String? category;
  BinlookupDataIssuer? issuer;
  BinlookupDataLocation? location;

  BinlookupData({
    this.bin,
    this.brand,
    this.type,
    this.category,
    this.issuer,
    this.location,
  });

  factory BinlookupData.fromJson(Map<String, dynamic> json) => BinlookupData(
      bin: json['bin'],
      brand: json['brand'],
      type: json['type'],
      category: json['category'],
      issuer: json['issuer'] != null ? BinlookupDataIssuer.fromJson(json['issuer']) : null,
      location: json['location'] != null ? BinlookupDataLocation.fromJson(json['location']) : null,
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
  String? country;
  String? latitude;
  String? longitude;
  String? alpha2;
  String? alpha3;

  BinlookupDataLocation({
    this.country,
    this.latitude,
    this.longitude,
    this.alpha2,
    this.alpha3,
  });

  factory BinlookupDataLocation.fromJson(Map<String, dynamic> json) => BinlookupDataLocation(
      country: json['country'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      alpha2: json['alpha2'],
      alpha3: json['alpha3'],
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
