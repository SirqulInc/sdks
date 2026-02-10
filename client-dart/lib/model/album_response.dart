//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AlbumResponse {
  /// Returns a new [AlbumResponse] instance.
  AlbumResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.albumId,
    this.albumType,
    this.ownerId,
    this.owner,
    this.title,
    this.description,
    this.coverAsset,
    this.tags,
    this.visibility,
    this.startDate,
    this.endDate,
    this.assetCount,
    this.likeCount,
    this.dislikeCount,
    this.commentsCount,
    this.userCount,
    this.notifications,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.distance,
    this.dateCreated,
    this.dateUpdated,
    this.cellPhone,
    this.fullAddress,
    this.approvalStatus,
    this.favoriteCount,
    this.liked,
    this.favorite,
    this.favoriteId,
    this.anonymous,
    this.flagCount,
    this.viewedCount,
    this.clickedCount,
    this.sharedCount,
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
  int? albumId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? albumType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ownerId;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetResponse? coverAsset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tags;

  AlbumResponseVisibilityEnum? visibility;

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
  int? assetCount;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? notifications;

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
  String? fullAddress;

  AlbumResponseApprovalStatusEnum? approvalStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? favoriteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? liked;

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
  int? favoriteId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? anonymous;

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
  int? viewedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? clickedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sharedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AlbumResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    other.albumId == albumId &&
    other.albumType == albumType &&
    other.ownerId == ownerId &&
    other.owner == owner &&
    other.title == title &&
    other.description == description &&
    other.coverAsset == coverAsset &&
    other.tags == tags &&
    other.visibility == visibility &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.assetCount == assetCount &&
    other.likeCount == likeCount &&
    other.dislikeCount == dislikeCount &&
    other.commentsCount == commentsCount &&
    other.userCount == userCount &&
    other.notifications == notifications &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    other.distance == distance &&
    other.dateCreated == dateCreated &&
    other.dateUpdated == dateUpdated &&
    other.cellPhone == cellPhone &&
    other.fullAddress == fullAddress &&
    other.approvalStatus == approvalStatus &&
    other.favoriteCount == favoriteCount &&
    other.liked == liked &&
    other.favorite == favorite &&
    other.favoriteId == favoriteId &&
    other.anonymous == anonymous &&
    other.flagCount == flagCount &&
    other.viewedCount == viewedCount &&
    other.clickedCount == clickedCount &&
    other.sharedCount == sharedCount &&
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
    (albumId == null ? 0 : albumId!.hashCode) +
    (albumType == null ? 0 : albumType!.hashCode) +
    (ownerId == null ? 0 : ownerId!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (coverAsset == null ? 0 : coverAsset!.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (assetCount == null ? 0 : assetCount!.hashCode) +
    (likeCount == null ? 0 : likeCount!.hashCode) +
    (dislikeCount == null ? 0 : dislikeCount!.hashCode) +
    (commentsCount == null ? 0 : commentsCount!.hashCode) +
    (userCount == null ? 0 : userCount!.hashCode) +
    (notifications == null ? 0 : notifications!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (dateCreated == null ? 0 : dateCreated!.hashCode) +
    (dateUpdated == null ? 0 : dateUpdated!.hashCode) +
    (cellPhone == null ? 0 : cellPhone!.hashCode) +
    (fullAddress == null ? 0 : fullAddress!.hashCode) +
    (approvalStatus == null ? 0 : approvalStatus!.hashCode) +
    (favoriteCount == null ? 0 : favoriteCount!.hashCode) +
    (liked == null ? 0 : liked!.hashCode) +
    (favorite == null ? 0 : favorite!.hashCode) +
    (favoriteId == null ? 0 : favoriteId!.hashCode) +
    (anonymous == null ? 0 : anonymous!.hashCode) +
    (flagCount == null ? 0 : flagCount!.hashCode) +
    (viewedCount == null ? 0 : viewedCount!.hashCode) +
    (clickedCount == null ? 0 : clickedCount!.hashCode) +
    (sharedCount == null ? 0 : sharedCount!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'AlbumResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, albumId=$albumId, albumType=$albumType, ownerId=$ownerId, owner=$owner, title=$title, description=$description, coverAsset=$coverAsset, tags=$tags, visibility=$visibility, startDate=$startDate, endDate=$endDate, assetCount=$assetCount, likeCount=$likeCount, dislikeCount=$dislikeCount, commentsCount=$commentsCount, userCount=$userCount, notifications=$notifications, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, distance=$distance, dateCreated=$dateCreated, dateUpdated=$dateUpdated, cellPhone=$cellPhone, fullAddress=$fullAddress, approvalStatus=$approvalStatus, favoriteCount=$favoriteCount, liked=$liked, favorite=$favorite, favoriteId=$favoriteId, anonymous=$anonymous, flagCount=$flagCount, viewedCount=$viewedCount, clickedCount=$clickedCount, sharedCount=$sharedCount, returning=$returning]';

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
    if (this.albumId != null) {
      json[r'albumId'] = this.albumId;
    } else {
      json[r'albumId'] = null;
    }
    if (this.albumType != null) {
      json[r'albumType'] = this.albumType;
    } else {
      json[r'albumType'] = null;
    }
    if (this.ownerId != null) {
      json[r'ownerId'] = this.ownerId;
    } else {
      json[r'ownerId'] = null;
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
    if (this.coverAsset != null) {
      json[r'coverAsset'] = this.coverAsset;
    } else {
      json[r'coverAsset'] = null;
    }
    if (this.tags != null) {
      json[r'tags'] = this.tags;
    } else {
      json[r'tags'] = null;
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
    if (this.assetCount != null) {
      json[r'assetCount'] = this.assetCount;
    } else {
      json[r'assetCount'] = null;
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
    if (this.notifications != null) {
      json[r'notifications'] = this.notifications;
    } else {
      json[r'notifications'] = null;
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
    if (this.cellPhone != null) {
      json[r'cellPhone'] = this.cellPhone;
    } else {
      json[r'cellPhone'] = null;
    }
    if (this.fullAddress != null) {
      json[r'fullAddress'] = this.fullAddress;
    } else {
      json[r'fullAddress'] = null;
    }
    if (this.approvalStatus != null) {
      json[r'approvalStatus'] = this.approvalStatus;
    } else {
      json[r'approvalStatus'] = null;
    }
    if (this.favoriteCount != null) {
      json[r'favoriteCount'] = this.favoriteCount;
    } else {
      json[r'favoriteCount'] = null;
    }
    if (this.liked != null) {
      json[r'liked'] = this.liked;
    } else {
      json[r'liked'] = null;
    }
    if (this.favorite != null) {
      json[r'favorite'] = this.favorite;
    } else {
      json[r'favorite'] = null;
    }
    if (this.favoriteId != null) {
      json[r'favoriteId'] = this.favoriteId;
    } else {
      json[r'favoriteId'] = null;
    }
    if (this.anonymous != null) {
      json[r'anonymous'] = this.anonymous;
    } else {
      json[r'anonymous'] = null;
    }
    if (this.flagCount != null) {
      json[r'flagCount'] = this.flagCount;
    } else {
      json[r'flagCount'] = null;
    }
    if (this.viewedCount != null) {
      json[r'viewedCount'] = this.viewedCount;
    } else {
      json[r'viewedCount'] = null;
    }
    if (this.clickedCount != null) {
      json[r'clickedCount'] = this.clickedCount;
    } else {
      json[r'clickedCount'] = null;
    }
    if (this.sharedCount != null) {
      json[r'sharedCount'] = this.sharedCount;
    } else {
      json[r'sharedCount'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [AlbumResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AlbumResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AlbumResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AlbumResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AlbumResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        albumId: mapValueOfType<int>(json, r'albumId'),
        albumType: mapValueOfType<String>(json, r'albumType'),
        ownerId: mapValueOfType<int>(json, r'ownerId'),
        owner: AccountShortResponse.fromJson(json[r'owner']),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        coverAsset: AssetResponse.fromJson(json[r'coverAsset']),
        tags: mapValueOfType<String>(json, r'tags'),
        visibility: AlbumResponseVisibilityEnum.fromJson(json[r'visibility']),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        assetCount: mapValueOfType<int>(json, r'assetCount'),
        likeCount: mapValueOfType<int>(json, r'likeCount'),
        dislikeCount: mapValueOfType<int>(json, r'dislikeCount'),
        commentsCount: mapValueOfType<int>(json, r'commentsCount'),
        userCount: mapValueOfType<int>(json, r'userCount'),
        notifications: mapValueOfType<bool>(json, r'notifications'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        distance: mapValueOfType<double>(json, r'distance'),
        dateCreated: mapValueOfType<int>(json, r'dateCreated'),
        dateUpdated: mapValueOfType<int>(json, r'dateUpdated'),
        cellPhone: mapValueOfType<String>(json, r'cellPhone'),
        fullAddress: mapValueOfType<String>(json, r'fullAddress'),
        approvalStatus: AlbumResponseApprovalStatusEnum.fromJson(json[r'approvalStatus']),
        favoriteCount: mapValueOfType<int>(json, r'favoriteCount'),
        liked: mapValueOfType<bool>(json, r'liked'),
        favorite: mapValueOfType<bool>(json, r'favorite'),
        favoriteId: mapValueOfType<int>(json, r'favoriteId'),
        anonymous: mapValueOfType<bool>(json, r'anonymous'),
        flagCount: mapValueOfType<int>(json, r'flagCount'),
        viewedCount: mapValueOfType<int>(json, r'viewedCount'),
        clickedCount: mapValueOfType<int>(json, r'clickedCount'),
        sharedCount: mapValueOfType<int>(json, r'sharedCount'),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<AlbumResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlbumResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlbumResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AlbumResponse> mapFromJson(dynamic json) {
    final map = <String, AlbumResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AlbumResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AlbumResponse-objects as value to a dart map
  static Map<String, List<AlbumResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AlbumResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AlbumResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AlbumResponseVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const AlbumResponseVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = AlbumResponseVisibilityEnum._(r'PUBLIC');
  static const PRIVATE = AlbumResponseVisibilityEnum._(r'PRIVATE');
  static const FRIENDS = AlbumResponseVisibilityEnum._(r'FRIENDS');

  /// List of all possible values in this [enum][AlbumResponseVisibilityEnum].
  static const values = <AlbumResponseVisibilityEnum>[
    PUBLIC,
    PRIVATE,
    FRIENDS,
  ];

  static AlbumResponseVisibilityEnum? fromJson(dynamic value) => AlbumResponseVisibilityEnumTypeTransformer().decode(value);

  static List<AlbumResponseVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlbumResponseVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlbumResponseVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlbumResponseVisibilityEnum] to String,
/// and [decode] dynamic data back to [AlbumResponseVisibilityEnum].
class AlbumResponseVisibilityEnumTypeTransformer {
  factory AlbumResponseVisibilityEnumTypeTransformer() => _instance ??= const AlbumResponseVisibilityEnumTypeTransformer._();

  const AlbumResponseVisibilityEnumTypeTransformer._();

  String encode(AlbumResponseVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlbumResponseVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlbumResponseVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return AlbumResponseVisibilityEnum.PUBLIC;
        case r'PRIVATE': return AlbumResponseVisibilityEnum.PRIVATE;
        case r'FRIENDS': return AlbumResponseVisibilityEnum.FRIENDS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlbumResponseVisibilityEnumTypeTransformer] instance.
  static AlbumResponseVisibilityEnumTypeTransformer? _instance;
}



class AlbumResponseApprovalStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AlbumResponseApprovalStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = AlbumResponseApprovalStatusEnum._(r'PENDING');
  static const REJECTED = AlbumResponseApprovalStatusEnum._(r'REJECTED');
  static const APPROVED = AlbumResponseApprovalStatusEnum._(r'APPROVED');
  static const FEATURED = AlbumResponseApprovalStatusEnum._(r'FEATURED');

  /// List of all possible values in this [enum][AlbumResponseApprovalStatusEnum].
  static const values = <AlbumResponseApprovalStatusEnum>[
    PENDING,
    REJECTED,
    APPROVED,
    FEATURED,
  ];

  static AlbumResponseApprovalStatusEnum? fromJson(dynamic value) => AlbumResponseApprovalStatusEnumTypeTransformer().decode(value);

  static List<AlbumResponseApprovalStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlbumResponseApprovalStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlbumResponseApprovalStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlbumResponseApprovalStatusEnum] to String,
/// and [decode] dynamic data back to [AlbumResponseApprovalStatusEnum].
class AlbumResponseApprovalStatusEnumTypeTransformer {
  factory AlbumResponseApprovalStatusEnumTypeTransformer() => _instance ??= const AlbumResponseApprovalStatusEnumTypeTransformer._();

  const AlbumResponseApprovalStatusEnumTypeTransformer._();

  String encode(AlbumResponseApprovalStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlbumResponseApprovalStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlbumResponseApprovalStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return AlbumResponseApprovalStatusEnum.PENDING;
        case r'REJECTED': return AlbumResponseApprovalStatusEnum.REJECTED;
        case r'APPROVED': return AlbumResponseApprovalStatusEnum.APPROVED;
        case r'FEATURED': return AlbumResponseApprovalStatusEnum.FEATURED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlbumResponseApprovalStatusEnumTypeTransformer] instance.
  static AlbumResponseApprovalStatusEnumTypeTransformer? _instance;
}


