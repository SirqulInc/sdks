//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Note {
  /// Returns a new [Note] instance.
  Note({
    this.id,
    this.active,
    this.valid,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.owner,
    this.notableType,
    this.notableId,
    this.noteTag,
    this.notes = const [],
    this.likes = const [],
    this.assets = const [],
    this.noteDescription,
    this.likeCount,
    this.dislikeCount,
    this.noteCount,
    this.flags = const [],
    this.flagCount,
    this.flagThreshold,
    this.contentName,
    this.defaultThreshold,
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
  double? latitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? longitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationDescription;

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
  String? notableType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? notableId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? noteTag;

  List<Note> notes;

  List<YayOrNay> likes;

  List<Asset> assets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? noteDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? likeCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dislikeCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? noteCount;

  List<Flag> flags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? flagCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FlagThreshold? flagThreshold;

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
  int? defaultThreshold;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Note &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    other.owner == owner &&
    other.notableType == notableType &&
    other.notableId == notableId &&
    other.noteTag == noteTag &&
    _deepEquality.equals(other.notes, notes) &&
    _deepEquality.equals(other.likes, likes) &&
    _deepEquality.equals(other.assets, assets) &&
    other.noteDescription == noteDescription &&
    other.likeCount == likeCount &&
    other.dislikeCount == dislikeCount &&
    other.noteCount == noteCount &&
    _deepEquality.equals(other.flags, flags) &&
    other.flagCount == flagCount &&
    other.flagThreshold == flagThreshold &&
    other.contentName == contentName &&
    other.defaultThreshold == defaultThreshold;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (notableType == null ? 0 : notableType!.hashCode) +
    (notableId == null ? 0 : notableId!.hashCode) +
    (noteTag == null ? 0 : noteTag!.hashCode) +
    (notes.hashCode) +
    (likes.hashCode) +
    (assets.hashCode) +
    (noteDescription == null ? 0 : noteDescription!.hashCode) +
    (likeCount == null ? 0 : likeCount!.hashCode) +
    (dislikeCount == null ? 0 : dislikeCount!.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (flags.hashCode) +
    (flagCount == null ? 0 : flagCount!.hashCode) +
    (flagThreshold == null ? 0 : flagThreshold!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (defaultThreshold == null ? 0 : defaultThreshold!.hashCode);

  @override
  String toString() => 'Note[id=$id, active=$active, valid=$valid, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, owner=$owner, notableType=$notableType, notableId=$notableId, noteTag=$noteTag, notes=$notes, likes=$likes, assets=$assets, noteDescription=$noteDescription, likeCount=$likeCount, dislikeCount=$dislikeCount, noteCount=$noteCount, flags=$flags, flagCount=$flagCount, flagThreshold=$flagThreshold, contentName=$contentName, defaultThreshold=$defaultThreshold]';

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
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
    }
    if (this.locationDescription != null) {
      json[r'locationDescription'] = this.locationDescription;
    } else {
      json[r'locationDescription'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.notableType != null) {
      json[r'notableType'] = this.notableType;
    } else {
      json[r'notableType'] = null;
    }
    if (this.notableId != null) {
      json[r'notableId'] = this.notableId;
    } else {
      json[r'notableId'] = null;
    }
    if (this.noteTag != null) {
      json[r'noteTag'] = this.noteTag;
    } else {
      json[r'noteTag'] = null;
    }
      json[r'notes'] = this.notes;
      json[r'likes'] = this.likes;
      json[r'assets'] = this.assets;
    if (this.noteDescription != null) {
      json[r'noteDescription'] = this.noteDescription;
    } else {
      json[r'noteDescription'] = null;
    }
    if (this.likeCount != null) {
      json[r'likeCount'] = this.likeCount;
    } else {
      json[r'likeCount'] = null;
    }
    if (this.dislikeCount != null) {
      json[r'dislikeCount'] = this.dislikeCount;
    } else {
      json[r'dislikeCount'] = null;
    }
    if (this.noteCount != null) {
      json[r'noteCount'] = this.noteCount;
    } else {
      json[r'noteCount'] = null;
    }
      json[r'flags'] = this.flags;
    if (this.flagCount != null) {
      json[r'flagCount'] = this.flagCount;
    } else {
      json[r'flagCount'] = null;
    }
    if (this.flagThreshold != null) {
      json[r'flagThreshold'] = this.flagThreshold;
    } else {
      json[r'flagThreshold'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    if (this.defaultThreshold != null) {
      json[r'defaultThreshold'] = this.defaultThreshold;
    } else {
      json[r'defaultThreshold'] = null;
    }
    return json;
  }

  /// Returns a new [Note] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Note? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Note[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Note[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Note(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        owner: Account.fromJson(json[r'owner']),
        notableType: mapValueOfType<String>(json, r'notableType'),
        notableId: mapValueOfType<int>(json, r'notableId'),
        noteTag: mapValueOfType<String>(json, r'noteTag'),
        notes: Note.listFromJson(json[r'notes']),
        likes: YayOrNay.listFromJson(json[r'likes']),
        assets: Asset.listFromJson(json[r'assets']),
        noteDescription: mapValueOfType<String>(json, r'noteDescription'),
        likeCount: mapValueOfType<int>(json, r'likeCount'),
        dislikeCount: mapValueOfType<int>(json, r'dislikeCount'),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        flags: Flag.listFromJson(json[r'flags']),
        flagCount: mapValueOfType<int>(json, r'flagCount'),
        flagThreshold: FlagThreshold.fromJson(json[r'flagThreshold']),
        contentName: mapValueOfType<String>(json, r'contentName'),
        defaultThreshold: mapValueOfType<int>(json, r'defaultThreshold'),
      );
    }
    return null;
  }

  static List<Note> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Note>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Note.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Note> mapFromJson(dynamic json) {
    final map = <String, Note>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Note.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Note-objects as value to a dart map
  static Map<String, List<Note>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Note>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Note.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

