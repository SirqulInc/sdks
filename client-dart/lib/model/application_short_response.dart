//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApplicationShortResponse {
  /// Returns a new [ApplicationShortResponse] instance.
  ApplicationShortResponse({
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
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationShortResponse &&
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
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'ApplicationShortResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, applicationId=$applicationId, appKey=$appKey, title=$title, currentBuildVersion=$currentBuildVersion, currentApiVersion=$currentApiVersion, appIcon=$appIcon, appLogo=$appLogo, active=$active, about=$about, landingPageUrl=$landingPageUrl, landingPageFullUrl=$landingPageFullUrl, defaultImageFullUrl=$defaultImageFullUrl, activityDescription=$activityDescription, platforms=$platforms, categories=$categories, placementCount=$placementCount, billable=$billable, hasAds=$hasAds, publicNotifications=$publicNotifications, urlScheme=$urlScheme, global=$global, downloadUrls=$downloadUrls, localAdsEnabled=$localAdsEnabled, trilatSettings=$trilatSettings, returning=$returning]';

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
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [ApplicationShortResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationShortResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationShortResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationShortResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationShortResponse(
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
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<ApplicationShortResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationShortResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationShortResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationShortResponse> mapFromJson(dynamic json) {
    final map = <String, ApplicationShortResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationShortResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationShortResponse-objects as value to a dart map
  static Map<String, List<ApplicationShortResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationShortResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationShortResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

