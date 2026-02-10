//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReportDefinition {
  /// Returns a new [ReportDefinition] instance.
  ReportDefinition({
    this.id,
    this.active,
    this.valid,
    this.query,
    this.queryName,
    this.displayName,
    this.columnNames = const [],
    this.nativeSql,
    this.display,
    this.dataSource,
    this.maxLimit,
    this.maxDateRange,
    this.displayParams,
    this.metaData,
    this.columnNamesRaw,
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
  String? query;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? queryName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  List<String> columnNames;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? nativeSql;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? display;

  ReportDefinitionDataSourceEnum? dataSource;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxDateRange;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayParams;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metaData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? columnNamesRaw;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReportDefinition &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.query == query &&
    other.queryName == queryName &&
    other.displayName == displayName &&
    _deepEquality.equals(other.columnNames, columnNames) &&
    other.nativeSql == nativeSql &&
    other.display == display &&
    other.dataSource == dataSource &&
    other.maxLimit == maxLimit &&
    other.maxDateRange == maxDateRange &&
    other.displayParams == displayParams &&
    other.metaData == metaData &&
    other.columnNamesRaw == columnNamesRaw;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (query == null ? 0 : query!.hashCode) +
    (queryName == null ? 0 : queryName!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (columnNames.hashCode) +
    (nativeSql == null ? 0 : nativeSql!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (dataSource == null ? 0 : dataSource!.hashCode) +
    (maxLimit == null ? 0 : maxLimit!.hashCode) +
    (maxDateRange == null ? 0 : maxDateRange!.hashCode) +
    (displayParams == null ? 0 : displayParams!.hashCode) +
    (metaData == null ? 0 : metaData!.hashCode) +
    (columnNamesRaw == null ? 0 : columnNamesRaw!.hashCode);

  @override
  String toString() => 'ReportDefinition[id=$id, active=$active, valid=$valid, query=$query, queryName=$queryName, displayName=$displayName, columnNames=$columnNames, nativeSql=$nativeSql, display=$display, dataSource=$dataSource, maxLimit=$maxLimit, maxDateRange=$maxDateRange, displayParams=$displayParams, metaData=$metaData, columnNamesRaw=$columnNamesRaw]';

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
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    if (this.queryName != null) {
      json[r'queryName'] = this.queryName;
    } else {
      json[r'queryName'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
      json[r'columnNames'] = this.columnNames;
    if (this.nativeSql != null) {
      json[r'nativeSql'] = this.nativeSql;
    } else {
      json[r'nativeSql'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.dataSource != null) {
      json[r'dataSource'] = this.dataSource;
    } else {
      json[r'dataSource'] = null;
    }
    if (this.maxLimit != null) {
      json[r'maxLimit'] = this.maxLimit;
    } else {
      json[r'maxLimit'] = null;
    }
    if (this.maxDateRange != null) {
      json[r'maxDateRange'] = this.maxDateRange;
    } else {
      json[r'maxDateRange'] = null;
    }
    if (this.displayParams != null) {
      json[r'displayParams'] = this.displayParams;
    } else {
      json[r'displayParams'] = null;
    }
    if (this.metaData != null) {
      json[r'metaData'] = this.metaData;
    } else {
      json[r'metaData'] = null;
    }
    if (this.columnNamesRaw != null) {
      json[r'columnNamesRaw'] = this.columnNamesRaw;
    } else {
      json[r'columnNamesRaw'] = null;
    }
    return json;
  }

  /// Returns a new [ReportDefinition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReportDefinition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReportDefinition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReportDefinition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReportDefinition(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        query: mapValueOfType<String>(json, r'query'),
        queryName: mapValueOfType<String>(json, r'queryName'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        columnNames: json[r'columnNames'] is Iterable
            ? (json[r'columnNames'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        nativeSql: mapValueOfType<bool>(json, r'nativeSql'),
        display: mapValueOfType<bool>(json, r'display'),
        dataSource: ReportDefinitionDataSourceEnum.fromJson(json[r'dataSource']),
        maxLimit: mapValueOfType<int>(json, r'maxLimit'),
        maxDateRange: mapValueOfType<int>(json, r'maxDateRange'),
        displayParams: mapValueOfType<String>(json, r'displayParams'),
        metaData: mapValueOfType<String>(json, r'metaData'),
        columnNamesRaw: mapValueOfType<String>(json, r'columnNamesRaw'),
      );
    }
    return null;
  }

  static List<ReportDefinition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReportDefinition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReportDefinition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReportDefinition> mapFromJson(dynamic json) {
    final map = <String, ReportDefinition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReportDefinition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReportDefinition-objects as value to a dart map
  static Map<String, List<ReportDefinition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReportDefinition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReportDefinition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ReportDefinitionDataSourceEnum {
  /// Instantiate a new enum with the provided [value].
  const ReportDefinitionDataSourceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WRITE = ReportDefinitionDataSourceEnum._(r'WRITE');
  static const ANALYTIC = ReportDefinitionDataSourceEnum._(r'ANALYTIC');
  static const rEAD1 = ReportDefinitionDataSourceEnum._(r'READ1');

  /// List of all possible values in this [enum][ReportDefinitionDataSourceEnum].
  static const values = <ReportDefinitionDataSourceEnum>[
    WRITE,
    ANALYTIC,
    rEAD1,
  ];

  static ReportDefinitionDataSourceEnum? fromJson(dynamic value) => ReportDefinitionDataSourceEnumTypeTransformer().decode(value);

  static List<ReportDefinitionDataSourceEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReportDefinitionDataSourceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReportDefinitionDataSourceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ReportDefinitionDataSourceEnum] to String,
/// and [decode] dynamic data back to [ReportDefinitionDataSourceEnum].
class ReportDefinitionDataSourceEnumTypeTransformer {
  factory ReportDefinitionDataSourceEnumTypeTransformer() => _instance ??= const ReportDefinitionDataSourceEnumTypeTransformer._();

  const ReportDefinitionDataSourceEnumTypeTransformer._();

  String encode(ReportDefinitionDataSourceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReportDefinitionDataSourceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReportDefinitionDataSourceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WRITE': return ReportDefinitionDataSourceEnum.WRITE;
        case r'ANALYTIC': return ReportDefinitionDataSourceEnum.ANALYTIC;
        case r'READ1': return ReportDefinitionDataSourceEnum.rEAD1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReportDefinitionDataSourceEnumTypeTransformer] instance.
  static ReportDefinitionDataSourceEnumTypeTransformer? _instance;
}


