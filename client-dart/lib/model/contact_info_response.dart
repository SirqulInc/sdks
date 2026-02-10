//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContactInfoResponse {
  /// Returns a new [ContactInfoResponse] instance.
  ContactInfoResponse({
    this.homePhone,
    this.cellPhone,
    this.cellPhoneCarrier,
    this.businessPhone,
    this.businessPhoneExt,
    this.faxNumber,
    this.timeZone,
    this.utcOffset,
    this.code501c3,
    this.emailAddress,
    this.address,
    this.web,
    this.cellCarrier,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? homePhone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cellPhone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cellPhoneCarrier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? businessPhone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? businessPhoneExt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? faxNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeZone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? utcOffset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code501c3;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AddressResponse? address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? web;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CellCarrierResponse? cellCarrier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactInfoResponse &&
    other.homePhone == homePhone &&
    other.cellPhone == cellPhone &&
    other.cellPhoneCarrier == cellPhoneCarrier &&
    other.businessPhone == businessPhone &&
    other.businessPhoneExt == businessPhoneExt &&
    other.faxNumber == faxNumber &&
    other.timeZone == timeZone &&
    other.utcOffset == utcOffset &&
    other.code501c3 == code501c3 &&
    other.emailAddress == emailAddress &&
    other.address == address &&
    other.web == web &&
    other.cellCarrier == cellCarrier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (homePhone == null ? 0 : homePhone!.hashCode) +
    (cellPhone == null ? 0 : cellPhone!.hashCode) +
    (cellPhoneCarrier == null ? 0 : cellPhoneCarrier!.hashCode) +
    (businessPhone == null ? 0 : businessPhone!.hashCode) +
    (businessPhoneExt == null ? 0 : businessPhoneExt!.hashCode) +
    (faxNumber == null ? 0 : faxNumber!.hashCode) +
    (timeZone == null ? 0 : timeZone!.hashCode) +
    (utcOffset == null ? 0 : utcOffset!.hashCode) +
    (code501c3 == null ? 0 : code501c3!.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (web == null ? 0 : web!.hashCode) +
    (cellCarrier == null ? 0 : cellCarrier!.hashCode);

  @override
  String toString() => 'ContactInfoResponse[homePhone=$homePhone, cellPhone=$cellPhone, cellPhoneCarrier=$cellPhoneCarrier, businessPhone=$businessPhone, businessPhoneExt=$businessPhoneExt, faxNumber=$faxNumber, timeZone=$timeZone, utcOffset=$utcOffset, code501c3=$code501c3, emailAddress=$emailAddress, address=$address, web=$web, cellCarrier=$cellCarrier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.homePhone != null) {
      json[r'homePhone'] = this.homePhone;
    } else {
      json[r'homePhone'] = null;
    }
    if (this.cellPhone != null) {
      json[r'cellPhone'] = this.cellPhone;
    } else {
      json[r'cellPhone'] = null;
    }
    if (this.cellPhoneCarrier != null) {
      json[r'cellPhoneCarrier'] = this.cellPhoneCarrier;
    } else {
      json[r'cellPhoneCarrier'] = null;
    }
    if (this.businessPhone != null) {
      json[r'businessPhone'] = this.businessPhone;
    } else {
      json[r'businessPhone'] = null;
    }
    if (this.businessPhoneExt != null) {
      json[r'businessPhoneExt'] = this.businessPhoneExt;
    } else {
      json[r'businessPhoneExt'] = null;
    }
    if (this.faxNumber != null) {
      json[r'faxNumber'] = this.faxNumber;
    } else {
      json[r'faxNumber'] = null;
    }
    if (this.timeZone != null) {
      json[r'timeZone'] = this.timeZone;
    } else {
      json[r'timeZone'] = null;
    }
    if (this.utcOffset != null) {
      json[r'utcOffset'] = this.utcOffset;
    } else {
      json[r'utcOffset'] = null;
    }
    if (this.code501c3 != null) {
      json[r'code501c3'] = this.code501c3;
    } else {
      json[r'code501c3'] = null;
    }
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.web != null) {
      json[r'web'] = this.web;
    } else {
      json[r'web'] = null;
    }
    if (this.cellCarrier != null) {
      json[r'cellCarrier'] = this.cellCarrier;
    } else {
      json[r'cellCarrier'] = null;
    }
    return json;
  }

  /// Returns a new [ContactInfoResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactInfoResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactInfoResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactInfoResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContactInfoResponse(
        homePhone: mapValueOfType<String>(json, r'homePhone'),
        cellPhone: mapValueOfType<String>(json, r'cellPhone'),
        cellPhoneCarrier: mapValueOfType<String>(json, r'cellPhoneCarrier'),
        businessPhone: mapValueOfType<String>(json, r'businessPhone'),
        businessPhoneExt: mapValueOfType<String>(json, r'businessPhoneExt'),
        faxNumber: mapValueOfType<String>(json, r'faxNumber'),
        timeZone: mapValueOfType<String>(json, r'timeZone'),
        utcOffset: mapValueOfType<String>(json, r'utcOffset'),
        code501c3: mapValueOfType<String>(json, r'code501c3'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        address: AddressResponse.fromJson(json[r'address']),
        web: mapValueOfType<String>(json, r'web'),
        cellCarrier: CellCarrierResponse.fromJson(json[r'cellCarrier']),
      );
    }
    return null;
  }

  static List<ContactInfoResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactInfoResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactInfoResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactInfoResponse> mapFromJson(dynamic json) {
    final map = <String, ContactInfoResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactInfoResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactInfoResponse-objects as value to a dart map
  static Map<String, List<ContactInfoResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactInfoResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactInfoResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

