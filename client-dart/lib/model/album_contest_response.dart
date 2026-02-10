//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AlbumContestResponse {
  /// Returns a new [AlbumContestResponse] instance.
  AlbumContestResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.albumContestId,
    this.contestType,
    this.owner,
    this.title,
    this.description,
    this.visibility,
    this.startDate,
    this.endDate,
    this.likeCount,
    this.dislikeCount,
    this.commentsCount,
    this.userCount,
    this.comments = const [],
    this.likes = const [],
    this.connectionGroups = const [],
    this.connections = const [],
    this.hasLiked,
    this.userPermissions,
    this.publicPermissions,
    this.album1,
    this.album2,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.distance,
    this.dateCreated,
    this.dateUpdated,
    this.approvalStatus,
    this.voteCount,
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
  int? albumContestId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contestType;

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
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  AlbumContestResponseVisibilityEnum? visibility;

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
  int? commentsCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userCount;

  List<NoteFullResponse> comments;

  List<LikeResponse> likes;

  List<ConnectionGroupShortResponse> connectionGroups;

  List<ConnectionResponse> connections;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasLiked;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Permissions? userPermissions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Permissions? publicPermissions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AlbumFullResponse? album1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AlbumFullResponse? album2;

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
  double? distance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dateCreated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dateUpdated;

  AlbumContestResponseApprovalStatusEnum? approvalStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? voteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AlbumContestResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    other.albumContestId == albumContestId &&
    other.contestType == contestType &&
    other.owner == owner &&
    other.title == title &&
    other.description == description &&
    other.visibility == visibility &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.likeCount == likeCount &&
    other.dislikeCount == dislikeCount &&
    other.commentsCount == commentsCount &&
    other.userCount == userCount &&
    _deepEquality.equals(other.comments, comments) &&
    _deepEquality.equals(other.likes, likes) &&
    _deepEquality.equals(other.connectionGroups, connectionGroups) &&
    _deepEquality.equals(other.connections, connections) &&
    other.hasLiked == hasLiked &&
    other.userPermissions == userPermissions &&
    other.publicPermissions == publicPermissions &&
    other.album1 == album1 &&
    other.album2 == album2 &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    other.distance == distance &&
    other.dateCreated == dateCreated &&
    other.dateUpdated == dateUpdated &&
    other.approvalStatus == approvalStatus &&
    other.voteCount == voteCount &&
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
    (albumContestId == null ? 0 : albumContestId!.hashCode) +
    (contestType == null ? 0 : contestType!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (likeCount == null ? 0 : likeCount!.hashCode) +
    (dislikeCount == null ? 0 : dislikeCount!.hashCode) +
    (commentsCount == null ? 0 : commentsCount!.hashCode) +
    (userCount == null ? 0 : userCount!.hashCode) +
    (comments.hashCode) +
    (likes.hashCode) +
    (connectionGroups.hashCode) +
    (connections.hashCode) +
    (hasLiked == null ? 0 : hasLiked!.hashCode) +
    (userPermissions == null ? 0 : userPermissions!.hashCode) +
    (publicPermissions == null ? 0 : publicPermissions!.hashCode) +
    (album1 == null ? 0 : album1!.hashCode) +
    (album2 == null ? 0 : album2!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode) +
    (dateUpdated == null ? 0 : dateUpdated!.hashCode) +
    (approvalStatus == null ? 0 : approvalStatus!.hashCode) +
    (voteCount == null ? 0 : voteCount!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'AlbumContestResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, albumContestId=$albumContestId, contestType=$contestType, owner=$owner, title=$title, description=$description, visibility=$visibility, startDate=$startDate, endDate=$endDate, likeCount=$likeCount, dislikeCount=$dislikeCount, commentsCount=$commentsCount, userCount=$userCount, comments=$comments, likes=$likes, connectionGroups=$connectionGroups, connections=$connections, hasLiked=$hasLiked, userPermissions=$userPermissions, publicPermissions=$publicPermissions, album1=$album1, album2=$album2, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, distance=$distance, dateCreated=$dateCreated, dateUpdated=$dateUpdated, approvalStatus=$approvalStatus, voteCount=$voteCount, returning=$returning]';

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
    if (this.albumContestId != null) {
      json[r'albumContestId'] = this.albumContestId;
    } else {
      json[r'albumContestId'] = null;
    }
    if (this.contestType != null) {
      json[r'contestType'] = this.contestType;
    } else {
      json[r'contestType'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
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
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
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
    if (this.commentsCount != null) {
      json[r'commentsCount'] = this.commentsCount;
    } else {
      json[r'commentsCount'] = null;
    }
    if (this.userCount != null) {
      json[r'userCount'] = this.userCount;
    } else {
      json[r'userCount'] = null;
    }
      json[r'comments'] = this.comments;
      json[r'likes'] = this.likes;
      json[r'connectionGroups'] = this.connectionGroups;
      json[r'connections'] = this.connections;
    if (this.hasLiked != null) {
      json[r'hasLiked'] = this.hasLiked;
    } else {
      json[r'hasLiked'] = null;
    }
    if (this.userPermissions != null) {
      json[r'userPermissions'] = this.userPermissions;
    } else {
      json[r'userPermissions'] = null;
    }
    if (this.publicPermissions != null) {
      json[r'publicPermissions'] = this.publicPermissions;
    } else {
      json[r'publicPermissions'] = null;
    }
    if (this.album1 != null) {
      json[r'album1'] = this.album1;
    } else {
      json[r'album1'] = null;
    }
    if (this.album2 != null) {
      json[r'album2'] = this.album2;
    } else {
      json[r'album2'] = null;
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
    if (this.distance != null) {
      json[r'distance'] = this.distance;
    } else {
      json[r'distance'] = null;
    }
    if (this.dateCreated != null) {
      json[r'dateCreated'] = this.dateCreated;
    } else {
      json[r'dateCreated'] = null;
    }
    if (this.dateUpdated != null) {
      json[r'dateUpdated'] = this.dateUpdated;
    } else {
      json[r'dateUpdated'] = null;
    }
    if (this.approvalStatus != null) {
      json[r'approvalStatus'] = this.approvalStatus;
    } else {
      json[r'approvalStatus'] = null;
    }
    if (this.voteCount != null) {
      json[r'voteCount'] = this.voteCount;
    } else {
      json[r'voteCount'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [AlbumContestResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AlbumContestResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AlbumContestResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AlbumContestResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AlbumContestResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        albumContestId: mapValueOfType<int>(json, r'albumContestId'),
        contestType: mapValueOfType<String>(json, r'contestType'),
        owner: AccountShortResponse.fromJson(json[r'owner']),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        visibility: AlbumContestResponseVisibilityEnum.fromJson(json[r'visibility']),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        likeCount: mapValueOfType<int>(json, r'likeCount'),
        dislikeCount: mapValueOfType<int>(json, r'dislikeCount'),
        commentsCount: mapValueOfType<int>(json, r'commentsCount'),
        userCount: mapValueOfType<int>(json, r'userCount'),
        comments: NoteFullResponse.listFromJson(json[r'comments']),
        likes: LikeResponse.listFromJson(json[r'likes']),
        connectionGroups: ConnectionGroupShortResponse.listFromJson(json[r'connectionGroups']),
        connections: ConnectionResponse.listFromJson(json[r'connections']),
        hasLiked: mapValueOfType<bool>(json, r'hasLiked'),
        userPermissions: Permissions.fromJson(json[r'userPermissions']),
        publicPermissions: Permissions.fromJson(json[r'publicPermissions']),
        album1: AlbumFullResponse.fromJson(json[r'album1']),
        album2: AlbumFullResponse.fromJson(json[r'album2']),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        distance: mapValueOfType<double>(json, r'distance'),
        dateCreated: mapValueOfType<int>(json, r'dateCreated'),
        dateUpdated: mapValueOfType<int>(json, r'dateUpdated'),
        approvalStatus: AlbumContestResponseApprovalStatusEnum.fromJson(json[r'approvalStatus']),
        voteCount: mapValueOfType<int>(json, r'voteCount'),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<AlbumContestResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlbumContestResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlbumContestResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AlbumContestResponse> mapFromJson(dynamic json) {
    final map = <String, AlbumContestResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AlbumContestResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AlbumContestResponse-objects as value to a dart map
  static Map<String, List<AlbumContestResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AlbumContestResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AlbumContestResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AlbumContestResponseVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const AlbumContestResponseVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = AlbumContestResponseVisibilityEnum._(r'PUBLIC');
  static const PRIVATE = AlbumContestResponseVisibilityEnum._(r'PRIVATE');
  static const FRIENDS = AlbumContestResponseVisibilityEnum._(r'FRIENDS');

  /// List of all possible values in this [enum][AlbumContestResponseVisibilityEnum].
  static const values = <AlbumContestResponseVisibilityEnum>[
    PUBLIC,
    PRIVATE,
    FRIENDS,
  ];

  static AlbumContestResponseVisibilityEnum? fromJson(dynamic value) => AlbumContestResponseVisibilityEnumTypeTransformer().decode(value);

  static List<AlbumContestResponseVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlbumContestResponseVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlbumContestResponseVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlbumContestResponseVisibilityEnum] to String,
/// and [decode] dynamic data back to [AlbumContestResponseVisibilityEnum].
class AlbumContestResponseVisibilityEnumTypeTransformer {
  factory AlbumContestResponseVisibilityEnumTypeTransformer() => _instance ??= const AlbumContestResponseVisibilityEnumTypeTransformer._();

  const AlbumContestResponseVisibilityEnumTypeTransformer._();

  String encode(AlbumContestResponseVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlbumContestResponseVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlbumContestResponseVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return AlbumContestResponseVisibilityEnum.PUBLIC;
        case r'PRIVATE': return AlbumContestResponseVisibilityEnum.PRIVATE;
        case r'FRIENDS': return AlbumContestResponseVisibilityEnum.FRIENDS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlbumContestResponseVisibilityEnumTypeTransformer] instance.
  static AlbumContestResponseVisibilityEnumTypeTransformer? _instance;
}



class AlbumContestResponseApprovalStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AlbumContestResponseApprovalStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = AlbumContestResponseApprovalStatusEnum._(r'PENDING');
  static const REJECTED = AlbumContestResponseApprovalStatusEnum._(r'REJECTED');
  static const APPROVED = AlbumContestResponseApprovalStatusEnum._(r'APPROVED');
  static const FEATURED = AlbumContestResponseApprovalStatusEnum._(r'FEATURED');

  /// List of all possible values in this [enum][AlbumContestResponseApprovalStatusEnum].
  static const values = <AlbumContestResponseApprovalStatusEnum>[
    PENDING,
    REJECTED,
    APPROVED,
    FEATURED,
  ];

  static AlbumContestResponseApprovalStatusEnum? fromJson(dynamic value) => AlbumContestResponseApprovalStatusEnumTypeTransformer().decode(value);

  static List<AlbumContestResponseApprovalStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlbumContestResponseApprovalStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlbumContestResponseApprovalStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlbumContestResponseApprovalStatusEnum] to String,
/// and [decode] dynamic data back to [AlbumContestResponseApprovalStatusEnum].
class AlbumContestResponseApprovalStatusEnumTypeTransformer {
  factory AlbumContestResponseApprovalStatusEnumTypeTransformer() => _instance ??= const AlbumContestResponseApprovalStatusEnumTypeTransformer._();

  const AlbumContestResponseApprovalStatusEnumTypeTransformer._();

  String encode(AlbumContestResponseApprovalStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlbumContestResponseApprovalStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlbumContestResponseApprovalStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return AlbumContestResponseApprovalStatusEnum.PENDING;
        case r'REJECTED': return AlbumContestResponseApprovalStatusEnum.REJECTED;
        case r'APPROVED': return AlbumContestResponseApprovalStatusEnum.APPROVED;
        case r'FEATURED': return AlbumContestResponseApprovalStatusEnum.FEATURED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlbumContestResponseApprovalStatusEnumTypeTransformer] instance.
  static AlbumContestResponseApprovalStatusEnumTypeTransformer? _instance;
}


