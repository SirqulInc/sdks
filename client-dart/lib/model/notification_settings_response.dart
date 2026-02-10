//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotificationSettingsResponse {
  /// Returns a new [NotificationSettingsResponse] instance.
  NotificationSettingsResponse({
    this.blockedNotifications = const {},
  });

  Set<NotificationSettingsResponseBlockedNotificationsEnum> blockedNotifications;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationSettingsResponse &&
    _deepEquality.equals(other.blockedNotifications, blockedNotifications);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blockedNotifications.hashCode);

  @override
  String toString() => 'NotificationSettingsResponse[blockedNotifications=$blockedNotifications]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'blockedNotifications'] = this.blockedNotifications.toList(growable: false);
    return json;
  }

  /// Returns a new [NotificationSettingsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationSettingsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationSettingsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationSettingsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationSettingsResponse(
        blockedNotifications: NotificationSettingsResponseBlockedNotificationsEnum.listFromJson(json[r'blockedNotifications']).toSet(),
      );
    }
    return null;
  }

  static List<NotificationSettingsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationSettingsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationSettingsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationSettingsResponse> mapFromJson(dynamic json) {
    final map = <String, NotificationSettingsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationSettingsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationSettingsResponse-objects as value to a dart map
  static Map<String, List<NotificationSettingsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationSettingsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationSettingsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class NotificationSettingsResponseBlockedNotificationsEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationSettingsResponseBlockedNotificationsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const REASSIGNMENT_REQUEST = NotificationSettingsResponseBlockedNotificationsEnum._(r'REASSIGNMENT_REQUEST');
  static const FEEDBACK = NotificationSettingsResponseBlockedNotificationsEnum._(r'FEEDBACK');
  static const SUGGESTION_RECEIVED = NotificationSettingsResponseBlockedNotificationsEnum._(r'SUGGESTION_RECEIVED');
  static const ASSIGNMENT_CHANGE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ASSIGNMENT_CHANGE');
  static const WELCOME_PARTNER = NotificationSettingsResponseBlockedNotificationsEnum._(r'WELCOME_PARTNER');
  static const WELCOME_BUSINESS = NotificationSettingsResponseBlockedNotificationsEnum._(r'WELCOME_BUSINESS');
  static const PARTNER_INVITE = NotificationSettingsResponseBlockedNotificationsEnum._(r'PARTNER_INVITE');
  static const PARTNER_EXISTING_INVITE = NotificationSettingsResponseBlockedNotificationsEnum._(r'PARTNER_EXISTING_INVITE');
  static const PARTNER_CODE_INVITE = NotificationSettingsResponseBlockedNotificationsEnum._(r'PARTNER_CODE_INVITE');
  static const BATCH_REPORT_FINISHED = NotificationSettingsResponseBlockedNotificationsEnum._(r'BATCH_REPORT_FINISHED');
  static const WELCOME_BY_APP = NotificationSettingsResponseBlockedNotificationsEnum._(r'WELCOME_BY_APP');
  static const VALIDATE_MEMBER = NotificationSettingsResponseBlockedNotificationsEnum._(r'VALIDATE_MEMBER');
  static const NEW_SIGNUP = NotificationSettingsResponseBlockedNotificationsEnum._(r'NEW_SIGNUP');
  static const VOUCHER_PURCHASED = NotificationSettingsResponseBlockedNotificationsEnum._(r'VOUCHER_PURCHASED');
  static const PENDING_MISSION_REVIEW = NotificationSettingsResponseBlockedNotificationsEnum._(r'PENDING_MISSION_REVIEW');
  static const SEND_APP_KEYS = NotificationSettingsResponseBlockedNotificationsEnum._(r'SEND_APP_KEYS');
  static const RESET_PASSWORD = NotificationSettingsResponseBlockedNotificationsEnum._(r'RESET_PASSWORD');
  static const PASSWORD_CHANGED = NotificationSettingsResponseBlockedNotificationsEnum._(r'PASSWORD_CHANGED');
  static const oFFER24HREXPIRERETAILER = NotificationSettingsResponseBlockedNotificationsEnum._(r'OFFER_24HR_EXPIRE_RETAILER');
  static const oFFER24HREXPIRECONSUMER = NotificationSettingsResponseBlockedNotificationsEnum._(r'OFFER_24HR_EXPIRE_CONSUMER');
  static const DOWNLOADED_APP = NotificationSettingsResponseBlockedNotificationsEnum._(r'DOWNLOADED_APP');
  static const LEVEL_COMPLETED = NotificationSettingsResponseBlockedNotificationsEnum._(r'LEVEL_COMPLETED');
  static const LEVEL_CREATED = NotificationSettingsResponseBlockedNotificationsEnum._(r'LEVEL_CREATED');
  static const ALBUM_LIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_LIKE');
  static const ALBUM_CONTEST_LIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_CONTEST_LIKE');
  static const ASSET_LIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ASSET_LIKE');
  static const COLLECTION_LIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'COLLECTION_LIKE');
  static const ACCOUNT_LIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ACCOUNT_LIKE');
  static const NOTE_LIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'NOTE_LIKE');
  static const GAME_LEVEL_LIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'GAME_LEVEL_LIKE');
  static const LIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'LIKE');
  static const ALBUM_DISLIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_DISLIKE');
  static const ALBUM_CONTEST_DISLIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_CONTEST_DISLIKE');
  static const ASSET_DISLIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ASSET_DISLIKE');
  static const COLLECTION_DISLIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'COLLECTION_DISLIKE');
  static const ACCOUNT_DISLIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ACCOUNT_DISLIKE');
  static const NOTE_DISLIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'NOTE_DISLIKE');
  static const GAME_LEVEL_DISLIKE = NotificationSettingsResponseBlockedNotificationsEnum._(r'GAME_LEVEL_DISLIKE');
  static const ALBUM_NOTE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_NOTE');
  static const ALBUM_CONTEST_NOTE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_CONTEST_NOTE');
  static const ASSET_NOTE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ASSET_NOTE');
  static const COLLECTION_NOTE = NotificationSettingsResponseBlockedNotificationsEnum._(r'COLLECTION_NOTE');
  static const GAME_LEVEL_NOTE = NotificationSettingsResponseBlockedNotificationsEnum._(r'GAME_LEVEL_NOTE');
  static const COMMENT = NotificationSettingsResponseBlockedNotificationsEnum._(r'COMMENT');
  static const ALBUM_SHARED = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_SHARED');
  static const ALBUM_CONTEST_SHARED = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_CONTEST_SHARED');
  static const COLLECTION_SHARED = NotificationSettingsResponseBlockedNotificationsEnum._(r'COLLECTION_SHARED');
  static const EVENT_SHARED = NotificationSettingsResponseBlockedNotificationsEnum._(r'EVENT_SHARED');
  static const RETAILER_LOCATION_SHARED = NotificationSettingsResponseBlockedNotificationsEnum._(r'RETAILER_LOCATION_SHARED');
  static const ANONYMOUS_ALBUM_SHARED = NotificationSettingsResponseBlockedNotificationsEnum._(r'ANONYMOUS_ALBUM_SHARED');
  static const OFFER_FAVORITE = NotificationSettingsResponseBlockedNotificationsEnum._(r'OFFER_FAVORITE');
  static const OFFER_LOCATION_FAVORITE = NotificationSettingsResponseBlockedNotificationsEnum._(r'OFFER_LOCATION_FAVORITE');
  static const RETAILER_LOCATION_FAVORITE = NotificationSettingsResponseBlockedNotificationsEnum._(r'RETAILER_LOCATION_FAVORITE');
  static const ALBUM_FAVORITE = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_FAVORITE');
  static const CATEGORY_FAVORITE = NotificationSettingsResponseBlockedNotificationsEnum._(r'CATEGORY_FAVORITE');
  static const ALBUM_PENDING = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_PENDING');
  static const ALBUM_CONTEST_PENDING = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_CONTEST_PENDING');
  static const ALBUM_APPROVED = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_APPROVED');
  static const ALBUM_CONTEST_APPROVED = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_CONTEST_APPROVED');
  static const ALBUM_FEATURED = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_FEATURED');
  static const ALBUM_CONTEST_FEATURED = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_CONTEST_FEATURED');
  static const ALBUM_NEW = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_NEW');
  static const ALBUM_CONTEST_NEW = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_CONTEST_NEW');
  static const ALBUM_ASSETS_ADDED = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_ASSETS_ADDED');
  static const COLLECTION_ASSETS_ADDED = NotificationSettingsResponseBlockedNotificationsEnum._(r'COLLECTION_ASSETS_ADDED');
  static const ALBUM_PHOTOS_ADDED = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_PHOTOS_ADDED');
  static const ALBUM_CONTEST_ALBUM_ADD = NotificationSettingsResponseBlockedNotificationsEnum._(r'ALBUM_CONTEST_ALBUM_ADD');
  static const CHALLENGE = NotificationSettingsResponseBlockedNotificationsEnum._(r'CHALLENGE');
  static const EARN_COMMISSION_TICKETS = NotificationSettingsResponseBlockedNotificationsEnum._(r'EARN_COMMISSION_TICKETS');
  static const FRIEND_REQUESTED = NotificationSettingsResponseBlockedNotificationsEnum._(r'FRIEND_REQUESTED');
  static const FRIEND_REQUEST_ACCEPTED = NotificationSettingsResponseBlockedNotificationsEnum._(r'FRIEND_REQUEST_ACCEPTED');
  static const FRIEND_REQUEST_REJECTED = NotificationSettingsResponseBlockedNotificationsEnum._(r'FRIEND_REQUEST_REJECTED');
  static const FRIEND_REMOVED = NotificationSettingsResponseBlockedNotificationsEnum._(r'FRIEND_REMOVED');
  static const FRIEND_ADDED = NotificationSettingsResponseBlockedNotificationsEnum._(r'FRIEND_ADDED');
  static const FOLLOW = NotificationSettingsResponseBlockedNotificationsEnum._(r'FOLLOW');
  static const PURCHASE_ITEM_GIFTED = NotificationSettingsResponseBlockedNotificationsEnum._(r'PURCHASE_ITEM_GIFTED');
  static const PROFILE_PROXIMITY = NotificationSettingsResponseBlockedNotificationsEnum._(r'PROFILE_PROXIMITY');
  static const CUSTOM = NotificationSettingsResponseBlockedNotificationsEnum._(r'CUSTOM');
  static const ADMIN = NotificationSettingsResponseBlockedNotificationsEnum._(r'ADMIN');
  static const INVOICE = NotificationSettingsResponseBlockedNotificationsEnum._(r'INVOICE');
  static const SUGGESTIONS_SUMMARY = NotificationSettingsResponseBlockedNotificationsEnum._(r'SUGGESTIONS_SUMMARY');
  static const SUGGESTIONS_LINK = NotificationSettingsResponseBlockedNotificationsEnum._(r'SUGGESTIONS_LINK');
  static const EVENT_ATTENDANCE = NotificationSettingsResponseBlockedNotificationsEnum._(r'EVENT_ATTENDANCE');
  static const EVENTS_TODAY = NotificationSettingsResponseBlockedNotificationsEnum._(r'EVENTS_TODAY');
  static const OFFER_CREATE = NotificationSettingsResponseBlockedNotificationsEnum._(r'OFFER_CREATE');
  static const EVENT_CREATE = NotificationSettingsResponseBlockedNotificationsEnum._(r'EVENT_CREATE');
  static const MATCH_WINNER = NotificationSettingsResponseBlockedNotificationsEnum._(r'MATCH_WINNER');
  static const MATCH_LOSER = NotificationSettingsResponseBlockedNotificationsEnum._(r'MATCH_LOSER');
  static const MATCH_TIE = NotificationSettingsResponseBlockedNotificationsEnum._(r'MATCH_TIE');
  static const MATCH_TIE_WINNER = NotificationSettingsResponseBlockedNotificationsEnum._(r'MATCH_TIE_WINNER');
  static const MATCH_TIE_LOSER = NotificationSettingsResponseBlockedNotificationsEnum._(r'MATCH_TIE_LOSER');
  static const TOURNAMENT_REFUND = NotificationSettingsResponseBlockedNotificationsEnum._(r'TOURNAMENT_REFUND');
  static const TOURNAMENT_WON = NotificationSettingsResponseBlockedNotificationsEnum._(r'TOURNAMENT_WON');
  static const TOURNAMENT_WINNER = NotificationSettingsResponseBlockedNotificationsEnum._(r'TOURNAMENT_WINNER');
  static const ROUND_START_SOON = NotificationSettingsResponseBlockedNotificationsEnum._(r'ROUND_START_SOON');
  static const ROUND_END_SOON = NotificationSettingsResponseBlockedNotificationsEnum._(r'ROUND_END_SOON');
  static const ROUND_WINNER = NotificationSettingsResponseBlockedNotificationsEnum._(r'ROUND_WINNER');
  static const ROUND_SCORED = NotificationSettingsResponseBlockedNotificationsEnum._(r'ROUND_SCORED');

  /// List of all possible values in this [enum][NotificationSettingsResponseBlockedNotificationsEnum].
  static const values = <NotificationSettingsResponseBlockedNotificationsEnum>[
    REASSIGNMENT_REQUEST,
    FEEDBACK,
    SUGGESTION_RECEIVED,
    ASSIGNMENT_CHANGE,
    WELCOME_PARTNER,
    WELCOME_BUSINESS,
    PARTNER_INVITE,
    PARTNER_EXISTING_INVITE,
    PARTNER_CODE_INVITE,
    BATCH_REPORT_FINISHED,
    WELCOME_BY_APP,
    VALIDATE_MEMBER,
    NEW_SIGNUP,
    VOUCHER_PURCHASED,
    PENDING_MISSION_REVIEW,
    SEND_APP_KEYS,
    RESET_PASSWORD,
    PASSWORD_CHANGED,
    oFFER24HREXPIRERETAILER,
    oFFER24HREXPIRECONSUMER,
    DOWNLOADED_APP,
    LEVEL_COMPLETED,
    LEVEL_CREATED,
    ALBUM_LIKE,
    ALBUM_CONTEST_LIKE,
    ASSET_LIKE,
    COLLECTION_LIKE,
    ACCOUNT_LIKE,
    NOTE_LIKE,
    GAME_LEVEL_LIKE,
    LIKE,
    ALBUM_DISLIKE,
    ALBUM_CONTEST_DISLIKE,
    ASSET_DISLIKE,
    COLLECTION_DISLIKE,
    ACCOUNT_DISLIKE,
    NOTE_DISLIKE,
    GAME_LEVEL_DISLIKE,
    ALBUM_NOTE,
    ALBUM_CONTEST_NOTE,
    ASSET_NOTE,
    COLLECTION_NOTE,
    GAME_LEVEL_NOTE,
    COMMENT,
    ALBUM_SHARED,
    ALBUM_CONTEST_SHARED,
    COLLECTION_SHARED,
    EVENT_SHARED,
    RETAILER_LOCATION_SHARED,
    ANONYMOUS_ALBUM_SHARED,
    OFFER_FAVORITE,
    OFFER_LOCATION_FAVORITE,
    RETAILER_LOCATION_FAVORITE,
    ALBUM_FAVORITE,
    CATEGORY_FAVORITE,
    ALBUM_PENDING,
    ALBUM_CONTEST_PENDING,
    ALBUM_APPROVED,
    ALBUM_CONTEST_APPROVED,
    ALBUM_FEATURED,
    ALBUM_CONTEST_FEATURED,
    ALBUM_NEW,
    ALBUM_CONTEST_NEW,
    ALBUM_ASSETS_ADDED,
    COLLECTION_ASSETS_ADDED,
    ALBUM_PHOTOS_ADDED,
    ALBUM_CONTEST_ALBUM_ADD,
    CHALLENGE,
    EARN_COMMISSION_TICKETS,
    FRIEND_REQUESTED,
    FRIEND_REQUEST_ACCEPTED,
    FRIEND_REQUEST_REJECTED,
    FRIEND_REMOVED,
    FRIEND_ADDED,
    FOLLOW,
    PURCHASE_ITEM_GIFTED,
    PROFILE_PROXIMITY,
    CUSTOM,
    ADMIN,
    INVOICE,
    SUGGESTIONS_SUMMARY,
    SUGGESTIONS_LINK,
    EVENT_ATTENDANCE,
    EVENTS_TODAY,
    OFFER_CREATE,
    EVENT_CREATE,
    MATCH_WINNER,
    MATCH_LOSER,
    MATCH_TIE,
    MATCH_TIE_WINNER,
    MATCH_TIE_LOSER,
    TOURNAMENT_REFUND,
    TOURNAMENT_WON,
    TOURNAMENT_WINNER,
    ROUND_START_SOON,
    ROUND_END_SOON,
    ROUND_WINNER,
    ROUND_SCORED,
  ];

  static NotificationSettingsResponseBlockedNotificationsEnum? fromJson(dynamic value) => NotificationSettingsResponseBlockedNotificationsEnumTypeTransformer().decode(value);

  static List<NotificationSettingsResponseBlockedNotificationsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationSettingsResponseBlockedNotificationsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationSettingsResponseBlockedNotificationsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationSettingsResponseBlockedNotificationsEnum] to String,
/// and [decode] dynamic data back to [NotificationSettingsResponseBlockedNotificationsEnum].
class NotificationSettingsResponseBlockedNotificationsEnumTypeTransformer {
  factory NotificationSettingsResponseBlockedNotificationsEnumTypeTransformer() => _instance ??= const NotificationSettingsResponseBlockedNotificationsEnumTypeTransformer._();

  const NotificationSettingsResponseBlockedNotificationsEnumTypeTransformer._();

  String encode(NotificationSettingsResponseBlockedNotificationsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationSettingsResponseBlockedNotificationsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationSettingsResponseBlockedNotificationsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'REASSIGNMENT_REQUEST': return NotificationSettingsResponseBlockedNotificationsEnum.REASSIGNMENT_REQUEST;
        case r'FEEDBACK': return NotificationSettingsResponseBlockedNotificationsEnum.FEEDBACK;
        case r'SUGGESTION_RECEIVED': return NotificationSettingsResponseBlockedNotificationsEnum.SUGGESTION_RECEIVED;
        case r'ASSIGNMENT_CHANGE': return NotificationSettingsResponseBlockedNotificationsEnum.ASSIGNMENT_CHANGE;
        case r'WELCOME_PARTNER': return NotificationSettingsResponseBlockedNotificationsEnum.WELCOME_PARTNER;
        case r'WELCOME_BUSINESS': return NotificationSettingsResponseBlockedNotificationsEnum.WELCOME_BUSINESS;
        case r'PARTNER_INVITE': return NotificationSettingsResponseBlockedNotificationsEnum.PARTNER_INVITE;
        case r'PARTNER_EXISTING_INVITE': return NotificationSettingsResponseBlockedNotificationsEnum.PARTNER_EXISTING_INVITE;
        case r'PARTNER_CODE_INVITE': return NotificationSettingsResponseBlockedNotificationsEnum.PARTNER_CODE_INVITE;
        case r'BATCH_REPORT_FINISHED': return NotificationSettingsResponseBlockedNotificationsEnum.BATCH_REPORT_FINISHED;
        case r'WELCOME_BY_APP': return NotificationSettingsResponseBlockedNotificationsEnum.WELCOME_BY_APP;
        case r'VALIDATE_MEMBER': return NotificationSettingsResponseBlockedNotificationsEnum.VALIDATE_MEMBER;
        case r'NEW_SIGNUP': return NotificationSettingsResponseBlockedNotificationsEnum.NEW_SIGNUP;
        case r'VOUCHER_PURCHASED': return NotificationSettingsResponseBlockedNotificationsEnum.VOUCHER_PURCHASED;
        case r'PENDING_MISSION_REVIEW': return NotificationSettingsResponseBlockedNotificationsEnum.PENDING_MISSION_REVIEW;
        case r'SEND_APP_KEYS': return NotificationSettingsResponseBlockedNotificationsEnum.SEND_APP_KEYS;
        case r'RESET_PASSWORD': return NotificationSettingsResponseBlockedNotificationsEnum.RESET_PASSWORD;
        case r'PASSWORD_CHANGED': return NotificationSettingsResponseBlockedNotificationsEnum.PASSWORD_CHANGED;
        case r'OFFER_24HR_EXPIRE_RETAILER': return NotificationSettingsResponseBlockedNotificationsEnum.oFFER24HREXPIRERETAILER;
        case r'OFFER_24HR_EXPIRE_CONSUMER': return NotificationSettingsResponseBlockedNotificationsEnum.oFFER24HREXPIRECONSUMER;
        case r'DOWNLOADED_APP': return NotificationSettingsResponseBlockedNotificationsEnum.DOWNLOADED_APP;
        case r'LEVEL_COMPLETED': return NotificationSettingsResponseBlockedNotificationsEnum.LEVEL_COMPLETED;
        case r'LEVEL_CREATED': return NotificationSettingsResponseBlockedNotificationsEnum.LEVEL_CREATED;
        case r'ALBUM_LIKE': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_LIKE;
        case r'ALBUM_CONTEST_LIKE': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_CONTEST_LIKE;
        case r'ASSET_LIKE': return NotificationSettingsResponseBlockedNotificationsEnum.ASSET_LIKE;
        case r'COLLECTION_LIKE': return NotificationSettingsResponseBlockedNotificationsEnum.COLLECTION_LIKE;
        case r'ACCOUNT_LIKE': return NotificationSettingsResponseBlockedNotificationsEnum.ACCOUNT_LIKE;
        case r'NOTE_LIKE': return NotificationSettingsResponseBlockedNotificationsEnum.NOTE_LIKE;
        case r'GAME_LEVEL_LIKE': return NotificationSettingsResponseBlockedNotificationsEnum.GAME_LEVEL_LIKE;
        case r'LIKE': return NotificationSettingsResponseBlockedNotificationsEnum.LIKE;
        case r'ALBUM_DISLIKE': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_DISLIKE;
        case r'ALBUM_CONTEST_DISLIKE': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_CONTEST_DISLIKE;
        case r'ASSET_DISLIKE': return NotificationSettingsResponseBlockedNotificationsEnum.ASSET_DISLIKE;
        case r'COLLECTION_DISLIKE': return NotificationSettingsResponseBlockedNotificationsEnum.COLLECTION_DISLIKE;
        case r'ACCOUNT_DISLIKE': return NotificationSettingsResponseBlockedNotificationsEnum.ACCOUNT_DISLIKE;
        case r'NOTE_DISLIKE': return NotificationSettingsResponseBlockedNotificationsEnum.NOTE_DISLIKE;
        case r'GAME_LEVEL_DISLIKE': return NotificationSettingsResponseBlockedNotificationsEnum.GAME_LEVEL_DISLIKE;
        case r'ALBUM_NOTE': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_NOTE;
        case r'ALBUM_CONTEST_NOTE': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_CONTEST_NOTE;
        case r'ASSET_NOTE': return NotificationSettingsResponseBlockedNotificationsEnum.ASSET_NOTE;
        case r'COLLECTION_NOTE': return NotificationSettingsResponseBlockedNotificationsEnum.COLLECTION_NOTE;
        case r'GAME_LEVEL_NOTE': return NotificationSettingsResponseBlockedNotificationsEnum.GAME_LEVEL_NOTE;
        case r'COMMENT': return NotificationSettingsResponseBlockedNotificationsEnum.COMMENT;
        case r'ALBUM_SHARED': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_SHARED;
        case r'ALBUM_CONTEST_SHARED': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_CONTEST_SHARED;
        case r'COLLECTION_SHARED': return NotificationSettingsResponseBlockedNotificationsEnum.COLLECTION_SHARED;
        case r'EVENT_SHARED': return NotificationSettingsResponseBlockedNotificationsEnum.EVENT_SHARED;
        case r'RETAILER_LOCATION_SHARED': return NotificationSettingsResponseBlockedNotificationsEnum.RETAILER_LOCATION_SHARED;
        case r'ANONYMOUS_ALBUM_SHARED': return NotificationSettingsResponseBlockedNotificationsEnum.ANONYMOUS_ALBUM_SHARED;
        case r'OFFER_FAVORITE': return NotificationSettingsResponseBlockedNotificationsEnum.OFFER_FAVORITE;
        case r'OFFER_LOCATION_FAVORITE': return NotificationSettingsResponseBlockedNotificationsEnum.OFFER_LOCATION_FAVORITE;
        case r'RETAILER_LOCATION_FAVORITE': return NotificationSettingsResponseBlockedNotificationsEnum.RETAILER_LOCATION_FAVORITE;
        case r'ALBUM_FAVORITE': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_FAVORITE;
        case r'CATEGORY_FAVORITE': return NotificationSettingsResponseBlockedNotificationsEnum.CATEGORY_FAVORITE;
        case r'ALBUM_PENDING': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_PENDING;
        case r'ALBUM_CONTEST_PENDING': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_CONTEST_PENDING;
        case r'ALBUM_APPROVED': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_APPROVED;
        case r'ALBUM_CONTEST_APPROVED': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_CONTEST_APPROVED;
        case r'ALBUM_FEATURED': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_FEATURED;
        case r'ALBUM_CONTEST_FEATURED': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_CONTEST_FEATURED;
        case r'ALBUM_NEW': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_NEW;
        case r'ALBUM_CONTEST_NEW': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_CONTEST_NEW;
        case r'ALBUM_ASSETS_ADDED': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_ASSETS_ADDED;
        case r'COLLECTION_ASSETS_ADDED': return NotificationSettingsResponseBlockedNotificationsEnum.COLLECTION_ASSETS_ADDED;
        case r'ALBUM_PHOTOS_ADDED': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_PHOTOS_ADDED;
        case r'ALBUM_CONTEST_ALBUM_ADD': return NotificationSettingsResponseBlockedNotificationsEnum.ALBUM_CONTEST_ALBUM_ADD;
        case r'CHALLENGE': return NotificationSettingsResponseBlockedNotificationsEnum.CHALLENGE;
        case r'EARN_COMMISSION_TICKETS': return NotificationSettingsResponseBlockedNotificationsEnum.EARN_COMMISSION_TICKETS;
        case r'FRIEND_REQUESTED': return NotificationSettingsResponseBlockedNotificationsEnum.FRIEND_REQUESTED;
        case r'FRIEND_REQUEST_ACCEPTED': return NotificationSettingsResponseBlockedNotificationsEnum.FRIEND_REQUEST_ACCEPTED;
        case r'FRIEND_REQUEST_REJECTED': return NotificationSettingsResponseBlockedNotificationsEnum.FRIEND_REQUEST_REJECTED;
        case r'FRIEND_REMOVED': return NotificationSettingsResponseBlockedNotificationsEnum.FRIEND_REMOVED;
        case r'FRIEND_ADDED': return NotificationSettingsResponseBlockedNotificationsEnum.FRIEND_ADDED;
        case r'FOLLOW': return NotificationSettingsResponseBlockedNotificationsEnum.FOLLOW;
        case r'PURCHASE_ITEM_GIFTED': return NotificationSettingsResponseBlockedNotificationsEnum.PURCHASE_ITEM_GIFTED;
        case r'PROFILE_PROXIMITY': return NotificationSettingsResponseBlockedNotificationsEnum.PROFILE_PROXIMITY;
        case r'CUSTOM': return NotificationSettingsResponseBlockedNotificationsEnum.CUSTOM;
        case r'ADMIN': return NotificationSettingsResponseBlockedNotificationsEnum.ADMIN;
        case r'INVOICE': return NotificationSettingsResponseBlockedNotificationsEnum.INVOICE;
        case r'SUGGESTIONS_SUMMARY': return NotificationSettingsResponseBlockedNotificationsEnum.SUGGESTIONS_SUMMARY;
        case r'SUGGESTIONS_LINK': return NotificationSettingsResponseBlockedNotificationsEnum.SUGGESTIONS_LINK;
        case r'EVENT_ATTENDANCE': return NotificationSettingsResponseBlockedNotificationsEnum.EVENT_ATTENDANCE;
        case r'EVENTS_TODAY': return NotificationSettingsResponseBlockedNotificationsEnum.EVENTS_TODAY;
        case r'OFFER_CREATE': return NotificationSettingsResponseBlockedNotificationsEnum.OFFER_CREATE;
        case r'EVENT_CREATE': return NotificationSettingsResponseBlockedNotificationsEnum.EVENT_CREATE;
        case r'MATCH_WINNER': return NotificationSettingsResponseBlockedNotificationsEnum.MATCH_WINNER;
        case r'MATCH_LOSER': return NotificationSettingsResponseBlockedNotificationsEnum.MATCH_LOSER;
        case r'MATCH_TIE': return NotificationSettingsResponseBlockedNotificationsEnum.MATCH_TIE;
        case r'MATCH_TIE_WINNER': return NotificationSettingsResponseBlockedNotificationsEnum.MATCH_TIE_WINNER;
        case r'MATCH_TIE_LOSER': return NotificationSettingsResponseBlockedNotificationsEnum.MATCH_TIE_LOSER;
        case r'TOURNAMENT_REFUND': return NotificationSettingsResponseBlockedNotificationsEnum.TOURNAMENT_REFUND;
        case r'TOURNAMENT_WON': return NotificationSettingsResponseBlockedNotificationsEnum.TOURNAMENT_WON;
        case r'TOURNAMENT_WINNER': return NotificationSettingsResponseBlockedNotificationsEnum.TOURNAMENT_WINNER;
        case r'ROUND_START_SOON': return NotificationSettingsResponseBlockedNotificationsEnum.ROUND_START_SOON;
        case r'ROUND_END_SOON': return NotificationSettingsResponseBlockedNotificationsEnum.ROUND_END_SOON;
        case r'ROUND_WINNER': return NotificationSettingsResponseBlockedNotificationsEnum.ROUND_WINNER;
        case r'ROUND_SCORED': return NotificationSettingsResponseBlockedNotificationsEnum.ROUND_SCORED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationSettingsResponseBlockedNotificationsEnumTypeTransformer] instance.
  static NotificationSettingsResponseBlockedNotificationsEnumTypeTransformer? _instance;
}


