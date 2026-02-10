//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameLevelResponse {
  /// Returns a new [GameLevelResponse] instance.
  GameLevelResponse({
    this.action,
    this.gameLevelId,
    this.gameType,
    this.active,
    this.name,
    this.description,
    this.difficulty,
    this.appVersion,
    this.likesCount,
    this.dislikesCount,
    this.commentsCount,
    this.downloadCount,
    this.comments = const [],
    this.locked,
    this.completed,
    this.ticketsEarned,
    this.gameObjects,
    this.hasLiked,
    this.image,
    this.gameData,
    this.gameDataSuffix,
    this.scores,
    this.owner,
    this.userPermissionsList,
    this.results = const [],
    this.randomizeGameObjects,
    this.tickets,
    this.assignMission,
    this.icon,
    this.authorOverride,
    this.updatedDate,
    this.startDate,
    this.endDate,
    this.splashTitle,
    this.splashMessage,
    this.hasFlagged,
    this.allocateTickets,
    this.ticketType,
    this.ticketCount,
    this.points,
    this.winnerMessage,
    this.tutorial,
    this.appKey,
    this.appName,
    this.scoringType,
    this.tutorialTitle,
    this.tutorialMessage,
    this.tutorialAlignment,
    this.tutorialImage,
    this.nextLevelId,
    this.offer,
  });

  GameLevelResponseActionEnum? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gameLevelId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gameType;

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
  String? difficulty;

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
  int? likesCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dislikesCount;

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
  int? downloadCount;

  List<NoteResponse> comments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? locked;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? completed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticketsEarned;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GameObjectListResponse? gameObjects;

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
  AssetShortResponse? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gameData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gameDataSuffix;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ScoreListResponse? scores;

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
  UserPermissionsListResponse? userPermissionsList;

  List<NameStringValueResponse> results;

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
  TicketListResponse? tickets;

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
  AssetShortResponse? icon;

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
  int? updatedDate;

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
  bool? hasFlagged;

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
  int? points;

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
  TutorialResponse? tutorial;

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
  String? appName;

  GameLevelResponseScoringTypeEnum? scoringType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tutorialTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tutorialMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tutorialAlignment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? tutorialImage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nextLevelId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OfferShortResponse? offer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameLevelResponse &&
    other.action == action &&
    other.gameLevelId == gameLevelId &&
    other.gameType == gameType &&
    other.active == active &&
    other.name == name &&
    other.description == description &&
    other.difficulty == difficulty &&
    other.appVersion == appVersion &&
    other.likesCount == likesCount &&
    other.dislikesCount == dislikesCount &&
    other.commentsCount == commentsCount &&
    other.downloadCount == downloadCount &&
    _deepEquality.equals(other.comments, comments) &&
    other.locked == locked &&
    other.completed == completed &&
    other.ticketsEarned == ticketsEarned &&
    other.gameObjects == gameObjects &&
    other.hasLiked == hasLiked &&
    other.image == image &&
    other.gameData == gameData &&
    other.gameDataSuffix == gameDataSuffix &&
    other.scores == scores &&
    other.owner == owner &&
    other.userPermissionsList == userPermissionsList &&
    _deepEquality.equals(other.results, results) &&
    other.randomizeGameObjects == randomizeGameObjects &&
    other.tickets == tickets &&
    other.assignMission == assignMission &&
    other.icon == icon &&
    other.authorOverride == authorOverride &&
    other.updatedDate == updatedDate &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.splashTitle == splashTitle &&
    other.splashMessage == splashMessage &&
    other.hasFlagged == hasFlagged &&
    other.allocateTickets == allocateTickets &&
    other.ticketType == ticketType &&
    other.ticketCount == ticketCount &&
    other.points == points &&
    other.winnerMessage == winnerMessage &&
    other.tutorial == tutorial &&
    other.appKey == appKey &&
    other.appName == appName &&
    other.scoringType == scoringType &&
    other.tutorialTitle == tutorialTitle &&
    other.tutorialMessage == tutorialMessage &&
    other.tutorialAlignment == tutorialAlignment &&
    other.tutorialImage == tutorialImage &&
    other.nextLevelId == nextLevelId &&
    other.offer == offer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (gameLevelId == null ? 0 : gameLevelId!.hashCode) +
    (gameType == null ? 0 : gameType!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (difficulty == null ? 0 : difficulty!.hashCode) +
    (appVersion == null ? 0 : appVersion!.hashCode) +
    (likesCount == null ? 0 : likesCount!.hashCode) +
    (dislikesCount == null ? 0 : dislikesCount!.hashCode) +
    (commentsCount == null ? 0 : commentsCount!.hashCode) +
    (downloadCount == null ? 0 : downloadCount!.hashCode) +
    (comments.hashCode) +
    (locked == null ? 0 : locked!.hashCode) +
    (completed == null ? 0 : completed!.hashCode) +
    (ticketsEarned == null ? 0 : ticketsEarned!.hashCode) +
    (gameObjects == null ? 0 : gameObjects!.hashCode) +
    (hasLiked == null ? 0 : hasLiked!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (gameData == null ? 0 : gameData!.hashCode) +
    (gameDataSuffix == null ? 0 : gameDataSuffix!.hashCode) +
    (scores == null ? 0 : scores!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (userPermissionsList == null ? 0 : userPermissionsList!.hashCode) +
    (results.hashCode) +
    (randomizeGameObjects == null ? 0 : randomizeGameObjects!.hashCode) +
    (tickets == null ? 0 : tickets!.hashCode) +
    (assignMission == null ? 0 : assignMission!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (authorOverride == null ? 0 : authorOverride!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (splashTitle == null ? 0 : splashTitle!.hashCode) +
    (splashMessage == null ? 0 : splashMessage!.hashCode) +
    (hasFlagged == null ? 0 : hasFlagged!.hashCode) +
    (allocateTickets == null ? 0 : allocateTickets!.hashCode) +
    (ticketType == null ? 0 : ticketType!.hashCode) +
    (ticketCount == null ? 0 : ticketCount!.hashCode) +
    (points == null ? 0 : points!.hashCode) +
    (winnerMessage == null ? 0 : winnerMessage!.hashCode) +
    (tutorial == null ? 0 : tutorial!.hashCode) +
    (appKey == null ? 0 : appKey!.hashCode) +
    (appName == null ? 0 : appName!.hashCode) +
    (scoringType == null ? 0 : scoringType!.hashCode) +
    (tutorialTitle == null ? 0 : tutorialTitle!.hashCode) +
    (tutorialMessage == null ? 0 : tutorialMessage!.hashCode) +
    (tutorialAlignment == null ? 0 : tutorialAlignment!.hashCode) +
    (tutorialImage == null ? 0 : tutorialImage!.hashCode) +
    (nextLevelId == null ? 0 : nextLevelId!.hashCode) +
    (offer == null ? 0 : offer!.hashCode);

  @override
  String toString() => 'GameLevelResponse[action=$action, gameLevelId=$gameLevelId, gameType=$gameType, active=$active, name=$name, description=$description, difficulty=$difficulty, appVersion=$appVersion, likesCount=$likesCount, dislikesCount=$dislikesCount, commentsCount=$commentsCount, downloadCount=$downloadCount, comments=$comments, locked=$locked, completed=$completed, ticketsEarned=$ticketsEarned, gameObjects=$gameObjects, hasLiked=$hasLiked, image=$image, gameData=$gameData, gameDataSuffix=$gameDataSuffix, scores=$scores, owner=$owner, userPermissionsList=$userPermissionsList, results=$results, randomizeGameObjects=$randomizeGameObjects, tickets=$tickets, assignMission=$assignMission, icon=$icon, authorOverride=$authorOverride, updatedDate=$updatedDate, startDate=$startDate, endDate=$endDate, splashTitle=$splashTitle, splashMessage=$splashMessage, hasFlagged=$hasFlagged, allocateTickets=$allocateTickets, ticketType=$ticketType, ticketCount=$ticketCount, points=$points, winnerMessage=$winnerMessage, tutorial=$tutorial, appKey=$appKey, appName=$appName, scoringType=$scoringType, tutorialTitle=$tutorialTitle, tutorialMessage=$tutorialMessage, tutorialAlignment=$tutorialAlignment, tutorialImage=$tutorialImage, nextLevelId=$nextLevelId, offer=$offer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.gameLevelId != null) {
      json[r'gameLevelId'] = this.gameLevelId;
    } else {
      json[r'gameLevelId'] = null;
    }
    if (this.gameType != null) {
      json[r'gameType'] = this.gameType;
    } else {
      json[r'gameType'] = null;
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
    if (this.difficulty != null) {
      json[r'difficulty'] = this.difficulty;
    } else {
      json[r'difficulty'] = null;
    }
    if (this.appVersion != null) {
      json[r'appVersion'] = this.appVersion;
    } else {
      json[r'appVersion'] = null;
    }
    if (this.likesCount != null) {
      json[r'likesCount'] = this.likesCount;
    } else {
      json[r'likesCount'] = null;
    }
    if (this.dislikesCount != null) {
      json[r'dislikesCount'] = this.dislikesCount;
    } else {
      json[r'dislikesCount'] = null;
    }
    if (this.commentsCount != null) {
      json[r'commentsCount'] = this.commentsCount;
    } else {
      json[r'commentsCount'] = null;
    }
    if (this.downloadCount != null) {
      json[r'downloadCount'] = this.downloadCount;
    } else {
      json[r'downloadCount'] = null;
    }
      json[r'comments'] = this.comments;
    if (this.locked != null) {
      json[r'locked'] = this.locked;
    } else {
      json[r'locked'] = null;
    }
    if (this.completed != null) {
      json[r'completed'] = this.completed;
    } else {
      json[r'completed'] = null;
    }
    if (this.ticketsEarned != null) {
      json[r'ticketsEarned'] = this.ticketsEarned;
    } else {
      json[r'ticketsEarned'] = null;
    }
    if (this.gameObjects != null) {
      json[r'gameObjects'] = this.gameObjects;
    } else {
      json[r'gameObjects'] = null;
    }
    if (this.hasLiked != null) {
      json[r'hasLiked'] = this.hasLiked;
    } else {
      json[r'hasLiked'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.gameData != null) {
      json[r'gameData'] = this.gameData;
    } else {
      json[r'gameData'] = null;
    }
    if (this.gameDataSuffix != null) {
      json[r'gameDataSuffix'] = this.gameDataSuffix;
    } else {
      json[r'gameDataSuffix'] = null;
    }
    if (this.scores != null) {
      json[r'scores'] = this.scores;
    } else {
      json[r'scores'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.userPermissionsList != null) {
      json[r'userPermissionsList'] = this.userPermissionsList;
    } else {
      json[r'userPermissionsList'] = null;
    }
      json[r'results'] = this.results;
    if (this.randomizeGameObjects != null) {
      json[r'randomizeGameObjects'] = this.randomizeGameObjects;
    } else {
      json[r'randomizeGameObjects'] = null;
    }
    if (this.tickets != null) {
      json[r'tickets'] = this.tickets;
    } else {
      json[r'tickets'] = null;
    }
    if (this.assignMission != null) {
      json[r'assignMission'] = this.assignMission;
    } else {
      json[r'assignMission'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.authorOverride != null) {
      json[r'authorOverride'] = this.authorOverride;
    } else {
      json[r'authorOverride'] = null;
    }
    if (this.updatedDate != null) {
      json[r'updatedDate'] = this.updatedDate;
    } else {
      json[r'updatedDate'] = null;
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
    if (this.hasFlagged != null) {
      json[r'hasFlagged'] = this.hasFlagged;
    } else {
      json[r'hasFlagged'] = null;
    }
    if (this.allocateTickets != null) {
      json[r'allocateTickets'] = this.allocateTickets;
    } else {
      json[r'allocateTickets'] = null;
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
    if (this.points != null) {
      json[r'points'] = this.points;
    } else {
      json[r'points'] = null;
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
    if (this.appKey != null) {
      json[r'appKey'] = this.appKey;
    } else {
      json[r'appKey'] = null;
    }
    if (this.appName != null) {
      json[r'appName'] = this.appName;
    } else {
      json[r'appName'] = null;
    }
    if (this.scoringType != null) {
      json[r'scoringType'] = this.scoringType;
    } else {
      json[r'scoringType'] = null;
    }
    if (this.tutorialTitle != null) {
      json[r'tutorialTitle'] = this.tutorialTitle;
    } else {
      json[r'tutorialTitle'] = null;
    }
    if (this.tutorialMessage != null) {
      json[r'tutorialMessage'] = this.tutorialMessage;
    } else {
      json[r'tutorialMessage'] = null;
    }
    if (this.tutorialAlignment != null) {
      json[r'tutorialAlignment'] = this.tutorialAlignment;
    } else {
      json[r'tutorialAlignment'] = null;
    }
    if (this.tutorialImage != null) {
      json[r'tutorialImage'] = this.tutorialImage;
    } else {
      json[r'tutorialImage'] = null;
    }
    if (this.nextLevelId != null) {
      json[r'nextLevelId'] = this.nextLevelId;
    } else {
      json[r'nextLevelId'] = null;
    }
    if (this.offer != null) {
      json[r'offer'] = this.offer;
    } else {
      json[r'offer'] = null;
    }
    return json;
  }

  /// Returns a new [GameLevelResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameLevelResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameLevelResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameLevelResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameLevelResponse(
        action: GameLevelResponseActionEnum.fromJson(json[r'action']),
        gameLevelId: mapValueOfType<int>(json, r'gameLevelId'),
        gameType: mapValueOfType<String>(json, r'gameType'),
        active: mapValueOfType<bool>(json, r'active'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        difficulty: mapValueOfType<String>(json, r'difficulty'),
        appVersion: mapValueOfType<String>(json, r'appVersion'),
        likesCount: mapValueOfType<int>(json, r'likesCount'),
        dislikesCount: mapValueOfType<int>(json, r'dislikesCount'),
        commentsCount: mapValueOfType<int>(json, r'commentsCount'),
        downloadCount: mapValueOfType<int>(json, r'downloadCount'),
        comments: NoteResponse.listFromJson(json[r'comments']),
        locked: mapValueOfType<bool>(json, r'locked'),
        completed: mapValueOfType<bool>(json, r'completed'),
        ticketsEarned: mapValueOfType<int>(json, r'ticketsEarned'),
        gameObjects: GameObjectListResponse.fromJson(json[r'gameObjects']),
        hasLiked: mapValueOfType<bool>(json, r'hasLiked'),
        image: AssetShortResponse.fromJson(json[r'image']),
        gameData: mapValueOfType<String>(json, r'gameData'),
        gameDataSuffix: mapValueOfType<String>(json, r'gameDataSuffix'),
        scores: ScoreListResponse.fromJson(json[r'scores']),
        owner: AccountShortResponse.fromJson(json[r'owner']),
        userPermissionsList: UserPermissionsListResponse.fromJson(json[r'userPermissionsList']),
        results: NameStringValueResponse.listFromJson(json[r'results']),
        randomizeGameObjects: mapValueOfType<bool>(json, r'randomizeGameObjects'),
        tickets: TicketListResponse.fromJson(json[r'tickets']),
        assignMission: mapValueOfType<bool>(json, r'assignMission'),
        icon: AssetShortResponse.fromJson(json[r'icon']),
        authorOverride: mapValueOfType<String>(json, r'authorOverride'),
        updatedDate: mapValueOfType<int>(json, r'updatedDate'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        splashTitle: mapValueOfType<String>(json, r'splashTitle'),
        splashMessage: mapValueOfType<String>(json, r'splashMessage'),
        hasFlagged: mapValueOfType<bool>(json, r'hasFlagged'),
        allocateTickets: mapValueOfType<bool>(json, r'allocateTickets'),
        ticketType: mapValueOfType<String>(json, r'ticketType'),
        ticketCount: mapValueOfType<int>(json, r'ticketCount'),
        points: mapValueOfType<int>(json, r'points'),
        winnerMessage: mapValueOfType<String>(json, r'winnerMessage'),
        tutorial: TutorialResponse.fromJson(json[r'tutorial']),
        appKey: mapValueOfType<String>(json, r'appKey'),
        appName: mapValueOfType<String>(json, r'appName'),
        scoringType: GameLevelResponseScoringTypeEnum.fromJson(json[r'scoringType']),
        tutorialTitle: mapValueOfType<String>(json, r'tutorialTitle'),
        tutorialMessage: mapValueOfType<String>(json, r'tutorialMessage'),
        tutorialAlignment: mapValueOfType<String>(json, r'tutorialAlignment'),
        tutorialImage: AssetShortResponse.fromJson(json[r'tutorialImage']),
        nextLevelId: mapValueOfType<int>(json, r'nextLevelId'),
        offer: OfferShortResponse.fromJson(json[r'offer']),
      );
    }
    return null;
  }

  static List<GameLevelResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameLevelResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameLevelResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameLevelResponse> mapFromJson(dynamic json) {
    final map = <String, GameLevelResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameLevelResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameLevelResponse-objects as value to a dart map
  static Map<String, List<GameLevelResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GameLevelResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GameLevelResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class GameLevelResponseActionEnum {
  /// Instantiate a new enum with the provided [value].
  const GameLevelResponseActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DATA = GameLevelResponseActionEnum._(r'DATA');
  static const SAVE = GameLevelResponseActionEnum._(r'SAVE');
  static const DELETE = GameLevelResponseActionEnum._(r'DELETE');
  static const GET = GameLevelResponseActionEnum._(r'GET');

  /// List of all possible values in this [enum][GameLevelResponseActionEnum].
  static const values = <GameLevelResponseActionEnum>[
    DATA,
    SAVE,
    DELETE,
    GET,
  ];

  static GameLevelResponseActionEnum? fromJson(dynamic value) => GameLevelResponseActionEnumTypeTransformer().decode(value);

  static List<GameLevelResponseActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameLevelResponseActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameLevelResponseActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GameLevelResponseActionEnum] to String,
/// and [decode] dynamic data back to [GameLevelResponseActionEnum].
class GameLevelResponseActionEnumTypeTransformer {
  factory GameLevelResponseActionEnumTypeTransformer() => _instance ??= const GameLevelResponseActionEnumTypeTransformer._();

  const GameLevelResponseActionEnumTypeTransformer._();

  String encode(GameLevelResponseActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GameLevelResponseActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GameLevelResponseActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DATA': return GameLevelResponseActionEnum.DATA;
        case r'SAVE': return GameLevelResponseActionEnum.SAVE;
        case r'DELETE': return GameLevelResponseActionEnum.DELETE;
        case r'GET': return GameLevelResponseActionEnum.GET;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GameLevelResponseActionEnumTypeTransformer] instance.
  static GameLevelResponseActionEnumTypeTransformer? _instance;
}



class GameLevelResponseScoringTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GameLevelResponseScoringTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GAME_LEVEL = GameLevelResponseScoringTypeEnum._(r'GAME_LEVEL');
  static const GAME_OBJECT = GameLevelResponseScoringTypeEnum._(r'GAME_OBJECT');

  /// List of all possible values in this [enum][GameLevelResponseScoringTypeEnum].
  static const values = <GameLevelResponseScoringTypeEnum>[
    GAME_LEVEL,
    GAME_OBJECT,
  ];

  static GameLevelResponseScoringTypeEnum? fromJson(dynamic value) => GameLevelResponseScoringTypeEnumTypeTransformer().decode(value);

  static List<GameLevelResponseScoringTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GameLevelResponseScoringTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameLevelResponseScoringTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GameLevelResponseScoringTypeEnum] to String,
/// and [decode] dynamic data back to [GameLevelResponseScoringTypeEnum].
class GameLevelResponseScoringTypeEnumTypeTransformer {
  factory GameLevelResponseScoringTypeEnumTypeTransformer() => _instance ??= const GameLevelResponseScoringTypeEnumTypeTransformer._();

  const GameLevelResponseScoringTypeEnumTypeTransformer._();

  String encode(GameLevelResponseScoringTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GameLevelResponseScoringTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GameLevelResponseScoringTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GAME_LEVEL': return GameLevelResponseScoringTypeEnum.GAME_LEVEL;
        case r'GAME_OBJECT': return GameLevelResponseScoringTypeEnum.GAME_OBJECT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GameLevelResponseScoringTypeEnumTypeTransformer] instance.
  static GameLevelResponseScoringTypeEnumTypeTransformer? _instance;
}


