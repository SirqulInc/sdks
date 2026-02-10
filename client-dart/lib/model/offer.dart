//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Offer {
  /// Returns a new [Offer] instance.
  Offer({
    this.id,
    this.active,
    this.valid,
    this.testField,
    this.billableEntity,
    this.offerLocations = const [],
    this.missions = const [],
    this.activated,
    this.expires,
    this.redeemableStart,
    this.redeemableEnd,
    this.title,
    this.subTitle,
    this.type,
    this.specialOfferType,
    this.details,
    this.subDetails,
    this.finePrint,
    this.getThereNowNotification,
    this.maxPrints,
    this.viewLimit,
    this.featured,
    this.replaced,
    this.showRemaining,
    this.showRedeemed,
    this.parentOffer,
    this.artwork,
    this.offerImage1,
    this.offerImage2,
    this.offerImage3,
    this.offerImage4,
    this.offerImage5,
    this.barCode,
    this.barCodeType,
    this.barCodeEntry,
    this.categories = const [],
    this.filters = const [],
    this.ticketType,
    this.allocateTickets,
    this.ticketPriceType,
    this.ticketPrice,
    this.fullPrice,
    this.discountPrice,
    this.availableLimit,
    this.availableLimitPerUser,
    this.addedLimit,
    this.usedCount,
    this.addedCount,
    this.removedCount,
    this.viewedCount,
    this.clickedCount,
    this.offerVisibility,
    this.offerProcessorId,
    this.externalId,
    this.externalUrl,
    this.externalUntrackedUrl,
    this.sqootId,
    this.sqootUrl,
    this.sqootCategorySlug,
    this.sqootCategoryName,
    this.yipitId,
    this.redeemAuthOptions,
    this.publisher,
    this.product,
    this.media,
    this.event,
    this.device,
    this.notes = const [],
    this.noteCount,
    this.favoriteCount,
    this.hasRatings,
    this.likes = const [],
    this.likeCount,
    this.dislikeCount,
    this.availabilitySummary,
    this.flags = const [],
    this.flagCount,
    this.flagThreshold,
    this.savings,
    this.clickStream,
    this.ticketCount,
    this.display,
    this.appKey,
    this.categoryTree,
    this.filterTree,
    this.indexable,
    this.billableId,
    this.subType,
    this.contentName,
    this.defaultThreshold,
    this.contentAsset,
    this.owner,
    this.secondaryType,
    this.discountPercentage,
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
  String? testField;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BillableEntity? billableEntity;

  List<OfferLocation> offerLocations;

  List<Mission> missions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? activated;

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
  DateTime? redeemableStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? redeemableEnd;

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
  String? subTitle;

  OfferTypeEnum? type;

  OfferSpecialOfferTypeEnum? specialOfferType;

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
  String? subDetails;

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
  String? getThereNowNotification;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxPrints;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? viewLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? featured;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? replaced;

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
  Offer? parentOffer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? artwork;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? offerImage1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? offerImage2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? offerImage3;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? offerImage4;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? offerImage5;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Asset? barCode;

  OfferBarCodeTypeEnum? barCodeType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? barCodeEntry;

  List<Category> categories;

  List<Filter> filters;

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
  bool? allocateTickets;

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
  int? availableLimit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? availableLimitPerUser;

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
  int? usedCount;

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
  int? removedCount;

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

  OfferOfferVisibilityEnum? offerVisibility;

  OfferOfferProcessorIdEnum? offerProcessorId;

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
  String? externalUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalUntrackedUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sqootId;

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
  String? sqootCategorySlug;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sqootCategoryName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? yipitId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redeemAuthOptions;

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
  Product? product;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Media? media;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Event? event;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Device? device;

  List<Note> notes;

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
  int? favoriteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasRatings;

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
  String? availabilitySummary;

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
  double? savings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? clickStream;

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
  String? categoryTree;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filterTree;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? indexable;

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
  Account? owner;

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
  double? discountPercentage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Offer &&
    other.id == id &&
    other.active == active &&
    other.valid == valid &&
    other.testField == testField &&
    other.billableEntity == billableEntity &&
    _deepEquality.equals(other.offerLocations, offerLocations) &&
    _deepEquality.equals(other.missions, missions) &&
    other.activated == activated &&
    other.expires == expires &&
    other.redeemableStart == redeemableStart &&
    other.redeemableEnd == redeemableEnd &&
    other.title == title &&
    other.subTitle == subTitle &&
    other.type == type &&
    other.specialOfferType == specialOfferType &&
    other.details == details &&
    other.subDetails == subDetails &&
    other.finePrint == finePrint &&
    other.getThereNowNotification == getThereNowNotification &&
    other.maxPrints == maxPrints &&
    other.viewLimit == viewLimit &&
    other.featured == featured &&
    other.replaced == replaced &&
    other.showRemaining == showRemaining &&
    other.showRedeemed == showRedeemed &&
    other.parentOffer == parentOffer &&
    other.artwork == artwork &&
    other.offerImage1 == offerImage1 &&
    other.offerImage2 == offerImage2 &&
    other.offerImage3 == offerImage3 &&
    other.offerImage4 == offerImage4 &&
    other.offerImage5 == offerImage5 &&
    other.barCode == barCode &&
    other.barCodeType == barCodeType &&
    other.barCodeEntry == barCodeEntry &&
    _deepEquality.equals(other.categories, categories) &&
    _deepEquality.equals(other.filters, filters) &&
    other.ticketType == ticketType &&
    other.allocateTickets == allocateTickets &&
    other.ticketPriceType == ticketPriceType &&
    other.ticketPrice == ticketPrice &&
    other.fullPrice == fullPrice &&
    other.discountPrice == discountPrice &&
    other.availableLimit == availableLimit &&
    other.availableLimitPerUser == availableLimitPerUser &&
    other.addedLimit == addedLimit &&
    other.usedCount == usedCount &&
    other.addedCount == addedCount &&
    other.removedCount == removedCount &&
    other.viewedCount == viewedCount &&
    other.clickedCount == clickedCount &&
    other.offerVisibility == offerVisibility &&
    other.offerProcessorId == offerProcessorId &&
    other.externalId == externalId &&
    other.externalUrl == externalUrl &&
    other.externalUntrackedUrl == externalUntrackedUrl &&
    other.sqootId == sqootId &&
    other.sqootUrl == sqootUrl &&
    other.sqootCategorySlug == sqootCategorySlug &&
    other.sqootCategoryName == sqootCategoryName &&
    other.yipitId == yipitId &&
    other.redeemAuthOptions == redeemAuthOptions &&
    other.publisher == publisher &&
    other.product == product &&
    other.media == media &&
    other.event == event &&
    other.device == device &&
    _deepEquality.equals(other.notes, notes) &&
    other.noteCount == noteCount &&
    other.favoriteCount == favoriteCount &&
    other.hasRatings == hasRatings &&
    _deepEquality.equals(other.likes, likes) &&
    other.likeCount == likeCount &&
    other.dislikeCount == dislikeCount &&
    other.availabilitySummary == availabilitySummary &&
    _deepEquality.equals(other.flags, flags) &&
    other.flagCount == flagCount &&
    other.flagThreshold == flagThreshold &&
    other.savings == savings &&
    other.clickStream == clickStream &&
    other.ticketCount == ticketCount &&
    other.display == display &&
    other.appKey == appKey &&
    other.categoryTree == categoryTree &&
    other.filterTree == filterTree &&
    other.indexable == indexable &&
    other.billableId == billableId &&
    other.subType == subType &&
    other.contentName == contentName &&
    other.defaultThreshold == defaultThreshold &&
    other.contentAsset == contentAsset &&
    other.owner == owner &&
    other.secondaryType == secondaryType &&
    other.discountPercentage == discountPercentage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (valid == null ? 0 : valid!.hashCode) +
    (testField == null ? 0 : testField!.hashCode) +
    (billableEntity == null ? 0 : billableEntity!.hashCode) +
    (offerLocations.hashCode) +
    (missions.hashCode) +
    (activated == null ? 0 : activated!.hashCode) +
    (expires == null ? 0 : expires!.hashCode) +
    (redeemableStart == null ? 0 : redeemableStart!.hashCode) +
    (redeemableEnd == null ? 0 : redeemableEnd!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (subTitle == null ? 0 : subTitle!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (specialOfferType == null ? 0 : specialOfferType!.hashCode) +
    (details == null ? 0 : details!.hashCode) +
    (subDetails == null ? 0 : subDetails!.hashCode) +
    (finePrint == null ? 0 : finePrint!.hashCode) +
    (getThereNowNotification == null ? 0 : getThereNowNotification!.hashCode) +
    (maxPrints == null ? 0 : maxPrints!.hashCode) +
    (viewLimit == null ? 0 : viewLimit!.hashCode) +
    (featured == null ? 0 : featured!.hashCode) +
    (replaced == null ? 0 : replaced!.hashCode) +
    (showRemaining == null ? 0 : showRemaining!.hashCode) +
    (showRedeemed == null ? 0 : showRedeemed!.hashCode) +
    (parentOffer == null ? 0 : parentOffer!.hashCode) +
    (artwork == null ? 0 : artwork!.hashCode) +
    (offerImage1 == null ? 0 : offerImage1!.hashCode) +
    (offerImage2 == null ? 0 : offerImage2!.hashCode) +
    (offerImage3 == null ? 0 : offerImage3!.hashCode) +
    (offerImage4 == null ? 0 : offerImage4!.hashCode) +
    (offerImage5 == null ? 0 : offerImage5!.hashCode) +
    (barCode == null ? 0 : barCode!.hashCode) +
    (barCodeType == null ? 0 : barCodeType!.hashCode) +
    (barCodeEntry == null ? 0 : barCodeEntry!.hashCode) +
    (categories.hashCode) +
    (filters.hashCode) +
    (ticketType == null ? 0 : ticketType!.hashCode) +
    (allocateTickets == null ? 0 : allocateTickets!.hashCode) +
    (ticketPriceType == null ? 0 : ticketPriceType!.hashCode) +
    (ticketPrice == null ? 0 : ticketPrice!.hashCode) +
    (fullPrice == null ? 0 : fullPrice!.hashCode) +
    (discountPrice == null ? 0 : discountPrice!.hashCode) +
    (availableLimit == null ? 0 : availableLimit!.hashCode) +
    (availableLimitPerUser == null ? 0 : availableLimitPerUser!.hashCode) +
    (addedLimit == null ? 0 : addedLimit!.hashCode) +
    (usedCount == null ? 0 : usedCount!.hashCode) +
    (addedCount == null ? 0 : addedCount!.hashCode) +
    (removedCount == null ? 0 : removedCount!.hashCode) +
    (viewedCount == null ? 0 : viewedCount!.hashCode) +
    (clickedCount == null ? 0 : clickedCount!.hashCode) +
    (offerVisibility == null ? 0 : offerVisibility!.hashCode) +
    (offerProcessorId == null ? 0 : offerProcessorId!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (externalUrl == null ? 0 : externalUrl!.hashCode) +
    (externalUntrackedUrl == null ? 0 : externalUntrackedUrl!.hashCode) +
    (sqootId == null ? 0 : sqootId!.hashCode) +
    (sqootUrl == null ? 0 : sqootUrl!.hashCode) +
    (sqootCategorySlug == null ? 0 : sqootCategorySlug!.hashCode) +
    (sqootCategoryName == null ? 0 : sqootCategoryName!.hashCode) +
    (yipitId == null ? 0 : yipitId!.hashCode) +
    (redeemAuthOptions == null ? 0 : redeemAuthOptions!.hashCode) +
    (publisher == null ? 0 : publisher!.hashCode) +
    (product == null ? 0 : product!.hashCode) +
    (media == null ? 0 : media!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (device == null ? 0 : device!.hashCode) +
    (notes.hashCode) +
    (noteCount == null ? 0 : noteCount!.hashCode) +
    (favoriteCount == null ? 0 : favoriteCount!.hashCode) +
    (hasRatings == null ? 0 : hasRatings!.hashCode) +
    (likes.hashCode) +
    (likeCount == null ? 0 : likeCount!.hashCode) +
    (dislikeCount == null ? 0 : dislikeCount!.hashCode) +
    (availabilitySummary == null ? 0 : availabilitySummary!.hashCode) +
    (flags.hashCode) +
    (flagCount == null ? 0 : flagCount!.hashCode) +
    (flagThreshold == null ? 0 : flagThreshold!.hashCode) +
    (savings == null ? 0 : savings!.hashCode) +
    (clickStream == null ? 0 : clickStream!.hashCode) +
    (ticketCount == null ? 0 : ticketCount!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (appKey == null ? 0 : appKey!.hashCode) +
    (categoryTree == null ? 0 : categoryTree!.hashCode) +
    (filterTree == null ? 0 : filterTree!.hashCode) +
    (indexable == null ? 0 : indexable!.hashCode) +
    (billableId == null ? 0 : billableId!.hashCode) +
    (subType == null ? 0 : subType!.hashCode) +
    (contentName == null ? 0 : contentName!.hashCode) +
    (defaultThreshold == null ? 0 : defaultThreshold!.hashCode) +
    (contentAsset == null ? 0 : contentAsset!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (secondaryType == null ? 0 : secondaryType!.hashCode) +
    (discountPercentage == null ? 0 : discountPercentage!.hashCode);

  @override
  String toString() => 'Offer[id=$id, active=$active, valid=$valid, testField=$testField, billableEntity=$billableEntity, offerLocations=$offerLocations, missions=$missions, activated=$activated, expires=$expires, redeemableStart=$redeemableStart, redeemableEnd=$redeemableEnd, title=$title, subTitle=$subTitle, type=$type, specialOfferType=$specialOfferType, details=$details, subDetails=$subDetails, finePrint=$finePrint, getThereNowNotification=$getThereNowNotification, maxPrints=$maxPrints, viewLimit=$viewLimit, featured=$featured, replaced=$replaced, showRemaining=$showRemaining, showRedeemed=$showRedeemed, parentOffer=$parentOffer, artwork=$artwork, offerImage1=$offerImage1, offerImage2=$offerImage2, offerImage3=$offerImage3, offerImage4=$offerImage4, offerImage5=$offerImage5, barCode=$barCode, barCodeType=$barCodeType, barCodeEntry=$barCodeEntry, categories=$categories, filters=$filters, ticketType=$ticketType, allocateTickets=$allocateTickets, ticketPriceType=$ticketPriceType, ticketPrice=$ticketPrice, fullPrice=$fullPrice, discountPrice=$discountPrice, availableLimit=$availableLimit, availableLimitPerUser=$availableLimitPerUser, addedLimit=$addedLimit, usedCount=$usedCount, addedCount=$addedCount, removedCount=$removedCount, viewedCount=$viewedCount, clickedCount=$clickedCount, offerVisibility=$offerVisibility, offerProcessorId=$offerProcessorId, externalId=$externalId, externalUrl=$externalUrl, externalUntrackedUrl=$externalUntrackedUrl, sqootId=$sqootId, sqootUrl=$sqootUrl, sqootCategorySlug=$sqootCategorySlug, sqootCategoryName=$sqootCategoryName, yipitId=$yipitId, redeemAuthOptions=$redeemAuthOptions, publisher=$publisher, product=$product, media=$media, event=$event, device=$device, notes=$notes, noteCount=$noteCount, favoriteCount=$favoriteCount, hasRatings=$hasRatings, likes=$likes, likeCount=$likeCount, dislikeCount=$dislikeCount, availabilitySummary=$availabilitySummary, flags=$flags, flagCount=$flagCount, flagThreshold=$flagThreshold, savings=$savings, clickStream=$clickStream, ticketCount=$ticketCount, display=$display, appKey=$appKey, categoryTree=$categoryTree, filterTree=$filterTree, indexable=$indexable, billableId=$billableId, subType=$subType, contentName=$contentName, defaultThreshold=$defaultThreshold, contentAsset=$contentAsset, owner=$owner, secondaryType=$secondaryType, discountPercentage=$discountPercentage]';

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
    if (this.testField != null) {
      json[r'testField'] = this.testField;
    } else {
      json[r'testField'] = null;
    }
    if (this.billableEntity != null) {
      json[r'billableEntity'] = this.billableEntity;
    } else {
      json[r'billableEntity'] = null;
    }
      json[r'offerLocations'] = this.offerLocations;
      json[r'missions'] = this.missions;
    if (this.activated != null) {
      json[r'activated'] = this.activated!.toUtc().toIso8601String();
    } else {
      json[r'activated'] = null;
    }
    if (this.expires != null) {
      json[r'expires'] = this.expires!.toUtc().toIso8601String();
    } else {
      json[r'expires'] = null;
    }
    if (this.redeemableStart != null) {
      json[r'redeemableStart'] = this.redeemableStart!.toUtc().toIso8601String();
    } else {
      json[r'redeemableStart'] = null;
    }
    if (this.redeemableEnd != null) {
      json[r'redeemableEnd'] = this.redeemableEnd!.toUtc().toIso8601String();
    } else {
      json[r'redeemableEnd'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.subTitle != null) {
      json[r'subTitle'] = this.subTitle;
    } else {
      json[r'subTitle'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.specialOfferType != null) {
      json[r'specialOfferType'] = this.specialOfferType;
    } else {
      json[r'specialOfferType'] = null;
    }
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
    if (this.subDetails != null) {
      json[r'subDetails'] = this.subDetails;
    } else {
      json[r'subDetails'] = null;
    }
    if (this.finePrint != null) {
      json[r'finePrint'] = this.finePrint;
    } else {
      json[r'finePrint'] = null;
    }
    if (this.getThereNowNotification != null) {
      json[r'getThereNowNotification'] = this.getThereNowNotification;
    } else {
      json[r'getThereNowNotification'] = null;
    }
    if (this.maxPrints != null) {
      json[r'maxPrints'] = this.maxPrints;
    } else {
      json[r'maxPrints'] = null;
    }
    if (this.viewLimit != null) {
      json[r'viewLimit'] = this.viewLimit;
    } else {
      json[r'viewLimit'] = null;
    }
    if (this.featured != null) {
      json[r'featured'] = this.featured;
    } else {
      json[r'featured'] = null;
    }
    if (this.replaced != null) {
      json[r'replaced'] = this.replaced;
    } else {
      json[r'replaced'] = null;
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
    if (this.parentOffer != null) {
      json[r'parentOffer'] = this.parentOffer;
    } else {
      json[r'parentOffer'] = null;
    }
    if (this.artwork != null) {
      json[r'artwork'] = this.artwork;
    } else {
      json[r'artwork'] = null;
    }
    if (this.offerImage1 != null) {
      json[r'offerImage1'] = this.offerImage1;
    } else {
      json[r'offerImage1'] = null;
    }
    if (this.offerImage2 != null) {
      json[r'offerImage2'] = this.offerImage2;
    } else {
      json[r'offerImage2'] = null;
    }
    if (this.offerImage3 != null) {
      json[r'offerImage3'] = this.offerImage3;
    } else {
      json[r'offerImage3'] = null;
    }
    if (this.offerImage4 != null) {
      json[r'offerImage4'] = this.offerImage4;
    } else {
      json[r'offerImage4'] = null;
    }
    if (this.offerImage5 != null) {
      json[r'offerImage5'] = this.offerImage5;
    } else {
      json[r'offerImage5'] = null;
    }
    if (this.barCode != null) {
      json[r'barCode'] = this.barCode;
    } else {
      json[r'barCode'] = null;
    }
    if (this.barCodeType != null) {
      json[r'barCodeType'] = this.barCodeType;
    } else {
      json[r'barCodeType'] = null;
    }
    if (this.barCodeEntry != null) {
      json[r'barCodeEntry'] = this.barCodeEntry;
    } else {
      json[r'barCodeEntry'] = null;
    }
      json[r'categories'] = this.categories;
      json[r'filters'] = this.filters;
    if (this.ticketType != null) {
      json[r'ticketType'] = this.ticketType;
    } else {
      json[r'ticketType'] = null;
    }
    if (this.allocateTickets != null) {
      json[r'allocateTickets'] = this.allocateTickets;
    } else {
      json[r'allocateTickets'] = null;
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
    if (this.availableLimit != null) {
      json[r'availableLimit'] = this.availableLimit;
    } else {
      json[r'availableLimit'] = null;
    }
    if (this.availableLimitPerUser != null) {
      json[r'availableLimitPerUser'] = this.availableLimitPerUser;
    } else {
      json[r'availableLimitPerUser'] = null;
    }
    if (this.addedLimit != null) {
      json[r'addedLimit'] = this.addedLimit;
    } else {
      json[r'addedLimit'] = null;
    }
    if (this.usedCount != null) {
      json[r'usedCount'] = this.usedCount;
    } else {
      json[r'usedCount'] = null;
    }
    if (this.addedCount != null) {
      json[r'addedCount'] = this.addedCount;
    } else {
      json[r'addedCount'] = null;
    }
    if (this.removedCount != null) {
      json[r'removedCount'] = this.removedCount;
    } else {
      json[r'removedCount'] = null;
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
    if (this.offerVisibility != null) {
      json[r'offerVisibility'] = this.offerVisibility;
    } else {
      json[r'offerVisibility'] = null;
    }
    if (this.offerProcessorId != null) {
      json[r'offerProcessorId'] = this.offerProcessorId;
    } else {
      json[r'offerProcessorId'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.externalUrl != null) {
      json[r'externalUrl'] = this.externalUrl;
    } else {
      json[r'externalUrl'] = null;
    }
    if (this.externalUntrackedUrl != null) {
      json[r'externalUntrackedUrl'] = this.externalUntrackedUrl;
    } else {
      json[r'externalUntrackedUrl'] = null;
    }
    if (this.sqootId != null) {
      json[r'sqootId'] = this.sqootId;
    } else {
      json[r'sqootId'] = null;
    }
    if (this.sqootUrl != null) {
      json[r'sqootUrl'] = this.sqootUrl;
    } else {
      json[r'sqootUrl'] = null;
    }
    if (this.sqootCategorySlug != null) {
      json[r'sqootCategorySlug'] = this.sqootCategorySlug;
    } else {
      json[r'sqootCategorySlug'] = null;
    }
    if (this.sqootCategoryName != null) {
      json[r'sqootCategoryName'] = this.sqootCategoryName;
    } else {
      json[r'sqootCategoryName'] = null;
    }
    if (this.yipitId != null) {
      json[r'yipitId'] = this.yipitId;
    } else {
      json[r'yipitId'] = null;
    }
    if (this.redeemAuthOptions != null) {
      json[r'redeemAuthOptions'] = this.redeemAuthOptions;
    } else {
      json[r'redeemAuthOptions'] = null;
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
    if (this.media != null) {
      json[r'media'] = this.media;
    } else {
      json[r'media'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.device != null) {
      json[r'device'] = this.device;
    } else {
      json[r'device'] = null;
    }
      json[r'notes'] = this.notes;
    if (this.noteCount != null) {
      json[r'noteCount'] = this.noteCount;
    } else {
      json[r'noteCount'] = null;
    }
    if (this.favoriteCount != null) {
      json[r'favoriteCount'] = this.favoriteCount;
    } else {
      json[r'favoriteCount'] = null;
    }
    if (this.hasRatings != null) {
      json[r'hasRatings'] = this.hasRatings;
    } else {
      json[r'hasRatings'] = null;
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
    if (this.availabilitySummary != null) {
      json[r'availabilitySummary'] = this.availabilitySummary;
    } else {
      json[r'availabilitySummary'] = null;
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
    if (this.savings != null) {
      json[r'savings'] = this.savings;
    } else {
      json[r'savings'] = null;
    }
    if (this.clickStream != null) {
      json[r'clickStream'] = this.clickStream;
    } else {
      json[r'clickStream'] = null;
    }
    if (this.ticketCount != null) {
      json[r'ticketCount'] = this.ticketCount;
    } else {
      json[r'ticketCount'] = null;
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
    if (this.categoryTree != null) {
      json[r'categoryTree'] = this.categoryTree;
    } else {
      json[r'categoryTree'] = null;
    }
    if (this.filterTree != null) {
      json[r'filterTree'] = this.filterTree;
    } else {
      json[r'filterTree'] = null;
    }
    if (this.indexable != null) {
      json[r'indexable'] = this.indexable;
    } else {
      json[r'indexable'] = null;
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
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.secondaryType != null) {
      json[r'secondaryType'] = this.secondaryType;
    } else {
      json[r'secondaryType'] = null;
    }
    if (this.discountPercentage != null) {
      json[r'discountPercentage'] = this.discountPercentage;
    } else {
      json[r'discountPercentage'] = null;
    }
    return json;
  }

  /// Returns a new [Offer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Offer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Offer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Offer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Offer(
        id: mapValueOfType<int>(json, r'id'),
        active: mapValueOfType<bool>(json, r'active'),
        valid: mapValueOfType<bool>(json, r'valid'),
        testField: mapValueOfType<String>(json, r'testField'),
        billableEntity: BillableEntity.fromJson(json[r'billableEntity']),
        offerLocations: OfferLocation.listFromJson(json[r'offerLocations']),
        missions: Mission.listFromJson(json[r'missions']),
        activated: mapDateTime(json, r'activated', r''),
        expires: mapDateTime(json, r'expires', r''),
        redeemableStart: mapDateTime(json, r'redeemableStart', r''),
        redeemableEnd: mapDateTime(json, r'redeemableEnd', r''),
        title: mapValueOfType<String>(json, r'title'),
        subTitle: mapValueOfType<String>(json, r'subTitle'),
        type: OfferTypeEnum.fromJson(json[r'type']),
        specialOfferType: OfferSpecialOfferTypeEnum.fromJson(json[r'specialOfferType']),
        details: mapValueOfType<String>(json, r'details'),
        subDetails: mapValueOfType<String>(json, r'subDetails'),
        finePrint: mapValueOfType<String>(json, r'finePrint'),
        getThereNowNotification: mapValueOfType<String>(json, r'getThereNowNotification'),
        maxPrints: mapValueOfType<int>(json, r'maxPrints'),
        viewLimit: mapValueOfType<int>(json, r'viewLimit'),
        featured: mapValueOfType<bool>(json, r'featured'),
        replaced: mapValueOfType<bool>(json, r'replaced'),
        showRemaining: mapValueOfType<bool>(json, r'showRemaining'),
        showRedeemed: mapValueOfType<bool>(json, r'showRedeemed'),
        parentOffer: Offer.fromJson(json[r'parentOffer']),
        artwork: Asset.fromJson(json[r'artwork']),
        offerImage1: Asset.fromJson(json[r'offerImage1']),
        offerImage2: Asset.fromJson(json[r'offerImage2']),
        offerImage3: Asset.fromJson(json[r'offerImage3']),
        offerImage4: Asset.fromJson(json[r'offerImage4']),
        offerImage5: Asset.fromJson(json[r'offerImage5']),
        barCode: Asset.fromJson(json[r'barCode']),
        barCodeType: OfferBarCodeTypeEnum.fromJson(json[r'barCodeType']),
        barCodeEntry: mapValueOfType<String>(json, r'barCodeEntry'),
        categories: Category.listFromJson(json[r'categories']),
        filters: Filter.listFromJson(json[r'filters']),
        ticketType: mapValueOfType<String>(json, r'ticketType'),
        allocateTickets: mapValueOfType<bool>(json, r'allocateTickets'),
        ticketPriceType: mapValueOfType<String>(json, r'ticketPriceType'),
        ticketPrice: mapValueOfType<int>(json, r'ticketPrice'),
        fullPrice: mapValueOfType<double>(json, r'fullPrice'),
        discountPrice: mapValueOfType<double>(json, r'discountPrice'),
        availableLimit: mapValueOfType<int>(json, r'availableLimit'),
        availableLimitPerUser: mapValueOfType<int>(json, r'availableLimitPerUser'),
        addedLimit: mapValueOfType<int>(json, r'addedLimit'),
        usedCount: mapValueOfType<int>(json, r'usedCount'),
        addedCount: mapValueOfType<int>(json, r'addedCount'),
        removedCount: mapValueOfType<int>(json, r'removedCount'),
        viewedCount: mapValueOfType<int>(json, r'viewedCount'),
        clickedCount: mapValueOfType<int>(json, r'clickedCount'),
        offerVisibility: OfferOfferVisibilityEnum.fromJson(json[r'offerVisibility']),
        offerProcessorId: OfferOfferProcessorIdEnum.fromJson(json[r'offerProcessorId']),
        externalId: mapValueOfType<String>(json, r'externalId'),
        externalUrl: mapValueOfType<String>(json, r'externalUrl'),
        externalUntrackedUrl: mapValueOfType<String>(json, r'externalUntrackedUrl'),
        sqootId: mapValueOfType<int>(json, r'sqootId'),
        sqootUrl: mapValueOfType<String>(json, r'sqootUrl'),
        sqootCategorySlug: mapValueOfType<String>(json, r'sqootCategorySlug'),
        sqootCategoryName: mapValueOfType<String>(json, r'sqootCategoryName'),
        yipitId: mapValueOfType<int>(json, r'yipitId'),
        redeemAuthOptions: mapValueOfType<String>(json, r'redeemAuthOptions'),
        publisher: mapValueOfType<String>(json, r'publisher'),
        product: Product.fromJson(json[r'product']),
        media: Media.fromJson(json[r'media']),
        event: Event.fromJson(json[r'event']),
        device: Device.fromJson(json[r'device']),
        notes: Note.listFromJson(json[r'notes']),
        noteCount: mapValueOfType<int>(json, r'noteCount'),
        favoriteCount: mapValueOfType<int>(json, r'favoriteCount'),
        hasRatings: mapValueOfType<bool>(json, r'hasRatings'),
        likes: YayOrNay.listFromJson(json[r'likes']),
        likeCount: mapValueOfType<int>(json, r'likeCount'),
        dislikeCount: mapValueOfType<int>(json, r'dislikeCount'),
        availabilitySummary: mapValueOfType<String>(json, r'availabilitySummary'),
        flags: Flag.listFromJson(json[r'flags']),
        flagCount: mapValueOfType<int>(json, r'flagCount'),
        flagThreshold: FlagThreshold.fromJson(json[r'flagThreshold']),
        savings: mapValueOfType<double>(json, r'savings'),
        clickStream: mapValueOfType<double>(json, r'clickStream'),
        ticketCount: mapValueOfType<int>(json, r'ticketCount'),
        display: mapValueOfType<String>(json, r'display'),
        appKey: mapValueOfType<String>(json, r'appKey'),
        categoryTree: mapValueOfType<String>(json, r'categoryTree'),
        filterTree: mapValueOfType<String>(json, r'filterTree'),
        indexable: mapValueOfType<bool>(json, r'indexable'),
        billableId: mapValueOfType<int>(json, r'billableId'),
        subType: mapValueOfType<String>(json, r'subType'),
        contentName: mapValueOfType<String>(json, r'contentName'),
        defaultThreshold: mapValueOfType<int>(json, r'defaultThreshold'),
        contentAsset: Asset.fromJson(json[r'contentAsset']),
        owner: Account.fromJson(json[r'owner']),
        secondaryType: mapValueOfType<String>(json, r'secondaryType'),
        discountPercentage: mapValueOfType<double>(json, r'discountPercentage'),
      );
    }
    return null;
  }

  static List<Offer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Offer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Offer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Offer> mapFromJson(dynamic json) {
    final map = <String, Offer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Offer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Offer-objects as value to a dart map
  static Map<String, List<Offer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Offer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Offer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class OfferTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OfferTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const VOUCHER = OfferTypeEnum._(r'VOUCHER');
  static const COUPON = OfferTypeEnum._(r'COUPON');
  static const PRODUCT = OfferTypeEnum._(r'PRODUCT');
  static const MEDIA = OfferTypeEnum._(r'MEDIA');
  static const EVENT = OfferTypeEnum._(r'EVENT');
  static const DEVICE = OfferTypeEnum._(r'DEVICE');

  /// List of all possible values in this [enum][OfferTypeEnum].
  static const values = <OfferTypeEnum>[
    VOUCHER,
    COUPON,
    PRODUCT,
    MEDIA,
    EVENT,
    DEVICE,
  ];

  static OfferTypeEnum? fromJson(dynamic value) => OfferTypeEnumTypeTransformer().decode(value);

  static List<OfferTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OfferTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OfferTypeEnum] to String,
/// and [decode] dynamic data back to [OfferTypeEnum].
class OfferTypeEnumTypeTransformer {
  factory OfferTypeEnumTypeTransformer() => _instance ??= const OfferTypeEnumTypeTransformer._();

  const OfferTypeEnumTypeTransformer._();

  String encode(OfferTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OfferTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OfferTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VOUCHER': return OfferTypeEnum.VOUCHER;
        case r'COUPON': return OfferTypeEnum.COUPON;
        case r'PRODUCT': return OfferTypeEnum.PRODUCT;
        case r'MEDIA': return OfferTypeEnum.MEDIA;
        case r'EVENT': return OfferTypeEnum.EVENT;
        case r'DEVICE': return OfferTypeEnum.DEVICE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OfferTypeEnumTypeTransformer] instance.
  static OfferTypeEnumTypeTransformer? _instance;
}



class OfferSpecialOfferTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OfferSpecialOfferTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALL = OfferSpecialOfferTypeEnum._(r'ALL');
  static const RESERVABLE = OfferSpecialOfferTypeEnum._(r'RESERVABLE');
  static const REGULAR_OFFER = OfferSpecialOfferTypeEnum._(r'REGULAR_OFFER');
  static const ACT_NOW = OfferSpecialOfferTypeEnum._(r'ACT_NOW');
  static const GET_THERE_NOW = OfferSpecialOfferTypeEnum._(r'GET_THERE_NOW');
  static const SQOOT = OfferSpecialOfferTypeEnum._(r'SQOOT');
  static const TICKETS = OfferSpecialOfferTypeEnum._(r'TICKETS');
  static const YIPIT = OfferSpecialOfferTypeEnum._(r'YIPIT');

  /// List of all possible values in this [enum][OfferSpecialOfferTypeEnum].
  static const values = <OfferSpecialOfferTypeEnum>[
    ALL,
    RESERVABLE,
    REGULAR_OFFER,
    ACT_NOW,
    GET_THERE_NOW,
    SQOOT,
    TICKETS,
    YIPIT,
  ];

  static OfferSpecialOfferTypeEnum? fromJson(dynamic value) => OfferSpecialOfferTypeEnumTypeTransformer().decode(value);

  static List<OfferSpecialOfferTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OfferSpecialOfferTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferSpecialOfferTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OfferSpecialOfferTypeEnum] to String,
/// and [decode] dynamic data back to [OfferSpecialOfferTypeEnum].
class OfferSpecialOfferTypeEnumTypeTransformer {
  factory OfferSpecialOfferTypeEnumTypeTransformer() => _instance ??= const OfferSpecialOfferTypeEnumTypeTransformer._();

  const OfferSpecialOfferTypeEnumTypeTransformer._();

  String encode(OfferSpecialOfferTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OfferSpecialOfferTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OfferSpecialOfferTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALL': return OfferSpecialOfferTypeEnum.ALL;
        case r'RESERVABLE': return OfferSpecialOfferTypeEnum.RESERVABLE;
        case r'REGULAR_OFFER': return OfferSpecialOfferTypeEnum.REGULAR_OFFER;
        case r'ACT_NOW': return OfferSpecialOfferTypeEnum.ACT_NOW;
        case r'GET_THERE_NOW': return OfferSpecialOfferTypeEnum.GET_THERE_NOW;
        case r'SQOOT': return OfferSpecialOfferTypeEnum.SQOOT;
        case r'TICKETS': return OfferSpecialOfferTypeEnum.TICKETS;
        case r'YIPIT': return OfferSpecialOfferTypeEnum.YIPIT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OfferSpecialOfferTypeEnumTypeTransformer] instance.
  static OfferSpecialOfferTypeEnumTypeTransformer? _instance;
}



class OfferBarCodeTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OfferBarCodeTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = OfferBarCodeTypeEnum._(r'NONE');
  static const UPC = OfferBarCodeTypeEnum._(r'UPC');
  static const cODE128 = OfferBarCodeTypeEnum._(r'CODE_128');
  static const QR = OfferBarCodeTypeEnum._(r'QR');
  static const CUSTOM_MEDIA = OfferBarCodeTypeEnum._(r'CUSTOM_MEDIA');

  /// List of all possible values in this [enum][OfferBarCodeTypeEnum].
  static const values = <OfferBarCodeTypeEnum>[
    NONE,
    UPC,
    cODE128,
    QR,
    CUSTOM_MEDIA,
  ];

  static OfferBarCodeTypeEnum? fromJson(dynamic value) => OfferBarCodeTypeEnumTypeTransformer().decode(value);

  static List<OfferBarCodeTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OfferBarCodeTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferBarCodeTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OfferBarCodeTypeEnum] to String,
/// and [decode] dynamic data back to [OfferBarCodeTypeEnum].
class OfferBarCodeTypeEnumTypeTransformer {
  factory OfferBarCodeTypeEnumTypeTransformer() => _instance ??= const OfferBarCodeTypeEnumTypeTransformer._();

  const OfferBarCodeTypeEnumTypeTransformer._();

  String encode(OfferBarCodeTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OfferBarCodeTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OfferBarCodeTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return OfferBarCodeTypeEnum.NONE;
        case r'UPC': return OfferBarCodeTypeEnum.UPC;
        case r'CODE_128': return OfferBarCodeTypeEnum.cODE128;
        case r'QR': return OfferBarCodeTypeEnum.QR;
        case r'CUSTOM_MEDIA': return OfferBarCodeTypeEnum.CUSTOM_MEDIA;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OfferBarCodeTypeEnumTypeTransformer] instance.
  static OfferBarCodeTypeEnumTypeTransformer? _instance;
}



class OfferOfferVisibilityEnum {
  /// Instantiate a new enum with the provided [value].
  const OfferOfferVisibilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PUBLIC = OfferOfferVisibilityEnum._(r'PUBLIC');
  static const LISTABLE = OfferOfferVisibilityEnum._(r'LISTABLE');
  static const REWARDABLE = OfferOfferVisibilityEnum._(r'REWARDABLE');
  static const TRIGGERABLE = OfferOfferVisibilityEnum._(r'TRIGGERABLE');
  static const PRIVATE = OfferOfferVisibilityEnum._(r'PRIVATE');

  /// List of all possible values in this [enum][OfferOfferVisibilityEnum].
  static const values = <OfferOfferVisibilityEnum>[
    PUBLIC,
    LISTABLE,
    REWARDABLE,
    TRIGGERABLE,
    PRIVATE,
  ];

  static OfferOfferVisibilityEnum? fromJson(dynamic value) => OfferOfferVisibilityEnumTypeTransformer().decode(value);

  static List<OfferOfferVisibilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OfferOfferVisibilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferOfferVisibilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OfferOfferVisibilityEnum] to String,
/// and [decode] dynamic data back to [OfferOfferVisibilityEnum].
class OfferOfferVisibilityEnumTypeTransformer {
  factory OfferOfferVisibilityEnumTypeTransformer() => _instance ??= const OfferOfferVisibilityEnumTypeTransformer._();

  const OfferOfferVisibilityEnumTypeTransformer._();

  String encode(OfferOfferVisibilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OfferOfferVisibilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OfferOfferVisibilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PUBLIC': return OfferOfferVisibilityEnum.PUBLIC;
        case r'LISTABLE': return OfferOfferVisibilityEnum.LISTABLE;
        case r'REWARDABLE': return OfferOfferVisibilityEnum.REWARDABLE;
        case r'TRIGGERABLE': return OfferOfferVisibilityEnum.TRIGGERABLE;
        case r'PRIVATE': return OfferOfferVisibilityEnum.PRIVATE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OfferOfferVisibilityEnumTypeTransformer] instance.
  static OfferOfferVisibilityEnumTypeTransformer? _instance;
}



class OfferOfferProcessorIdEnum {
  /// Instantiate a new enum with the provided [value].
  const OfferOfferProcessorIdEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SQOOT = OfferOfferProcessorIdEnum._(r'SQOOT');
  static const YIPIT = OfferOfferProcessorIdEnum._(r'YIPIT');
  static const API = OfferOfferProcessorIdEnum._(r'API');
  static const CSV = OfferOfferProcessorIdEnum._(r'CSV');

  /// List of all possible values in this [enum][OfferOfferProcessorIdEnum].
  static const values = <OfferOfferProcessorIdEnum>[
    SQOOT,
    YIPIT,
    API,
    CSV,
  ];

  static OfferOfferProcessorIdEnum? fromJson(dynamic value) => OfferOfferProcessorIdEnumTypeTransformer().decode(value);

  static List<OfferOfferProcessorIdEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OfferOfferProcessorIdEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OfferOfferProcessorIdEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OfferOfferProcessorIdEnum] to String,
/// and [decode] dynamic data back to [OfferOfferProcessorIdEnum].
class OfferOfferProcessorIdEnumTypeTransformer {
  factory OfferOfferProcessorIdEnumTypeTransformer() => _instance ??= const OfferOfferProcessorIdEnumTypeTransformer._();

  const OfferOfferProcessorIdEnumTypeTransformer._();

  String encode(OfferOfferProcessorIdEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OfferOfferProcessorIdEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OfferOfferProcessorIdEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SQOOT': return OfferOfferProcessorIdEnum.SQOOT;
        case r'YIPIT': return OfferOfferProcessorIdEnum.YIPIT;
        case r'API': return OfferOfferProcessorIdEnum.API;
        case r'CSV': return OfferOfferProcessorIdEnum.CSV;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OfferOfferProcessorIdEnumTypeTransformer] instance.
  static OfferOfferProcessorIdEnumTypeTransformer? _instance;
}


