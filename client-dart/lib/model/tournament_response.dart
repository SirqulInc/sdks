//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TournamentResponse {
  /// Returns a new [TournamentResponse] instance.
  TournamentResponse({
    this.action,
    this.highestAppVersion,
    this.missionId,
    this.ticketsEarned,
    this.costToPlay,
    this.costToPlayType,
    this.owner,
    this.title,
    this.description,
    this.authorOverride,
    this.icon,
    this.image,
    this.sequenceType,
    this.updatedDate,
    this.startDate,
    this.endDate,
    this.missionType,
    this.active,
    this.balance,
    this.availableLimit,
    this.inviteCount,
    this.acceptedCount,
    this.childCount,
    this.enableBuyBack,
    this.minimumToPlay,
    this.rewarded,
    this.refunded,
    this.joinCode,
    this.rewards = const [],
    this.games,
    this.scores,
    this.userPermissionsList,
    this.results = const [],
    this.inviteStatus,
    this.audiences = const [],
    this.missionInviteId,
    this.missionInvite,
    this.invitee,
    this.formatType,
    this.creatives = const [],
    this.fixedReward,
    this.allocateTickets,
    this.ticketType,
    this.ticketCount,
    this.points,
    this.splitReward,
    this.secondsBetweenLevels,
    this.secondsBetweenPacks,
    this.advancedReporting,
    this.tournamentData,
  });

  TournamentResponseActionEnum? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? highestAppVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? missionId;

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
  int? costToPlay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? costToPlayType;

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
  String? authorOverride;

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
  AssetShortResponse? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sequenceType;

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
  String? missionType;

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
  double? balance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? availableLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inviteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? acceptedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? childCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableBuyBack;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minimumToPlay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? rewarded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? refunded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? joinCode;

  List<RewardResponse> rewards;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GameListResponse? games;

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
  UserPermissionsListResponse? userPermissionsList;

  List<NameStringValueResponse> results;

  TournamentResponseInviteStatusEnum? inviteStatus;

  List<AudienceResponse> audiences;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? missionInviteId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MissionInviteResponse? missionInvite;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountShortResponse? invitee;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formatType;

  List<CreativeResponse> creatives;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? fixedReward;

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
  String? splitReward;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? secondsBetweenLevels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? secondsBetweenPacks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? advancedReporting;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tournamentData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TournamentResponse &&
    other.action == action &&
    other.highestAppVersion == highestAppVersion &&
    other.missionId == missionId &&
    other.ticketsEarned == ticketsEarned &&
    other.costToPlay == costToPlay &&
    other.costToPlayType == costToPlayType &&
    other.owner == owner &&
    other.title == title &&
    other.description == description &&
    other.authorOverride == authorOverride &&
    other.icon == icon &&
    other.image == image &&
    other.sequenceType == sequenceType &&
    other.updatedDate == updatedDate &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.missionType == missionType &&
    other.active == active &&
    other.balance == balance &&
    other.availableLimit == availableLimit &&
    other.inviteCount == inviteCount &&
    other.acceptedCount == acceptedCount &&
    other.childCount == childCount &&
    other.enableBuyBack == enableBuyBack &&
    other.minimumToPlay == minimumToPlay &&
    other.rewarded == rewarded &&
    other.refunded == refunded &&
    other.joinCode == joinCode &&
    _deepEquality.equals(other.rewards, rewards) &&
    other.games == games &&
    other.scores == scores &&
    other.userPermissionsList == userPermissionsList &&
    _deepEquality.equals(other.results, results) &&
    other.inviteStatus == inviteStatus &&
    _deepEquality.equals(other.audiences, audiences) &&
    other.missionInviteId == missionInviteId &&
    other.missionInvite == missionInvite &&
    other.invitee == invitee &&
    other.formatType == formatType &&
    _deepEquality.equals(other.creatives, creatives) &&
    other.fixedReward == fixedReward &&
    other.allocateTickets == allocateTickets &&
    other.ticketType == ticketType &&
    other.ticketCount == ticketCount &&
    other.points == points &&
    other.splitReward == splitReward &&
    other.secondsBetweenLevels == secondsBetweenLevels &&
    other.secondsBetweenPacks == secondsBetweenPacks &&
    other.advancedReporting == advancedReporting &&
    other.tournamentData == tournamentData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (highestAppVersion == null ? 0 : highestAppVersion!.hashCode) +
    (missionId == null ? 0 : missionId!.hashCode) +
    (ticketsEarned == null ? 0 : ticketsEarned!.hashCode) +
    (costToPlay == null ? 0 : costToPlay!.hashCode) +
    (costToPlayType == null ? 0 : costToPlayType!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (authorOverride == null ? 0 : authorOverride!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (sequenceType == null ? 0 : sequenceType!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (missionType == null ? 0 : missionType!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (balance == null ? 0 : balance!.hashCode) +
    (availableLimit == null ? 0 : availableLimit!.hashCode) +
    (inviteCount == null ? 0 : inviteCount!.hashCode) +
    (acceptedCount == null ? 0 : acceptedCount!.hashCode) +
    (childCount == null ? 0 : childCount!.hashCode) +
    (enableBuyBack == null ? 0 : enableBuyBack!.hashCode) +
    (minimumToPlay == null ? 0 : minimumToPlay!.hashCode) +
    (rewarded == null ? 0 : rewarded!.hashCode) +
    (refunded == null ? 0 : refunded!.hashCode) +
    (joinCode == null ? 0 : joinCode!.hashCode) +
    (rewards.hashCode) +
    (games == null ? 0 : games!.hashCode) +
    (scores == null ? 0 : scores!.hashCode) +
    (userPermissionsList == null ? 0 : userPermissionsList!.hashCode) +
    (results.hashCode) +
    (inviteStatus == null ? 0 : inviteStatus!.hashCode) +
    (audiences.hashCode) +
    (missionInviteId == null ? 0 : missionInviteId!.hashCode) +
    (missionInvite == null ? 0 : missionInvite!.hashCode) +
    (invitee == null ? 0 : invitee!.hashCode) +
    (formatType == null ? 0 : formatType!.hashCode) +
    (creatives.hashCode) +
    (fixedReward == null ? 0 : fixedReward!.hashCode) +
    (allocateTickets == null ? 0 : allocateTickets!.hashCode) +
    (ticketType == null ? 0 : ticketType!.hashCode) +
    (ticketCount == null ? 0 : ticketCount!.hashCode) +
    (points == null ? 0 : points!.hashCode) +
    (splitReward == null ? 0 : splitReward!.hashCode) +
    (secondsBetweenLevels == null ? 0 : secondsBetweenLevels!.hashCode) +
    (secondsBetweenPacks == null ? 0 : secondsBetweenPacks!.hashCode) +
    (advancedReporting == null ? 0 : advancedReporting!.hashCode) +
    (tournamentData == null ? 0 : tournamentData!.hashCode);

  @override
  String toString() => 'TournamentResponse[action=$action, highestAppVersion=$highestAppVersion, missionId=$missionId, ticketsEarned=$ticketsEarned, costToPlay=$costToPlay, costToPlayType=$costToPlayType, owner=$owner, title=$title, description=$description, authorOverride=$authorOverride, icon=$icon, image=$image, sequenceType=$sequenceType, updatedDate=$updatedDate, startDate=$startDate, endDate=$endDate, missionType=$missionType, active=$active, balance=$balance, availableLimit=$availableLimit, inviteCount=$inviteCount, acceptedCount=$acceptedCount, childCount=$childCount, enableBuyBack=$enableBuyBack, minimumToPlay=$minimumToPlay, rewarded=$rewarded, refunded=$refunded, joinCode=$joinCode, rewards=$rewards, games=$games, scores=$scores, userPermissionsList=$userPermissionsList, results=$results, inviteStatus=$inviteStatus, audiences=$audiences, missionInviteId=$missionInviteId, missionInvite=$missionInvite, invitee=$invitee, formatType=$formatType, creatives=$creatives, fixedReward=$fixedReward, allocateTickets=$allocateTickets, ticketType=$ticketType, ticketCount=$ticketCount, points=$points, splitReward=$splitReward, secondsBetweenLevels=$secondsBetweenLevels, secondsBetweenPacks=$secondsBetweenPacks, advancedReporting=$advancedReporting, tournamentData=$tournamentData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.highestAppVersion != null) {
      json[r'highestAppVersion'] = this.highestAppVersion;
    } else {
      json[r'highestAppVersion'] = null;
    }
    if (this.missionId != null) {
      json[r'missionId'] = this.missionId;
    } else {
      json[r'missionId'] = null;
    }
    if (this.ticketsEarned != null) {
      json[r'ticketsEarned'] = this.ticketsEarned;
    } else {
      json[r'ticketsEarned'] = null;
    }
    if (this.costToPlay != null) {
      json[r'costToPlay'] = this.costToPlay;
    } else {
      json[r'costToPlay'] = null;
    }
    if (this.costToPlayType != null) {
      json[r'costToPlayType'] = this.costToPlayType;
    } else {
      json[r'costToPlayType'] = null;
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
    if (this.authorOverride != null) {
      json[r'authorOverride'] = this.authorOverride;
    } else {
      json[r'authorOverride'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.sequenceType != null) {
      json[r'sequenceType'] = this.sequenceType;
    } else {
      json[r'sequenceType'] = null;
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
    if (this.missionType != null) {
      json[r'missionType'] = this.missionType;
    } else {
      json[r'missionType'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.balance != null) {
      json[r'balance'] = this.balance;
    } else {
      json[r'balance'] = null;
    }
    if (this.availableLimit != null) {
      json[r'availableLimit'] = this.availableLimit;
    } else {
      json[r'availableLimit'] = null;
    }
    if (this.inviteCount != null) {
      json[r'inviteCount'] = this.inviteCount;
    } else {
      json[r'inviteCount'] = null;
    }
    if (this.acceptedCount != null) {
      json[r'acceptedCount'] = this.acceptedCount;
    } else {
      json[r'acceptedCount'] = null;
    }
    if (this.childCount != null) {
      json[r'childCount'] = this.childCount;
    } else {
      json[r'childCount'] = null;
    }
    if (this.enableBuyBack != null) {
      json[r'enableBuyBack'] = this.enableBuyBack;
    } else {
      json[r'enableBuyBack'] = null;
    }
    if (this.minimumToPlay != null) {
      json[r'minimumToPlay'] = this.minimumToPlay;
    } else {
      json[r'minimumToPlay'] = null;
    }
    if (this.rewarded != null) {
      json[r'rewarded'] = this.rewarded;
    } else {
      json[r'rewarded'] = null;
    }
    if (this.refunded != null) {
      json[r'refunded'] = this.refunded;
    } else {
      json[r'refunded'] = null;
    }
    if (this.joinCode != null) {
      json[r'joinCode'] = this.joinCode;
    } else {
      json[r'joinCode'] = null;
    }
      json[r'rewards'] = this.rewards;
    if (this.games != null) {
      json[r'games'] = this.games;
    } else {
      json[r'games'] = null;
    }
    if (this.scores != null) {
      json[r'scores'] = this.scores;
    } else {
      json[r'scores'] = null;
    }
    if (this.userPermissionsList != null) {
      json[r'userPermissionsList'] = this.userPermissionsList;
    } else {
      json[r'userPermissionsList'] = null;
    }
      json[r'results'] = this.results;
    if (this.inviteStatus != null) {
      json[r'inviteStatus'] = this.inviteStatus;
    } else {
      json[r'inviteStatus'] = null;
    }
      json[r'audiences'] = this.audiences;
    if (this.missionInviteId != null) {
      json[r'missionInviteId'] = this.missionInviteId;
    } else {
      json[r'missionInviteId'] = null;
    }
    if (this.missionInvite != null) {
      json[r'missionInvite'] = this.missionInvite;
    } else {
      json[r'missionInvite'] = null;
    }
    if (this.invitee != null) {
      json[r'invitee'] = this.invitee;
    } else {
      json[r'invitee'] = null;
    }
    if (this.formatType != null) {
      json[r'formatType'] = this.formatType;
    } else {
      json[r'formatType'] = null;
    }
      json[r'creatives'] = this.creatives;
    if (this.fixedReward != null) {
      json[r'fixedReward'] = this.fixedReward;
    } else {
      json[r'fixedReward'] = null;
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
    if (this.splitReward != null) {
      json[r'splitReward'] = this.splitReward;
    } else {
      json[r'splitReward'] = null;
    }
    if (this.secondsBetweenLevels != null) {
      json[r'secondsBetweenLevels'] = this.secondsBetweenLevels;
    } else {
      json[r'secondsBetweenLevels'] = null;
    }
    if (this.secondsBetweenPacks != null) {
      json[r'secondsBetweenPacks'] = this.secondsBetweenPacks;
    } else {
      json[r'secondsBetweenPacks'] = null;
    }
    if (this.advancedReporting != null) {
      json[r'advancedReporting'] = this.advancedReporting;
    } else {
      json[r'advancedReporting'] = null;
    }
    if (this.tournamentData != null) {
      json[r'tournamentData'] = this.tournamentData;
    } else {
      json[r'tournamentData'] = null;
    }
    return json;
  }

  /// Returns a new [TournamentResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TournamentResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TournamentResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TournamentResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TournamentResponse(
        action: TournamentResponseActionEnum.fromJson(json[r'action']),
        highestAppVersion: mapValueOfType<String>(json, r'highestAppVersion'),
        missionId: mapValueOfType<int>(json, r'missionId'),
        ticketsEarned: mapValueOfType<int>(json, r'ticketsEarned'),
        costToPlay: mapValueOfType<int>(json, r'costToPlay'),
        costToPlayType: mapValueOfType<String>(json, r'costToPlayType'),
        owner: AccountShortResponse.fromJson(json[r'owner']),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        authorOverride: mapValueOfType<String>(json, r'authorOverride'),
        icon: AssetShortResponse.fromJson(json[r'icon']),
        image: AssetShortResponse.fromJson(json[r'image']),
        sequenceType: mapValueOfType<String>(json, r'sequenceType'),
        updatedDate: mapValueOfType<int>(json, r'updatedDate'),
        startDate: mapValueOfType<int>(json, r'startDate'),
        endDate: mapValueOfType<int>(json, r'endDate'),
        missionType: mapValueOfType<String>(json, r'missionType'),
        active: mapValueOfType<bool>(json, r'active'),
        balance: mapValueOfType<double>(json, r'balance'),
        availableLimit: mapValueOfType<int>(json, r'availableLimit'),
        inviteCount: mapValueOfType<int>(json, r'inviteCount'),
        acceptedCount: mapValueOfType<int>(json, r'acceptedCount'),
        childCount: mapValueOfType<int>(json, r'childCount'),
        enableBuyBack: mapValueOfType<bool>(json, r'enableBuyBack'),
        minimumToPlay: mapValueOfType<int>(json, r'minimumToPlay'),
        rewarded: mapValueOfType<bool>(json, r'rewarded'),
        refunded: mapValueOfType<bool>(json, r'refunded'),
        joinCode: mapValueOfType<String>(json, r'joinCode'),
        rewards: RewardResponse.listFromJson(json[r'rewards']),
        games: GameListResponse.fromJson(json[r'games']),
        scores: ScoreListResponse.fromJson(json[r'scores']),
        userPermissionsList: UserPermissionsListResponse.fromJson(json[r'userPermissionsList']),
        results: NameStringValueResponse.listFromJson(json[r'results']),
        inviteStatus: TournamentResponseInviteStatusEnum.fromJson(json[r'inviteStatus']),
        audiences: AudienceResponse.listFromJson(json[r'audiences']),
        missionInviteId: mapValueOfType<int>(json, r'missionInviteId'),
        missionInvite: MissionInviteResponse.fromJson(json[r'missionInvite']),
        invitee: AccountShortResponse.fromJson(json[r'invitee']),
        formatType: mapValueOfType<String>(json, r'formatType'),
        creatives: CreativeResponse.listFromJson(json[r'creatives']),
        fixedReward: mapValueOfType<bool>(json, r'fixedReward'),
        allocateTickets: mapValueOfType<bool>(json, r'allocateTickets'),
        ticketType: mapValueOfType<String>(json, r'ticketType'),
        ticketCount: mapValueOfType<int>(json, r'ticketCount'),
        points: mapValueOfType<int>(json, r'points'),
        splitReward: mapValueOfType<String>(json, r'splitReward'),
        secondsBetweenLevels: mapValueOfType<int>(json, r'secondsBetweenLevels'),
        secondsBetweenPacks: mapValueOfType<int>(json, r'secondsBetweenPacks'),
        advancedReporting: mapValueOfType<bool>(json, r'advancedReporting'),
        tournamentData: mapValueOfType<String>(json, r'tournamentData'),
      );
    }
    return null;
  }

  static List<TournamentResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TournamentResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TournamentResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TournamentResponse> mapFromJson(dynamic json) {
    final map = <String, TournamentResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TournamentResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TournamentResponse-objects as value to a dart map
  static Map<String, List<TournamentResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TournamentResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TournamentResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class TournamentResponseActionEnum {
  /// Instantiate a new enum with the provided [value].
  const TournamentResponseActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DATA = TournamentResponseActionEnum._(r'DATA');
  static const SAVE = TournamentResponseActionEnum._(r'SAVE');
  static const DELETE = TournamentResponseActionEnum._(r'DELETE');
  static const GET = TournamentResponseActionEnum._(r'GET');

  /// List of all possible values in this [enum][TournamentResponseActionEnum].
  static const values = <TournamentResponseActionEnum>[
    DATA,
    SAVE,
    DELETE,
    GET,
  ];

  static TournamentResponseActionEnum? fromJson(dynamic value) => TournamentResponseActionEnumTypeTransformer().decode(value);

  static List<TournamentResponseActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TournamentResponseActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TournamentResponseActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TournamentResponseActionEnum] to String,
/// and [decode] dynamic data back to [TournamentResponseActionEnum].
class TournamentResponseActionEnumTypeTransformer {
  factory TournamentResponseActionEnumTypeTransformer() => _instance ??= const TournamentResponseActionEnumTypeTransformer._();

  const TournamentResponseActionEnumTypeTransformer._();

  String encode(TournamentResponseActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TournamentResponseActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TournamentResponseActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DATA': return TournamentResponseActionEnum.DATA;
        case r'SAVE': return TournamentResponseActionEnum.SAVE;
        case r'DELETE': return TournamentResponseActionEnum.DELETE;
        case r'GET': return TournamentResponseActionEnum.GET;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TournamentResponseActionEnumTypeTransformer] instance.
  static TournamentResponseActionEnumTypeTransformer? _instance;
}



class TournamentResponseInviteStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const TournamentResponseInviteStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AVAILABLE = TournamentResponseInviteStatusEnum._(r'AVAILABLE');
  static const PENDING = TournamentResponseInviteStatusEnum._(r'PENDING');
  static const UPDATED = TournamentResponseInviteStatusEnum._(r'UPDATED');
  static const ACCEPTED = TournamentResponseInviteStatusEnum._(r'ACCEPTED');
  static const ACTIVE = TournamentResponseInviteStatusEnum._(r'ACTIVE');
  static const BUY_BACK = TournamentResponseInviteStatusEnum._(r'BUY_BACK');
  static const FAILED = TournamentResponseInviteStatusEnum._(r'FAILED');
  static const QUIT = TournamentResponseInviteStatusEnum._(r'QUIT');
  static const COMPLETED = TournamentResponseInviteStatusEnum._(r'COMPLETED');
  static const PENDING_REVIEW = TournamentResponseInviteStatusEnum._(r'PENDING_REVIEW');
  static const REJECTED = TournamentResponseInviteStatusEnum._(r'REJECTED');

  /// List of all possible values in this [enum][TournamentResponseInviteStatusEnum].
  static const values = <TournamentResponseInviteStatusEnum>[
    AVAILABLE,
    PENDING,
    UPDATED,
    ACCEPTED,
    ACTIVE,
    BUY_BACK,
    FAILED,
    QUIT,
    COMPLETED,
    PENDING_REVIEW,
    REJECTED,
  ];

  static TournamentResponseInviteStatusEnum? fromJson(dynamic value) => TournamentResponseInviteStatusEnumTypeTransformer().decode(value);

  static List<TournamentResponseInviteStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TournamentResponseInviteStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TournamentResponseInviteStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TournamentResponseInviteStatusEnum] to String,
/// and [decode] dynamic data back to [TournamentResponseInviteStatusEnum].
class TournamentResponseInviteStatusEnumTypeTransformer {
  factory TournamentResponseInviteStatusEnumTypeTransformer() => _instance ??= const TournamentResponseInviteStatusEnumTypeTransformer._();

  const TournamentResponseInviteStatusEnumTypeTransformer._();

  String encode(TournamentResponseInviteStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TournamentResponseInviteStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TournamentResponseInviteStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AVAILABLE': return TournamentResponseInviteStatusEnum.AVAILABLE;
        case r'PENDING': return TournamentResponseInviteStatusEnum.PENDING;
        case r'UPDATED': return TournamentResponseInviteStatusEnum.UPDATED;
        case r'ACCEPTED': return TournamentResponseInviteStatusEnum.ACCEPTED;
        case r'ACTIVE': return TournamentResponseInviteStatusEnum.ACTIVE;
        case r'BUY_BACK': return TournamentResponseInviteStatusEnum.BUY_BACK;
        case r'FAILED': return TournamentResponseInviteStatusEnum.FAILED;
        case r'QUIT': return TournamentResponseInviteStatusEnum.QUIT;
        case r'COMPLETED': return TournamentResponseInviteStatusEnum.COMPLETED;
        case r'PENDING_REVIEW': return TournamentResponseInviteStatusEnum.PENDING_REVIEW;
        case r'REJECTED': return TournamentResponseInviteStatusEnum.REJECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TournamentResponseInviteStatusEnumTypeTransformer] instance.
  static TournamentResponseInviteStatusEnumTypeTransformer? _instance;
}


