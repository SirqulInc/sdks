//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameLevel {
  /// Returns a new [GameLevel] instance.
  GameLevel({
    this.id,
    this.active,
    this.valid,
    this.newOwnerId,
    this.gameDifficulty,
    this.name,
    this.image,
    this.icon,
    this.description,
    this.startDate,
    this.endDate,
    this.randomizeGameObjects,
    this.owner,
    this.version,
    this.notes = const [],
    this.noteCount,
    this.likes = const [],
    this.likeCount,
    this.dislikeCount,
    this.playCount,
    this.downloadCount,
    this.gameObjectCount,
    this.publicPermissions,
    this.visibility,
    this.userPermissions = const [],
    this.flags = const [],
    this.flagCount,
    this.flagThreshold,
    this.application,
    this.assignMission,
    this.authorOverride,
    this.splashTitle,
    this.splashMessage,
    this.winnerMessage,
    this.tutorial,
    this.approvalStatus,
    this.nextLevel,
    this.offer,
    this.balance,
    this.levelNumber,
    this.points,
    this.ticketType,
    this.ticketCount,
    this.allocateTickets,
    this.applicationTitle,
    this.ownerUsername,
    this.likableNotificationModels = const [],
    this.notableNotificationModels = const [],
    this.published,
    this.contentName,
    this.defaultThreshold,
    this.contentAsset,
    this.contentType,
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
  int? newOwnerId;

  GameLevelGameDifficultyEnum? gameDifficulty;

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
  Asset? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? icon;

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
  bool? randomizeGameObjects;

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
  AppVersion? version;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? playCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? downloadCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gameObjectCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Permissions? publicPermissions;

  GameLevelVisibilityEnum? visibility;

  List<UserPermissions> userPermissions;

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
  Application? application;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? assignMission;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorOverride;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? splashTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? splashMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? winnerMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Tutorial? tutorial;

  GameLevelApprovalStatusEnum? approvalStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GameLevel? nextLevel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Offer? offer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? balance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? levelNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? points;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ticketType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticketCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? allocateTickets;

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
  String? ownerUsername;

  List<Map<String, Object>> likableNotificationModels;

  List<Map<String, Object>> notableNotificationModels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? published;

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
  String? contentType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameLevel &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.newOwnerId == newOwnerId &&
    other.gameDifficulty == gameDifficulty &&
    other.name == name &&
    other.image == image &&
    other.icon == icon &&
    other.description == description &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.randomizeGameObjects == randomizeGameObjects &&
    other.owner == owner &&
    other.version == version &&
    _deepEquality.equals(other.notes, notes) &&
    other.noteCount == noteCount &&
    _deepEquality.equals(other.likes, likes) &&
    other.likeCount == likeCount &&
    other.dislikeCount == dislikeCount &&
    other.playCount == playCount &&
    other.downloadCount == downloadCount &&
    other.gameObjectCount == gameObjectCount &&
    other.publicPermissions == publicPermissions &&
    other.visibility == visibility &&
    _deepEquality.equals(other.userPermissions, userPermissions) &&
    _deepEquality.equals(other.flags, flags) &&
    other.flagCount == flagCount &&
    other.flagThreshold == flagThreshold &&
    other.application == application &&
    other.assignMission == assignMission &&
    other.authorOverride == authorOverride &&
    other.splashTitle == splashTitle &&
    other.splashMessage == splashMessage &&
    other.winnerMessage == winnerMessage &&
    other.tutorial == tutorial &&
    other.approvalStatus == approvalStatus &&
    other.nextLevel == nextLevel &&
    other.offer == offer &&
    other.balance == balance &&
    other.levelNumber == levelNumber &&
    other.points == points &&
    other.ticketType == ticketType &&
    other.ticketCount == ticketCount &&
    other.allocateTickets == allocateTickets &&
    other.applicationTitle == applicationTitle &&
    other.ownerUsername == ownerUsername &&
    _deepEquality.equals(other.likableNotificationModels, likableNotificationModels) &&
    _deepEquality.equals(other.notableNotificationModels, notableNotificationModels) &&
    other.published == published &&
    other.contentName == contentName &&
    other.defaultThreshold == defaultThreshold &&
    other.contentAsset == contentAsset &&
    other.contentType == contentType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (newOwnerId == null ? 0 : newOwnerId!.hashCode) +
    (gameDifficulty == null ? 0 : gameDifficulty!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (randomizeGameObjects == null ? 0 : randomizeGameObjects!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (notes.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (likes.hashCode) +
    (likeCount == null ? 0 : likeCount!.hashCode) +
    (dislikeCount == null ? 0 : dislikeCount!.hashCode) +
    (playCount == null ? 0 : playCount!.hashCode) +
    (downloadCount == null ? 0 : downloadCount!.hashCode) +
    (gameObjectCount == null ? 0 : gameObjectCount!.hashCode) +
    (publicPermissions == null ? 0 : publicPermissions!.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (userPermissions.hashCode) +
    (flags.hashCode) +
    (flagCount == null ? 0 : flagCount!.hashCode) +
    (flagThreshold == null ? 0 : flagThreshold!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (assignMission == null ? 0 : assignMission!.hashCode) +
    (authorOverride == null ? 0 : authorOverride!.hashCode) +
    (splashTitle == null ? 0 : splashTitle!.hashCode) +
    (splashMessage == null ? 0 : splashMessage!.hashCode) +
    (winnerMessage == null ? 0 : winnerMessage!.hashCode) +
    (tutorial == null ? 0 : tutorial!.hashCode) +
    (approvalStatus == null ? 0 : approvalStatus!.hashCode) +
    (nextLevel == null ? 0 : nextLevel!.hashCode) +
    (offer == null ? 0 : offer!.hashCode) +
    (balance == null ? 0 : balance!.hashCode) +
    (levelNumber == null ? 0 : levelNumber!.hashCode) +
    (points == null ? 0 : points!.hashCode) +
    (ticketType == null ? 0 : ticketType!.hashCode) +
    (ticketCount == null ? 0 : ticketCount!.hashCode) +
    (allocateTickets == null ? 0 : allocateTickets!.hashCode) +
    (applicationTitle == null ? 0 : applicationTitle!.hashCode) +
    (ownerUsername == null ? 0 : ownerUsername!.hashCode) +
    (likableNotificationModels.hashCode) +
    (notableNotificationModels.hashCode) +
    (published == null ? 0 : published!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (defaultThreshold == null ? 0 : defaultThreshold!.hashCode) +
    (contentAsset == null ? 0 : contentAsset!.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode);

  @override
  String toString() => 'GameLevel[id=$id, active=$active, valid=$valid, newOwnerId=$newOwnerId, gameDifficulty=$gameDifficulty, name=$name, image=$image, icon=$icon, description=$description, startDate=$startDate, endDate=$endDate, randomizeGameObjects=$randomizeGameObjects, owner=$owner, version=$version, notes=$notes, noteCount=$noteCount, likes=$likes, likeCount=$likeCount, dislikeCount=$dislikeCount, playCount=$playCount, downloadCount=$downloadCount, gameObjectCount=$gameObjectCount, publicPermissions=$publicPermissions, visibility=$visibility, userPermissions=$userPermissions, flags=$flags, flagCount=$flagCount, flagThreshold=$flagThreshold, application=$application, assignMission=$assignMission, authorOverride=$authorOverride, splashTitle=$splashTitle, splashMessage=$splashMessage, winnerMessage=$winnerMessage, tutorial=$tutorial, approvalStatus=$approvalStatus, nextLevel=$nextLevel, offer=$offer, balance=$balance, levelNumber=$levelNumber, points=$points, ticketType=$ticketType, ticketCount=$ticketCount, allocateTickets=$allocateTickets, applicationTitle=$applicationTitle, ownerUsername=$ownerUsername, likableNotificationModels=$likableNotificationModels, notableNotificationModels=$notableNotificationModels, published=$published, contentName=$contentName, defaultThreshold=$defaultThreshold, contentAsset=$contentAsset, contentType=$contentType]';

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
    if (this.newOwnerId != null) {
      json[r'newOwnerId'] = this.newOwnerId;
    } else {
      json[r'newOwnerId'] = null;
    }
    if (this.gameDifficulty != null) {
      json[r'gameDifficulty'] = this.gameDifficulty;
    } else {
      json[r'gameDifficulty'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
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
    if (this.randomizeGameObjects != null) {
      json[r'randomizeGameObjects'] = this.randomizeGameObjects;
    } else {
      json[r'randomizeGameObjects'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
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
    if (this.playCount != null) {
      json[r'playCount'] = this.playCount;
    } else {
      json[r'playCount'] = null;
    }
    if (this.downloadCount != null) {
      json[r'downloadCount'] = this.downloadCount;
    } else {
      json[r'downloadCount'] = null;
    }
    if (this.gameObjectCount != null) {
      json[r'gameObjectCount'] = this.gameObjectCount;
    } else {
      json[r'gameObjectCount'] = null;
    }
    if (this.publicPermissions != null) {
      json[r'publicPermissions'] = this.publicPermissions;
    } else {
      json[r'publicPermissions'] = null;
    }
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
      json[r'userPermissions'] = this.userPermissions;
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
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
    if (this.assignMission != null) {
      json[r'assignMission'] = this.assignMission;
    } else {
      json[r'assignMission'] = null;
    }
    if (this.authorOverride != null) {
      json[r'authorOverride'] = this.authorOverride;
    } else {
      json[r'authorOverride'] = null;
    }
    if (this.splashTitle != null) {
      json[r'splashTitle'] = this.splashTitle;
    } else {
      json[r'splashTitle'] = null;
    }
    if (this.splashMessage != null) {
      json[r'splashMessage'] = this.splashMessage;
    } else {
      json[r'splashMessage'] = null;
    }
    if (this.winnerMessage != null) {
      json[r'winnerMessage'] = this.winnerMessage;
    } else {
      json[r'winnerMessage'] = null;
    }
    if (this.tutorial != null) {
      json[r'tutorial'] = this.tutorial;
    } else {
      json[r'tutorial'] = null;
    }
    if (this.approvalStatus != null) {
      json[r'approvalStatus'] = this.approvalStatus;
    } else {
      json[r'approvalStatus'] = null;
    }
    if (this.nextLevel != null) {
      json[r'nextLevel'] = this.nextLevel;
    } else {
      json[r'nextLevel'] = null;
    }
    if (this.offer != null) {
      json[r'offer'] = this.offer;
    } else {
      json[r'offer'] = null;
    }
    if (this.balance != null) {
      json[r'balance'] = this.balance;
    } else {
      json[r'balance'] = null;
    }
    if (this.levelNumber != null) {
      json[r'levelNumber'] = this.levelNumber;
    } else {
      json[r'levelNumber'] = null;
    }
    if (this.points != null) {
      json[r'points'] = this.points;
    } else {
      json[r'points'] = null;
    }
    if (this.ticketType != null) {
      json[r'ticketType'] = this.ticketType;
    } else {
      json[r'ticketType'] = null;
    }
    if (this.ticketCount != null) {
      json[r'ticketCount'] = this.ticketCount;
    } else {
      json[r'ticketCount'] = null;
    }
    if (this.allocateTickets != null) {
      json[r'allocateTickets'] = this.allocateTickets;
    } else {
      json[r'allocateTickets'] = null;
    }
    if (this.applicationTitle != null) {
      json[r'applicationTitle'] = this.applicationTitle;
    } else {
      json[r'applicationTitle'] = null;
    }
    if (this.ownerUsername != null) {
      json[r'ownerUsername'] = this.ownerUsername;
    } else {
      json[r'ownerUsername'] = null;
    }
      json[r'likableNotificationModels'] = this.likableNotificationModels;
      json[r'notableNotificationModels'] = this.notableNotificationModels;
    if (this.published != null) {
      json[r'published'] = this.published;
    } else {
      json[r'published'] = null;
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
    if (this.contentAsset != null) {
      json[r'contentAsset'] = this.contentAsset;
    } else {
      json[r'contentAsset'] = null;
    }
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
    return json;
  }

  /// Returns a new [GameLevel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameLevel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameLevel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameLevel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameLevel(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        newOwnerId: mapValueOfType<int>(json, r'newOwnerId'),
        gameDifficulty: GameLevelGameDifficultyEnum.fromJson(json[r'gameDifficulty']),
        name: mapValueOfType<String>(json, r'name'),
        image: Asset.fromJson(json[r'image']),
        icon: Asset.fromJson(json[r'icon']),
        description: mapValueOfType<String>(json, r'description'),
        startDate: mapDateTime(json, r'startDate', r''),
        endDate: mapDateTime(json, r'endDate', r''),
        randomizeGameObjects: mapValueOfType<bool>(json, r'randomizeGameObjects'),
        owner: Account.fromJson(json[r'owner']),
        version: AppVersion.fromJson(json[r'version']),
        notes: Note.listFromJson(json[r'notes']),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        likes: YayOrNay.listFromJson(json[r'likes']),
        likeCount: mapValueOfType<int>(json, r'likeCount'),
        dislikeCount: mapValueOfType<int>(json, r'dislikeCount'),
        playCount: mapValueOfType<int>(json, r'playCount'),
        downloadCount: mapValueOfType<int>(json, r'downloadCount'),
        gameObjectCount: mapValueOfType<int>(json, r'gameObjectCount'),
        publicPermissions: Permissions.fromJson(json[r'publicPermissions']),
        visibility: GameLevelVisibilityEnum.fromJson(json[r'visibility']),
        userPermissions: UserPermissions.listFromJson(json[r'userPermissions']),
        flags: Flag.listFromJson(json[r'flags']),
        flagCount: mapValueOfType<int>(json, r'flagCount'),
        flagThreshold: FlagThreshold.fromJson(json[r'flagThreshold']),
        application: Application.fromJson(json[r'application']),
        assignMission: mapValueOfType<bool>(json, r'assignMission'),
        authorOverride: mapValueOfType<String>(json, r'authorOverride'),
        splashTitle: mapValueOfType<String>(json, r'splashTitle'),
        splashMessage: mapValueOfType<String>(json, r'splashMessage'),
        winnerMessage: mapValueOfType<String>(json, r'winnerMessage'),
        tutorial: Tutorial.fromJson(json[r'tutorial']),
        approvalStatus: GameLevelApprovalStatusEnum.fromJson(json[r'approvalStatus']),
        nextLevel: GameLevel.fromJson(json[r'nextLevel']),
        offer: Offer.fromJson(json[r'offer']),
        balance: mapValueOfType<double>(json, r'balance'),
        levelNumber: mapValueOfType<int>(json, r'levelNumber'),
        points: mapValueOfType<int>(json, r'points'),
        ticketType: mapValueOfType<String>(json, r'ticketType'),
        ticketCount: mapValueOfType<int>(json, r'ticketCount'),
        allocateTickets: mapValueOfType<bool>(json, r'allocateTickets'),
        applicationTitle: mapValueOfType<String>(json, r'applicationTitle'),
        ownerUsername: mapValueOfType<String>(json, r'ownerUsername'),
        likableNotificationModels: Map.listFromJson(json[r'likableNotificationModels']),
        notableNotificationModels: Map.listFromJson(json[r'notableNotificationModels']),
        published: mapValueOfType<bool>(json, r'published'),
        contentName: mapValueOfType<String>(json, r'contentName'),
        defaultThreshold: mapValueOfType<int>(json, r'defaultThreshold'),
        contentAsset: Asset.fromJson(json[r'contentAsset']),
        contentType: mapValueOfType<String>(json, r'contentType'),
      );
    }
    return null;
  }

  static List<GameLevel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameLevel> mapFromJson(dynamic json) {
    final map = <String, GameLevel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameLevel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameLevel-objects as value to a dart map
  static Map<String, List<GameLevel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameLevel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameLevel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class GameLevelGameDifficultyEnum {
  /// Instantiate a new enum with the provided [value].
  const GameLevelGameDifficultyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const VERY_EASY = GameLevelGameDifficultyEnum._(r'VERY_EASY');
  static const EASY = GameLevelGameDifficultyEnum._(r'EASY');
  static const MEDIUM = GameLevelGameDifficultyEnum._(r'MEDIUM');
  static const HARD = GameLevelGameDifficultyEnum._(r'HARD');
  static const VERY_HARD = GameLevelGameDifficultyEnum._(r'VERY_HARD');

  /// List of all possible values in this [enum][GameLevelGameDifficultyEnum].
  static const values = <GameLevelGameDifficultyEnum>[
    VERY_EASY,
    EASY,
    MEDIUM,
    HARD,
    VERY_HARD,
  ];

  static GameLevelGameDifficultyEnum? fromJson(dynamic value) => GameLevelGameDifficultyEnumTypeTransformer().decode(value);

  static List<GameLevelGameDifficultyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameLevelGameDifficultyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameLevelGameDifficultyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GameLevelGameDifficultyEnum] to String,
/// and [decode] dynamic data back to [GameLevelGameDifficultyEnum].
class GameLevelGameDifficultyEnumTypeTransformer {
  factory GameLevelGameDifficultyEnumTypeTransformer() => _instance ??= const GameLevelGameDifficultyEnumTypeTransformer._();

  const GameLevelGameDifficultyEnumTypeTransformer._();

  String encode(GameLevelGameDifficultyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GameLevelGameDifficultyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GameLevelGameDifficultyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VERY_EASY': return GameLevelGameDifficultyEnum.VERY_EASY;
        case r'EASY': return GameLevelGameDifficultyEnum.EASY;
        case r'MEDIUM': return GameLevelGameDifficultyEnum.MEDIUM;
        case r'HARD': return GameLevelGameDifficultyEnum.HARD;
        case r'VERY_HARD': return GameLevelGameDifficultyEnum.VERY_HARD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GameLevelGameDifficultyEnumTypeTransformer] instance.
  static GameLevelGameDifficultyEnumTypeTransformer? _instance;
}



class GameLevelVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const GameLevelVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = GameLevelVisibilityEnum._(r'PUBLIC');
  static const PRIVATE = GameLevelVisibilityEnum._(r'PRIVATE');
  static const FRIENDS = GameLevelVisibilityEnum._(r'FRIENDS');

  /// List of all possible values in this [enum][GameLevelVisibilityEnum].
  static const values = <GameLevelVisibilityEnum>[
    PUBLIC,
    PRIVATE,
    FRIENDS,
  ];

  static GameLevelVisibilityEnum? fromJson(dynamic value) => GameLevelVisibilityEnumTypeTransformer().decode(value);

  static List<GameLevelVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameLevelVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameLevelVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GameLevelVisibilityEnum] to String,
/// and [decode] dynamic data back to [GameLevelVisibilityEnum].
class GameLevelVisibilityEnumTypeTransformer {
  factory GameLevelVisibilityEnumTypeTransformer() => _instance ??= const GameLevelVisibilityEnumTypeTransformer._();

  const GameLevelVisibilityEnumTypeTransformer._();

  String encode(GameLevelVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GameLevelVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GameLevelVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return GameLevelVisibilityEnum.PUBLIC;
        case r'PRIVATE': return GameLevelVisibilityEnum.PRIVATE;
        case r'FRIENDS': return GameLevelVisibilityEnum.FRIENDS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GameLevelVisibilityEnumTypeTransformer] instance.
  static GameLevelVisibilityEnumTypeTransformer? _instance;
}



class GameLevelApprovalStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const GameLevelApprovalStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = GameLevelApprovalStatusEnum._(r'PENDING');
  static const REJECTED = GameLevelApprovalStatusEnum._(r'REJECTED');
  static const APPROVED = GameLevelApprovalStatusEnum._(r'APPROVED');
  static const FEATURED = GameLevelApprovalStatusEnum._(r'FEATURED');

  /// List of all possible values in this [enum][GameLevelApprovalStatusEnum].
  static const values = <GameLevelApprovalStatusEnum>[
    PENDING,
    REJECTED,
    APPROVED,
    FEATURED,
  ];

  static GameLevelApprovalStatusEnum? fromJson(dynamic value) => GameLevelApprovalStatusEnumTypeTransformer().decode(value);

  static List<GameLevelApprovalStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameLevelApprovalStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameLevelApprovalStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GameLevelApprovalStatusEnum] to String,
/// and [decode] dynamic data back to [GameLevelApprovalStatusEnum].
class GameLevelApprovalStatusEnumTypeTransformer {
  factory GameLevelApprovalStatusEnumTypeTransformer() => _instance ??= const GameLevelApprovalStatusEnumTypeTransformer._();

  const GameLevelApprovalStatusEnumTypeTransformer._();

  String encode(GameLevelApprovalStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GameLevelApprovalStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GameLevelApprovalStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return GameLevelApprovalStatusEnum.PENDING;
        case r'REJECTED': return GameLevelApprovalStatusEnum.REJECTED;
        case r'APPROVED': return GameLevelApprovalStatusEnum.APPROVED;
        case r'FEATURED': return GameLevelApprovalStatusEnum.FEATURED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GameLevelApprovalStatusEnumTypeTransformer] instance.
  static GameLevelApprovalStatusEnumTypeTransformer? _instance;
}


