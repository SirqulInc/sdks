//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Album {
  /// Returns a new [Album] instance.
  Album({
    this.id,
    this.active,
    this.valid,
    this.latitude,
    this.longitude,
    this.locationDescription,
    this.owner,
    this.title,
    this.application,
    this.approvalStatus,
    this.publicPermissions,
    this.userPermissions = const [],
    this.visibility,
    this.notes = const [],
    this.noteCount,
    this.likes = const [],
    this.likeCount,
    this.dislikeCount,
    this.flags = const [],
    this.flagCount,
    this.flagThreshold,
    this.description,
    this.albumType,
    this.assets = const [],
    this.coverAsset,
    this.tags,
    this.startDate,
    this.endDate,
    this.contactInfo,
    this.assetCount,
    this.favoriteCount,
    this.viewedCount,
    this.clickedCount,
    this.sharedCount,
    this.anonymous,
    this.ownerUsername,
    this.display,
    this.appKey,
    this.billableId,
    this.subType,
    this.contentAsset,
    this.secondaryType,
    this.contentName,
    this.applicationTitle,
    this.shortTitle,
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
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Application? application;

  AlbumApprovalStatusEnum? approvalStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Permissions? publicPermissions;

  List<UserPermissions> userPermissions;

  AlbumVisibilityEnum? visibility;

  List<Note> notes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? noteCount;

  List<YayOrNay> likes;

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
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? albumType;

  List<Asset> assets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? coverAsset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContactInfo? contactInfo;

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
  int? favoriteCount;

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
  bool? anonymous;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ownerUsername;

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
  String? appKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? billableId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subType;

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
  String? secondaryType;

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
  String? applicationTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shortTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? defaultThreshold;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Album &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.locationDescription == locationDescription &&
    other.owner == owner &&
    other.title == title &&
    other.application == application &&
    other.approvalStatus == approvalStatus &&
    other.publicPermissions == publicPermissions &&
    _deepEquality.equals(other.userPermissions, userPermissions) &&
    other.visibility == visibility &&
    _deepEquality.equals(other.notes, notes) &&
    other.noteCount == noteCount &&
    _deepEquality.equals(other.likes, likes) &&
    other.likeCount == likeCount &&
    other.dislikeCount == dislikeCount &&
    _deepEquality.equals(other.flags, flags) &&
    other.flagCount == flagCount &&
    other.flagThreshold == flagThreshold &&
    other.description == description &&
    other.albumType == albumType &&
    _deepEquality.equals(other.assets, assets) &&
    other.coverAsset == coverAsset &&
    other.tags == tags &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.contactInfo == contactInfo &&
    other.assetCount == assetCount &&
    other.favoriteCount == favoriteCount &&
    other.viewedCount == viewedCount &&
    other.clickedCount == clickedCount &&
    other.sharedCount == sharedCount &&
    other.anonymous == anonymous &&
    other.ownerUsername == ownerUsername &&
    other.display == display &&
    other.appKey == appKey &&
    other.billableId == billableId &&
    other.subType == subType &&
    other.contentAsset == contentAsset &&
    other.secondaryType == secondaryType &&
    other.contentName == contentName &&
    other.applicationTitle == applicationTitle &&
    other.shortTitle == shortTitle &&
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
    (title == null ? 0 : title!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (approvalStatus == null ? 0 : approvalStatus!.hashCode) +
    (publicPermissions == null ? 0 : publicPermissions!.hashCode) +
    (userPermissions.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (notes.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (likes.hashCode) +
    (likeCount == null ? 0 : likeCount!.hashCode) +
    (dislikeCount == null ? 0 : dislikeCount!.hashCode) +
    (flags.hashCode) +
    (flagCount == null ? 0 : flagCount!.hashCode) +
    (flagThreshold == null ? 0 : flagThreshold!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (albumType == null ? 0 : albumType!.hashCode) +
    (assets.hashCode) +
    (coverAsset == null ? 0 : coverAsset!.hashCode) +
    (tags == null ? 0 : tags!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (contactInfo == null ? 0 : contactInfo!.hashCode) +
    (assetCount == null ? 0 : assetCount!.hashCode) +
    (favoriteCount == null ? 0 : favoriteCount!.hashCode) +
    (viewedCount == null ? 0 : viewedCount!.hashCode) +
    (clickedCount == null ? 0 : clickedCount!.hashCode) +
    (sharedCount == null ? 0 : sharedCount!.hashCode) +
    (anonymous == null ? 0 : anonymous!.hashCode) +
    (ownerUsername == null ? 0 : ownerUsername!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (appKey == null ? 0 : appKey!.hashCode) +
    (billableId == null ? 0 : billableId!.hashCode) +
    (subType == null ? 0 : subType!.hashCode) +
    (contentAsset == null ? 0 : contentAsset!.hashCode) +
    (secondaryType == null ? 0 : secondaryType!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (applicationTitle == null ? 0 : applicationTitle!.hashCode) +
    (shortTitle == null ? 0 : shortTitle!.hashCode) +
    (defaultThreshold == null ? 0 : defaultThreshold!.hashCode);

  @override
  String toString() => 'Album[id=$id, active=$active, valid=$valid, latitude=$latitude, longitude=$longitude, locationDescription=$locationDescription, owner=$owner, title=$title, application=$application, approvalStatus=$approvalStatus, publicPermissions=$publicPermissions, userPermissions=$userPermissions, visibility=$visibility, notes=$notes, noteCount=$noteCount, likes=$likes, likeCount=$likeCount, dislikeCount=$dislikeCount, flags=$flags, flagCount=$flagCount, flagThreshold=$flagThreshold, description=$description, albumType=$albumType, assets=$assets, coverAsset=$coverAsset, tags=$tags, startDate=$startDate, endDate=$endDate, contactInfo=$contactInfo, assetCount=$assetCount, favoriteCount=$favoriteCount, viewedCount=$viewedCount, clickedCount=$clickedCount, sharedCount=$sharedCount, anonymous=$anonymous, ownerUsername=$ownerUsername, display=$display, appKey=$appKey, billableId=$billableId, subType=$subType, contentAsset=$contentAsset, secondaryType=$secondaryType, contentName=$contentName, applicationTitle=$applicationTitle, shortTitle=$shortTitle, defaultThreshold=$defaultThreshold]';

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
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
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
      json[r'notes'] = this.notes;
    if (this.noteCount != null) {
      json[r'noteCount'] = this.noteCount;
    } else {
      json[r'noteCount'] = null;
    }
      json[r'likes'] = this.likes;
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
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.albumType != null) {
      json[r'albumType'] = this.albumType;
    } else {
      json[r'albumType'] = null;
    }
      json[r'assets'] = this.assets;
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
    if (this.startDate != null) {
      json[r'startDate'] = this.startDate!.toUtc().toIso8601String();
    } else {
      json[r'startDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = this.endDate!.toUtc().toIso8601String();
    } else {
      json[r'endDate'] = null;
    }
    if (this.contactInfo != null) {
      json[r'contactInfo'] = this.contactInfo;
    } else {
      json[r'contactInfo'] = null;
    }
    if (this.assetCount != null) {
      json[r'assetCount'] = this.assetCount;
    } else {
      json[r'assetCount'] = null;
    }
    if (this.favoriteCount != null) {
      json[r'favoriteCount'] = this.favoriteCount;
    } else {
      json[r'favoriteCount'] = null;
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
    if (this.anonymous != null) {
      json[r'anonymous'] = this.anonymous;
    } else {
      json[r'anonymous'] = null;
    }
    if (this.ownerUsername != null) {
      json[r'ownerUsername'] = this.ownerUsername;
    } else {
      json[r'ownerUsername'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.appKey != null) {
      json[r'appKey'] = this.appKey;
    } else {
      json[r'appKey'] = null;
    }
    if (this.billableId != null) {
      json[r'billableId'] = this.billableId;
    } else {
      json[r'billableId'] = null;
    }
    if (this.subType != null) {
      json[r'subType'] = this.subType;
    } else {
      json[r'subType'] = null;
    }
    if (this.contentAsset != null) {
      json[r'contentAsset'] = this.contentAsset;
    } else {
      json[r'contentAsset'] = null;
    }
    if (this.secondaryType != null) {
      json[r'secondaryType'] = this.secondaryType;
    } else {
      json[r'secondaryType'] = null;
    }
    if (this.contentName != null) {
      json[r'contentName'] = this.contentName;
    } else {
      json[r'contentName'] = null;
    }
    if (this.applicationTitle != null) {
      json[r'applicationTitle'] = this.applicationTitle;
    } else {
      json[r'applicationTitle'] = null;
    }
    if (this.shortTitle != null) {
      json[r'shortTitle'] = this.shortTitle;
    } else {
      json[r'shortTitle'] = null;
    }
    if (this.defaultThreshold != null) {
      json[r'defaultThreshold'] = this.defaultThreshold;
    } else {
      json[r'defaultThreshold'] = null;
    }
    return json;
  }

  /// Returns a new [Album] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Album? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Album[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Album[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Album(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        locationDescription: mapValueOfType<String>(json, r'locationDescription'),
        owner: Account.fromJson(json[r'owner']),
        title: mapValueOfType<String>(json, r'title'),
        application: Application.fromJson(json[r'application']),
        approvalStatus: AlbumApprovalStatusEnum.fromJson(json[r'approvalStatus']),
        publicPermissions: Permissions.fromJson(json[r'publicPermissions']),
        userPermissions: UserPermissions.listFromJson(json[r'userPermissions']),
        visibility: AlbumVisibilityEnum.fromJson(json[r'visibility']),
        notes: Note.listFromJson(json[r'notes']),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        likes: YayOrNay.listFromJson(json[r'likes']),
        likeCount: mapValueOfType<int>(json, r'likeCount'),
        dislikeCount: mapValueOfType<int>(json, r'dislikeCount'),
        flags: Flag.listFromJson(json[r'flags']),
        flagCount: mapValueOfType<int>(json, r'flagCount'),
        flagThreshold: FlagThreshold.fromJson(json[r'flagThreshold']),
        description: mapValueOfType<String>(json, r'description'),
        albumType: mapValueOfType<String>(json, r'albumType'),
        assets: Asset.listFromJson(json[r'assets']),
        coverAsset: Asset.fromJson(json[r'coverAsset']),
        tags: mapValueOfType<String>(json, r'tags'),
        startDate: mapDateTime(json, r'startDate', r''),
        endDate: mapDateTime(json, r'endDate', r''),
        contactInfo: ContactInfo.fromJson(json[r'contactInfo']),
        assetCount: mapValueOfType<int>(json, r'assetCount'),
        favoriteCount: mapValueOfType<int>(json, r'favoriteCount'),
        viewedCount: mapValueOfType<int>(json, r'viewedCount'),
        clickedCount: mapValueOfType<int>(json, r'clickedCount'),
        sharedCount: mapValueOfType<int>(json, r'sharedCount'),
        anonymous: mapValueOfType<bool>(json, r'anonymous'),
        ownerUsername: mapValueOfType<String>(json, r'ownerUsername'),
        display: mapValueOfType<String>(json, r'display'),
        appKey: mapValueOfType<String>(json, r'appKey'),
        billableId: mapValueOfType<int>(json, r'billableId'),
        subType: mapValueOfType<String>(json, r'subType'),
        contentAsset: Asset.fromJson(json[r'contentAsset']),
        secondaryType: mapValueOfType<String>(json, r'secondaryType'),
        contentName: mapValueOfType<String>(json, r'contentName'),
        applicationTitle: mapValueOfType<String>(json, r'applicationTitle'),
        shortTitle: mapValueOfType<String>(json, r'shortTitle'),
        defaultThreshold: mapValueOfType<int>(json, r'defaultThreshold'),
      );
    }
    return null;
  }

  static List<Album> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Album>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Album.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Album> mapFromJson(dynamic json) {
    final map = <String, Album>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Album.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Album-objects as value to a dart map
  static Map<String, List<Album>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Album>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Album.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AlbumApprovalStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AlbumApprovalStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = AlbumApprovalStatusEnum._(r'PENDING');
  static const REJECTED = AlbumApprovalStatusEnum._(r'REJECTED');
  static const APPROVED = AlbumApprovalStatusEnum._(r'APPROVED');
  static const FEATURED = AlbumApprovalStatusEnum._(r'FEATURED');

  /// List of all possible values in this [enum][AlbumApprovalStatusEnum].
  static const values = <AlbumApprovalStatusEnum>[
    PENDING,
    REJECTED,
    APPROVED,
    FEATURED,
  ];

  static AlbumApprovalStatusEnum? fromJson(dynamic value) => AlbumApprovalStatusEnumTypeTransformer().decode(value);

  static List<AlbumApprovalStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlbumApprovalStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlbumApprovalStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlbumApprovalStatusEnum] to String,
/// and [decode] dynamic data back to [AlbumApprovalStatusEnum].
class AlbumApprovalStatusEnumTypeTransformer {
  factory AlbumApprovalStatusEnumTypeTransformer() => _instance ??= const AlbumApprovalStatusEnumTypeTransformer._();

  const AlbumApprovalStatusEnumTypeTransformer._();

  String encode(AlbumApprovalStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlbumApprovalStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlbumApprovalStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return AlbumApprovalStatusEnum.PENDING;
        case r'REJECTED': return AlbumApprovalStatusEnum.REJECTED;
        case r'APPROVED': return AlbumApprovalStatusEnum.APPROVED;
        case r'FEATURED': return AlbumApprovalStatusEnum.FEATURED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlbumApprovalStatusEnumTypeTransformer] instance.
  static AlbumApprovalStatusEnumTypeTransformer? _instance;
}



class AlbumVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const AlbumVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = AlbumVisibilityEnum._(r'PUBLIC');
  static const PRIVATE = AlbumVisibilityEnum._(r'PRIVATE');
  static const FRIENDS = AlbumVisibilityEnum._(r'FRIENDS');

  /// List of all possible values in this [enum][AlbumVisibilityEnum].
  static const values = <AlbumVisibilityEnum>[
    PUBLIC,
    PRIVATE,
    FRIENDS,
  ];

  static AlbumVisibilityEnum? fromJson(dynamic value) => AlbumVisibilityEnumTypeTransformer().decode(value);

  static List<AlbumVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlbumVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlbumVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlbumVisibilityEnum] to String,
/// and [decode] dynamic data back to [AlbumVisibilityEnum].
class AlbumVisibilityEnumTypeTransformer {
  factory AlbumVisibilityEnumTypeTransformer() => _instance ??= const AlbumVisibilityEnumTypeTransformer._();

  const AlbumVisibilityEnumTypeTransformer._();

  String encode(AlbumVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlbumVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlbumVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return AlbumVisibilityEnum.PUBLIC;
        case r'PRIVATE': return AlbumVisibilityEnum.PRIVATE;
        case r'FRIENDS': return AlbumVisibilityEnum.FRIENDS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlbumVisibilityEnumTypeTransformer] instance.
  static AlbumVisibilityEnumTypeTransformer? _instance;
}


