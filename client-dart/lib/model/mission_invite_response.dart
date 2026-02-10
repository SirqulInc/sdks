//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MissionInviteResponse {
  /// Returns a new [MissionInviteResponse] instance.
  MissionInviteResponse({
    this.id,
    this.status,
    this.title,
    this.description,
    this.owner,
    this.permissionableId,
    this.permissionableType,
    this.ranked,
    this.rewarded,
    this.startDate,
    this.endDate,
    this.updated,
    this.buyBackAvailable,
    this.inviteStatus,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  MissionInviteResponseStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? permissionableId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? permissionableType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ranked;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? rewarded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? endDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? buyBackAvailable;

  MissionInviteResponseInviteStatusEnum? inviteStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissionInviteResponse &&
    other.id == id &&
    other.status == status &&
    other.title == title &&
    other.description == description &&
    other.owner == owner &&
    other.permissionableId == permissionableId &&
    other.permissionableType == permissionableType &&
    other.ranked == ranked &&
    other.rewarded == rewarded &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.updated == updated &&
    other.buyBackAvailable == buyBackAvailable &&
    other.inviteStatus == inviteStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (permissionableId == null ? 0 : permissionableId!.hashCode) +
    (permissionableType == null ? 0 : permissionableType!.hashCode) +
    (ranked == null ? 0 : ranked!.hashCode) +
    (rewarded == null ? 0 : rewarded!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (buyBackAvailable == null ? 0 : buyBackAvailable!.hashCode) +
    (inviteStatus == null ? 0 : inviteStatus!.hashCode);

  @override
  String toString() => 'MissionInviteResponse[id=$id, status=$status, title=$title, description=$description, owner=$owner, permissionableId=$permissionableId, permissionableType=$permissionableType, ranked=$ranked, rewarded=$rewarded, startDate=$startDate, endDate=$endDate, updated=$updated, buyBackAvailable=$buyBackAvailable, inviteStatus=$inviteStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.permissionableId != null) {
      json[r'permissionableId'] = this.permissionableId;
    } else {
      json[r'permissionableId'] = null;
    }
    if (this.permissionableType != null) {
      json[r'permissionableType'] = this.permissionableType;
    } else {
      json[r'permissionableType'] = null;
    }
    if (this.ranked != null) {
      json[r'ranked'] = this.ranked;
    } else {
      json[r'ranked'] = null;
    }
    if (this.rewarded != null) {
      json[r'rewarded'] = this.rewarded;
    } else {
      json[r'rewarded'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate;
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate;
    } else {
      json[r'endDate'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.buyBackAvailable != null) {
      json[r'buyBackAvailable'] = this.buyBackAvailable;
    } else {
      json[r'buyBackAvailable'] = null;
    }
    if (this.inviteStatus != null) {
      json[r'inviteStatus'] = this.inviteStatus;
    } else {
      json[r'inviteStatus'] = null;
    }
    return json;
  }

  /// Returns a new [MissionInviteResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MissionInviteResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MissionInviteResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MissionInviteResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MissionInviteResponse(
        id: mapValueOfType<int>(json, r'id'),
        status: MissionInviteResponseStatusEnum.fromJson(json[r'status']),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        owner: AccountShortResponse.fromJson(json[r'owner']),
        permissionableId: mapValueOfType<int>(json, r'permissionableId'),
        permissionableType: mapValueOfType<String>(json, r'permissionableType'),
        ranked: mapValueOfType<bool>(json, r'ranked'),
        rewarded: mapValueOfType<bool>(json, r'rewarded'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        updated: mapValueOfType<int>(json, r'updated'),
        buyBackAvailable: mapValueOfType<bool>(json, r'buyBackAvailable'),
        inviteStatus: MissionInviteResponseInviteStatusEnum.fromJson(json[r'inviteStatus']),
      );
    }
    return null;
  }

  static List<MissionInviteResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionInviteResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionInviteResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MissionInviteResponse> mapFromJson(dynamic json) {
    final map = <String, MissionInviteResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MissionInviteResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MissionInviteResponse-objects as value to a dart map
  static Map<String, List<MissionInviteResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MissionInviteResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MissionInviteResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class MissionInviteResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const MissionInviteResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AVAILABLE = MissionInviteResponseStatusEnum._(r'AVAILABLE');
  static const PENDING = MissionInviteResponseStatusEnum._(r'PENDING');
  static const UPDATED = MissionInviteResponseStatusEnum._(r'UPDATED');
  static const ACCEPTED = MissionInviteResponseStatusEnum._(r'ACCEPTED');
  static const ACTIVE = MissionInviteResponseStatusEnum._(r'ACTIVE');
  static const BUY_BACK = MissionInviteResponseStatusEnum._(r'BUY_BACK');
  static const FAILED = MissionInviteResponseStatusEnum._(r'FAILED');
  static const QUIT = MissionInviteResponseStatusEnum._(r'QUIT');
  static const COMPLETED = MissionInviteResponseStatusEnum._(r'COMPLETED');
  static const PENDING_REVIEW = MissionInviteResponseStatusEnum._(r'PENDING_REVIEW');
  static const REJECTED = MissionInviteResponseStatusEnum._(r'REJECTED');

  /// List of all possible values in this [enum][MissionInviteResponseStatusEnum].
  static const values = <MissionInviteResponseStatusEnum>[
    AVAILABLE,
    PENDING,
    UPDATED,
    ACCEPTED,
    ACTIVE,
    BUY_BACK,
    FAILED,
    QUIT,
    COMPLETED,
    PENDING_REVIEW,
    REJECTED,
  ];

  static MissionInviteResponseStatusEnum? fromJson(dynamic value) => MissionInviteResponseStatusEnumTypeTransformer().decode(value);

  static List<MissionInviteResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionInviteResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionInviteResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MissionInviteResponseStatusEnum] to String,
/// and [decode] dynamic data back to [MissionInviteResponseStatusEnum].
class MissionInviteResponseStatusEnumTypeTransformer {
  factory MissionInviteResponseStatusEnumTypeTransformer() => _instance ??= const MissionInviteResponseStatusEnumTypeTransformer._();

  const MissionInviteResponseStatusEnumTypeTransformer._();

  String encode(MissionInviteResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MissionInviteResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MissionInviteResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AVAILABLE': return MissionInviteResponseStatusEnum.AVAILABLE;
        case r'PENDING': return MissionInviteResponseStatusEnum.PENDING;
        case r'UPDATED': return MissionInviteResponseStatusEnum.UPDATED;
        case r'ACCEPTED': return MissionInviteResponseStatusEnum.ACCEPTED;
        case r'ACTIVE': return MissionInviteResponseStatusEnum.ACTIVE;
        case r'BUY_BACK': return MissionInviteResponseStatusEnum.BUY_BACK;
        case r'FAILED': return MissionInviteResponseStatusEnum.FAILED;
        case r'QUIT': return MissionInviteResponseStatusEnum.QUIT;
        case r'COMPLETED': return MissionInviteResponseStatusEnum.COMPLETED;
        case r'PENDING_REVIEW': return MissionInviteResponseStatusEnum.PENDING_REVIEW;
        case r'REJECTED': return MissionInviteResponseStatusEnum.REJECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MissionInviteResponseStatusEnumTypeTransformer] instance.
  static MissionInviteResponseStatusEnumTypeTransformer? _instance;
}



class MissionInviteResponseInviteStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const MissionInviteResponseInviteStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AVAILABLE = MissionInviteResponseInviteStatusEnum._(r'AVAILABLE');
  static const PENDING = MissionInviteResponseInviteStatusEnum._(r'PENDING');
  static const UPDATED = MissionInviteResponseInviteStatusEnum._(r'UPDATED');
  static const ACCEPTED = MissionInviteResponseInviteStatusEnum._(r'ACCEPTED');
  static const ACTIVE = MissionInviteResponseInviteStatusEnum._(r'ACTIVE');
  static const BUY_BACK = MissionInviteResponseInviteStatusEnum._(r'BUY_BACK');
  static const FAILED = MissionInviteResponseInviteStatusEnum._(r'FAILED');
  static const QUIT = MissionInviteResponseInviteStatusEnum._(r'QUIT');
  static const COMPLETED = MissionInviteResponseInviteStatusEnum._(r'COMPLETED');
  static const PENDING_REVIEW = MissionInviteResponseInviteStatusEnum._(r'PENDING_REVIEW');
  static const REJECTED = MissionInviteResponseInviteStatusEnum._(r'REJECTED');

  /// List of all possible values in this [enum][MissionInviteResponseInviteStatusEnum].
  static const values = <MissionInviteResponseInviteStatusEnum>[
    AVAILABLE,
    PENDING,
    UPDATED,
    ACCEPTED,
    ACTIVE,
    BUY_BACK,
    FAILED,
    QUIT,
    COMPLETED,
    PENDING_REVIEW,
    REJECTED,
  ];

  static MissionInviteResponseInviteStatusEnum? fromJson(dynamic value) => MissionInviteResponseInviteStatusEnumTypeTransformer().decode(value);

  static List<MissionInviteResponseInviteStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionInviteResponseInviteStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionInviteResponseInviteStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MissionInviteResponseInviteStatusEnum] to String,
/// and [decode] dynamic data back to [MissionInviteResponseInviteStatusEnum].
class MissionInviteResponseInviteStatusEnumTypeTransformer {
  factory MissionInviteResponseInviteStatusEnumTypeTransformer() => _instance ??= const MissionInviteResponseInviteStatusEnumTypeTransformer._();

  const MissionInviteResponseInviteStatusEnumTypeTransformer._();

  String encode(MissionInviteResponseInviteStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MissionInviteResponseInviteStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MissionInviteResponseInviteStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AVAILABLE': return MissionInviteResponseInviteStatusEnum.AVAILABLE;
        case r'PENDING': return MissionInviteResponseInviteStatusEnum.PENDING;
        case r'UPDATED': return MissionInviteResponseInviteStatusEnum.UPDATED;
        case r'ACCEPTED': return MissionInviteResponseInviteStatusEnum.ACCEPTED;
        case r'ACTIVE': return MissionInviteResponseInviteStatusEnum.ACTIVE;
        case r'BUY_BACK': return MissionInviteResponseInviteStatusEnum.BUY_BACK;
        case r'FAILED': return MissionInviteResponseInviteStatusEnum.FAILED;
        case r'QUIT': return MissionInviteResponseInviteStatusEnum.QUIT;
        case r'COMPLETED': return MissionInviteResponseInviteStatusEnum.COMPLETED;
        case r'PENDING_REVIEW': return MissionInviteResponseInviteStatusEnum.PENDING_REVIEW;
        case r'REJECTED': return MissionInviteResponseInviteStatusEnum.REJECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MissionInviteResponseInviteStatusEnumTypeTransformer] instance.
  static MissionInviteResponseInviteStatusEnumTypeTransformer? _instance;
}


