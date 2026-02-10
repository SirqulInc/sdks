//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreativeResponse {
  /// Returns a new [CreativeResponse] instance.
  CreativeResponse({
    this.creativeId,
    this.active,
    this.name,
    this.description,
    this.image,
    this.action,
    this.content,
    this.suffix,
    this.type,
    this.appVersion,
    this.preview,
    this.owner,
    this.currentBid,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? creativeId;

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
  AssetShortResponse? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  JsonElement? content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? suffix;

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
  String? appVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? preview;

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
  BidResponse? currentBid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreativeResponse &&
    other.creativeId == creativeId &&
    other.active == active &&
    other.name == name &&
    other.description == description &&
    other.image == image &&
    other.action == action &&
    other.content == content &&
    other.suffix == suffix &&
    other.type == type &&
    other.appVersion == appVersion &&
    other.preview == preview &&
    other.owner == owner &&
    other.currentBid == currentBid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (creativeId == null ? 0 : creativeId!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (suffix == null ? 0 : suffix!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (appVersion == null ? 0 : appVersion!.hashCode) +
    (preview == null ? 0 : preview!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (currentBid == null ? 0 : currentBid!.hashCode);

  @override
  String toString() => 'CreativeResponse[creativeId=$creativeId, active=$active, name=$name, description=$description, image=$image, action=$action, content=$content, suffix=$suffix, type=$type, appVersion=$appVersion, preview=$preview, owner=$owner, currentBid=$currentBid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.creativeId != null) {
      json[r'creativeId'] = this.creativeId;
    } else {
      json[r'creativeId'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
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
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.suffix != null) {
      json[r'suffix'] = this.suffix;
    } else {
      json[r'suffix'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.appVersion != null) {
      json[r'appVersion'] = this.appVersion;
    } else {
      json[r'appVersion'] = null;
    }
    if (this.preview != null) {
      json[r'preview'] = this.preview;
    } else {
      json[r'preview'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.currentBid != null) {
      json[r'currentBid'] = this.currentBid;
    } else {
      json[r'currentBid'] = null;
    }
    return json;
  }

  /// Returns a new [CreativeResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreativeResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreativeResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreativeResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreativeResponse(
        creativeId: mapValueOfType<int>(json, r'creativeId'),
        active: mapValueOfType<bool>(json, r'active'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        image: AssetShortResponse.fromJson(json[r'image']),
        action: mapValueOfType<String>(json, r'action'),
        content: JsonElement.fromJson(json[r'content']),
        suffix: mapValueOfType<String>(json, r'suffix'),
        type: mapValueOfType<String>(json, r'type'),
        appVersion: mapValueOfType<String>(json, r'appVersion'),
        preview: mapValueOfType<bool>(json, r'preview'),
        owner: AccountShortResponse.fromJson(json[r'owner']),
        currentBid: BidResponse.fromJson(json[r'currentBid']),
      );
    }
    return null;
  }

  static List<CreativeResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreativeResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreativeResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreativeResponse> mapFromJson(dynamic json) {
    final map = <String, CreativeResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreativeResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreativeResponse-objects as value to a dart map
  static Map<String, List<CreativeResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreativeResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreativeResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

