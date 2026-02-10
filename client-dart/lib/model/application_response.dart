//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApplicationResponse {
  /// Returns a new [ApplicationResponse] instance.
  ApplicationResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.applicationId,
    this.appKey,
    this.title,
    this.currentBuildVersion,
    this.currentApiVersion,
    this.appIcon,
    this.appLogo,
    this.active,
    this.about,
    this.landingPageUrl,
    this.landingPageFullUrl,
    this.defaultImageFullUrl,
    this.activityDescription,
    this.platforms = const [],
    this.categories = const [],
    this.placementCount,
    this.billable,
    this.hasAds,
    this.publicNotifications,
    this.urlScheme,
    this.global,
    this.downloadUrls,
    this.localAdsEnabled,
    this.trilatSettings,
    this.appType,
    this.appName,
    this.bundleId,
    this.scoringType,
    this.hintCost,
    this.maxScore,
    this.ticketsPerPoint,
    this.hasGameData,
    this.globalTickets,
    this.eulaVersion,
    this.eulaDateUpdated,
    this.modules,
    this.billableEntityName,
    this.showInActivities,
    this.cssClass,
    this.inviteWelcomeText,
    this.invitePageUrl,
    this.apnsCertificateFileName,
    this.facebookAppId,
    this.facebookAppSecret,
    this.appToken,
    this.googleApiKey,
    this.appRestKey,
    this.publicContentApproval,
    this.productionMode,
    this.minimumSessionLength,
    this.sessionGapLength,
    this.sqootApiKey,
    this.amqpEnabled,
    this.authorizedCount,
    this.authorizedServers,
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
  int? applicationId;

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
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentBuildVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentApiVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? appIcon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AssetShortResponse? appLogo;

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
  String? about;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? landingPageUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? landingPageFullUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultImageFullUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? activityDescription;

  List<PlatformResponse> platforms;

  List<CategoryResponse> categories;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? placementCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BillableEntityShortResponse? billable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasAds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publicNotifications;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlScheme;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? global;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? downloadUrls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? localAdsEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TrilatAppSettings? trilatSettings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bundleId;

  ApplicationResponseScoringTypeEnum? scoringType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hintCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxScore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? ticketsPerPoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasGameData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? globalTickets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eulaVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? eulaDateUpdated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modules;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? billableEntityName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showInActivities;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cssClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inviteWelcomeText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invitePageUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apnsCertificateFileName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? facebookAppId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? facebookAppSecret;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? googleApiKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? appRestKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publicContentApproval;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? productionMode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minimumSessionLength;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sessionGapLength;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sqootApiKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? amqpEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? authorizedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authorizedServers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    other.applicationId == applicationId &&
    other.appKey == appKey &&
    other.title == title &&
    other.currentBuildVersion == currentBuildVersion &&
    other.currentApiVersion == currentApiVersion &&
    other.appIcon == appIcon &&
    other.appLogo == appLogo &&
    other.active == active &&
    other.about == about &&
    other.landingPageUrl == landingPageUrl &&
    other.landingPageFullUrl == landingPageFullUrl &&
    other.defaultImageFullUrl == defaultImageFullUrl &&
    other.activityDescription == activityDescription &&
    _deepEquality.equals(other.platforms, platforms) &&
    _deepEquality.equals(other.categories, categories) &&
    other.placementCount == placementCount &&
    other.billable == billable &&
    other.hasAds == hasAds &&
    other.publicNotifications == publicNotifications &&
    other.urlScheme == urlScheme &&
    other.global == global &&
    other.downloadUrls == downloadUrls &&
    other.localAdsEnabled == localAdsEnabled &&
    other.trilatSettings == trilatSettings &&
    other.appType == appType &&
    other.appName == appName &&
    other.bundleId == bundleId &&
    other.scoringType == scoringType &&
    other.hintCost == hintCost &&
    other.maxScore == maxScore &&
    other.ticketsPerPoint == ticketsPerPoint &&
    other.hasGameData == hasGameData &&
    other.globalTickets == globalTickets &&
    other.eulaVersion == eulaVersion &&
    other.eulaDateUpdated == eulaDateUpdated &&
    other.modules == modules &&
    other.billableEntityName == billableEntityName &&
    other.showInActivities == showInActivities &&
    other.cssClass == cssClass &&
    other.inviteWelcomeText == inviteWelcomeText &&
    other.invitePageUrl == invitePageUrl &&
    other.apnsCertificateFileName == apnsCertificateFileName &&
    other.facebookAppId == facebookAppId &&
    other.facebookAppSecret == facebookAppSecret &&
    other.appToken == appToken &&
    other.googleApiKey == googleApiKey &&
    other.appRestKey == appRestKey &&
    other.publicContentApproval == publicContentApproval &&
    other.productionMode == productionMode &&
    other.minimumSessionLength == minimumSessionLength &&
    other.sessionGapLength == sessionGapLength &&
    other.sqootApiKey == sqootApiKey &&
    other.amqpEnabled == amqpEnabled &&
    other.authorizedCount == authorizedCount &&
    other.authorizedServers == authorizedServers &&
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
    (applicationId == null ? 0 : applicationId!.hashCode) +
    (appKey == null ? 0 : appKey!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (currentBuildVersion == null ? 0 : currentBuildVersion!.hashCode) +
    (currentApiVersion == null ? 0 : currentApiVersion!.hashCode) +
    (appIcon == null ? 0 : appIcon!.hashCode) +
    (appLogo == null ? 0 : appLogo!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (about == null ? 0 : about!.hashCode) +
    (landingPageUrl == null ? 0 : landingPageUrl!.hashCode) +
    (landingPageFullUrl == null ? 0 : landingPageFullUrl!.hashCode) +
    (defaultImageFullUrl == null ? 0 : defaultImageFullUrl!.hashCode) +
    (activityDescription == null ? 0 : activityDescription!.hashCode) +
    (platforms.hashCode) +
    (categories.hashCode) +
    (placementCount == null ? 0 : placementCount!.hashCode) +
    (billable == null ? 0 : billable!.hashCode) +
    (hasAds == null ? 0 : hasAds!.hashCode) +
    (publicNotifications == null ? 0 : publicNotifications!.hashCode) +
    (urlScheme == null ? 0 : urlScheme!.hashCode) +
    (global == null ? 0 : global!.hashCode) +
    (downloadUrls == null ? 0 : downloadUrls!.hashCode) +
    (localAdsEnabled == null ? 0 : localAdsEnabled!.hashCode) +
    (trilatSettings == null ? 0 : trilatSettings!.hashCode) +
    (appType == null ? 0 : appType!.hashCode) +
    (appName == null ? 0 : appName!.hashCode) +
    (bundleId == null ? 0 : bundleId!.hashCode) +
    (scoringType == null ? 0 : scoringType!.hashCode) +
    (hintCost == null ? 0 : hintCost!.hashCode) +
    (maxScore == null ? 0 : maxScore!.hashCode) +
    (ticketsPerPoint == null ? 0 : ticketsPerPoint!.hashCode) +
    (hasGameData == null ? 0 : hasGameData!.hashCode) +
    (globalTickets == null ? 0 : globalTickets!.hashCode) +
    (eulaVersion == null ? 0 : eulaVersion!.hashCode) +
    (eulaDateUpdated == null ? 0 : eulaDateUpdated!.hashCode) +
    (modules == null ? 0 : modules!.hashCode) +
    (billableEntityName == null ? 0 : billableEntityName!.hashCode) +
    (showInActivities == null ? 0 : showInActivities!.hashCode) +
    (cssClass == null ? 0 : cssClass!.hashCode) +
    (inviteWelcomeText == null ? 0 : inviteWelcomeText!.hashCode) +
    (invitePageUrl == null ? 0 : invitePageUrl!.hashCode) +
    (apnsCertificateFileName == null ? 0 : apnsCertificateFileName!.hashCode) +
    (facebookAppId == null ? 0 : facebookAppId!.hashCode) +
    (facebookAppSecret == null ? 0 : facebookAppSecret!.hashCode) +
    (appToken == null ? 0 : appToken!.hashCode) +
    (googleApiKey == null ? 0 : googleApiKey!.hashCode) +
    (appRestKey == null ? 0 : appRestKey!.hashCode) +
    (publicContentApproval == null ? 0 : publicContentApproval!.hashCode) +
    (productionMode == null ? 0 : productionMode!.hashCode) +
    (minimumSessionLength == null ? 0 : minimumSessionLength!.hashCode) +
    (sessionGapLength == null ? 0 : sessionGapLength!.hashCode) +
    (sqootApiKey == null ? 0 : sqootApiKey!.hashCode) +
    (amqpEnabled == null ? 0 : amqpEnabled!.hashCode) +
    (authorizedCount == null ? 0 : authorizedCount!.hashCode) +
    (authorizedServers == null ? 0 : authorizedServers!.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'ApplicationResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, applicationId=$applicationId, appKey=$appKey, title=$title, currentBuildVersion=$currentBuildVersion, currentApiVersion=$currentApiVersion, appIcon=$appIcon, appLogo=$appLogo, active=$active, about=$about, landingPageUrl=$landingPageUrl, landingPageFullUrl=$landingPageFullUrl, defaultImageFullUrl=$defaultImageFullUrl, activityDescription=$activityDescription, platforms=$platforms, categories=$categories, placementCount=$placementCount, billable=$billable, hasAds=$hasAds, publicNotifications=$publicNotifications, urlScheme=$urlScheme, global=$global, downloadUrls=$downloadUrls, localAdsEnabled=$localAdsEnabled, trilatSettings=$trilatSettings, appType=$appType, appName=$appName, bundleId=$bundleId, scoringType=$scoringType, hintCost=$hintCost, maxScore=$maxScore, ticketsPerPoint=$ticketsPerPoint, hasGameData=$hasGameData, globalTickets=$globalTickets, eulaVersion=$eulaVersion, eulaDateUpdated=$eulaDateUpdated, modules=$modules, billableEntityName=$billableEntityName, showInActivities=$showInActivities, cssClass=$cssClass, inviteWelcomeText=$inviteWelcomeText, invitePageUrl=$invitePageUrl, apnsCertificateFileName=$apnsCertificateFileName, facebookAppId=$facebookAppId, facebookAppSecret=$facebookAppSecret, appToken=$appToken, googleApiKey=$googleApiKey, appRestKey=$appRestKey, publicContentApproval=$publicContentApproval, productionMode=$productionMode, minimumSessionLength=$minimumSessionLength, sessionGapLength=$sessionGapLength, sqootApiKey=$sqootApiKey, amqpEnabled=$amqpEnabled, authorizedCount=$authorizedCount, authorizedServers=$authorizedServers, returning=$returning]';

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
    if (this.applicationId != null) {
      json[r'applicationId'] = this.applicationId;
    } else {
      json[r'applicationId'] = null;
    }
    if (this.appKey != null) {
      json[r'appKey'] = this.appKey;
    } else {
      json[r'appKey'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.currentBuildVersion != null) {
      json[r'currentBuildVersion'] = this.currentBuildVersion;
    } else {
      json[r'currentBuildVersion'] = null;
    }
    if (this.currentApiVersion != null) {
      json[r'currentApiVersion'] = this.currentApiVersion;
    } else {
      json[r'currentApiVersion'] = null;
    }
    if (this.appIcon != null) {
      json[r'appIcon'] = this.appIcon;
    } else {
      json[r'appIcon'] = null;
    }
    if (this.appLogo != null) {
      json[r'appLogo'] = this.appLogo;
    } else {
      json[r'appLogo'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.about != null) {
      json[r'about'] = this.about;
    } else {
      json[r'about'] = null;
    }
    if (this.landingPageUrl != null) {
      json[r'landingPageUrl'] = this.landingPageUrl;
    } else {
      json[r'landingPageUrl'] = null;
    }
    if (this.landingPageFullUrl != null) {
      json[r'landingPageFullUrl'] = this.landingPageFullUrl;
    } else {
      json[r'landingPageFullUrl'] = null;
    }
    if (this.defaultImageFullUrl != null) {
      json[r'defaultImageFullUrl'] = this.defaultImageFullUrl;
    } else {
      json[r'defaultImageFullUrl'] = null;
    }
    if (this.activityDescription != null) {
      json[r'activityDescription'] = this.activityDescription;
    } else {
      json[r'activityDescription'] = null;
    }
      json[r'platforms'] = this.platforms;
      json[r'categories'] = this.categories;
    if (this.placementCount != null) {
      json[r'placementCount'] = this.placementCount;
    } else {
      json[r'placementCount'] = null;
    }
    if (this.billable != null) {
      json[r'billable'] = this.billable;
    } else {
      json[r'billable'] = null;
    }
    if (this.hasAds != null) {
      json[r'hasAds'] = this.hasAds;
    } else {
      json[r'hasAds'] = null;
    }
    if (this.publicNotifications != null) {
      json[r'publicNotifications'] = this.publicNotifications;
    } else {
      json[r'publicNotifications'] = null;
    }
    if (this.urlScheme != null) {
      json[r'urlScheme'] = this.urlScheme;
    } else {
      json[r'urlScheme'] = null;
    }
    if (this.global != null) {
      json[r'global'] = this.global;
    } else {
      json[r'global'] = null;
    }
    if (this.downloadUrls != null) {
      json[r'downloadUrls'] = this.downloadUrls;
    } else {
      json[r'downloadUrls'] = null;
    }
    if (this.localAdsEnabled != null) {
      json[r'localAdsEnabled'] = this.localAdsEnabled;
    } else {
      json[r'localAdsEnabled'] = null;
    }
    if (this.trilatSettings != null) {
      json[r'trilatSettings'] = this.trilatSettings;
    } else {
      json[r'trilatSettings'] = null;
    }
    if (this.appType != null) {
      json[r'appType'] = this.appType;
    } else {
      json[r'appType'] = null;
    }
    if (this.appName != null) {
      json[r'appName'] = this.appName;
    } else {
      json[r'appName'] = null;
    }
    if (this.bundleId != null) {
      json[r'bundleId'] = this.bundleId;
    } else {
      json[r'bundleId'] = null;
    }
    if (this.scoringType != null) {
      json[r'scoringType'] = this.scoringType;
    } else {
      json[r'scoringType'] = null;
    }
    if (this.hintCost != null) {
      json[r'hintCost'] = this.hintCost;
    } else {
      json[r'hintCost'] = null;
    }
    if (this.maxScore != null) {
      json[r'maxScore'] = this.maxScore;
    } else {
      json[r'maxScore'] = null;
    }
    if (this.ticketsPerPoint != null) {
      json[r'ticketsPerPoint'] = this.ticketsPerPoint;
    } else {
      json[r'ticketsPerPoint'] = null;
    }
    if (this.hasGameData != null) {
      json[r'hasGameData'] = this.hasGameData;
    } else {
      json[r'hasGameData'] = null;
    }
    if (this.globalTickets != null) {
      json[r'globalTickets'] = this.globalTickets;
    } else {
      json[r'globalTickets'] = null;
    }
    if (this.eulaVersion != null) {
      json[r'eulaVersion'] = this.eulaVersion;
    } else {
      json[r'eulaVersion'] = null;
    }
    if (this.eulaDateUpdated != null) {
      json[r'eulaDateUpdated'] = this.eulaDateUpdated;
    } else {
      json[r'eulaDateUpdated'] = null;
    }
    if (this.modules != null) {
      json[r'modules'] = this.modules;
    } else {
      json[r'modules'] = null;
    }
    if (this.billableEntityName != null) {
      json[r'billableEntityName'] = this.billableEntityName;
    } else {
      json[r'billableEntityName'] = null;
    }
    if (this.showInActivities != null) {
      json[r'showInActivities'] = this.showInActivities;
    } else {
      json[r'showInActivities'] = null;
    }
    if (this.cssClass != null) {
      json[r'cssClass'] = this.cssClass;
    } else {
      json[r'cssClass'] = null;
    }
    if (this.inviteWelcomeText != null) {
      json[r'inviteWelcomeText'] = this.inviteWelcomeText;
    } else {
      json[r'inviteWelcomeText'] = null;
    }
    if (this.invitePageUrl != null) {
      json[r'invitePageUrl'] = this.invitePageUrl;
    } else {
      json[r'invitePageUrl'] = null;
    }
    if (this.apnsCertificateFileName != null) {
      json[r'apnsCertificateFileName'] = this.apnsCertificateFileName;
    } else {
      json[r'apnsCertificateFileName'] = null;
    }
    if (this.facebookAppId != null) {
      json[r'facebookAppId'] = this.facebookAppId;
    } else {
      json[r'facebookAppId'] = null;
    }
    if (this.facebookAppSecret != null) {
      json[r'facebookAppSecret'] = this.facebookAppSecret;
    } else {
      json[r'facebookAppSecret'] = null;
    }
    if (this.appToken != null) {
      json[r'appToken'] = this.appToken;
    } else {
      json[r'appToken'] = null;
    }
    if (this.googleApiKey != null) {
      json[r'googleApiKey'] = this.googleApiKey;
    } else {
      json[r'googleApiKey'] = null;
    }
    if (this.appRestKey != null) {
      json[r'appRestKey'] = this.appRestKey;
    } else {
      json[r'appRestKey'] = null;
    }
    if (this.publicContentApproval != null) {
      json[r'publicContentApproval'] = this.publicContentApproval;
    } else {
      json[r'publicContentApproval'] = null;
    }
    if (this.productionMode != null) {
      json[r'productionMode'] = this.productionMode;
    } else {
      json[r'productionMode'] = null;
    }
    if (this.minimumSessionLength != null) {
      json[r'minimumSessionLength'] = this.minimumSessionLength;
    } else {
      json[r'minimumSessionLength'] = null;
    }
    if (this.sessionGapLength != null) {
      json[r'sessionGapLength'] = this.sessionGapLength;
    } else {
      json[r'sessionGapLength'] = null;
    }
    if (this.sqootApiKey != null) {
      json[r'sqootApiKey'] = this.sqootApiKey;
    } else {
      json[r'sqootApiKey'] = null;
    }
    if (this.amqpEnabled != null) {
      json[r'amqpEnabled'] = this.amqpEnabled;
    } else {
      json[r'amqpEnabled'] = null;
    }
    if (this.authorizedCount != null) {
      json[r'authorizedCount'] = this.authorizedCount;
    } else {
      json[r'authorizedCount'] = null;
    }
    if (this.authorizedServers != null) {
      json[r'authorizedServers'] = this.authorizedServers;
    } else {
      json[r'authorizedServers'] = null;
    }
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [ApplicationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        applicationId: mapValueOfType<int>(json, r'applicationId'),
        appKey: mapValueOfType<String>(json, r'appKey'),
        title: mapValueOfType<String>(json, r'title'),
        currentBuildVersion: mapValueOfType<String>(json, r'currentBuildVersion'),
        currentApiVersion: mapValueOfType<String>(json, r'currentApiVersion'),
        appIcon: AssetShortResponse.fromJson(json[r'appIcon']),
        appLogo: AssetShortResponse.fromJson(json[r'appLogo']),
        active: mapValueOfType<bool>(json, r'active'),
        about: mapValueOfType<String>(json, r'about'),
        landingPageUrl: mapValueOfType<String>(json, r'landingPageUrl'),
        landingPageFullUrl: mapValueOfType<String>(json, r'landingPageFullUrl'),
        defaultImageFullUrl: mapValueOfType<String>(json, r'defaultImageFullUrl'),
        activityDescription: mapValueOfType<String>(json, r'activityDescription'),
        platforms: PlatformResponse.listFromJson(json[r'platforms']),
        categories: CategoryResponse.listFromJson(json[r'categories']),
        placementCount: mapValueOfType<int>(json, r'placementCount'),
        billable: BillableEntityShortResponse.fromJson(json[r'billable']),
        hasAds: mapValueOfType<bool>(json, r'hasAds'),
        publicNotifications: mapValueOfType<bool>(json, r'publicNotifications'),
        urlScheme: mapValueOfType<String>(json, r'urlScheme'),
        global: mapValueOfType<bool>(json, r'global'),
        downloadUrls: mapValueOfType<String>(json, r'downloadUrls'),
        localAdsEnabled: mapValueOfType<bool>(json, r'localAdsEnabled'),
        trilatSettings: TrilatAppSettings.fromJson(json[r'trilatSettings']),
        appType: mapValueOfType<String>(json, r'appType'),
        appName: mapValueOfType<String>(json, r'appName'),
        bundleId: mapValueOfType<String>(json, r'bundleId'),
        scoringType: ApplicationResponseScoringTypeEnum.fromJson(json[r'scoringType']),
        hintCost: mapValueOfType<int>(json, r'hintCost'),
        maxScore: mapValueOfType<int>(json, r'maxScore'),
        ticketsPerPoint: mapValueOfType<double>(json, r'ticketsPerPoint'),
        hasGameData: mapValueOfType<bool>(json, r'hasGameData'),
        globalTickets: mapValueOfType<bool>(json, r'globalTickets'),
        eulaVersion: mapValueOfType<String>(json, r'eulaVersion'),
        eulaDateUpdated: mapValueOfType<int>(json, r'eulaDateUpdated'),
        modules: mapValueOfType<String>(json, r'modules'),
        billableEntityName: mapValueOfType<String>(json, r'billableEntityName'),
        showInActivities: mapValueOfType<bool>(json, r'showInActivities'),
        cssClass: mapValueOfType<String>(json, r'cssClass'),
        inviteWelcomeText: mapValueOfType<String>(json, r'inviteWelcomeText'),
        invitePageUrl: mapValueOfType<String>(json, r'invitePageUrl'),
        apnsCertificateFileName: mapValueOfType<String>(json, r'apnsCertificateFileName'),
        facebookAppId: mapValueOfType<String>(json, r'facebookAppId'),
        facebookAppSecret: mapValueOfType<String>(json, r'facebookAppSecret'),
        appToken: mapValueOfType<String>(json, r'appToken'),
        googleApiKey: mapValueOfType<String>(json, r'googleApiKey'),
        appRestKey: mapValueOfType<String>(json, r'appRestKey'),
        publicContentApproval: mapValueOfType<bool>(json, r'publicContentApproval'),
        productionMode: mapValueOfType<bool>(json, r'productionMode'),
        minimumSessionLength: mapValueOfType<int>(json, r'minimumSessionLength'),
        sessionGapLength: mapValueOfType<int>(json, r'sessionGapLength'),
        sqootApiKey: mapValueOfType<String>(json, r'sqootApiKey'),
        amqpEnabled: mapValueOfType<bool>(json, r'amqpEnabled'),
        authorizedCount: mapValueOfType<int>(json, r'authorizedCount'),
        authorizedServers: mapValueOfType<String>(json, r'authorizedServers'),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<ApplicationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationResponse> mapFromJson(dynamic json) {
    final map = <String, ApplicationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationResponse-objects as value to a dart map
  static Map<String, List<ApplicationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ApplicationResponseScoringTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ApplicationResponseScoringTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GAME_LEVEL = ApplicationResponseScoringTypeEnum._(r'GAME_LEVEL');
  static const GAME_OBJECT = ApplicationResponseScoringTypeEnum._(r'GAME_OBJECT');

  /// List of all possible values in this [enum][ApplicationResponseScoringTypeEnum].
  static const values = <ApplicationResponseScoringTypeEnum>[
    GAME_LEVEL,
    GAME_OBJECT,
  ];

  static ApplicationResponseScoringTypeEnum? fromJson(dynamic value) => ApplicationResponseScoringTypeEnumTypeTransformer().decode(value);

  static List<ApplicationResponseScoringTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationResponseScoringTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationResponseScoringTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ApplicationResponseScoringTypeEnum] to String,
/// and [decode] dynamic data back to [ApplicationResponseScoringTypeEnum].
class ApplicationResponseScoringTypeEnumTypeTransformer {
  factory ApplicationResponseScoringTypeEnumTypeTransformer() => _instance ??= const ApplicationResponseScoringTypeEnumTypeTransformer._();

  const ApplicationResponseScoringTypeEnumTypeTransformer._();

  String encode(ApplicationResponseScoringTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ApplicationResponseScoringTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ApplicationResponseScoringTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GAME_LEVEL': return ApplicationResponseScoringTypeEnum.GAME_LEVEL;
        case r'GAME_OBJECT': return ApplicationResponseScoringTypeEnum.GAME_OBJECT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ApplicationResponseScoringTypeEnumTypeTransformer] instance.
  static ApplicationResponseScoringTypeEnumTypeTransformer? _instance;
}


