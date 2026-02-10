//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Assignment {
  /// Returns a new [Assignment] instance.
  Assignment({
    this.id,
    this.active,
    this.valid,
    this.name,
    this.description,
    this.assignee,
    this.retailerLocation,
    this.creator,
    this.lastUpdatedBy,
    this.currentStatus,
    this.currentStatusType,
    this.assets = const [],
    this.notes = const [],
    this.publicPermissions,
    this.userPermissions = const [],
    this.visibility,
    this.statuses = const [],
    this.application,
    this.approvalStatus,
    this.contentName,
    this.contentAsset,
    this.owner,
    this.noteCount,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

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
  String? name;

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
  Account? assignee;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetailerLocation? retailerLocation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? creator;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? lastUpdatedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssignmentStatus? currentStatus;

  AssignmentCurrentStatusTypeEnum? currentStatusType;

  List<Asset> assets;

  List<Note> notes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Permissions? publicPermissions;

  List<UserPermissions> userPermissions;

  AssignmentVisibilityEnum? visibility;

  List<AssignmentStatus> statuses;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Application? application;

  AssignmentApprovalStatusEnum? approvalStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? contentAsset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Account? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? noteCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Assignment &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.name == name &&
    other.description == description &&
    other.assignee == assignee &&
    other.retailerLocation == retailerLocation &&
    other.creator == creator &&
    other.lastUpdatedBy == lastUpdatedBy &&
    other.currentStatus == currentStatus &&
    other.currentStatusType == currentStatusType &&
    _deepEquality.equals(other.assets, assets) &&
    _deepEquality.equals(other.notes, notes) &&
    other.publicPermissions == publicPermissions &&
    _deepEquality.equals(other.userPermissions, userPermissions) &&
    other.visibility == visibility &&
    _deepEquality.equals(other.statuses, statuses) &&
    other.application == application &&
    other.approvalStatus == approvalStatus &&
    other.contentName == contentName &&
    other.contentAsset == contentAsset &&
    other.owner == owner &&
    other.noteCount == noteCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (assignee == null ? 0 : assignee!.hashCode) +
    (retailerLocation == null ? 0 : retailerLocation!.hashCode) +
    (creator == null ? 0 : creator!.hashCode) +
    (lastUpdatedBy == null ? 0 : lastUpdatedBy!.hashCode) +
    (currentStatus == null ? 0 : currentStatus!.hashCode) +
    (currentStatusType == null ? 0 : currentStatusType!.hashCode) +
    (assets.hashCode) +
    (notes.hashCode) +
    (publicPermissions == null ? 0 : publicPermissions!.hashCode) +
    (userPermissions.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (statuses.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (approvalStatus == null ? 0 : approvalStatus!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (contentAsset == null ? 0 : contentAsset!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode);

  @override
  String toString() => 'Assignment[id=$id, active=$active, valid=$valid, name=$name, description=$description, assignee=$assignee, retailerLocation=$retailerLocation, creator=$creator, lastUpdatedBy=$lastUpdatedBy, currentStatus=$currentStatus, currentStatusType=$currentStatusType, assets=$assets, notes=$notes, publicPermissions=$publicPermissions, userPermissions=$userPermissions, visibility=$visibility, statuses=$statuses, application=$application, approvalStatus=$approvalStatus, contentName=$contentName, contentAsset=$contentAsset, owner=$owner, noteCount=$noteCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.valid != null) {
      json[r'valid'] = this.valid;
    } else {
      json[r'valid'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.retailerLocation != null) {
      json[r'retailerLocation'] = this.retailerLocation;
    } else {
      json[r'retailerLocation'] = null;
    }
    if (this.creator != null) {
      json[r'creator'] = this.creator;
    } else {
      json[r'creator'] = null;
    }
    if (this.lastUpdatedBy != null) {
      json[r'lastUpdatedBy'] = this.lastUpdatedBy;
    } else {
      json[r'lastUpdatedBy'] = null;
    }
    if (this.currentStatus != null) {
      json[r'currentStatus'] = this.currentStatus;
    } else {
      json[r'currentStatus'] = null;
    }
    if (this.currentStatusType != null) {
      json[r'currentStatusType'] = this.currentStatusType;
    } else {
      json[r'currentStatusType'] = null;
    }
      json[r'assets'] = this.assets;
      json[r'notes'] = this.notes;
    if (this.publicPermissions != null) {
      json[r'publicPermissions'] = this.publicPermissions;
    } else {
      json[r'publicPermissions'] = null;
    }
      json[r'userPermissions'] = this.userPermissions;
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
      json[r'statuses'] = this.statuses;
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.approvalStatus != null) {
      json[r'approvalStatus'] = this.approvalStatus;
    } else {
      json[r'approvalStatus'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    if (this.contentAsset != null) {
      json[r'contentAsset'] = this.contentAsset;
    } else {
      json[r'contentAsset'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.noteCount != null) {
      json[r'noteCount'] = this.noteCount;
    } else {
      json[r'noteCount'] = null;
    }
    return json;
  }

  /// Returns a new [Assignment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Assignment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Assignment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Assignment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Assignment(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        assignee: Account.fromJson(json[r'assignee']),
        retailerLocation: RetailerLocation.fromJson(json[r'retailerLocation']),
        creator: Account.fromJson(json[r'creator']),
        lastUpdatedBy: Account.fromJson(json[r'lastUpdatedBy']),
        currentStatus: AssignmentStatus.fromJson(json[r'currentStatus']),
        currentStatusType: AssignmentCurrentStatusTypeEnum.fromJson(json[r'currentStatusType']),
        assets: Asset.listFromJson(json[r'assets']),
        notes: Note.listFromJson(json[r'notes']),
        publicPermissions: Permissions.fromJson(json[r'publicPermissions']),
        userPermissions: UserPermissions.listFromJson(json[r'userPermissions']),
        visibility: AssignmentVisibilityEnum.fromJson(json[r'visibility']),
        statuses: AssignmentStatus.listFromJson(json[r'statuses']),
        application: Application.fromJson(json[r'application']),
        approvalStatus: AssignmentApprovalStatusEnum.fromJson(json[r'approvalStatus']),
        contentName: mapValueOfType<String>(json, r'contentName'),
        contentAsset: Asset.fromJson(json[r'contentAsset']),
        owner: Account.fromJson(json[r'owner']),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
      );
    }
    return null;
  }

  static List<Assignment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Assignment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Assignment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Assignment> mapFromJson(dynamic json) {
    final map = <String, Assignment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Assignment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Assignment-objects as value to a dart map
  static Map<String, List<Assignment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Assignment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Assignment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AssignmentCurrentStatusTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentCurrentStatusTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = AssignmentCurrentStatusTypeEnum._(r'NEW');
  static const IN_PROGRESS = AssignmentCurrentStatusTypeEnum._(r'IN_PROGRESS');
  static const SUBSCRIBED = AssignmentCurrentStatusTypeEnum._(r'SUBSCRIBED');
  static const ARCHIVED = AssignmentCurrentStatusTypeEnum._(r'ARCHIVED');

  /// List of all possible values in this [enum][AssignmentCurrentStatusTypeEnum].
  static const values = <AssignmentCurrentStatusTypeEnum>[
    NEW,
    IN_PROGRESS,
    SUBSCRIBED,
    ARCHIVED,
  ];

  static AssignmentCurrentStatusTypeEnum? fromJson(dynamic value) => AssignmentCurrentStatusTypeEnumTypeTransformer().decode(value);

  static List<AssignmentCurrentStatusTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentCurrentStatusTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentCurrentStatusTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentCurrentStatusTypeEnum] to String,
/// and [decode] dynamic data back to [AssignmentCurrentStatusTypeEnum].
class AssignmentCurrentStatusTypeEnumTypeTransformer {
  factory AssignmentCurrentStatusTypeEnumTypeTransformer() => _instance ??= const AssignmentCurrentStatusTypeEnumTypeTransformer._();

  const AssignmentCurrentStatusTypeEnumTypeTransformer._();

  String encode(AssignmentCurrentStatusTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentCurrentStatusTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentCurrentStatusTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return AssignmentCurrentStatusTypeEnum.NEW;
        case r'IN_PROGRESS': return AssignmentCurrentStatusTypeEnum.IN_PROGRESS;
        case r'SUBSCRIBED': return AssignmentCurrentStatusTypeEnum.SUBSCRIBED;
        case r'ARCHIVED': return AssignmentCurrentStatusTypeEnum.ARCHIVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentCurrentStatusTypeEnumTypeTransformer] instance.
  static AssignmentCurrentStatusTypeEnumTypeTransformer? _instance;
}



class AssignmentVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = AssignmentVisibilityEnum._(r'PUBLIC');
  static const PRIVATE = AssignmentVisibilityEnum._(r'PRIVATE');
  static const FRIENDS = AssignmentVisibilityEnum._(r'FRIENDS');

  /// List of all possible values in this [enum][AssignmentVisibilityEnum].
  static const values = <AssignmentVisibilityEnum>[
    PUBLIC,
    PRIVATE,
    FRIENDS,
  ];

  static AssignmentVisibilityEnum? fromJson(dynamic value) => AssignmentVisibilityEnumTypeTransformer().decode(value);

  static List<AssignmentVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentVisibilityEnum] to String,
/// and [decode] dynamic data back to [AssignmentVisibilityEnum].
class AssignmentVisibilityEnumTypeTransformer {
  factory AssignmentVisibilityEnumTypeTransformer() => _instance ??= const AssignmentVisibilityEnumTypeTransformer._();

  const AssignmentVisibilityEnumTypeTransformer._();

  String encode(AssignmentVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return AssignmentVisibilityEnum.PUBLIC;
        case r'PRIVATE': return AssignmentVisibilityEnum.PRIVATE;
        case r'FRIENDS': return AssignmentVisibilityEnum.FRIENDS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentVisibilityEnumTypeTransformer] instance.
  static AssignmentVisibilityEnumTypeTransformer? _instance;
}



class AssignmentApprovalStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentApprovalStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = AssignmentApprovalStatusEnum._(r'PENDING');
  static const REJECTED = AssignmentApprovalStatusEnum._(r'REJECTED');
  static const APPROVED = AssignmentApprovalStatusEnum._(r'APPROVED');
  static const FEATURED = AssignmentApprovalStatusEnum._(r'FEATURED');

  /// List of all possible values in this [enum][AssignmentApprovalStatusEnum].
  static const values = <AssignmentApprovalStatusEnum>[
    PENDING,
    REJECTED,
    APPROVED,
    FEATURED,
  ];

  static AssignmentApprovalStatusEnum? fromJson(dynamic value) => AssignmentApprovalStatusEnumTypeTransformer().decode(value);

  static List<AssignmentApprovalStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentApprovalStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentApprovalStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentApprovalStatusEnum] to String,
/// and [decode] dynamic data back to [AssignmentApprovalStatusEnum].
class AssignmentApprovalStatusEnumTypeTransformer {
  factory AssignmentApprovalStatusEnumTypeTransformer() => _instance ??= const AssignmentApprovalStatusEnumTypeTransformer._();

  const AssignmentApprovalStatusEnumTypeTransformer._();

  String encode(AssignmentApprovalStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentApprovalStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentApprovalStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return AssignmentApprovalStatusEnum.PENDING;
        case r'REJECTED': return AssignmentApprovalStatusEnum.REJECTED;
        case r'APPROVED': return AssignmentApprovalStatusEnum.APPROVED;
        case r'FEATURED': return AssignmentApprovalStatusEnum.FEATURED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentApprovalStatusEnumTypeTransformer] instance.
  static AssignmentApprovalStatusEnumTypeTransformer? _instance;
}


