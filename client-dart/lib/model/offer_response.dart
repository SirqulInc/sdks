//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OfferResponse {
  /// Returns a new [OfferResponse] instance.
  OfferResponse({
    this.valid,
    this.message,
    this.version,
    this.serializeNulls,
    this.startTimeLog,
    this.errorCode,
    this.request = const [],
    this.offerLocationId,
    this.offerId,
    this.retailerId,
    this.transactionId,
    this.favoriteId,
    this.offerName,
    this.subTitle,
    this.locationName,
    this.starts,
    this.expires,
    this.activated,
    this.expiration,
    this.redeemableStart,
    this.redeemableEnd,
    this.distance,
    this.offerType,
    this.longitude,
    this.latitude,
    this.favorite,
    this.fullPrice,
    this.discountPrice,
    this.estimatedValue,
    this.voucherDiscountPrice,
    this.missionListResponse,
    this.image,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.image5,
    this.images = const [],
    this.barcode,
    this.externalUrl,
    this.sqootUrl,
    this.active,
    this.location,
    this.subDetails,
    this.externalRedeemAuth,
    this.externalRedeemOptions,
    this.publisher,
    this.product,
    this.event,
    this.media,
    this.viewedCount,
    this.clickedCount,
    this.addedLimit,
    this.addedCount,
    this.usedCount,
    this.removedCount,
    this.locationAddedCount,
    this.barcodeEntry,
    this.barcodeType,
    this.ticketsReward,
    this.ticketsRewardType,
    this.specialOfferType,
    this.likeCount,
    this.dislikeCount,
    this.favoriteCount,
    this.noteCount,
    this.logId,
    this.billableEntityId,
    this.responsibleAccountId,
    this.availabilitySummary,
    this.externalId,
    this.parentOffer,
    this.address,
    this.details,
    this.finePrint,
    this.retailerPhoneNumber,
    this.ticketPriceType,
    this.ticketPrice,
    this.discountPercentage,
    this.paymentFees,
    this.voucherPrice,
    this.purchasesRemaining,
    this.redemptionsRemaining,
    this.redemptionStatus,
    this.redemptionCode,
    this.audiences = const [],
    this.audienceCount,
    this.walletCount,
    this.qrCodeUrl,
    this.showRemaining,
    this.showRedeemed,
    this.purchaseLimit,
    this.purchaseLimitPerUser,
    this.redemptionLimit,
    this.userRedemptionLimit,
    this.categories = const [],
    this.filters = const [],
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
  int? offerLocationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retailerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? transactionId;

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
  String? offerName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? starts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expires;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? activated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? redeemableStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? redeemableEnd;

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
  String? offerType;

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
  double? latitude;

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
  double? fullPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? discountPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? estimatedValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? voucherDiscountPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MissionListResponse? missionListResponse;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image3;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image4;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image5;

  List<AssetResponse> images;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? barcode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sqootUrl;

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
  RetailerLocationResponse? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? externalRedeemAuth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalRedeemOptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publisher;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProductResponse? product;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EventResponse? event;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MediaResponse? media;

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
  int? addedLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? addedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? usedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? removedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? locationAddedCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? barcodeEntry;

  OfferResponseBarcodeTypeEnum? barcodeType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticketsReward;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ticketsRewardType;

  OfferResponseSpecialOfferTypeEnum? specialOfferType;

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
  int? favoriteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? noteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? logId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? billableEntityId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? responsibleAccountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? availabilitySummary;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OfferShortResponse? parentOffer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? details;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? finePrint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? retailerPhoneNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ticketPriceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticketPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? discountPercentage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? paymentFees;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? voucherPrice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? purchasesRemaining;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? redemptionsRemaining;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? redemptionStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redemptionCode;

  List<AudienceResponse> audiences;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? audienceCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? walletCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qrCodeUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showRemaining;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showRedeemed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? purchaseLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? purchaseLimitPerUser;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? redemptionLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userRedemptionLimit;

  List<CategoryResponse> categories;

  List<FilterResponse> filters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returning;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OfferResponse &&
    other.valid == valid &&
    other.message == message &&
    other.version == version &&
    other.serializeNulls == serializeNulls &&
    other.startTimeLog == startTimeLog &&
    other.errorCode == errorCode &&
    _deepEquality.equals(other.request, request) &&
    other.offerLocationId == offerLocationId &&
    other.offerId == offerId &&
    other.retailerId == retailerId &&
    other.transactionId == transactionId &&
    other.favoriteId == favoriteId &&
    other.offerName == offerName &&
    other.subTitle == subTitle &&
    other.locationName == locationName &&
    other.starts == starts &&
    other.expires == expires &&
    other.activated == activated &&
    other.expiration == expiration &&
    other.redeemableStart == redeemableStart &&
    other.redeemableEnd == redeemableEnd &&
    other.distance == distance &&
    other.offerType == offerType &&
    other.longitude == longitude &&
    other.latitude == latitude &&
    other.favorite == favorite &&
    other.fullPrice == fullPrice &&
    other.discountPrice == discountPrice &&
    other.estimatedValue == estimatedValue &&
    other.voucherDiscountPrice == voucherDiscountPrice &&
    other.missionListResponse == missionListResponse &&
    other.image == image &&
    other.image1 == image1 &&
    other.image2 == image2 &&
    other.image3 == image3 &&
    other.image4 == image4 &&
    other.image5 == image5 &&
    _deepEquality.equals(other.images, images) &&
    other.barcode == barcode &&
    other.externalUrl == externalUrl &&
    other.sqootUrl == sqootUrl &&
    other.active == active &&
    other.location == location &&
    other.subDetails == subDetails &&
    other.externalRedeemAuth == externalRedeemAuth &&
    other.externalRedeemOptions == externalRedeemOptions &&
    other.publisher == publisher &&
    other.product == product &&
    other.event == event &&
    other.media == media &&
    other.viewedCount == viewedCount &&
    other.clickedCount == clickedCount &&
    other.addedLimit == addedLimit &&
    other.addedCount == addedCount &&
    other.usedCount == usedCount &&
    other.removedCount == removedCount &&
    other.locationAddedCount == locationAddedCount &&
    other.barcodeEntry == barcodeEntry &&
    other.barcodeType == barcodeType &&
    other.ticketsReward == ticketsReward &&
    other.ticketsRewardType == ticketsRewardType &&
    other.specialOfferType == specialOfferType &&
    other.likeCount == likeCount &&
    other.dislikeCount == dislikeCount &&
    other.favoriteCount == favoriteCount &&
    other.noteCount == noteCount &&
    other.logId == logId &&
    other.billableEntityId == billableEntityId &&
    other.responsibleAccountId == responsibleAccountId &&
    other.availabilitySummary == availabilitySummary &&
    other.externalId == externalId &&
    other.parentOffer == parentOffer &&
    other.address == address &&
    other.details == details &&
    other.finePrint == finePrint &&
    other.retailerPhoneNumber == retailerPhoneNumber &&
    other.ticketPriceType == ticketPriceType &&
    other.ticketPrice == ticketPrice &&
    other.discountPercentage == discountPercentage &&
    other.paymentFees == paymentFees &&
    other.voucherPrice == voucherPrice &&
    other.purchasesRemaining == purchasesRemaining &&
    other.redemptionsRemaining == redemptionsRemaining &&
    other.redemptionStatus == redemptionStatus &&
    other.redemptionCode == redemptionCode &&
    _deepEquality.equals(other.audiences, audiences) &&
    other.audienceCount == audienceCount &&
    other.walletCount == walletCount &&
    other.qrCodeUrl == qrCodeUrl &&
    other.showRemaining == showRemaining &&
    other.showRedeemed == showRedeemed &&
    other.purchaseLimit == purchaseLimit &&
    other.purchaseLimitPerUser == purchaseLimitPerUser &&
    other.redemptionLimit == redemptionLimit &&
    other.userRedemptionLimit == userRedemptionLimit &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.filters, filters) &&
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
    (offerLocationId == null ? 0 : offerLocationId!.hashCode) +
    (offerId == null ? 0 : offerId!.hashCode) +
    (retailerId == null ? 0 : retailerId!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode) +
    (favoriteId == null ? 0 : favoriteId!.hashCode) +
    (offerName == null ? 0 : offerName!.hashCode) +
    (subTitle == null ? 0 : subTitle!.hashCode) +
    (locationName == null ? 0 : locationName!.hashCode) +
    (starts == null ? 0 : starts!.hashCode) +
    (expires == null ? 0 : expires!.hashCode) +
    (activated == null ? 0 : activated!.hashCode) +
    (expiration == null ? 0 : expiration!.hashCode) +
    (redeemableStart == null ? 0 : redeemableStart!.hashCode) +
    (redeemableEnd == null ? 0 : redeemableEnd!.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (offerType == null ? 0 : offerType!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (favorite == null ? 0 : favorite!.hashCode) +
    (fullPrice == null ? 0 : fullPrice!.hashCode) +
    (discountPrice == null ? 0 : discountPrice!.hashCode) +
    (estimatedValue == null ? 0 : estimatedValue!.hashCode) +
    (voucherDiscountPrice == null ? 0 : voucherDiscountPrice!.hashCode) +
    (missionListResponse == null ? 0 : missionListResponse!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (image1 == null ? 0 : image1!.hashCode) +
    (image2 == null ? 0 : image2!.hashCode) +
    (image3 == null ? 0 : image3!.hashCode) +
    (image4 == null ? 0 : image4!.hashCode) +
    (image5 == null ? 0 : image5!.hashCode) +
    (images.hashCode) +
    (barcode == null ? 0 : barcode!.hashCode) +
    (externalUrl == null ? 0 : externalUrl!.hashCode) +
    (sqootUrl == null ? 0 : sqootUrl!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (subDetails == null ? 0 : subDetails!.hashCode) +
    (externalRedeemAuth == null ? 0 : externalRedeemAuth!.hashCode) +
    (externalRedeemOptions == null ? 0 : externalRedeemOptions!.hashCode) +
    (publisher == null ? 0 : publisher!.hashCode) +
    (product == null ? 0 : product!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (media == null ? 0 : media!.hashCode) +
    (viewedCount == null ? 0 : viewedCount!.hashCode) +
    (clickedCount == null ? 0 : clickedCount!.hashCode) +
    (addedLimit == null ? 0 : addedLimit!.hashCode) +
    (addedCount == null ? 0 : addedCount!.hashCode) +
    (usedCount == null ? 0 : usedCount!.hashCode) +
    (removedCount == null ? 0 : removedCount!.hashCode) +
    (locationAddedCount == null ? 0 : locationAddedCount!.hashCode) +
    (barcodeEntry == null ? 0 : barcodeEntry!.hashCode) +
    (barcodeType == null ? 0 : barcodeType!.hashCode) +
    (ticketsReward == null ? 0 : ticketsReward!.hashCode) +
    (ticketsRewardType == null ? 0 : ticketsRewardType!.hashCode) +
    (specialOfferType == null ? 0 : specialOfferType!.hashCode) +
    (likeCount == null ? 0 : likeCount!.hashCode) +
    (dislikeCount == null ? 0 : dislikeCount!.hashCode) +
    (favoriteCount == null ? 0 : favoriteCount!.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (logId == null ? 0 : logId!.hashCode) +
    (billableEntityId == null ? 0 : billableEntityId!.hashCode) +
    (responsibleAccountId == null ? 0 : responsibleAccountId!.hashCode) +
    (availabilitySummary == null ? 0 : availabilitySummary!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (parentOffer == null ? 0 : parentOffer!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (details == null ? 0 : details!.hashCode) +
    (finePrint == null ? 0 : finePrint!.hashCode) +
    (retailerPhoneNumber == null ? 0 : retailerPhoneNumber!.hashCode) +
    (ticketPriceType == null ? 0 : ticketPriceType!.hashCode) +
    (ticketPrice == null ? 0 : ticketPrice!.hashCode) +
    (discountPercentage == null ? 0 : discountPercentage!.hashCode) +
    (paymentFees == null ? 0 : paymentFees!.hashCode) +
    (voucherPrice == null ? 0 : voucherPrice!.hashCode) +
    (purchasesRemaining == null ? 0 : purchasesRemaining!.hashCode) +
    (redemptionsRemaining == null ? 0 : redemptionsRemaining!.hashCode) +
    (redemptionStatus == null ? 0 : redemptionStatus!.hashCode) +
    (redemptionCode == null ? 0 : redemptionCode!.hashCode) +
    (audiences.hashCode) +
    (audienceCount == null ? 0 : audienceCount!.hashCode) +
    (walletCount == null ? 0 : walletCount!.hashCode) +
    (qrCodeUrl == null ? 0 : qrCodeUrl!.hashCode) +
    (showRemaining == null ? 0 : showRemaining!.hashCode) +
    (showRedeemed == null ? 0 : showRedeemed!.hashCode) +
    (purchaseLimit == null ? 0 : purchaseLimit!.hashCode) +
    (purchaseLimitPerUser == null ? 0 : purchaseLimitPerUser!.hashCode) +
    (redemptionLimit == null ? 0 : redemptionLimit!.hashCode) +
    (userRedemptionLimit == null ? 0 : userRedemptionLimit!.hashCode) +
    (categories.hashCode) +
    (filters.hashCode) +
    (returning == null ? 0 : returning!.hashCode);

  @override
  String toString() => 'OfferResponse[valid=$valid, message=$message, version=$version, serializeNulls=$serializeNulls, startTimeLog=$startTimeLog, errorCode=$errorCode, request=$request, offerLocationId=$offerLocationId, offerId=$offerId, retailerId=$retailerId, transactionId=$transactionId, favoriteId=$favoriteId, offerName=$offerName, subTitle=$subTitle, locationName=$locationName, starts=$starts, expires=$expires, activated=$activated, expiration=$expiration, redeemableStart=$redeemableStart, redeemableEnd=$redeemableEnd, distance=$distance, offerType=$offerType, longitude=$longitude, latitude=$latitude, favorite=$favorite, fullPrice=$fullPrice, discountPrice=$discountPrice, estimatedValue=$estimatedValue, voucherDiscountPrice=$voucherDiscountPrice, missionListResponse=$missionListResponse, image=$image, image1=$image1, image2=$image2, image3=$image3, image4=$image4, image5=$image5, images=$images, barcode=$barcode, externalUrl=$externalUrl, sqootUrl=$sqootUrl, active=$active, location=$location, subDetails=$subDetails, externalRedeemAuth=$externalRedeemAuth, externalRedeemOptions=$externalRedeemOptions, publisher=$publisher, product=$product, event=$event, media=$media, viewedCount=$viewedCount, clickedCount=$clickedCount, addedLimit=$addedLimit, addedCount=$addedCount, usedCount=$usedCount, removedCount=$removedCount, locationAddedCount=$locationAddedCount, barcodeEntry=$barcodeEntry, barcodeType=$barcodeType, ticketsReward=$ticketsReward, ticketsRewardType=$ticketsRewardType, specialOfferType=$specialOfferType, likeCount=$likeCount, dislikeCount=$dislikeCount, favoriteCount=$favoriteCount, noteCount=$noteCount, logId=$logId, billableEntityId=$billableEntityId, responsibleAccountId=$responsibleAccountId, availabilitySummary=$availabilitySummary, externalId=$externalId, parentOffer=$parentOffer, address=$address, details=$details, finePrint=$finePrint, retailerPhoneNumber=$retailerPhoneNumber, ticketPriceType=$ticketPriceType, ticketPrice=$ticketPrice, discountPercentage=$discountPercentage, paymentFees=$paymentFees, voucherPrice=$voucherPrice, purchasesRemaining=$purchasesRemaining, redemptionsRemaining=$redemptionsRemaining, redemptionStatus=$redemptionStatus, redemptionCode=$redemptionCode, audiences=$audiences, audienceCount=$audienceCount, walletCount=$walletCount, qrCodeUrl=$qrCodeUrl, showRemaining=$showRemaining, showRedeemed=$showRedeemed, purchaseLimit=$purchaseLimit, purchaseLimitPerUser=$purchaseLimitPerUser, redemptionLimit=$redemptionLimit, userRedemptionLimit=$userRedemptionLimit, categories=$categories, filters=$filters, returning=$returning]';

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
    if (this.offerLocationId != null) {
      json[r'offerLocationId'] = this.offerLocationId;
    } else {
      json[r'offerLocationId'] = null;
    }
    if (this.offerId != null) {
      json[r'offerId'] = this.offerId;
    } else {
      json[r'offerId'] = null;
    }
    if (this.retailerId != null) {
      json[r'retailerId'] = this.retailerId;
    } else {
      json[r'retailerId'] = null;
    }
    if (this.transactionId != null) {
      json[r'transactionId'] = this.transactionId;
    } else {
      json[r'transactionId'] = null;
    }
    if (this.favoriteId != null) {
      json[r'favoriteId'] = this.favoriteId;
    } else {
      json[r'favoriteId'] = null;
    }
    if (this.offerName != null) {
      json[r'offerName'] = this.offerName;
    } else {
      json[r'offerName'] = null;
    }
    if (this.subTitle != null) {
      json[r'subTitle'] = this.subTitle;
    } else {
      json[r'subTitle'] = null;
    }
    if (this.locationName != null) {
      json[r'locationName'] = this.locationName;
    } else {
      json[r'locationName'] = null;
    }
    if (this.starts != null) {
      json[r'starts'] = this.starts!.toUtc().toIso8601String();
    } else {
      json[r'starts'] = null;
    }
    if (this.expires != null) {
      json[r'expires'] = this.expires!.toUtc().toIso8601String();
    } else {
      json[r'expires'] = null;
    }
    if (this.activated != null) {
      json[r'activated'] = this.activated;
    } else {
      json[r'activated'] = null;
    }
    if (this.expiration != null) {
      json[r'expiration'] = this.expiration;
    } else {
      json[r'expiration'] = null;
    }
    if (this.redeemableStart != null) {
      json[r'redeemableStart'] = this.redeemableStart;
    } else {
      json[r'redeemableStart'] = null;
    }
    if (this.redeemableEnd != null) {
      json[r'redeemableEnd'] = this.redeemableEnd;
    } else {
      json[r'redeemableEnd'] = null;
    }
    if (this.distance != null) {
      json[r'distance'] = this.distance;
    } else {
      json[r'distance'] = null;
    }
    if (this.offerType != null) {
      json[r'offerType'] = this.offerType;
    } else {
      json[r'offerType'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
    }
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.favorite != null) {
      json[r'favorite'] = this.favorite;
    } else {
      json[r'favorite'] = null;
    }
    if (this.fullPrice != null) {
      json[r'fullPrice'] = this.fullPrice;
    } else {
      json[r'fullPrice'] = null;
    }
    if (this.discountPrice != null) {
      json[r'discountPrice'] = this.discountPrice;
    } else {
      json[r'discountPrice'] = null;
    }
    if (this.estimatedValue != null) {
      json[r'estimatedValue'] = this.estimatedValue;
    } else {
      json[r'estimatedValue'] = null;
    }
    if (this.voucherDiscountPrice != null) {
      json[r'voucherDiscountPrice'] = this.voucherDiscountPrice;
    } else {
      json[r'voucherDiscountPrice'] = null;
    }
    if (this.missionListResponse != null) {
      json[r'missionListResponse'] = this.missionListResponse;
    } else {
      json[r'missionListResponse'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.image1 != null) {
      json[r'image1'] = this.image1;
    } else {
      json[r'image1'] = null;
    }
    if (this.image2 != null) {
      json[r'image2'] = this.image2;
    } else {
      json[r'image2'] = null;
    }
    if (this.image3 != null) {
      json[r'image3'] = this.image3;
    } else {
      json[r'image3'] = null;
    }
    if (this.image4 != null) {
      json[r'image4'] = this.image4;
    } else {
      json[r'image4'] = null;
    }
    if (this.image5 != null) {
      json[r'image5'] = this.image5;
    } else {
      json[r'image5'] = null;
    }
      json[r'images'] = this.images;
    if (this.barcode != null) {
      json[r'barcode'] = this.barcode;
    } else {
      json[r'barcode'] = null;
    }
    if (this.externalUrl != null) {
      json[r'externalUrl'] = this.externalUrl;
    } else {
      json[r'externalUrl'] = null;
    }
    if (this.sqootUrl != null) {
      json[r'sqootUrl'] = this.sqootUrl;
    } else {
      json[r'sqootUrl'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.subDetails != null) {
      json[r'subDetails'] = this.subDetails;
    } else {
      json[r'subDetails'] = null;
    }
    if (this.externalRedeemAuth != null) {
      json[r'externalRedeemAuth'] = this.externalRedeemAuth;
    } else {
      json[r'externalRedeemAuth'] = null;
    }
    if (this.externalRedeemOptions != null) {
      json[r'externalRedeemOptions'] = this.externalRedeemOptions;
    } else {
      json[r'externalRedeemOptions'] = null;
    }
    if (this.publisher != null) {
      json[r'publisher'] = this.publisher;
    } else {
      json[r'publisher'] = null;
    }
    if (this.product != null) {
      json[r'product'] = this.product;
    } else {
      json[r'product'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.media != null) {
      json[r'media'] = this.media;
    } else {
      json[r'media'] = null;
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
    if (this.addedLimit != null) {
      json[r'addedLimit'] = this.addedLimit;
    } else {
      json[r'addedLimit'] = null;
    }
    if (this.addedCount != null) {
      json[r'addedCount'] = this.addedCount;
    } else {
      json[r'addedCount'] = null;
    }
    if (this.usedCount != null) {
      json[r'usedCount'] = this.usedCount;
    } else {
      json[r'usedCount'] = null;
    }
    if (this.removedCount != null) {
      json[r'removedCount'] = this.removedCount;
    } else {
      json[r'removedCount'] = null;
    }
    if (this.locationAddedCount != null) {
      json[r'locationAddedCount'] = this.locationAddedCount;
    } else {
      json[r'locationAddedCount'] = null;
    }
    if (this.barcodeEntry != null) {
      json[r'barcodeEntry'] = this.barcodeEntry;
    } else {
      json[r'barcodeEntry'] = null;
    }
    if (this.barcodeType != null) {
      json[r'barcodeType'] = this.barcodeType;
    } else {
      json[r'barcodeType'] = null;
    }
    if (this.ticketsReward != null) {
      json[r'ticketsReward'] = this.ticketsReward;
    } else {
      json[r'ticketsReward'] = null;
    }
    if (this.ticketsRewardType != null) {
      json[r'ticketsRewardType'] = this.ticketsRewardType;
    } else {
      json[r'ticketsRewardType'] = null;
    }
    if (this.specialOfferType != null) {
      json[r'specialOfferType'] = this.specialOfferType;
    } else {
      json[r'specialOfferType'] = null;
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
    if (this.favoriteCount != null) {
      json[r'favoriteCount'] = this.favoriteCount;
    } else {
      json[r'favoriteCount'] = null;
    }
    if (this.noteCount != null) {
      json[r'noteCount'] = this.noteCount;
    } else {
      json[r'noteCount'] = null;
    }
    if (this.logId != null) {
      json[r'logId'] = this.logId;
    } else {
      json[r'logId'] = null;
    }
    if (this.billableEntityId != null) {
      json[r'billableEntityId'] = this.billableEntityId;
    } else {
      json[r'billableEntityId'] = null;
    }
    if (this.responsibleAccountId != null) {
      json[r'responsibleAccountId'] = this.responsibleAccountId;
    } else {
      json[r'responsibleAccountId'] = null;
    }
    if (this.availabilitySummary != null) {
      json[r'availabilitySummary'] = this.availabilitySummary;
    } else {
      json[r'availabilitySummary'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.parentOffer != null) {
      json[r'parentOffer'] = this.parentOffer;
    } else {
      json[r'parentOffer'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
    if (this.finePrint != null) {
      json[r'finePrint'] = this.finePrint;
    } else {
      json[r'finePrint'] = null;
    }
    if (this.retailerPhoneNumber != null) {
      json[r'retailerPhoneNumber'] = this.retailerPhoneNumber;
    } else {
      json[r'retailerPhoneNumber'] = null;
    }
    if (this.ticketPriceType != null) {
      json[r'ticketPriceType'] = this.ticketPriceType;
    } else {
      json[r'ticketPriceType'] = null;
    }
    if (this.ticketPrice != null) {
      json[r'ticketPrice'] = this.ticketPrice;
    } else {
      json[r'ticketPrice'] = null;
    }
    if (this.discountPercentage != null) {
      json[r'discountPercentage'] = this.discountPercentage;
    } else {
      json[r'discountPercentage'] = null;
    }
    if (this.paymentFees != null) {
      json[r'paymentFees'] = this.paymentFees;
    } else {
      json[r'paymentFees'] = null;
    }
    if (this.voucherPrice != null) {
      json[r'voucherPrice'] = this.voucherPrice;
    } else {
      json[r'voucherPrice'] = null;
    }
    if (this.purchasesRemaining != null) {
      json[r'purchasesRemaining'] = this.purchasesRemaining;
    } else {
      json[r'purchasesRemaining'] = null;
    }
    if (this.redemptionsRemaining != null) {
      json[r'redemptionsRemaining'] = this.redemptionsRemaining;
    } else {
      json[r'redemptionsRemaining'] = null;
    }
    if (this.redemptionStatus != null) {
      json[r'redemptionStatus'] = this.redemptionStatus;
    } else {
      json[r'redemptionStatus'] = null;
    }
    if (this.redemptionCode != null) {
      json[r'redemptionCode'] = this.redemptionCode;
    } else {
      json[r'redemptionCode'] = null;
    }
      json[r'audiences'] = this.audiences;
    if (this.audienceCount != null) {
      json[r'audienceCount'] = this.audienceCount;
    } else {
      json[r'audienceCount'] = null;
    }
    if (this.walletCount != null) {
      json[r'walletCount'] = this.walletCount;
    } else {
      json[r'walletCount'] = null;
    }
    if (this.qrCodeUrl != null) {
      json[r'qrCodeUrl'] = this.qrCodeUrl;
    } else {
      json[r'qrCodeUrl'] = null;
    }
    if (this.showRemaining != null) {
      json[r'showRemaining'] = this.showRemaining;
    } else {
      json[r'showRemaining'] = null;
    }
    if (this.showRedeemed != null) {
      json[r'showRedeemed'] = this.showRedeemed;
    } else {
      json[r'showRedeemed'] = null;
    }
    if (this.purchaseLimit != null) {
      json[r'purchaseLimit'] = this.purchaseLimit;
    } else {
      json[r'purchaseLimit'] = null;
    }
    if (this.purchaseLimitPerUser != null) {
      json[r'purchaseLimitPerUser'] = this.purchaseLimitPerUser;
    } else {
      json[r'purchaseLimitPerUser'] = null;
    }
    if (this.redemptionLimit != null) {
      json[r'redemptionLimit'] = this.redemptionLimit;
    } else {
      json[r'redemptionLimit'] = null;
    }
    if (this.userRedemptionLimit != null) {
      json[r'userRedemptionLimit'] = this.userRedemptionLimit;
    } else {
      json[r'userRedemptionLimit'] = null;
    }
      json[r'categories'] = this.categories;
      json[r'filters'] = this.filters;
    if (this.returning != null) {
      json[r'returning'] = this.returning;
    } else {
      json[r'returning'] = null;
    }
    return json;
  }

  /// Returns a new [OfferResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OfferResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OfferResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OfferResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OfferResponse(
        valid: mapValueOfType<bool>(json, r'valid'),
        message: mapValueOfType<String>(json, r'message'),
        version: mapValueOfType<double>(json, r'version'),
        serializeNulls: mapValueOfType<bool>(json, r'serializeNulls'),
        startTimeLog: mapValueOfType<int>(json, r'startTimeLog'),
        errorCode: mapValueOfType<String>(json, r'errorCode'),
        request: NameStringValueResponse.listFromJson(json[r'request']),
        offerLocationId: mapValueOfType<int>(json, r'offerLocationId'),
        offerId: mapValueOfType<int>(json, r'offerId'),
        retailerId: mapValueOfType<int>(json, r'retailerId'),
        transactionId: mapValueOfType<int>(json, r'transactionId'),
        favoriteId: mapValueOfType<int>(json, r'favoriteId'),
        offerName: mapValueOfType<String>(json, r'offerName'),
        subTitle: mapValueOfType<String>(json, r'subTitle'),
        locationName: mapValueOfType<String>(json, r'locationName'),
        starts: mapDateTime(json, r'starts', r''),
        expires: mapDateTime(json, r'expires', r''),
        activated: mapValueOfType<int>(json, r'activated'),
        expiration: mapValueOfType<int>(json, r'expiration'),
        redeemableStart: mapValueOfType<int>(json, r'redeemableStart'),
        redeemableEnd: mapValueOfType<int>(json, r'redeemableEnd'),
        distance: mapValueOfType<double>(json, r'distance'),
        offerType: mapValueOfType<String>(json, r'offerType'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        favorite: mapValueOfType<bool>(json, r'favorite'),
        fullPrice: mapValueOfType<double>(json, r'fullPrice'),
        discountPrice: mapValueOfType<double>(json, r'discountPrice'),
        estimatedValue: mapValueOfType<double>(json, r'estimatedValue'),
        voucherDiscountPrice: mapValueOfType<double>(json, r'voucherDiscountPrice'),
        missionListResponse: MissionListResponse.fromJson(json[r'missionListResponse']),
        image: mapValueOfType<String>(json, r'image'),
        image1: mapValueOfType<String>(json, r'image1'),
        image2: mapValueOfType<String>(json, r'image2'),
        image3: mapValueOfType<String>(json, r'image3'),
        image4: mapValueOfType<String>(json, r'image4'),
        image5: mapValueOfType<String>(json, r'image5'),
        images: AssetResponse.listFromJson(json[r'images']),
        barcode: mapValueOfType<String>(json, r'barcode'),
        externalUrl: mapValueOfType<String>(json, r'externalUrl'),
        sqootUrl: mapValueOfType<String>(json, r'sqootUrl'),
        active: mapValueOfType<bool>(json, r'active'),
        location: RetailerLocationResponse.fromJson(json[r'location']),
        subDetails: mapValueOfType<String>(json, r'subDetails'),
        externalRedeemAuth: mapValueOfType<int>(json, r'externalRedeemAuth'),
        externalRedeemOptions: mapValueOfType<String>(json, r'externalRedeemOptions'),
        publisher: mapValueOfType<String>(json, r'publisher'),
        product: ProductResponse.fromJson(json[r'product']),
        event: EventResponse.fromJson(json[r'event']),
        media: MediaResponse.fromJson(json[r'media']),
        viewedCount: mapValueOfType<int>(json, r'viewedCount'),
        clickedCount: mapValueOfType<int>(json, r'clickedCount'),
        addedLimit: mapValueOfType<int>(json, r'addedLimit'),
        addedCount: mapValueOfType<int>(json, r'addedCount'),
        usedCount: mapValueOfType<int>(json, r'usedCount'),
        removedCount: mapValueOfType<int>(json, r'removedCount'),
        locationAddedCount: mapValueOfType<int>(json, r'locationAddedCount'),
        barcodeEntry: mapValueOfType<String>(json, r'barcodeEntry'),
        barcodeType: OfferResponseBarcodeTypeEnum.fromJson(json[r'barcodeType']),
        ticketsReward: mapValueOfType<int>(json, r'ticketsReward'),
        ticketsRewardType: mapValueOfType<String>(json, r'ticketsRewardType'),
        specialOfferType: OfferResponseSpecialOfferTypeEnum.fromJson(json[r'specialOfferType']),
        likeCount: mapValueOfType<int>(json, r'likeCount'),
        dislikeCount: mapValueOfType<int>(json, r'dislikeCount'),
        favoriteCount: mapValueOfType<int>(json, r'favoriteCount'),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        logId: mapValueOfType<int>(json, r'logId'),
        billableEntityId: mapValueOfType<int>(json, r'billableEntityId'),
        responsibleAccountId: mapValueOfType<int>(json, r'responsibleAccountId'),
        availabilitySummary: mapValueOfType<String>(json, r'availabilitySummary'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        parentOffer: OfferShortResponse.fromJson(json[r'parentOffer']),
        address: mapValueOfType<String>(json, r'address'),
        details: mapValueOfType<String>(json, r'details'),
        finePrint: mapValueOfType<String>(json, r'finePrint'),
        retailerPhoneNumber: mapValueOfType<String>(json, r'retailerPhoneNumber'),
        ticketPriceType: mapValueOfType<String>(json, r'ticketPriceType'),
        ticketPrice: mapValueOfType<int>(json, r'ticketPrice'),
        discountPercentage: mapValueOfType<double>(json, r'discountPercentage'),
        paymentFees: mapValueOfType<double>(json, r'paymentFees'),
        voucherPrice: mapValueOfType<double>(json, r'voucherPrice'),
        purchasesRemaining: mapValueOfType<int>(json, r'purchasesRemaining'),
        redemptionsRemaining: mapValueOfType<int>(json, r'redemptionsRemaining'),
        redemptionStatus: mapValueOfType<int>(json, r'redemptionStatus'),
        redemptionCode: mapValueOfType<String>(json, r'redemptionCode'),
        audiences: AudienceResponse.listFromJson(json[r'audiences']),
        audienceCount: mapValueOfType<int>(json, r'audienceCount'),
        walletCount: mapValueOfType<int>(json, r'walletCount'),
        qrCodeUrl: mapValueOfType<String>(json, r'qrCodeUrl'),
        showRemaining: mapValueOfType<bool>(json, r'showRemaining'),
        showRedeemed: mapValueOfType<bool>(json, r'showRedeemed'),
        purchaseLimit: mapValueOfType<int>(json, r'purchaseLimit'),
        purchaseLimitPerUser: mapValueOfType<int>(json, r'purchaseLimitPerUser'),
        redemptionLimit: mapValueOfType<int>(json, r'redemptionLimit'),
        userRedemptionLimit: mapValueOfType<int>(json, r'userRedemptionLimit'),
        categories: CategoryResponse.listFromJson(json[r'categories']),
        filters: FilterResponse.listFromJson(json[r'filters']),
        returning: mapValueOfType<String>(json, r'returning'),
      );
    }
    return null;
  }

  static List<OfferResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OfferResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OfferResponse> mapFromJson(dynamic json) {
    final map = <String, OfferResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OfferResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OfferResponse-objects as value to a dart map
  static Map<String, List<OfferResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OfferResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OfferResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class OfferResponseBarcodeTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OfferResponseBarcodeTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = OfferResponseBarcodeTypeEnum._(r'NONE');
  static const UPC = OfferResponseBarcodeTypeEnum._(r'UPC');
  static const cODE128 = OfferResponseBarcodeTypeEnum._(r'CODE_128');
  static const QR = OfferResponseBarcodeTypeEnum._(r'QR');
  static const CUSTOM_MEDIA = OfferResponseBarcodeTypeEnum._(r'CUSTOM_MEDIA');

  /// List of all possible values in this [enum][OfferResponseBarcodeTypeEnum].
  static const values = <OfferResponseBarcodeTypeEnum>[
    NONE,
    UPC,
    cODE128,
    QR,
    CUSTOM_MEDIA,
  ];

  static OfferResponseBarcodeTypeEnum? fromJson(dynamic value) => OfferResponseBarcodeTypeEnumTypeTransformer().decode(value);

  static List<OfferResponseBarcodeTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OfferResponseBarcodeTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferResponseBarcodeTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OfferResponseBarcodeTypeEnum] to String,
/// and [decode] dynamic data back to [OfferResponseBarcodeTypeEnum].
class OfferResponseBarcodeTypeEnumTypeTransformer {
  factory OfferResponseBarcodeTypeEnumTypeTransformer() => _instance ??= const OfferResponseBarcodeTypeEnumTypeTransformer._();

  const OfferResponseBarcodeTypeEnumTypeTransformer._();

  String encode(OfferResponseBarcodeTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OfferResponseBarcodeTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OfferResponseBarcodeTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return OfferResponseBarcodeTypeEnum.NONE;
        case r'UPC': return OfferResponseBarcodeTypeEnum.UPC;
        case r'CODE_128': return OfferResponseBarcodeTypeEnum.cODE128;
        case r'QR': return OfferResponseBarcodeTypeEnum.QR;
        case r'CUSTOM_MEDIA': return OfferResponseBarcodeTypeEnum.CUSTOM_MEDIA;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OfferResponseBarcodeTypeEnumTypeTransformer] instance.
  static OfferResponseBarcodeTypeEnumTypeTransformer? _instance;
}



class OfferResponseSpecialOfferTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OfferResponseSpecialOfferTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALL = OfferResponseSpecialOfferTypeEnum._(r'ALL');
  static const RESERVABLE = OfferResponseSpecialOfferTypeEnum._(r'RESERVABLE');
  static const REGULAR_OFFER = OfferResponseSpecialOfferTypeEnum._(r'REGULAR_OFFER');
  static const ACT_NOW = OfferResponseSpecialOfferTypeEnum._(r'ACT_NOW');
  static const GET_THERE_NOW = OfferResponseSpecialOfferTypeEnum._(r'GET_THERE_NOW');
  static const SQOOT = OfferResponseSpecialOfferTypeEnum._(r'SQOOT');
  static const TICKETS = OfferResponseSpecialOfferTypeEnum._(r'TICKETS');
  static const YIPIT = OfferResponseSpecialOfferTypeEnum._(r'YIPIT');

  /// List of all possible values in this [enum][OfferResponseSpecialOfferTypeEnum].
  static const values = <OfferResponseSpecialOfferTypeEnum>[
    ALL,
    RESERVABLE,
    REGULAR_OFFER,
    ACT_NOW,
    GET_THERE_NOW,
    SQOOT,
    TICKETS,
    YIPIT,
  ];

  static OfferResponseSpecialOfferTypeEnum? fromJson(dynamic value) => OfferResponseSpecialOfferTypeEnumTypeTransformer().decode(value);

  static List<OfferResponseSpecialOfferTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OfferResponseSpecialOfferTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferResponseSpecialOfferTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OfferResponseSpecialOfferTypeEnum] to String,
/// and [decode] dynamic data back to [OfferResponseSpecialOfferTypeEnum].
class OfferResponseSpecialOfferTypeEnumTypeTransformer {
  factory OfferResponseSpecialOfferTypeEnumTypeTransformer() => _instance ??= const OfferResponseSpecialOfferTypeEnumTypeTransformer._();

  const OfferResponseSpecialOfferTypeEnumTypeTransformer._();

  String encode(OfferResponseSpecialOfferTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OfferResponseSpecialOfferTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OfferResponseSpecialOfferTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALL': return OfferResponseSpecialOfferTypeEnum.ALL;
        case r'RESERVABLE': return OfferResponseSpecialOfferTypeEnum.RESERVABLE;
        case r'REGULAR_OFFER': return OfferResponseSpecialOfferTypeEnum.REGULAR_OFFER;
        case r'ACT_NOW': return OfferResponseSpecialOfferTypeEnum.ACT_NOW;
        case r'GET_THERE_NOW': return OfferResponseSpecialOfferTypeEnum.GET_THERE_NOW;
        case r'SQOOT': return OfferResponseSpecialOfferTypeEnum.SQOOT;
        case r'TICKETS': return OfferResponseSpecialOfferTypeEnum.TICKETS;
        case r'YIPIT': return OfferResponseSpecialOfferTypeEnum.YIPIT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OfferResponseSpecialOfferTypeEnumTypeTransformer] instance.
  static OfferResponseSpecialOfferTypeEnumTypeTransformer? _instance;
}


