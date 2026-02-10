//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Mission {
  /// Returns a new [Mission] instance.
  Mission({
    this.id,
    this.active,
    this.valid,
    this.owner,
    this.missionType,
    this.title,
    this.description,
    this.costToPlay,
    this.costToPlayType,
    this.games = const [],
    this.audiences = const [],
    this.startDate,
    this.endDate,
    this.sequenceType,
    this.authorOverride,
    this.icon,
    this.image,
    this.offers = const [],
    this.visibility,
    this.task,
    this.points,
    this.ticketType,
    this.ticketCount,
    this.allocateTickets,
    this.billableEntity,
    this.balance,
    this.startingLimit,
    this.availableLimit,
    this.inviteCount,
    this.acceptedCount,
    this.inviteStatus,
    this.childCount,
    this.secondsBetweenLevels,
    this.secondsBetweenPacks,
    this.maximumLevelLength,
    this.enableBuyBack,
    this.activePack,
    this.minimumToPlay,
    this.fixedReward,
    this.refunded,
    this.notificationsCreated,
    this.rewarded,
    this.externalId,
    this.advancedReporting,
    this.splitReward,
    this.joinCode,
    this.firstPack,
    this.allGameLevels = const [],
    this.allPacks = const [],
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
  Account? owner;

  MissionMissionTypeEnum? missionType;

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
  int? costToPlay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? costToPlayType;

  List<Game> games;

  List<Audience> audiences;

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

  MissionSequenceTypeEnum? sequenceType;

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
  Asset? icon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? image;

  List<Offer> offers;

  MissionVisibilityEnum? visibility;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MissionTask? task;

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
  BillableEntity? billableEntity;

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
  int? startingLimit;

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

  MissionInviteStatusEnum? inviteStatus;

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
  int? maximumLevelLength;

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
  Pack? activePack;

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
  bool? fixedReward;

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
  bool? notificationsCreated;

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
  int? externalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? advancedReporting;

  MissionSplitRewardEnum? splitReward;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? joinCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Pack? firstPack;

  List<GameLevel> allGameLevels;

  List<Pack> allPacks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Mission &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.owner == owner &&
    other.missionType == missionType &&
    other.title == title &&
    other.description == description &&
    other.costToPlay == costToPlay &&
    other.costToPlayType == costToPlayType &&
    _deepEquality.equals(other.games, games) &&
    _deepEquality.equals(other.audiences, audiences) &&
    other.startDate == startDate &&
    other.endDate == endDate &&
    other.sequenceType == sequenceType &&
    other.authorOverride == authorOverride &&
    other.icon == icon &&
    other.image == image &&
    _deepEquality.equals(other.offers, offers) &&
    other.visibility == visibility &&
    other.task == task &&
    other.points == points &&
    other.ticketType == ticketType &&
    other.ticketCount == ticketCount &&
    other.allocateTickets == allocateTickets &&
    other.billableEntity == billableEntity &&
    other.balance == balance &&
    other.startingLimit == startingLimit &&
    other.availableLimit == availableLimit &&
    other.inviteCount == inviteCount &&
    other.acceptedCount == acceptedCount &&
    other.inviteStatus == inviteStatus &&
    other.childCount == childCount &&
    other.secondsBetweenLevels == secondsBetweenLevels &&
    other.secondsBetweenPacks == secondsBetweenPacks &&
    other.maximumLevelLength == maximumLevelLength &&
    other.enableBuyBack == enableBuyBack &&
    other.activePack == activePack &&
    other.minimumToPlay == minimumToPlay &&
    other.fixedReward == fixedReward &&
    other.refunded == refunded &&
    other.notificationsCreated == notificationsCreated &&
    other.rewarded == rewarded &&
    other.externalId == externalId &&
    other.advancedReporting == advancedReporting &&
    other.splitReward == splitReward &&
    other.joinCode == joinCode &&
    other.firstPack == firstPack &&
    _deepEquality.equals(other.allGameLevels, allGameLevels) &&
    _deepEquality.equals(other.allPacks, allPacks);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (missionType == null ? 0 : missionType!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (costToPlay == null ? 0 : costToPlay!.hashCode) +
    (costToPlayType == null ? 0 : costToPlayType!.hashCode) +
    (games.hashCode) +
    (audiences.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (sequenceType == null ? 0 : sequenceType!.hashCode) +
    (authorOverride == null ? 0 : authorOverride!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (offers.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (task == null ? 0 : task!.hashCode) +
    (points == null ? 0 : points!.hashCode) +
    (ticketType == null ? 0 : ticketType!.hashCode) +
    (ticketCount == null ? 0 : ticketCount!.hashCode) +
    (allocateTickets == null ? 0 : allocateTickets!.hashCode) +
    (billableEntity == null ? 0 : billableEntity!.hashCode) +
    (balance == null ? 0 : balance!.hashCode) +
    (startingLimit == null ? 0 : startingLimit!.hashCode) +
    (availableLimit == null ? 0 : availableLimit!.hashCode) +
    (inviteCount == null ? 0 : inviteCount!.hashCode) +
    (acceptedCount == null ? 0 : acceptedCount!.hashCode) +
    (inviteStatus == null ? 0 : inviteStatus!.hashCode) +
    (childCount == null ? 0 : childCount!.hashCode) +
    (secondsBetweenLevels == null ? 0 : secondsBetweenLevels!.hashCode) +
    (secondsBetweenPacks == null ? 0 : secondsBetweenPacks!.hashCode) +
    (maximumLevelLength == null ? 0 : maximumLevelLength!.hashCode) +
    (enableBuyBack == null ? 0 : enableBuyBack!.hashCode) +
    (activePack == null ? 0 : activePack!.hashCode) +
    (minimumToPlay == null ? 0 : minimumToPlay!.hashCode) +
    (fixedReward == null ? 0 : fixedReward!.hashCode) +
    (refunded == null ? 0 : refunded!.hashCode) +
    (notificationsCreated == null ? 0 : notificationsCreated!.hashCode) +
    (rewarded == null ? 0 : rewarded!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (advancedReporting == null ? 0 : advancedReporting!.hashCode) +
    (splitReward == null ? 0 : splitReward!.hashCode) +
    (joinCode == null ? 0 : joinCode!.hashCode) +
    (firstPack == null ? 0 : firstPack!.hashCode) +
    (allGameLevels.hashCode) +
    (allPacks.hashCode);

  @override
  String toString() => 'Mission[id=$id, active=$active, valid=$valid, owner=$owner, missionType=$missionType, title=$title, description=$description, costToPlay=$costToPlay, costToPlayType=$costToPlayType, games=$games, audiences=$audiences, startDate=$startDate, endDate=$endDate, sequenceType=$sequenceType, authorOverride=$authorOverride, icon=$icon, image=$image, offers=$offers, visibility=$visibility, task=$task, points=$points, ticketType=$ticketType, ticketCount=$ticketCount, allocateTickets=$allocateTickets, billableEntity=$billableEntity, balance=$balance, startingLimit=$startingLimit, availableLimit=$availableLimit, inviteCount=$inviteCount, acceptedCount=$acceptedCount, inviteStatus=$inviteStatus, childCount=$childCount, secondsBetweenLevels=$secondsBetweenLevels, secondsBetweenPacks=$secondsBetweenPacks, maximumLevelLength=$maximumLevelLength, enableBuyBack=$enableBuyBack, activePack=$activePack, minimumToPlay=$minimumToPlay, fixedReward=$fixedReward, refunded=$refunded, notificationsCreated=$notificationsCreated, rewarded=$rewarded, externalId=$externalId, advancedReporting=$advancedReporting, splitReward=$splitReward, joinCode=$joinCode, firstPack=$firstPack, allGameLevels=$allGameLevels, allPacks=$allPacks]';

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
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.missionType != null) {
      json[r'missionType'] = this.missionType;
    } else {
      json[r'missionType'] = null;
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
      json[r'games'] = this.games;
      json[r'audiences'] = this.audiences;
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
    if (this.sequenceType != null) {
      json[r'sequenceType'] = this.sequenceType;
    } else {
      json[r'sequenceType'] = null;
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
      json[r'offers'] = this.offers;
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    if (this.task != null) {
      json[r'task'] = this.task;
    } else {
      json[r'task'] = null;
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
    if (this.billableEntity != null) {
      json[r'billableEntity'] = this.billableEntity;
    } else {
      json[r'billableEntity'] = null;
    }
    if (this.balance != null) {
      json[r'balance'] = this.balance;
    } else {
      json[r'balance'] = null;
    }
    if (this.startingLimit != null) {
      json[r'startingLimit'] = this.startingLimit;
    } else {
      json[r'startingLimit'] = null;
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
    if (this.inviteStatus != null) {
      json[r'inviteStatus'] = this.inviteStatus;
    } else {
      json[r'inviteStatus'] = null;
    }
    if (this.childCount != null) {
      json[r'childCount'] = this.childCount;
    } else {
      json[r'childCount'] = null;
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
    if (this.maximumLevelLength != null) {
      json[r'maximumLevelLength'] = this.maximumLevelLength;
    } else {
      json[r'maximumLevelLength'] = null;
    }
    if (this.enableBuyBack != null) {
      json[r'enableBuyBack'] = this.enableBuyBack;
    } else {
      json[r'enableBuyBack'] = null;
    }
    if (this.activePack != null) {
      json[r'activePack'] = this.activePack;
    } else {
      json[r'activePack'] = null;
    }
    if (this.minimumToPlay != null) {
      json[r'minimumToPlay'] = this.minimumToPlay;
    } else {
      json[r'minimumToPlay'] = null;
    }
    if (this.fixedReward != null) {
      json[r'fixedReward'] = this.fixedReward;
    } else {
      json[r'fixedReward'] = null;
    }
    if (this.refunded != null) {
      json[r'refunded'] = this.refunded;
    } else {
      json[r'refunded'] = null;
    }
    if (this.notificationsCreated != null) {
      json[r'notificationsCreated'] = this.notificationsCreated;
    } else {
      json[r'notificationsCreated'] = null;
    }
    if (this.rewarded != null) {
      json[r'rewarded'] = this.rewarded;
    } else {
      json[r'rewarded'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.advancedReporting != null) {
      json[r'advancedReporting'] = this.advancedReporting;
    } else {
      json[r'advancedReporting'] = null;
    }
    if (this.splitReward != null) {
      json[r'splitReward'] = this.splitReward;
    } else {
      json[r'splitReward'] = null;
    }
    if (this.joinCode != null) {
      json[r'joinCode'] = this.joinCode;
    } else {
      json[r'joinCode'] = null;
    }
    if (this.firstPack != null) {
      json[r'firstPack'] = this.firstPack;
    } else {
      json[r'firstPack'] = null;
    }
      json[r'allGameLevels'] = this.allGameLevels;
      json[r'allPacks'] = this.allPacks;
    return json;
  }

  /// Returns a new [Mission] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Mission? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Mission[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Mission[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Mission(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        owner: Account.fromJson(json[r'owner']),
        missionType: MissionMissionTypeEnum.fromJson(json[r'missionType']),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        costToPlay: mapValueOfType<int>(json, r'costToPlay'),
        costToPlayType: mapValueOfType<String>(json, r'costToPlayType'),
        games: Game.listFromJson(json[r'games']),
        audiences: Audience.listFromJson(json[r'audiences']),
        startDate: mapDateTime(json, r'startDate', r''),
        endDate: mapDateTime(json, r'endDate', r''),
        sequenceType: MissionSequenceTypeEnum.fromJson(json[r'sequenceType']),
        authorOverride: mapValueOfType<String>(json, r'authorOverride'),
        icon: Asset.fromJson(json[r'icon']),
        image: Asset.fromJson(json[r'image']),
        offers: Offer.listFromJson(json[r'offers']),
        visibility: MissionVisibilityEnum.fromJson(json[r'visibility']),
        task: MissionTask.fromJson(json[r'task']),
        points: mapValueOfType<int>(json, r'points'),
        ticketType: mapValueOfType<String>(json, r'ticketType'),
        ticketCount: mapValueOfType<int>(json, r'ticketCount'),
        allocateTickets: mapValueOfType<bool>(json, r'allocateTickets'),
        billableEntity: BillableEntity.fromJson(json[r'billableEntity']),
        balance: mapValueOfType<double>(json, r'balance'),
        startingLimit: mapValueOfType<int>(json, r'startingLimit'),
        availableLimit: mapValueOfType<int>(json, r'availableLimit'),
        inviteCount: mapValueOfType<int>(json, r'inviteCount'),
        acceptedCount: mapValueOfType<int>(json, r'acceptedCount'),
        inviteStatus: MissionInviteStatusEnum.fromJson(json[r'inviteStatus']),
        childCount: mapValueOfType<int>(json, r'childCount'),
        secondsBetweenLevels: mapValueOfType<int>(json, r'secondsBetweenLevels'),
        secondsBetweenPacks: mapValueOfType<int>(json, r'secondsBetweenPacks'),
        maximumLevelLength: mapValueOfType<int>(json, r'maximumLevelLength'),
        enableBuyBack: mapValueOfType<bool>(json, r'enableBuyBack'),
        activePack: Pack.fromJson(json[r'activePack']),
        minimumToPlay: mapValueOfType<int>(json, r'minimumToPlay'),
        fixedReward: mapValueOfType<bool>(json, r'fixedReward'),
        refunded: mapValueOfType<bool>(json, r'refunded'),
        notificationsCreated: mapValueOfType<bool>(json, r'notificationsCreated'),
        rewarded: mapValueOfType<bool>(json, r'rewarded'),
        externalId: mapValueOfType<int>(json, r'externalId'),
        advancedReporting: mapValueOfType<bool>(json, r'advancedReporting'),
        splitReward: MissionSplitRewardEnum.fromJson(json[r'splitReward']),
        joinCode: mapValueOfType<String>(json, r'joinCode'),
        firstPack: Pack.fromJson(json[r'firstPack']),
        allGameLevels: GameLevel.listFromJson(json[r'allGameLevels']),
        allPacks: Pack.listFromJson(json[r'allPacks']),
      );
    }
    return null;
  }

  static List<Mission> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Mission>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Mission.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Mission> mapFromJson(dynamic json) {
    final map = <String, Mission>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Mission.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Mission-objects as value to a dart map
  static Map<String, List<Mission>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Mission>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Mission.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class MissionMissionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MissionMissionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = MissionMissionTypeEnum._(r'PUBLIC');
  static const SHARED = MissionMissionTypeEnum._(r'SHARED');
  static const TOURNAMENT = MissionMissionTypeEnum._(r'TOURNAMENT');
  static const POOLPLAY = MissionMissionTypeEnum._(r'POOLPLAY');

  /// List of all possible values in this [enum][MissionMissionTypeEnum].
  static const values = <MissionMissionTypeEnum>[
    PUBLIC,
    SHARED,
    TOURNAMENT,
    POOLPLAY,
  ];

  static MissionMissionTypeEnum? fromJson(dynamic value) => MissionMissionTypeEnumTypeTransformer().decode(value);

  static List<MissionMissionTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionMissionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionMissionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MissionMissionTypeEnum] to String,
/// and [decode] dynamic data back to [MissionMissionTypeEnum].
class MissionMissionTypeEnumTypeTransformer {
  factory MissionMissionTypeEnumTypeTransformer() => _instance ??= const MissionMissionTypeEnumTypeTransformer._();

  const MissionMissionTypeEnumTypeTransformer._();

  String encode(MissionMissionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MissionMissionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MissionMissionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return MissionMissionTypeEnum.PUBLIC;
        case r'SHARED': return MissionMissionTypeEnum.SHARED;
        case r'TOURNAMENT': return MissionMissionTypeEnum.TOURNAMENT;
        case r'POOLPLAY': return MissionMissionTypeEnum.POOLPLAY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MissionMissionTypeEnumTypeTransformer] instance.
  static MissionMissionTypeEnumTypeTransformer? _instance;
}



class MissionSequenceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MissionSequenceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FIRST_AVAILABLE = MissionSequenceTypeEnum._(r'FIRST_AVAILABLE');
  static const ALL_AVAILABLE = MissionSequenceTypeEnum._(r'ALL_AVAILABLE');

  /// List of all possible values in this [enum][MissionSequenceTypeEnum].
  static const values = <MissionSequenceTypeEnum>[
    FIRST_AVAILABLE,
    ALL_AVAILABLE,
  ];

  static MissionSequenceTypeEnum? fromJson(dynamic value) => MissionSequenceTypeEnumTypeTransformer().decode(value);

  static List<MissionSequenceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionSequenceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionSequenceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MissionSequenceTypeEnum] to String,
/// and [decode] dynamic data back to [MissionSequenceTypeEnum].
class MissionSequenceTypeEnumTypeTransformer {
  factory MissionSequenceTypeEnumTypeTransformer() => _instance ??= const MissionSequenceTypeEnumTypeTransformer._();

  const MissionSequenceTypeEnumTypeTransformer._();

  String encode(MissionSequenceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MissionSequenceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MissionSequenceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FIRST_AVAILABLE': return MissionSequenceTypeEnum.FIRST_AVAILABLE;
        case r'ALL_AVAILABLE': return MissionSequenceTypeEnum.ALL_AVAILABLE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MissionSequenceTypeEnumTypeTransformer] instance.
  static MissionSequenceTypeEnumTypeTransformer? _instance;
}



class MissionVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const MissionVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = MissionVisibilityEnum._(r'PUBLIC');
  static const LISTABLE = MissionVisibilityEnum._(r'LISTABLE');
  static const REWARDABLE = MissionVisibilityEnum._(r'REWARDABLE');
  static const TRIGGERABLE = MissionVisibilityEnum._(r'TRIGGERABLE');
  static const PRIVATE = MissionVisibilityEnum._(r'PRIVATE');

  /// List of all possible values in this [enum][MissionVisibilityEnum].
  static const values = <MissionVisibilityEnum>[
    PUBLIC,
    LISTABLE,
    REWARDABLE,
    TRIGGERABLE,
    PRIVATE,
  ];

  static MissionVisibilityEnum? fromJson(dynamic value) => MissionVisibilityEnumTypeTransformer().decode(value);

  static List<MissionVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MissionVisibilityEnum] to String,
/// and [decode] dynamic data back to [MissionVisibilityEnum].
class MissionVisibilityEnumTypeTransformer {
  factory MissionVisibilityEnumTypeTransformer() => _instance ??= const MissionVisibilityEnumTypeTransformer._();

  const MissionVisibilityEnumTypeTransformer._();

  String encode(MissionVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MissionVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MissionVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return MissionVisibilityEnum.PUBLIC;
        case r'LISTABLE': return MissionVisibilityEnum.LISTABLE;
        case r'REWARDABLE': return MissionVisibilityEnum.REWARDABLE;
        case r'TRIGGERABLE': return MissionVisibilityEnum.TRIGGERABLE;
        case r'PRIVATE': return MissionVisibilityEnum.PRIVATE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MissionVisibilityEnumTypeTransformer] instance.
  static MissionVisibilityEnumTypeTransformer? _instance;
}



class MissionInviteStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const MissionInviteStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AVAILABLE = MissionInviteStatusEnum._(r'AVAILABLE');
  static const PENDING = MissionInviteStatusEnum._(r'PENDING');
  static const UPDATED = MissionInviteStatusEnum._(r'UPDATED');
  static const ACCEPTED = MissionInviteStatusEnum._(r'ACCEPTED');
  static const ACTIVE = MissionInviteStatusEnum._(r'ACTIVE');
  static const BUY_BACK = MissionInviteStatusEnum._(r'BUY_BACK');
  static const FAILED = MissionInviteStatusEnum._(r'FAILED');
  static const QUIT = MissionInviteStatusEnum._(r'QUIT');
  static const COMPLETED = MissionInviteStatusEnum._(r'COMPLETED');
  static const PENDING_REVIEW = MissionInviteStatusEnum._(r'PENDING_REVIEW');
  static const REJECTED = MissionInviteStatusEnum._(r'REJECTED');

  /// List of all possible values in this [enum][MissionInviteStatusEnum].
  static const values = <MissionInviteStatusEnum>[
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

  static MissionInviteStatusEnum? fromJson(dynamic value) => MissionInviteStatusEnumTypeTransformer().decode(value);

  static List<MissionInviteStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionInviteStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionInviteStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MissionInviteStatusEnum] to String,
/// and [decode] dynamic data back to [MissionInviteStatusEnum].
class MissionInviteStatusEnumTypeTransformer {
  factory MissionInviteStatusEnumTypeTransformer() => _instance ??= const MissionInviteStatusEnumTypeTransformer._();

  const MissionInviteStatusEnumTypeTransformer._();

  String encode(MissionInviteStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MissionInviteStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MissionInviteStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AVAILABLE': return MissionInviteStatusEnum.AVAILABLE;
        case r'PENDING': return MissionInviteStatusEnum.PENDING;
        case r'UPDATED': return MissionInviteStatusEnum.UPDATED;
        case r'ACCEPTED': return MissionInviteStatusEnum.ACCEPTED;
        case r'ACTIVE': return MissionInviteStatusEnum.ACTIVE;
        case r'BUY_BACK': return MissionInviteStatusEnum.BUY_BACK;
        case r'FAILED': return MissionInviteStatusEnum.FAILED;
        case r'QUIT': return MissionInviteStatusEnum.QUIT;
        case r'COMPLETED': return MissionInviteStatusEnum.COMPLETED;
        case r'PENDING_REVIEW': return MissionInviteStatusEnum.PENDING_REVIEW;
        case r'REJECTED': return MissionInviteStatusEnum.REJECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MissionInviteStatusEnumTypeTransformer] instance.
  static MissionInviteStatusEnumTypeTransformer? _instance;
}



class MissionSplitRewardEnum {
  /// Instantiate a new enum with the provided [value].
  const MissionSplitRewardEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EVEN = MissionSplitRewardEnum._(r'EVEN');
  static const ALL = MissionSplitRewardEnum._(r'ALL');
  static const FIRST = MissionSplitRewardEnum._(r'FIRST');
  static const RANDOM = MissionSplitRewardEnum._(r'RANDOM');

  /// List of all possible values in this [enum][MissionSplitRewardEnum].
  static const values = <MissionSplitRewardEnum>[
    EVEN,
    ALL,
    FIRST,
    RANDOM,
  ];

  static MissionSplitRewardEnum? fromJson(dynamic value) => MissionSplitRewardEnumTypeTransformer().decode(value);

  static List<MissionSplitRewardEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissionSplitRewardEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissionSplitRewardEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MissionSplitRewardEnum] to String,
/// and [decode] dynamic data back to [MissionSplitRewardEnum].
class MissionSplitRewardEnumTypeTransformer {
  factory MissionSplitRewardEnumTypeTransformer() => _instance ??= const MissionSplitRewardEnumTypeTransformer._();

  const MissionSplitRewardEnumTypeTransformer._();

  String encode(MissionSplitRewardEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MissionSplitRewardEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MissionSplitRewardEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EVEN': return MissionSplitRewardEnum.EVEN;
        case r'ALL': return MissionSplitRewardEnum.ALL;
        case r'FIRST': return MissionSplitRewardEnum.FIRST;
        case r'RANDOM': return MissionSplitRewardEnum.RANDOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MissionSplitRewardEnumTypeTransformer] instance.
  static MissionSplitRewardEnumTypeTransformer? _instance;
}


