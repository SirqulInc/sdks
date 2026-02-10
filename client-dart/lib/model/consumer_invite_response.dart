//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConsumerInviteResponse {
  /// Returns a new [ConsumerInviteResponse] instance.
  ConsumerInviteResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.inviterId,
    this.inviter,
    this.connection,
    this.inviteText,
    this.token,
    this.albumCoverUrl,
    this.albumTitle,
    this.appName,
    this.welcomeText,
    this.application,
    this.retailerLocation,
    this.offer,
    this.album,
    this.returning,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? serializeNulls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startTimeLog;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorCode;

  List<NameStringValueResponse> request;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inviterId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? inviter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConnectionResponse? connection;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inviteText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? albumCoverUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? albumTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? welcomeText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ApplicationShortResponse? application;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetailerLocationResponse? retailerLocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OfferShortResponse? offer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AlbumResponse? album;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConsumerInviteResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    other.inviterId == inviterId &&
    other.inviter == inviter &&
    other.connection == connection &&
    other.inviteText == inviteText &&
    other.token == token &&
    other.albumCoverUrl == albumCoverUrl &&
    other.albumTitle == albumTitle &&
    other.appName == appName &&
    other.welcomeText == welcomeText &&
    other.application == application &&
    other.retailerLocation == retailerLocation &&
    other.offer == offer &&
    other.album == album &&
    other.returning == returning;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid == null ? 0 : valid!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (serializeNulls == null ? 0 : serializeNulls!.hashCode) +
    (startTimeLog == null ? 0 : startTimeLog!.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode) +
    (request.hashCode) +
    (inviterId == null ? 0 : inviterId!.hashCode) +
    (inviter == null ? 0 : inviter!.hashCode) +
    (connection == null ? 0 : connection!.hashCode) +
    (inviteText == null ? 0 : inviteText!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (albumCoverUrl == null ? 0 : albumCoverUrl!.hashCode) +
    (albumTitle == null ? 0 : albumTitle!.hashCode) +
    (appName == null ? 0 : appName!.hashCode) +
    (welcomeText == null ? 0 : welcomeText!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (retailerLocation == null ? 0 : retailerLocation!.hashCode) +
    (offer == null ? 0 : offer!.hashCode) +
    (album == null ? 0 : album!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'ConsumerInviteResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, inviterId=$inviterId, inviter=$inviter, connection=$connection, inviteText=$inviteText, token=$token, albumCoverUrl=$albumCoverUrl, albumTitle=$albumTitle, appName=$appName, welcomeText=$welcomeText, application=$application, retailerLocation=$retailerLocation, offer=$offer, album=$album, returning=$returning]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.serializeNulls != null) {
      json[r'serializeNulls'] = this.serializeNulls;
    } else {
      json[r'serializeNulls'] = null;
    }
    if (this.startTimeLog != null) {
      json[r'startTimeLog'] = this.startTimeLog;
    } else {
      json[r'startTimeLog'] = null;
    }
    if (this.errorCode != null) {
      json[r'errorCode'] = this.errorCode;
    } else {
      json[r'errorCode'] = null;
    }
      json[r'request'] = this.request;
    if (this.inviterId != null) {
      json[r'inviterId'] = this.inviterId;
    } else {
      json[r'inviterId'] = null;
    }
    if (this.inviter != null) {
      json[r'inviter'] = this.inviter;
    } else {
      json[r'inviter'] = null;
    }
    if (this.connection != null) {
      json[r'connection'] = this.connection;
    } else {
      json[r'connection'] = null;
    }
    if (this.inviteText != null) {
      json[r'inviteText'] = this.inviteText;
    } else {
      json[r'inviteText'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.albumCoverUrl != null) {
      json[r'albumCoverUrl'] = this.albumCoverUrl;
    } else {
      json[r'albumCoverUrl'] = null;
    }
    if (this.albumTitle != null) {
      json[r'albumTitle'] = this.albumTitle;
    } else {
      json[r'albumTitle'] = null;
    }
    if (this.appName != null) {
      json[r'appName'] = this.appName;
    } else {
      json[r'appName'] = null;
    }
    if (this.welcomeText != null) {
      json[r'welcomeText'] = this.welcomeText;
    } else {
      json[r'welcomeText'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.retailerLocation != null) {
      json[r'retailerLocation'] = this.retailerLocation;
    } else {
      json[r'retailerLocation'] = null;
    }
    if (this.offer != null) {
      json[r'offer'] = this.offer;
    } else {
      json[r'offer'] = null;
    }
    if (this.album != null) {
      json[r'album'] = this.album;
    } else {
      json[r'album'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [ConsumerInviteResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConsumerInviteResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConsumerInviteResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConsumerInviteResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConsumerInviteResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        inviterId: mapValueOfType<int>(json, r'inviterId'),
        inviter: AccountShortResponse.fromJson(json[r'inviter']),
        connection: ConnectionResponse.fromJson(json[r'connection']),
        inviteText: mapValueOfType<String>(json, r'inviteText'),
        token: mapValueOfType<String>(json, r'token'),
        albumCoverUrl: mapValueOfType<String>(json, r'albumCoverUrl'),
        albumTitle: mapValueOfType<String>(json, r'albumTitle'),
        appName: mapValueOfType<String>(json, r'appName'),
        welcomeText: mapValueOfType<String>(json, r'welcomeText'),
        application: ApplicationShortResponse.fromJson(json[r'application']),
        retailerLocation: RetailerLocationResponse.fromJson(json[r'retailerLocation']),
        offer: OfferShortResponse.fromJson(json[r'offer']),
        album: AlbumResponse.fromJson(json[r'album']),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<ConsumerInviteResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConsumerInviteResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConsumerInviteResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConsumerInviteResponse> mapFromJson(dynamic json) {
    final map = <String, ConsumerInviteResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConsumerInviteResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConsumerInviteResponse-objects as value to a dart map
  static Map<String, List<ConsumerInviteResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConsumerInviteResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConsumerInviteResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

