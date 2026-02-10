//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssignmentResponse {
  /// Returns a new [AssignmentResponse] instance.
  AssignmentResponse({
    this.assignmentId,
    this.name,
    this.description,
    this.active,
    this.created,
    this.updated,
    this.assignee,
    this.creator,
    this.lastReportedBy,
    this.location,
    this.currentStatus,
    this.currentStatusType,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? assignmentId;

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
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

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
  AccountShortResponse? assignee;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? creator;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? lastReportedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RetailerLocationShortResponse? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssignmentStatusResponse? currentStatus;

  AssignmentResponseCurrentStatusTypeEnum? currentStatusType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssignmentResponse &&
    other.assignmentId == assignmentId &&
    other.name == name &&
    other.description == description &&
    other.active == active &&
    other.created == created &&
    other.updated == updated &&
    other.assignee == assignee &&
    other.creator == creator &&
    other.lastReportedBy == lastReportedBy &&
    other.location == location &&
    other.currentStatus == currentStatus &&
    other.currentStatusType == currentStatusType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assignmentId == null ? 0 : assignmentId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (assignee == null ? 0 : assignee!.hashCode) +
    (creator == null ? 0 : creator!.hashCode) +
    (lastReportedBy == null ? 0 : lastReportedBy!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (currentStatus == null ? 0 : currentStatus!.hashCode) +
    (currentStatusType == null ? 0 : currentStatusType!.hashCode);

  @override
  String toString() => 'AssignmentResponse[assignmentId=$assignmentId, name=$name, description=$description, active=$active, created=$created, updated=$updated, assignee=$assignee, creator=$creator, lastReportedBy=$lastReportedBy, location=$location, currentStatus=$currentStatus, currentStatusType=$currentStatusType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assignmentId != null) {
      json[r'assignmentId'] = this.assignmentId;
    } else {
      json[r'assignmentId'] = null;
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
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.creator != null) {
      json[r'creator'] = this.creator;
    } else {
      json[r'creator'] = null;
    }
    if (this.lastReportedBy != null) {
      json[r'lastReportedBy'] = this.lastReportedBy;
    } else {
      json[r'lastReportedBy'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
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
    return json;
  }

  /// Returns a new [AssignmentResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssignmentResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssignmentResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssignmentResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssignmentResponse(
        assignmentId: mapValueOfType<int>(json, r'assignmentId'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        active: mapValueOfType<bool>(json, r'active'),
        created: mapValueOfType<int>(json, r'created'),
        updated: mapValueOfType<int>(json, r'updated'),
        assignee: AccountShortResponse.fromJson(json[r'assignee']),
        creator: AccountShortResponse.fromJson(json[r'creator']),
        lastReportedBy: AccountShortResponse.fromJson(json[r'lastReportedBy']),
        location: RetailerLocationShortResponse.fromJson(json[r'location']),
        currentStatus: AssignmentStatusResponse.fromJson(json[r'currentStatus']),
        currentStatusType: AssignmentResponseCurrentStatusTypeEnum.fromJson(json[r'currentStatusType']),
      );
    }
    return null;
  }

  static List<AssignmentResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssignmentResponse> mapFromJson(dynamic json) {
    final map = <String, AssignmentResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssignmentResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssignmentResponse-objects as value to a dart map
  static Map<String, List<AssignmentResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssignmentResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssignmentResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AssignmentResponseCurrentStatusTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AssignmentResponseCurrentStatusTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW = AssignmentResponseCurrentStatusTypeEnum._(r'NEW');
  static const IN_PROGRESS = AssignmentResponseCurrentStatusTypeEnum._(r'IN_PROGRESS');
  static const SUBSCRIBED = AssignmentResponseCurrentStatusTypeEnum._(r'SUBSCRIBED');
  static const ARCHIVED = AssignmentResponseCurrentStatusTypeEnum._(r'ARCHIVED');

  /// List of all possible values in this [enum][AssignmentResponseCurrentStatusTypeEnum].
  static const values = <AssignmentResponseCurrentStatusTypeEnum>[
    NEW,
    IN_PROGRESS,
    SUBSCRIBED,
    ARCHIVED,
  ];

  static AssignmentResponseCurrentStatusTypeEnum? fromJson(dynamic value) => AssignmentResponseCurrentStatusTypeEnumTypeTransformer().decode(value);

  static List<AssignmentResponseCurrentStatusTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssignmentResponseCurrentStatusTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssignmentResponseCurrentStatusTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AssignmentResponseCurrentStatusTypeEnum] to String,
/// and [decode] dynamic data back to [AssignmentResponseCurrentStatusTypeEnum].
class AssignmentResponseCurrentStatusTypeEnumTypeTransformer {
  factory AssignmentResponseCurrentStatusTypeEnumTypeTransformer() => _instance ??= const AssignmentResponseCurrentStatusTypeEnumTypeTransformer._();

  const AssignmentResponseCurrentStatusTypeEnumTypeTransformer._();

  String encode(AssignmentResponseCurrentStatusTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AssignmentResponseCurrentStatusTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AssignmentResponseCurrentStatusTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW': return AssignmentResponseCurrentStatusTypeEnum.NEW;
        case r'IN_PROGRESS': return AssignmentResponseCurrentStatusTypeEnum.IN_PROGRESS;
        case r'SUBSCRIBED': return AssignmentResponseCurrentStatusTypeEnum.SUBSCRIBED;
        case r'ARCHIVED': return AssignmentResponseCurrentStatusTypeEnum.ARCHIVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AssignmentResponseCurrentStatusTypeEnumTypeTransformer] instance.
  static AssignmentResponseCurrentStatusTypeEnumTypeTransformer? _instance;
}


