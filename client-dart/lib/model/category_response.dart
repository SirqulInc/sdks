//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CategoryResponse {
  /// Returns a new [CategoryResponse] instance.
  CategoryResponse({
    this.categoryId,
    this.name,
    this.display,
    this.subCategoryCount,
    this.parentId,
    this.parentName,
    this.description,
    this.active,
    this.asset,
    this.favoriteId,
    this.favorite,
    this.applicationId,
    this.type,
    this.externalId,
    this.externalType,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? categoryId;

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
  String? display;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subCategoryCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentName;

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
  AssetShortResponse? asset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? favoriteId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? favorite;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? applicationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CategoryResponse &&
    other.categoryId == categoryId &&
    other.name == name &&
    other.display == display &&
    other.subCategoryCount == subCategoryCount &&
    other.parentId == parentId &&
    other.parentName == parentName &&
    other.description == description &&
    other.active == active &&
    other.asset == asset &&
    other.favoriteId == favoriteId &&
    other.favorite == favorite &&
    other.applicationId == applicationId &&
    other.type == type &&
    other.externalId == externalId &&
    other.externalType == externalType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (categoryId == null ? 0 : categoryId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (subCategoryCount == null ? 0 : subCategoryCount!.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (parentName == null ? 0 : parentName!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (asset == null ? 0 : asset!.hashCode) +
    (favoriteId == null ? 0 : favoriteId!.hashCode) +
    (favorite == null ? 0 : favorite!.hashCode) +
    (applicationId == null ? 0 : applicationId!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (externalType == null ? 0 : externalType!.hashCode);

  @override
  String toString() => 'CategoryResponse[categoryId=$categoryId, name=$name, display=$display, subCategoryCount=$subCategoryCount, parentId=$parentId, parentName=$parentName, description=$description, active=$active, asset=$asset, favoriteId=$favoriteId, favorite=$favorite, applicationId=$applicationId, type=$type, externalId=$externalId, externalType=$externalType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.categoryId != null) {
      json[r'categoryId'] = this.categoryId;
    } else {
      json[r'categoryId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.subCategoryCount != null) {
      json[r'subCategoryCount'] = this.subCategoryCount;
    } else {
      json[r'subCategoryCount'] = null;
    }
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
    if (this.parentName != null) {
      json[r'parentName'] = this.parentName;
    } else {
      json[r'parentName'] = null;
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
    if (this.asset != null) {
      json[r'asset'] = this.asset;
    } else {
      json[r'asset'] = null;
    }
    if (this.favoriteId != null) {
      json[r'favoriteId'] = this.favoriteId;
    } else {
      json[r'favoriteId'] = null;
    }
    if (this.favorite != null) {
      json[r'favorite'] = this.favorite;
    } else {
      json[r'favorite'] = null;
    }
    if (this.applicationId != null) {
      json[r'applicationId'] = this.applicationId;
    } else {
      json[r'applicationId'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.externalType != null) {
      json[r'externalType'] = this.externalType;
    } else {
      json[r'externalType'] = null;
    }
    return json;
  }

  /// Returns a new [CategoryResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CategoryResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CategoryResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CategoryResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CategoryResponse(
        categoryId: mapValueOfType<int>(json, r'categoryId'),
        name: mapValueOfType<String>(json, r'name'),
        display: mapValueOfType<String>(json, r'display'),
        subCategoryCount: mapValueOfType<int>(json, r'subCategoryCount'),
        parentId: mapValueOfType<int>(json, r'parentId'),
        parentName: mapValueOfType<String>(json, r'parentName'),
        description: mapValueOfType<String>(json, r'description'),
        active: mapValueOfType<bool>(json, r'active'),
        asset: AssetShortResponse.fromJson(json[r'asset']),
        favoriteId: mapValueOfType<int>(json, r'favoriteId'),
        favorite: mapValueOfType<bool>(json, r'favorite'),
        applicationId: mapValueOfType<int>(json, r'applicationId'),
        type: mapValueOfType<String>(json, r'type'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        externalType: mapValueOfType<String>(json, r'externalType'),
      );
    }
    return null;
  }

  static List<CategoryResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CategoryResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CategoryResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CategoryResponse> mapFromJson(dynamic json) {
    final map = <String, CategoryResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CategoryResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CategoryResponse-objects as value to a dart map
  static Map<String, List<CategoryResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CategoryResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CategoryResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

