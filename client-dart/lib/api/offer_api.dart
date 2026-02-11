//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OfferApi {
  OfferApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Update Offer Locations
  ///
  /// Batch update offer locations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] data (required):
  ///   JSON string in the following format: ```json [{   \"offerLocationId\": 1705,   \"latitude\": 54.0,   \"longitude\": -122.0,   \"altitude\": 1.0,   \"locationDetail\": \"floor 1\",   \"locationDescription\": \"behind the Coke sign\" }, {   \"offerLocationId\": 1704,   \"latitude\": 54.1,   \"longitude\": -122.1 }] ``` 
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<Response> batchUpdateOfferLocationsWithHttpInfo(String data, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/offer/location/batchUpdate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'data', data));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Offer Locations
  ///
  /// Batch update offer locations.
  ///
  /// Parameters:
  ///
  /// * [String] data (required):
  ///   JSON string in the following format: ```json [{   \"offerLocationId\": 1705,   \"latitude\": 54.0,   \"longitude\": -122.0,   \"altitude\": 1.0,   \"locationDetail\": \"floor 1\",   \"locationDescription\": \"behind the Coke sign\" }, {   \"offerLocationId\": 1704,   \"latitude\": 54.1,   \"longitude\": -122.1 }] ``` 
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  Future<SirqulResponse?> batchUpdateOfferLocations(String data, { String? deviceId, int? accountId, }) async {
    final response = await batchUpdateOfferLocationsWithHttpInfo(data,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }

  /// Create Offer
  ///
  /// Create an offer and assign it to the provided retailer locations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] includeOfferLocations (required):
  ///   If true return all the offer locations associated with the offer
  ///
  /// * [String] title (required):
  ///   The title (255 char limit)
  ///
  /// * [String] barcodeType (required):
  ///   The bar code type {NONE, UPC, CODE_128, QR, CUSTOM_MEDIA}
  ///
  /// * [bool] noExpiration (required):
  ///   Overrides the expiration date so that the offer does not expire
  ///
  /// * [int] availableLimit (required):
  ///   The limit of how many times the offer can be used by consumers
  ///
  /// * [int] availableLimitPerUser (required):
  ///   The limit of how many times a user can used the same offer
  ///
  /// * [int] addedLimit (required):
  ///   The limit of how many times the offer can be added to consumer wallets
  ///
  /// * [int] viewLimit (required):
  ///   The limit of how many times the offer can be viewed
  ///
  /// * [int] maxPrints (required):
  ///   The maximum number of times the offer can be printed
  ///
  /// * [int] ticketPrice (required):
  ///   The cost of the offer in tickets
  ///
  /// * [double] fullPrice (required):
  ///   The retail/full price cost of the offer in real currency
  ///
  /// * [double] discountPrice (required):
  ///   The cost of the offer at a discounted price (what the consumer pays)
  ///
  /// * [String] offerType (required):
  ///   The offer type {VOUCHER, COUPON, PRODUCT, EVENT, MEDIA, DEVICE}
  ///
  /// * [String] specialOfferType (required):
  ///   The special offer type {ALL, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW}
  ///
  /// * [String] offerVisibility (required):
  ///   The offer visibility {PUBLIC, REWARDABLE, TRIGGERABLE}
  ///
  /// * [bool] active (required):
  ///   Sets the active flag
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id (deviceId or accountId required)
  ///
  /// * [String] tags:
  ///   Custom string field for doing full-text searches
  ///
  /// * [int] parentOfferId:
  ///   the parent offer id
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids. This will assign the offer to these retailer locations.
  ///
  /// * [String] offerLocations:
  ///   A list of json data that has offer location specific values.
  ///
  /// * [String] subTitle:
  ///   The sub title (255 char limit)
  ///
  /// * [String] details:
  ///   The details
  ///
  /// * [String] subDetails:
  ///   A string for custom details (255 char limit)
  ///
  /// * [String] finePrint:
  ///   The fine print
  ///
  /// * [String] barcodeEntry:
  ///   The bar code entry string
  ///
  /// * [String] externalRedeemOptions:
  ///   An external identifier. What the identifier will be used for and how it is formatted is up to the frontend developer
  ///
  /// * [String] externalUrl:
  ///   The clickUrl of the offer
  ///
  /// * [String] externalId:
  ///   an external identifier. What the identifier will be used for and how it is formatted is up to the frontend developer
  ///
  /// * [String] ticketsRewardType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] ticketsReward:
  ///   Determines how many tickets are awarded
  ///
  /// * [int] activated:
  ///   The date of when the offer will be visible to consumers
  ///
  /// * [int] expires:
  ///   The date of when the offer expires
  ///
  /// * [String] ticketPriceType:
  ///   the type of ticket needed to buy offer
  ///
  /// * [bool] showRemaining:
  ///   show remaining offers available
  ///
  /// * [bool] showRedeemed:
  ///   show how many offers have been redeemed
  ///
  /// * [bool] replaced:
  ///   
  ///
  /// * [bool] featured:
  ///   flag if offer is featured or not
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter ids
  ///
  /// * [int] barcodeAssetId:
  ///   The id of the barcode asset
  ///
  /// * [int] imageAssetId:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId1:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId2:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId3:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId4:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId5:
  ///   The id of the an offer asset
  ///
  /// * [String] publisher:
  ///   The maker of the item.
  ///
  /// * [int] redeemableStart:
  ///   The redeemable start date/time of the offer.
  ///
  /// * [int] redeemableEnd:
  ///   The redeemable start date/time of the offer.
  ///
  /// * [String] brand:
  ///   The brand. OfferType PRODUCT only.
  ///
  /// * [String] productType:
  ///   The product type. OfferType PRODUCT only.
  ///
  /// * [String] conditionType:
  ///   The condition. OfferType PRODUCT only.
  ///
  /// * [String] isbn:
  ///   The ISBN id. OfferType PRODUCT only.
  ///
  /// * [String] asin:
  ///   The ASIN id. OfferType PRODUCT only.
  ///
  /// * [String] catalogNumbers:
  ///   The list of catelog numbers, comma seperated. OfferType PRODUCT only.
  ///
  /// * [String] department:
  ///   The department name. The OfferType PRODUCT only.
  ///
  /// * [String] features:
  ///   The list of features, comma seperated. OfferType PRODUCT only.
  ///
  /// * [double] minimumPrice:
  ///   The MAP price. OfferType PRODUCT only.
  ///
  /// * [double] width:
  ///   The width of the item. OfferType PRODUCT only.
  ///
  /// * [double] height:
  ///   The height of the item. OfferType PRODUCT only.
  ///
  /// * [double] depth:
  ///   The depth of the item. OfferType PRODUCT only.
  ///
  /// * [double] weight:
  ///   The weight of the item. OfferType PRODUCT only.
  ///
  /// * [String] unit:
  ///   The unit of measurement. OfferType PRODUCT only.
  ///
  /// * [String] studio:
  ///   The studio name. OfferType PRODUCT only.
  ///
  /// * [String] parentalRating:
  ///   The parental control rating. OfferType PRODUCT only.
  ///
  /// * [int] publishDate:
  ///   The date published. OfferType PRODUCT only.
  ///
  /// * [int] availabilityDate:
  ///   The date available. OfferType PRODUCT only.
  ///
  /// * [int] sizeId:
  ///   
  ///
  /// * [int] listingId:
  ///   The ID of the event listing
  ///
  /// * [String] mediaType:
  ///   the media type of the offer
  ///
  /// * [int] duration:
  ///   The total playing time of the media item. OfferType MEDIA only.
  ///
  /// * [String] author:
  ///   The created/author of the media item. OfferType MEDIA only.
  ///
  /// * [int] releaseDate:
  ///   The date/time of when the media item was originally released. OfferType MEDIA only.
  ///
  /// * [String] collectionIds:
  ///   
  ///
  /// * [int] rebootTimeHour:
  ///   The reboot hour time ranging from 0 to 23
  ///
  /// * [int] rebootTimeMinute:
  ///   The reboot minute time ranging from 0 to 59
  ///
  /// * [int] idleTimeoutInSecond:
  ///   If the device is idle for idleTimeoutInSecond then the device should timeout
  ///
  /// * [String] serialNumber:
  ///   The serial number on the device
  ///
  /// * [String] udid:
  ///   The unique device id for the device
  ///
  /// * [String] deviceType:
  ///   The type of the device, for example: \"Kiosk\", \"Beacon\".
  ///
  /// * [double] devicePower:
  ///   Edysen device power level setting
  ///
  /// * [double] deviceInterference:
  ///   Edysen device inteference setting
  ///
  /// * [String] availability:
  ///   
  ///
  /// * [String] availabilitySummary:
  ///   
  Future<Response> createOfferWithHttpInfo(bool includeOfferLocations, String title, String barcodeType, bool noExpiration, int availableLimit, int availableLimitPerUser, int addedLimit, int viewLimit, int maxPrints, int ticketPrice, double fullPrice, double discountPrice, String offerType, String specialOfferType, String offerVisibility, bool active, { String? deviceId, int? accountId, String? tags, int? parentOfferId, String? retailerLocationIds, String? offerLocations, String? subTitle, String? details, String? subDetails, String? finePrint, String? barcodeEntry, String? externalRedeemOptions, String? externalUrl, String? externalId, String? ticketsRewardType, int? ticketsReward, int? activated, int? expires, String? ticketPriceType, bool? showRemaining, bool? showRedeemed, bool? replaced, bool? featured, String? categoryIds, String? filterIds, int? barcodeAssetId, int? imageAssetId, int? imageAssetId1, int? imageAssetId2, int? imageAssetId3, int? imageAssetId4, int? imageAssetId5, String? publisher, int? redeemableStart, int? redeemableEnd, String? brand, String? productType, String? conditionType, String? isbn, String? asin, String? catalogNumbers, String? department, String? features, double? minimumPrice, double? width, double? height, double? depth, double? weight, String? unit, String? studio, String? parentalRating, int? publishDate, int? availabilityDate, int? sizeId, int? listingId, String? mediaType, int? duration, String? author, int? releaseDate, String? collectionIds, int? rebootTimeHour, int? rebootTimeMinute, int? idleTimeoutInSecond, String? serialNumber, String? udid, String? deviceType, double? devicePower, double? deviceInterference, String? availability, String? availabilitySummary, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/offer/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (parentOfferId != null) {
      queryParams.addAll(_queryParams('', 'parentOfferId', parentOfferId));
    }
      queryParams.addAll(_queryParams('', 'includeOfferLocations', includeOfferLocations));
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
    }
    if (offerLocations != null) {
      queryParams.addAll(_queryParams('', 'offerLocations', offerLocations));
    }
      queryParams.addAll(_queryParams('', 'title', title));
    if (subTitle != null) {
      queryParams.addAll(_queryParams('', 'subTitle', subTitle));
    }
    if (details != null) {
      queryParams.addAll(_queryParams('', 'details', details));
    }
    if (subDetails != null) {
      queryParams.addAll(_queryParams('', 'subDetails', subDetails));
    }
    if (finePrint != null) {
      queryParams.addAll(_queryParams('', 'finePrint', finePrint));
    }
      queryParams.addAll(_queryParams('', 'barcodeType', barcodeType));
    if (barcodeEntry != null) {
      queryParams.addAll(_queryParams('', 'barcodeEntry', barcodeEntry));
    }
    if (externalRedeemOptions != null) {
      queryParams.addAll(_queryParams('', 'externalRedeemOptions', externalRedeemOptions));
    }
    if (externalUrl != null) {
      queryParams.addAll(_queryParams('', 'externalUrl', externalUrl));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (ticketsRewardType != null) {
      queryParams.addAll(_queryParams('', 'ticketsRewardType', ticketsRewardType));
    }
    if (ticketsReward != null) {
      queryParams.addAll(_queryParams('', 'ticketsReward', ticketsReward));
    }
    if (activated != null) {
      queryParams.addAll(_queryParams('', 'activated', activated));
    }
    if (expires != null) {
      queryParams.addAll(_queryParams('', 'expires', expires));
    }
      queryParams.addAll(_queryParams('', 'noExpiration', noExpiration));
      queryParams.addAll(_queryParams('', 'availableLimit', availableLimit));
      queryParams.addAll(_queryParams('', 'availableLimitPerUser', availableLimitPerUser));
      queryParams.addAll(_queryParams('', 'addedLimit', addedLimit));
      queryParams.addAll(_queryParams('', 'viewLimit', viewLimit));
      queryParams.addAll(_queryParams('', 'maxPrints', maxPrints));
    if (ticketPriceType != null) {
      queryParams.addAll(_queryParams('', 'ticketPriceType', ticketPriceType));
    }
      queryParams.addAll(_queryParams('', 'ticketPrice', ticketPrice));
      queryParams.addAll(_queryParams('', 'fullPrice', fullPrice));
      queryParams.addAll(_queryParams('', 'discountPrice', discountPrice));
    if (showRemaining != null) {
      queryParams.addAll(_queryParams('', 'showRemaining', showRemaining));
    }
    if (showRedeemed != null) {
      queryParams.addAll(_queryParams('', 'showRedeemed', showRedeemed));
    }
    if (replaced != null) {
      queryParams.addAll(_queryParams('', 'replaced', replaced));
    }
    if (featured != null) {
      queryParams.addAll(_queryParams('', 'featured', featured));
    }
      queryParams.addAll(_queryParams('', 'offerType', offerType));
      queryParams.addAll(_queryParams('', 'specialOfferType', specialOfferType));
      queryParams.addAll(_queryParams('', 'offerVisibility', offerVisibility));
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
      queryParams.addAll(_queryParams('', 'active', active));
    if (barcodeAssetId != null) {
      queryParams.addAll(_queryParams('', 'barcodeAssetId', barcodeAssetId));
    }
    if (imageAssetId != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId', imageAssetId));
    }
    if (imageAssetId1 != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId1', imageAssetId1));
    }
    if (imageAssetId2 != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId2', imageAssetId2));
    }
    if (imageAssetId3 != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId3', imageAssetId3));
    }
    if (imageAssetId4 != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId4', imageAssetId4));
    }
    if (imageAssetId5 != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId5', imageAssetId5));
    }
    if (publisher != null) {
      queryParams.addAll(_queryParams('', 'publisher', publisher));
    }
    if (redeemableStart != null) {
      queryParams.addAll(_queryParams('', 'redeemableStart', redeemableStart));
    }
    if (redeemableEnd != null) {
      queryParams.addAll(_queryParams('', 'redeemableEnd', redeemableEnd));
    }
    if (brand != null) {
      queryParams.addAll(_queryParams('', 'brand', brand));
    }
    if (productType != null) {
      queryParams.addAll(_queryParams('', 'productType', productType));
    }
    if (conditionType != null) {
      queryParams.addAll(_queryParams('', 'conditionType', conditionType));
    }
    if (isbn != null) {
      queryParams.addAll(_queryParams('', 'isbn', isbn));
    }
    if (asin != null) {
      queryParams.addAll(_queryParams('', 'asin', asin));
    }
    if (catalogNumbers != null) {
      queryParams.addAll(_queryParams('', 'catalogNumbers', catalogNumbers));
    }
    if (department != null) {
      queryParams.addAll(_queryParams('', 'department', department));
    }
    if (features != null) {
      queryParams.addAll(_queryParams('', 'features', features));
    }
    if (minimumPrice != null) {
      queryParams.addAll(_queryParams('', 'minimumPrice', minimumPrice));
    }
    if (width != null) {
      queryParams.addAll(_queryParams('', 'width', width));
    }
    if (height != null) {
      queryParams.addAll(_queryParams('', 'height', height));
    }
    if (depth != null) {
      queryParams.addAll(_queryParams('', 'depth', depth));
    }
    if (weight != null) {
      queryParams.addAll(_queryParams('', 'weight', weight));
    }
    if (unit != null) {
      queryParams.addAll(_queryParams('', 'unit', unit));
    }
    if (studio != null) {
      queryParams.addAll(_queryParams('', 'studio', studio));
    }
    if (parentalRating != null) {
      queryParams.addAll(_queryParams('', 'parentalRating', parentalRating));
    }
    if (publishDate != null) {
      queryParams.addAll(_queryParams('', 'publishDate', publishDate));
    }
    if (availabilityDate != null) {
      queryParams.addAll(_queryParams('', 'availabilityDate', availabilityDate));
    }
    if (sizeId != null) {
      queryParams.addAll(_queryParams('', 'sizeId', sizeId));
    }
    if (listingId != null) {
      queryParams.addAll(_queryParams('', 'listingId', listingId));
    }
    if (mediaType != null) {
      queryParams.addAll(_queryParams('', 'mediaType', mediaType));
    }
    if (duration != null) {
      queryParams.addAll(_queryParams('', 'duration', duration));
    }
    if (author != null) {
      queryParams.addAll(_queryParams('', 'author', author));
    }
    if (releaseDate != null) {
      queryParams.addAll(_queryParams('', 'releaseDate', releaseDate));
    }
    if (collectionIds != null) {
      queryParams.addAll(_queryParams('', 'collectionIds', collectionIds));
    }
    if (rebootTimeHour != null) {
      queryParams.addAll(_queryParams('', 'rebootTimeHour', rebootTimeHour));
    }
    if (rebootTimeMinute != null) {
      queryParams.addAll(_queryParams('', 'rebootTimeMinute', rebootTimeMinute));
    }
    if (idleTimeoutInSecond != null) {
      queryParams.addAll(_queryParams('', 'idleTimeoutInSecond', idleTimeoutInSecond));
    }
    if (serialNumber != null) {
      queryParams.addAll(_queryParams('', 'serialNumber', serialNumber));
    }
    if (udid != null) {
      queryParams.addAll(_queryParams('', 'udid', udid));
    }
    if (deviceType != null) {
      queryParams.addAll(_queryParams('', 'deviceType', deviceType));
    }
    if (devicePower != null) {
      queryParams.addAll(_queryParams('', 'devicePower', devicePower));
    }
    if (deviceInterference != null) {
      queryParams.addAll(_queryParams('', 'deviceInterference', deviceInterference));
    }
    if (availability != null) {
      queryParams.addAll(_queryParams('', 'availability', availability));
    }
    if (availabilitySummary != null) {
      queryParams.addAll(_queryParams('', 'availabilitySummary', availabilitySummary));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Offer
  ///
  /// Create an offer and assign it to the provided retailer locations.
  ///
  /// Parameters:
  ///
  /// * [bool] includeOfferLocations (required):
  ///   If true return all the offer locations associated with the offer
  ///
  /// * [String] title (required):
  ///   The title (255 char limit)
  ///
  /// * [String] barcodeType (required):
  ///   The bar code type {NONE, UPC, CODE_128, QR, CUSTOM_MEDIA}
  ///
  /// * [bool] noExpiration (required):
  ///   Overrides the expiration date so that the offer does not expire
  ///
  /// * [int] availableLimit (required):
  ///   The limit of how many times the offer can be used by consumers
  ///
  /// * [int] availableLimitPerUser (required):
  ///   The limit of how many times a user can used the same offer
  ///
  /// * [int] addedLimit (required):
  ///   The limit of how many times the offer can be added to consumer wallets
  ///
  /// * [int] viewLimit (required):
  ///   The limit of how many times the offer can be viewed
  ///
  /// * [int] maxPrints (required):
  ///   The maximum number of times the offer can be printed
  ///
  /// * [int] ticketPrice (required):
  ///   The cost of the offer in tickets
  ///
  /// * [double] fullPrice (required):
  ///   The retail/full price cost of the offer in real currency
  ///
  /// * [double] discountPrice (required):
  ///   The cost of the offer at a discounted price (what the consumer pays)
  ///
  /// * [String] offerType (required):
  ///   The offer type {VOUCHER, COUPON, PRODUCT, EVENT, MEDIA, DEVICE}
  ///
  /// * [String] specialOfferType (required):
  ///   The special offer type {ALL, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW}
  ///
  /// * [String] offerVisibility (required):
  ///   The offer visibility {PUBLIC, REWARDABLE, TRIGGERABLE}
  ///
  /// * [bool] active (required):
  ///   Sets the active flag
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id (deviceId or accountId required)
  ///
  /// * [String] tags:
  ///   Custom string field for doing full-text searches
  ///
  /// * [int] parentOfferId:
  ///   the parent offer id
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids. This will assign the offer to these retailer locations.
  ///
  /// * [String] offerLocations:
  ///   A list of json data that has offer location specific values.
  ///
  /// * [String] subTitle:
  ///   The sub title (255 char limit)
  ///
  /// * [String] details:
  ///   The details
  ///
  /// * [String] subDetails:
  ///   A string for custom details (255 char limit)
  ///
  /// * [String] finePrint:
  ///   The fine print
  ///
  /// * [String] barcodeEntry:
  ///   The bar code entry string
  ///
  /// * [String] externalRedeemOptions:
  ///   An external identifier. What the identifier will be used for and how it is formatted is up to the frontend developer
  ///
  /// * [String] externalUrl:
  ///   The clickUrl of the offer
  ///
  /// * [String] externalId:
  ///   an external identifier. What the identifier will be used for and how it is formatted is up to the frontend developer
  ///
  /// * [String] ticketsRewardType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] ticketsReward:
  ///   Determines how many tickets are awarded
  ///
  /// * [int] activated:
  ///   The date of when the offer will be visible to consumers
  ///
  /// * [int] expires:
  ///   The date of when the offer expires
  ///
  /// * [String] ticketPriceType:
  ///   the type of ticket needed to buy offer
  ///
  /// * [bool] showRemaining:
  ///   show remaining offers available
  ///
  /// * [bool] showRedeemed:
  ///   show how many offers have been redeemed
  ///
  /// * [bool] replaced:
  ///   
  ///
  /// * [bool] featured:
  ///   flag if offer is featured or not
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter ids
  ///
  /// * [int] barcodeAssetId:
  ///   The id of the barcode asset
  ///
  /// * [int] imageAssetId:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId1:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId2:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId3:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId4:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId5:
  ///   The id of the an offer asset
  ///
  /// * [String] publisher:
  ///   The maker of the item.
  ///
  /// * [int] redeemableStart:
  ///   The redeemable start date/time of the offer.
  ///
  /// * [int] redeemableEnd:
  ///   The redeemable start date/time of the offer.
  ///
  /// * [String] brand:
  ///   The brand. OfferType PRODUCT only.
  ///
  /// * [String] productType:
  ///   The product type. OfferType PRODUCT only.
  ///
  /// * [String] conditionType:
  ///   The condition. OfferType PRODUCT only.
  ///
  /// * [String] isbn:
  ///   The ISBN id. OfferType PRODUCT only.
  ///
  /// * [String] asin:
  ///   The ASIN id. OfferType PRODUCT only.
  ///
  /// * [String] catalogNumbers:
  ///   The list of catelog numbers, comma seperated. OfferType PRODUCT only.
  ///
  /// * [String] department:
  ///   The department name. The OfferType PRODUCT only.
  ///
  /// * [String] features:
  ///   The list of features, comma seperated. OfferType PRODUCT only.
  ///
  /// * [double] minimumPrice:
  ///   The MAP price. OfferType PRODUCT only.
  ///
  /// * [double] width:
  ///   The width of the item. OfferType PRODUCT only.
  ///
  /// * [double] height:
  ///   The height of the item. OfferType PRODUCT only.
  ///
  /// * [double] depth:
  ///   The depth of the item. OfferType PRODUCT only.
  ///
  /// * [double] weight:
  ///   The weight of the item. OfferType PRODUCT only.
  ///
  /// * [String] unit:
  ///   The unit of measurement. OfferType PRODUCT only.
  ///
  /// * [String] studio:
  ///   The studio name. OfferType PRODUCT only.
  ///
  /// * [String] parentalRating:
  ///   The parental control rating. OfferType PRODUCT only.
  ///
  /// * [int] publishDate:
  ///   The date published. OfferType PRODUCT only.
  ///
  /// * [int] availabilityDate:
  ///   The date available. OfferType PRODUCT only.
  ///
  /// * [int] sizeId:
  ///   
  ///
  /// * [int] listingId:
  ///   The ID of the event listing
  ///
  /// * [String] mediaType:
  ///   the media type of the offer
  ///
  /// * [int] duration:
  ///   The total playing time of the media item. OfferType MEDIA only.
  ///
  /// * [String] author:
  ///   The created/author of the media item. OfferType MEDIA only.
  ///
  /// * [int] releaseDate:
  ///   The date/time of when the media item was originally released. OfferType MEDIA only.
  ///
  /// * [String] collectionIds:
  ///   
  ///
  /// * [int] rebootTimeHour:
  ///   The reboot hour time ranging from 0 to 23
  ///
  /// * [int] rebootTimeMinute:
  ///   The reboot minute time ranging from 0 to 59
  ///
  /// * [int] idleTimeoutInSecond:
  ///   If the device is idle for idleTimeoutInSecond then the device should timeout
  ///
  /// * [String] serialNumber:
  ///   The serial number on the device
  ///
  /// * [String] udid:
  ///   The unique device id for the device
  ///
  /// * [String] deviceType:
  ///   The type of the device, for example: \"Kiosk\", \"Beacon\".
  ///
  /// * [double] devicePower:
  ///   Edysen device power level setting
  ///
  /// * [double] deviceInterference:
  ///   Edysen device inteference setting
  ///
  /// * [String] availability:
  ///   
  ///
  /// * [String] availabilitySummary:
  ///   
  Future<RetailerOfferResponse?> createOffer(bool includeOfferLocations, String title, String barcodeType, bool noExpiration, int availableLimit, int availableLimitPerUser, int addedLimit, int viewLimit, int maxPrints, int ticketPrice, double fullPrice, double discountPrice, String offerType, String specialOfferType, String offerVisibility, bool active, { String? deviceId, int? accountId, String? tags, int? parentOfferId, String? retailerLocationIds, String? offerLocations, String? subTitle, String? details, String? subDetails, String? finePrint, String? barcodeEntry, String? externalRedeemOptions, String? externalUrl, String? externalId, String? ticketsRewardType, int? ticketsReward, int? activated, int? expires, String? ticketPriceType, bool? showRemaining, bool? showRedeemed, bool? replaced, bool? featured, String? categoryIds, String? filterIds, int? barcodeAssetId, int? imageAssetId, int? imageAssetId1, int? imageAssetId2, int? imageAssetId3, int? imageAssetId4, int? imageAssetId5, String? publisher, int? redeemableStart, int? redeemableEnd, String? brand, String? productType, String? conditionType, String? isbn, String? asin, String? catalogNumbers, String? department, String? features, double? minimumPrice, double? width, double? height, double? depth, double? weight, String? unit, String? studio, String? parentalRating, int? publishDate, int? availabilityDate, int? sizeId, int? listingId, String? mediaType, int? duration, String? author, int? releaseDate, String? collectionIds, int? rebootTimeHour, int? rebootTimeMinute, int? idleTimeoutInSecond, String? serialNumber, String? udid, String? deviceType, double? devicePower, double? deviceInterference, String? availability, String? availabilitySummary, }) async {
    final response = await createOfferWithHttpInfo(includeOfferLocations, title, barcodeType, noExpiration, availableLimit, availableLimitPerUser, addedLimit, viewLimit, maxPrints, ticketPrice, fullPrice, discountPrice, offerType, specialOfferType, offerVisibility, active,  deviceId: deviceId, accountId: accountId, tags: tags, parentOfferId: parentOfferId, retailerLocationIds: retailerLocationIds, offerLocations: offerLocations, subTitle: subTitle, details: details, subDetails: subDetails, finePrint: finePrint, barcodeEntry: barcodeEntry, externalRedeemOptions: externalRedeemOptions, externalUrl: externalUrl, externalId: externalId, ticketsRewardType: ticketsRewardType, ticketsReward: ticketsReward, activated: activated, expires: expires, ticketPriceType: ticketPriceType, showRemaining: showRemaining, showRedeemed: showRedeemed, replaced: replaced, featured: featured, categoryIds: categoryIds, filterIds: filterIds, barcodeAssetId: barcodeAssetId, imageAssetId: imageAssetId, imageAssetId1: imageAssetId1, imageAssetId2: imageAssetId2, imageAssetId3: imageAssetId3, imageAssetId4: imageAssetId4, imageAssetId5: imageAssetId5, publisher: publisher, redeemableStart: redeemableStart, redeemableEnd: redeemableEnd, brand: brand, productType: productType, conditionType: conditionType, isbn: isbn, asin: asin, catalogNumbers: catalogNumbers, department: department, features: features, minimumPrice: minimumPrice, width: width, height: height, depth: depth, weight: weight, unit: unit, studio: studio, parentalRating: parentalRating, publishDate: publishDate, availabilityDate: availabilityDate, sizeId: sizeId, listingId: listingId, mediaType: mediaType, duration: duration, author: author, releaseDate: releaseDate, collectionIds: collectionIds, rebootTimeHour: rebootTimeHour, rebootTimeMinute: rebootTimeMinute, idleTimeoutInSecond: idleTimeoutInSecond, serialNumber: serialNumber, udid: udid, deviceType: deviceType, devicePower: devicePower, deviceInterference: deviceInterference, availability: availability, availabilitySummary: availabilitySummary, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetailerOfferResponse',) as RetailerOfferResponse;
    
    }
    return null;
  }

  /// Delete Offer
  ///
  /// Set the deleted timestamp to current time. This effectively deletes the offer since all queries should ignore any records with a deleted time stamp.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offerId (required):
  ///   The ID of the offer to be deleted
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the offer.
  Future<Response> deleteOfferWithHttpInfo(int offerId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/offer/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'offerId', offerId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Offer
  ///
  /// Set the deleted timestamp to current time. This effectively deletes the offer since all queries should ignore any records with a deleted time stamp.
  ///
  /// Parameters:
  ///
  /// * [int] offerId (required):
  ///   The ID of the offer to be deleted
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the offer.
  Future<SirqulResponse?> deleteOffer(int offerId, { String? deviceId, int? accountId, }) async {
    final response = await deleteOfferWithHttpInfo(offerId,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }

  /// Delete Offer Location
  ///
  /// Set the deleted timestamp to current time. This effectively deletes the offer location since all queries should ignore any records with a deleted time stamp.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offerLocationId (required):
  ///   The ID of the offer location to be deleted
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the offer location.
  Future<Response> deleteOfferLocationWithHttpInfo(int offerLocationId, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/offer/location/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Offer Location
  ///
  /// Set the deleted timestamp to current time. This effectively deletes the offer location since all queries should ignore any records with a deleted time stamp.
  ///
  /// Parameters:
  ///
  /// * [int] offerLocationId (required):
  ///   The ID of the offer location to be deleted
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the delete, must have rights to edit the offer location.
  Future<SirqulResponse?> deleteOfferLocation(int offerLocationId, { String? deviceId, int? accountId, }) async {
    final response = await deleteOfferLocationWithHttpInfo(offerLocationId,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }

  /// Get Offer
  ///
  /// Gets the details of an offer that the user has access to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offerId (required):
  ///   The id of the offer
  ///
  /// * [bool] includeOfferLocations (required):
  ///   
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id (deviceId or accountId required)
  Future<Response> getOfferWithHttpInfo(int offerId, bool includeOfferLocations, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/offer/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'offerId', offerId));
      queryParams.addAll(_queryParams('', 'includeOfferLocations', includeOfferLocations));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Offer
  ///
  /// Gets the details of an offer that the user has access to.
  ///
  /// Parameters:
  ///
  /// * [int] offerId (required):
  ///   The id of the offer
  ///
  /// * [bool] includeOfferLocations (required):
  ///   
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id (deviceId or accountId required)
  Future<RetailerOfferResponse?> getOffer(int offerId, bool includeOfferLocations, { String? deviceId, int? accountId, }) async {
    final response = await getOfferWithHttpInfo(offerId, includeOfferLocations,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetailerOfferResponse',) as RetailerOfferResponse;
    
    }
    return null;
  }

  /// Get Offer
  ///
  /// Gets offer or offer location details as a consumer.  Will check if it is a favorite if the deviceId/accountId is provided.  If the offerId is provided it will look up the main offer and ignore the the offerLocationId. If no offerId is provided then an offerLocationId must be specified.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id for returning account information (i.e. favorites)
  ///
  /// * [int] accountId:
  ///   The account id for returning account information (i.e. favorites)
  ///
  /// * [int] offerId:
  ///   The offer id (either offeLocationId or offerId must be provided)
  ///
  /// * [int] offerLocationId:
  ///   The offer location id (either offeLocationId or offerId must be provided)
  ///
  /// * [double] distance:
  ///   The distance of the offer from the user's current location (this is returned when the offer is searched)
  ///
  /// * [double] latitude:
  ///   The latitude to calculate distance from the offer
  ///
  /// * [double] longitude:
  ///   The longitude to calculate distance from the offer
  ///
  /// * [bool] includeOfferLocations:
  ///   Determines whether to return offer locations for the offer
  ///
  /// * [bool] includeRetailerLocations:
  ///   Determines whether to return the retailer location info for each offer location response (includeOfferLocations must also be true for this to work)
  ///
  /// * [bool] includeChildOffers:
  ///   Determines whether to include child offers in the response
  Future<Response> getOfferDetailsWithHttpInfo({ String? deviceId, int? accountId, int? offerId, int? offerLocationId, double? distance, double? latitude, double? longitude, bool? includeOfferLocations, bool? includeRetailerLocations, bool? includeChildOffers, }) async {
    // ignore: prefer_const_declarations
    final path = r'/offer/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (distance != null) {
      queryParams.addAll(_queryParams('', 'distance', distance));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    }
    if (includeOfferLocations != null) {
      queryParams.addAll(_queryParams('', 'includeOfferLocations', includeOfferLocations));
    }
    if (includeRetailerLocations != null) {
      queryParams.addAll(_queryParams('', 'includeRetailerLocations', includeRetailerLocations));
    }
    if (includeChildOffers != null) {
      queryParams.addAll(_queryParams('', 'includeChildOffers', includeChildOffers));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Offer
  ///
  /// Gets offer or offer location details as a consumer.  Will check if it is a favorite if the deviceId/accountId is provided.  If the offerId is provided it will look up the main offer and ignore the the offerLocationId. If no offerId is provided then an offerLocationId must be specified.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id for returning account information (i.e. favorites)
  ///
  /// * [int] accountId:
  ///   The account id for returning account information (i.e. favorites)
  ///
  /// * [int] offerId:
  ///   The offer id (either offeLocationId or offerId must be provided)
  ///
  /// * [int] offerLocationId:
  ///   The offer location id (either offeLocationId or offerId must be provided)
  ///
  /// * [double] distance:
  ///   The distance of the offer from the user's current location (this is returned when the offer is searched)
  ///
  /// * [double] latitude:
  ///   The latitude to calculate distance from the offer
  ///
  /// * [double] longitude:
  ///   The longitude to calculate distance from the offer
  ///
  /// * [bool] includeOfferLocations:
  ///   Determines whether to return offer locations for the offer
  ///
  /// * [bool] includeRetailerLocations:
  ///   Determines whether to return the retailer location info for each offer location response (includeOfferLocations must also be true for this to work)
  ///
  /// * [bool] includeChildOffers:
  ///   Determines whether to include child offers in the response
  Future<OfferResponse?> getOfferDetails({ String? deviceId, int? accountId, int? offerId, int? offerLocationId, double? distance, double? latitude, double? longitude, bool? includeOfferLocations, bool? includeRetailerLocations, bool? includeChildOffers, }) async {
    final response = await getOfferDetailsWithHttpInfo( deviceId: deviceId, accountId: accountId, offerId: offerId, offerLocationId: offerLocationId, distance: distance, latitude: latitude, longitude: longitude, includeOfferLocations: includeOfferLocations, includeRetailerLocations: includeRetailerLocations, includeChildOffers: includeChildOffers, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferResponse',) as OfferResponse;
    
    }
    return null;
  }

  /// Get Offers (Counts)
  ///
  /// Gets the offer list counts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [double] latitude (required):
  ///   The latitude of where the search will center at
  ///
  /// * [double] longitude (required):
  ///   The longitude of where the search will center at
  ///
  /// * [num] searchRange:
  ///   The range of the search
  ///
  /// * [String] distanceUnit:
  ///   The units to use for distance calculations (e.g. MILES, KILOMETERS)
  Future<Response> getOfferListCountsWithHttpInfo(double latitude, double longitude, { num? searchRange, String? distanceUnit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/offer/lists/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'latitude', latitude));
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    if (searchRange != null) {
      queryParams.addAll(_queryParams('', 'searchRange', searchRange));
    }
    if (distanceUnit != null) {
      queryParams.addAll(_queryParams('', 'distanceUnit', distanceUnit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Offers (Counts)
  ///
  /// Gets the offer list counts.
  ///
  /// Parameters:
  ///
  /// * [double] latitude (required):
  ///   The latitude of where the search will center at
  ///
  /// * [double] longitude (required):
  ///   The longitude of where the search will center at
  ///
  /// * [num] searchRange:
  ///   The range of the search
  ///
  /// * [String] distanceUnit:
  ///   The units to use for distance calculations (e.g. MILES, KILOMETERS)
  Future<ListCountResponse?> getOfferListCounts(double latitude, double longitude, { num? searchRange, String? distanceUnit, }) async {
    final response = await getOfferListCountsWithHttpInfo(latitude, longitude,  searchRange: searchRange, distanceUnit: distanceUnit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListCountResponse',) as ListCountResponse;
    
    }
    return null;
  }

  /// Get Offer Location
  ///
  /// Gets the offer location by offer location id or udid (of a device)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offerLocationId:
  ///   the id of the offer location to get
  ///
  /// * [String] udid:
  ///   the UDID of the device
  Future<Response> getOfferLocationWithHttpInfo({ int? offerLocationId, String? udid, }) async {
    // ignore: prefer_const_declarations
    final path = r'/offer/location/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (udid != null) {
      queryParams.addAll(_queryParams('', 'udid', udid));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Offer Location
  ///
  /// Gets the offer location by offer location id or udid (of a device)
  ///
  /// Parameters:
  ///
  /// * [int] offerLocationId:
  ///   the id of the offer location to get
  ///
  /// * [String] udid:
  ///   the UDID of the device
  Future<OfferShortResponse?> getOfferLocation({ int? offerLocationId, String? udid, }) async {
    final response = await getOfferLocationWithHttpInfo( offerLocationId: offerLocationId, udid: udid, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferShortResponse',) as OfferShortResponse;
    
    }
    return null;
  }

  /// Search Offer Locations
  ///
  /// Searches on offer locations, which are records that represent an offer that has been assigned to a retailer location. If an offer does not have any locations assigned, then it will NOT be returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   The column to sort the results on. Default is \"TITLE\", which will sort the results by the offer title. Possible input values: {CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, RETAILER_ID,RETAILER_LOCATION_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY}
  ///
  /// * [bool] descending (required):
  ///   The order to return the results. Default is false, which will return the results in ascending order.
  ///
  /// * [int] start (required):
  ///   The index into the record set to start with. Default is 0.
  ///
  /// * [int] limit (required):
  ///   The total number of records to return. Default is 20.
  ///
  /// * [bool] activeOnly (required):
  ///   Determines whether to return only active results. Default is false.
  ///
  /// * [bool] includeRetailerLocation (required):
  ///   
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [int] retailerId:
  ///   Filter results for a specific retailer
  ///
  /// * [int] retailerLocationId:
  ///   Filter results for a specific retailer location
  ///
  /// * [String] offerType:
  ///   Filter results to only return COUPON, VOUCHER, PRODUCT, MEDIA, or EVENT offers
  ///
  /// * [String] specialOfferType:
  ///   Filter results to only return REGULAR_OFFER, ACT_NOW, GET_THERE_NOW offer specials
  ///
  /// * [String] barcodeType:
  ///   
  ///
  /// * [String] barcodeEntry:
  ///   
  ///
  /// * [String] isbn:
  ///   
  ///
  /// * [String] asin:
  ///   
  ///
  /// * [String] deviceStatus:
  ///   Edysen device status, running, warning, or down
  ///
  /// * [bool] needsNotificationSent:
  ///   
  ///
  /// * [int] lastNotificationSent:
  ///   
  Future<Response> getOfferLocationsForRetailersWithHttpInfo(String sortField, bool descending, int start, int limit, bool activeOnly, bool includeRetailerLocation, { String? deviceId, int? accountId, String? keyword, int? retailerId, int? retailerLocationId, String? offerType, String? specialOfferType, String? barcodeType, String? barcodeEntry, String? isbn, String? asin, String? deviceStatus, bool? needsNotificationSent, int? lastNotificationSent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/offer/location/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (offerType != null) {
      queryParams.addAll(_queryParams('', 'offerType', offerType));
    }
    if (specialOfferType != null) {
      queryParams.addAll(_queryParams('', 'specialOfferType', specialOfferType));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
      queryParams.addAll(_queryParams('', 'includeRetailerLocation', includeRetailerLocation));
    if (barcodeType != null) {
      queryParams.addAll(_queryParams('', 'barcodeType', barcodeType));
    }
    if (barcodeEntry != null) {
      queryParams.addAll(_queryParams('', 'barcodeEntry', barcodeEntry));
    }
    if (isbn != null) {
      queryParams.addAll(_queryParams('', 'isbn', isbn));
    }
    if (asin != null) {
      queryParams.addAll(_queryParams('', 'asin', asin));
    }
    if (deviceStatus != null) {
      queryParams.addAll(_queryParams('', 'deviceStatus', deviceStatus));
    }
    if (needsNotificationSent != null) {
      queryParams.addAll(_queryParams('', 'needsNotificationSent', needsNotificationSent));
    }
    if (lastNotificationSent != null) {
      queryParams.addAll(_queryParams('', 'lastNotificationSent', lastNotificationSent));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Offer Locations
  ///
  /// Searches on offer locations, which are records that represent an offer that has been assigned to a retailer location. If an offer does not have any locations assigned, then it will NOT be returned.
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   The column to sort the results on. Default is \"TITLE\", which will sort the results by the offer title. Possible input values: {CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, RETAILER_ID,RETAILER_LOCATION_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY}
  ///
  /// * [bool] descending (required):
  ///   The order to return the results. Default is false, which will return the results in ascending order.
  ///
  /// * [int] start (required):
  ///   The index into the record set to start with. Default is 0.
  ///
  /// * [int] limit (required):
  ///   The total number of records to return. Default is 20.
  ///
  /// * [bool] activeOnly (required):
  ///   Determines whether to return only active results. Default is false.
  ///
  /// * [bool] includeRetailerLocation (required):
  ///   
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [int] retailerId:
  ///   Filter results for a specific retailer
  ///
  /// * [int] retailerLocationId:
  ///   Filter results for a specific retailer location
  ///
  /// * [String] offerType:
  ///   Filter results to only return COUPON, VOUCHER, PRODUCT, MEDIA, or EVENT offers
  ///
  /// * [String] specialOfferType:
  ///   Filter results to only return REGULAR_OFFER, ACT_NOW, GET_THERE_NOW offer specials
  ///
  /// * [String] barcodeType:
  ///   
  ///
  /// * [String] barcodeEntry:
  ///   
  ///
  /// * [String] isbn:
  ///   
  ///
  /// * [String] asin:
  ///   
  ///
  /// * [String] deviceStatus:
  ///   Edysen device status, running, warning, or down
  ///
  /// * [bool] needsNotificationSent:
  ///   
  ///
  /// * [int] lastNotificationSent:
  ///   
  Future<List<OfferShortResponse>?> getOfferLocationsForRetailers(String sortField, bool descending, int start, int limit, bool activeOnly, bool includeRetailerLocation, { String? deviceId, int? accountId, String? keyword, int? retailerId, int? retailerLocationId, String? offerType, String? specialOfferType, String? barcodeType, String? barcodeEntry, String? isbn, String? asin, String? deviceStatus, bool? needsNotificationSent, int? lastNotificationSent, }) async {
    final response = await getOfferLocationsForRetailersWithHttpInfo(sortField, descending, start, limit, activeOnly, includeRetailerLocation,  deviceId: deviceId, accountId: accountId, keyword: keyword, retailerId: retailerId, retailerLocationId: retailerLocationId, offerType: offerType, specialOfferType: specialOfferType, barcodeType: barcodeType, barcodeEntry: barcodeEntry, isbn: isbn, asin: asin, deviceStatus: deviceStatus, needsNotificationSent: needsNotificationSent, lastNotificationSent: lastNotificationSent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OfferShortResponse>') as List)
        .cast<OfferShortResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Offers
  ///
  /// Searches on offers that the account has access to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] offerVisibility (required):
  ///   
  ///
  /// * [String] sortField (required):
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, ESTIMATED_VALUE, VOUCHER_PRICE, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY
  ///
  /// * [bool] descending (required):
  ///   The order to return the search results
  ///
  /// * [int] start (required):
  ///   The record to begin the return set on
  ///
  /// * [int] limit (required):
  ///   The number of records to return
  ///
  /// * [bool] availableOnly (required):
  ///   Return only results that are currently being promoted (is activated and not expired)
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [bool] includeCategories (required):
  ///   
  ///
  /// * [bool] includeFilters (required):
  ///   
  ///
  /// * [bool] includeOfferLocations (required):
  ///   
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] categoryIds:
  ///   
  ///
  /// * [String] filterIds:
  ///   
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [int] retailerId:
  ///   the id of the retailer
  ///
  /// * [int] retailerLocationId:
  ///   the id of the retailer location
  ///
  /// * [String] couponType:
  ///   This parameter is deprecated.
  ///
  /// * [String] offerType:
  ///   This parameter is deprecated. Use offer types. Filter results to only return COUPON, VOUCHER, PRODUCT, MEDIA, or EVENT offers
  ///
  /// * [String] offerTypes:
  ///   Comma separated list of offer types {COUPON, VOUCHER, PRODUCT, MEDIA, EVENT, DEVICE}
  ///
  /// * [String] specialOfferType:
  ///   Filter results to only return REGULAR_OFFER, ACT_NOW, GET_THERE_NOW offer specials
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [String] barcodeType:
  ///   
  ///
  /// * [String] barcodeEntry:
  ///   
  ///
  /// * [String] isbn:
  ///   
  ///
  /// * [String] asin:
  ///   
  ///
  /// * [String] deviceStatus:
  ///   Edysen device status
  ///
  /// * [bool] needsNotificationSent:
  ///   
  ///
  /// * [int] lastNotificationSent:
  ///   
  Future<Response> getOffersForRetailersWithHttpInfo(String offerVisibility, String sortField, bool descending, int start, int limit, bool availableOnly, bool activeOnly, bool includeCategories, bool includeFilters, bool includeOfferLocations, { String? deviceId, int? accountId, String? categoryIds, String? filterIds, String? q, String? keyword, int? retailerId, int? retailerLocationId, String? couponType, String? offerType, String? offerTypes, String? specialOfferType, int? i, int? l, String? barcodeType, String? barcodeEntry, String? isbn, String? asin, String? deviceStatus, bool? needsNotificationSent, int? lastNotificationSent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/offer/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (couponType != null) {
      queryParams.addAll(_queryParams('', 'couponType', couponType));
    }
    if (offerType != null) {
      queryParams.addAll(_queryParams('', 'offerType', offerType));
    }
    if (offerTypes != null) {
      queryParams.addAll(_queryParams('', 'offerTypes', offerTypes));
    }
    if (specialOfferType != null) {
      queryParams.addAll(_queryParams('', 'specialOfferType', specialOfferType));
    }
      queryParams.addAll(_queryParams('', 'offerVisibility', offerVisibility));
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
      queryParams.addAll(_queryParams('', 'start', start));
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'availableOnly', availableOnly));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
      queryParams.addAll(_queryParams('', 'includeCategories', includeCategories));
      queryParams.addAll(_queryParams('', 'includeFilters', includeFilters));
      queryParams.addAll(_queryParams('', 'includeOfferLocations', includeOfferLocations));
    if (barcodeType != null) {
      queryParams.addAll(_queryParams('', 'barcodeType', barcodeType));
    }
    if (barcodeEntry != null) {
      queryParams.addAll(_queryParams('', 'barcodeEntry', barcodeEntry));
    }
    if (isbn != null) {
      queryParams.addAll(_queryParams('', 'isbn', isbn));
    }
    if (asin != null) {
      queryParams.addAll(_queryParams('', 'asin', asin));
    }
    if (deviceStatus != null) {
      queryParams.addAll(_queryParams('', 'deviceStatus', deviceStatus));
    }
    if (needsNotificationSent != null) {
      queryParams.addAll(_queryParams('', 'needsNotificationSent', needsNotificationSent));
    }
    if (lastNotificationSent != null) {
      queryParams.addAll(_queryParams('', 'lastNotificationSent', lastNotificationSent));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Offers
  ///
  /// Searches on offers that the account has access to.
  ///
  /// Parameters:
  ///
  /// * [String] offerVisibility (required):
  ///   
  ///
  /// * [String] sortField (required):
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, ESTIMATED_VALUE, VOUCHER_PRICE, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY
  ///
  /// * [bool] descending (required):
  ///   The order to return the search results
  ///
  /// * [int] start (required):
  ///   The record to begin the return set on
  ///
  /// * [int] limit (required):
  ///   The number of records to return
  ///
  /// * [bool] availableOnly (required):
  ///   Return only results that are currently being promoted (is activated and not expired)
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [bool] includeCategories (required):
  ///   
  ///
  /// * [bool] includeFilters (required):
  ///   
  ///
  /// * [bool] includeOfferLocations (required):
  ///   
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] categoryIds:
  ///   
  ///
  /// * [String] filterIds:
  ///   
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [int] retailerId:
  ///   the id of the retailer
  ///
  /// * [int] retailerLocationId:
  ///   the id of the retailer location
  ///
  /// * [String] couponType:
  ///   This parameter is deprecated.
  ///
  /// * [String] offerType:
  ///   This parameter is deprecated. Use offer types. Filter results to only return COUPON, VOUCHER, PRODUCT, MEDIA, or EVENT offers
  ///
  /// * [String] offerTypes:
  ///   Comma separated list of offer types {COUPON, VOUCHER, PRODUCT, MEDIA, EVENT, DEVICE}
  ///
  /// * [String] specialOfferType:
  ///   Filter results to only return REGULAR_OFFER, ACT_NOW, GET_THERE_NOW offer specials
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  ///
  /// * [String] barcodeType:
  ///   
  ///
  /// * [String] barcodeEntry:
  ///   
  ///
  /// * [String] isbn:
  ///   
  ///
  /// * [String] asin:
  ///   
  ///
  /// * [String] deviceStatus:
  ///   Edysen device status
  ///
  /// * [bool] needsNotificationSent:
  ///   
  ///
  /// * [int] lastNotificationSent:
  ///   
  Future<List<OfferResponse>?> getOffersForRetailers(String offerVisibility, String sortField, bool descending, int start, int limit, bool availableOnly, bool activeOnly, bool includeCategories, bool includeFilters, bool includeOfferLocations, { String? deviceId, int? accountId, String? categoryIds, String? filterIds, String? q, String? keyword, int? retailerId, int? retailerLocationId, String? couponType, String? offerType, String? offerTypes, String? specialOfferType, int? i, int? l, String? barcodeType, String? barcodeEntry, String? isbn, String? asin, String? deviceStatus, bool? needsNotificationSent, int? lastNotificationSent, }) async {
    final response = await getOffersForRetailersWithHttpInfo(offerVisibility, sortField, descending, start, limit, availableOnly, activeOnly, includeCategories, includeFilters, includeOfferLocations,  deviceId: deviceId, accountId: accountId, categoryIds: categoryIds, filterIds: filterIds, q: q, keyword: keyword, retailerId: retailerId, retailerLocationId: retailerLocationId, couponType: couponType, offerType: offerType, offerTypes: offerTypes, specialOfferType: specialOfferType, i: i, l: l, barcodeType: barcodeType, barcodeEntry: barcodeEntry, isbn: isbn, asin: asin, deviceStatus: deviceStatus, needsNotificationSent: needsNotificationSent, lastNotificationSent: lastNotificationSent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OfferResponse>') as List)
        .cast<OfferResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Offer Transaction
  ///
  /// Redeems an offer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offerTransactionId (required):
  ///   the OfferTransaction ID of the transaction being redeemed
  ///
  /// * [int] status (required):
  ///   the status to set the offer transaction to - 1 sets it to redeemable and 2 sets it to redeemed
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] offerLocationId:
  ///   the OfferLocation ID where the offer is being redeemed
  Future<Response> redeemOfferTransactionWithHttpInfo(int offerTransactionId, int status, { String? deviceId, int? accountId, int? offerLocationId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/offer/transaction/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'offerTransactionId', offerTransactionId));
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
      queryParams.addAll(_queryParams('', 'status', status));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Offer Transaction
  ///
  /// Redeems an offer.
  ///
  /// Parameters:
  ///
  /// * [int] offerTransactionId (required):
  ///   the OfferTransaction ID of the transaction being redeemed
  ///
  /// * [int] status (required):
  ///   the status to set the offer transaction to - 1 sets it to redeemable and 2 sets it to redeemed
  ///
  /// * [String] deviceId:
  ///   the device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   the account id of the user (deviceId or accountId required)
  ///
  /// * [int] offerLocationId:
  ///   the OfferLocation ID where the offer is being redeemed
  Future<SirqulResponse?> redeemOfferTransaction(int offerTransactionId, int status, { String? deviceId, int? accountId, int? offerLocationId, }) async {
    final response = await redeemOfferTransactionWithHttpInfo(offerTransactionId, status,  deviceId: deviceId, accountId: accountId, offerLocationId: offerLocationId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }

  /// Search Offer Transactions
  ///
  /// Searches on offer transactions for offers that the account has access to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   Determines what to sort the results by {CREATED, UPDATED, SEARCH_TAGS, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, CUSTOMER_ID, CUSTOMER_DISPLAY, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY}
  ///
  /// * [bool] descending (required):
  ///   Determines whether the results are in descending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [bool] activeOnly (required):
  ///   Determines whether to only return active offer transactions
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   The keyword to search for
  ///
  /// * [int] retailerId:
  ///   Filter results for this retailer
  ///
  /// * [int] retailerLocationId:
  ///   Filter results for this retailer location
  ///
  /// * [int] offerId:
  ///   Filter results for this offer
  ///
  /// * [int] offerLocationId:
  ///   Filter results for this offer location
  ///
  /// * [bool] redeemed:
  ///   if true return redeemed transactions (status 2), if false return active transactions (status 0 or 1)
  ///
  /// * [bool] reservationsOnly:
  ///   returns only reservation transactions if true
  ///
  /// * [String] couponType:
  ///   This parameter is deprecated.
  ///
  /// * [String] offerType:
  ///   Filter results to only return COUPON, VOUCHER, PRODUCT, MEDIA, or EVENT offers
  ///
  /// * [String] specialOfferType:
  ///   Filter results to only return REGULAR_OFFER, ACT_NOW, GET_THERE_NOW offer specials
  ///
  /// * [String] customerAccountIds:
  ///   Filter results by accounts
  ///
  /// * [String] categoryIds:
  ///   
  ///
  /// * [int] redeemableStartDate:
  ///   
  ///
  /// * [int] redeemableEndDate:
  ///   
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  Future<Response> searchOfferTransactionsForRetailersWithHttpInfo(String sortField, bool descending, int start, int limit, bool activeOnly, { String? deviceId, int? accountId, String? q, String? keyword, int? retailerId, int? retailerLocationId, int? offerId, int? offerLocationId, bool? redeemed, bool? reservationsOnly, String? couponType, String? offerType, String? specialOfferType, String? customerAccountIds, String? categoryIds, int? redeemableStartDate, int? redeemableEndDate, int? i, int? l, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/offer/transaction/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (retailerId != null) {
      queryParams.addAll(_queryParams('', 'retailerId', retailerId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (redeemed != null) {
      queryParams.addAll(_queryParams('', 'redeemed', redeemed));
    }
    if (reservationsOnly != null) {
      queryParams.addAll(_queryParams('', 'reservationsOnly', reservationsOnly));
    }
    if (couponType != null) {
      queryParams.addAll(_queryParams('', 'couponType', couponType));
    }
    if (offerType != null) {
      queryParams.addAll(_queryParams('', 'offerType', offerType));
    }
    if (specialOfferType != null) {
      queryParams.addAll(_queryParams('', 'specialOfferType', specialOfferType));
    }
    if (customerAccountIds != null) {
      queryParams.addAll(_queryParams('', 'customerAccountIds', customerAccountIds));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (redeemableStartDate != null) {
      queryParams.addAll(_queryParams('', 'redeemableStartDate', redeemableStartDate));
    }
    if (redeemableEndDate != null) {
      queryParams.addAll(_queryParams('', 'redeemableEndDate', redeemableEndDate));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
    if (i != null) {
      queryParams.addAll(_queryParams('', '_i', i));
    }
      queryParams.addAll(_queryParams('', 'start', start));
    if (l != null) {
      queryParams.addAll(_queryParams('', '_l', l));
    }
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Offer Transactions
  ///
  /// Searches on offer transactions for offers that the account has access to.
  ///
  /// Parameters:
  ///
  /// * [String] sortField (required):
  ///   Determines what to sort the results by {CREATED, UPDATED, SEARCH_TAGS, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, CUSTOMER_ID, CUSTOMER_DISPLAY, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY}
  ///
  /// * [bool] descending (required):
  ///   Determines whether the results are in descending order
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [bool] activeOnly (required):
  ///   Determines whether to only return active offer transactions
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] q:
  ///   This parameter is deprecated.
  ///
  /// * [String] keyword:
  ///   The keyword to search for
  ///
  /// * [int] retailerId:
  ///   Filter results for this retailer
  ///
  /// * [int] retailerLocationId:
  ///   Filter results for this retailer location
  ///
  /// * [int] offerId:
  ///   Filter results for this offer
  ///
  /// * [int] offerLocationId:
  ///   Filter results for this offer location
  ///
  /// * [bool] redeemed:
  ///   if true return redeemed transactions (status 2), if false return active transactions (status 0 or 1)
  ///
  /// * [bool] reservationsOnly:
  ///   returns only reservation transactions if true
  ///
  /// * [String] couponType:
  ///   This parameter is deprecated.
  ///
  /// * [String] offerType:
  ///   Filter results to only return COUPON, VOUCHER, PRODUCT, MEDIA, or EVENT offers
  ///
  /// * [String] specialOfferType:
  ///   Filter results to only return REGULAR_OFFER, ACT_NOW, GET_THERE_NOW offer specials
  ///
  /// * [String] customerAccountIds:
  ///   Filter results by accounts
  ///
  /// * [String] categoryIds:
  ///   
  ///
  /// * [int] redeemableStartDate:
  ///   
  ///
  /// * [int] redeemableEndDate:
  ///   
  ///
  /// * [int] i:
  ///   This parameter is deprecated.
  ///
  /// * [int] l:
  ///   This parameter is deprecated.
  Future<List<OfferTransactionResponse>?> searchOfferTransactionsForRetailers(String sortField, bool descending, int start, int limit, bool activeOnly, { String? deviceId, int? accountId, String? q, String? keyword, int? retailerId, int? retailerLocationId, int? offerId, int? offerLocationId, bool? redeemed, bool? reservationsOnly, String? couponType, String? offerType, String? specialOfferType, String? customerAccountIds, String? categoryIds, int? redeemableStartDate, int? redeemableEndDate, int? i, int? l, }) async {
    final response = await searchOfferTransactionsForRetailersWithHttpInfo(sortField, descending, start, limit, activeOnly,  deviceId: deviceId, accountId: accountId, q: q, keyword: keyword, retailerId: retailerId, retailerLocationId: retailerLocationId, offerId: offerId, offerLocationId: offerLocationId, redeemed: redeemed, reservationsOnly: reservationsOnly, couponType: couponType, offerType: offerType, specialOfferType: specialOfferType, customerAccountIds: customerAccountIds, categoryIds: categoryIds, redeemableStartDate: redeemableStartDate, redeemableEndDate: redeemableEndDate, i: i, l: l, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OfferTransactionResponse>') as List)
        .cast<OfferTransactionResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Offers
  ///
  /// Searches for offers as a consumer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [double] latitude (required):
  ///   The latitude of where the search will center at
  ///
  /// * [double] longitude (required):
  ///   The longitude of where the search will center at
  ///
  /// * [String] recommendationType (required):
  ///   The method to use to gather recommendations: WALLET base relevance on items in users wallets CLICKS base relevance on items users have clicked on BLENDED blend using all methods available
  ///
  /// * [int] locationId (required):
  ///   This parameter is deprecated. The location id
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [int] maxRecommendations (required):
  ///   
  ///
  /// * [String] distanceUnit (required):
  ///   
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] deviceId:
  ///   The device id for returning account information (i.e. offer transactions made by the user)
  ///
  /// * [int] accountId:
  ///   The account id for returning account information (i.e. offer transactions made by the user)
  ///
  /// * [double] searchRange:
  ///   The range of the search
  ///
  /// * [String] tags:
  ///   Does a full-text search on tags
  ///
  /// * [String] supportedPostalCodes:
  ///   supported postal codes
  ///
  /// * [String] keyword:
  ///   The keyword to filter results by
  ///
  /// * [String] categories:
  ///   Comma separate list of category ids
  ///
  /// * [String] filters:
  ///   Comma separated list of filter ids
  ///
  /// * [String] offerTypes:
  ///   Comma separated list of offer types {COUPON, VOUCHER, PRODUCT, MEDIA, EVENT, DEVICE}
  ///
  /// * [String] type:
  ///   The special offer type {ALL, RESERVABLE, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW}
  ///
  /// * [String] sortField:
  ///   The field to sort the result set on:DISTANCE Sort the offers nearest to farthest BUSINESS_NAME Sort the offers alphabetically by location name SHUFFLE Sort the nearest offers randomly USERPREFS accountId must accompany this parameter. Gives the first X recommendations where X equals the parameter maxRecommendations
  ///
  /// * [String] recommendOfferIds:
  ///   Return recommendations based on these offers IDs
  ///
  /// * [String] retailerLocationIds:
  ///   Only return offer locations for the specific retailer locations.
  ///
  /// * [int] offerId:
  ///   Only return offer locations for the specific offer.
  ///
  /// * [bool] includeMission:
  ///   If true include the mission response as part of the offer. Default is false.
  ///
  /// * [bool] includeCategories:
  ///   If true include the category list response as part of the offer. Default is false.
  ///
  /// * [bool] includeFilters:
  ///   If true include the filter list response as part of the offer. Default is false.
  ///
  /// * [bool] includeExpired:
  ///   If true then ignore the expired dates. Default is false.
  ///
  /// * [bool] includeFavorite:
  ///   If true then ignore the favorite. Default is false.
  ///
  /// * [bool] closestOfferOnly:
  ///   This parameter is deprecated. see groupBy. If true then it only returns the offer location for an offer closest to the given lat/lon
  ///
  /// * [String] searchExpression:
  ///   
  ///
  /// * [String] groupBy:
  ///   groups the results by a certain field. For example, if you want to return the closest offer location of an offer, then pass in groupBy=OFFER_ID and sortField=DISTANCE (to sort by distance).
  Future<Response> searchOffersForConsumerWithHttpInfo(double latitude, double longitude, String recommendationType, int locationId, int start, int limit, int maxRecommendations, String distanceUnit, { String? appKey, String? deviceId, int? accountId, double? searchRange, String? tags, String? supportedPostalCodes, String? keyword, String? categories, String? filters, String? offerTypes, String? type, String? sortField, String? recommendOfferIds, String? retailerLocationIds, int? offerId, bool? includeMission, bool? includeCategories, bool? includeFilters, bool? includeExpired, bool? includeFavorite, bool? closestOfferOnly, String? searchExpression, String? groupBy, }) async {
    // ignore: prefer_const_declarations
    final path = r'/offer/lists';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'latitude', latitude));
      queryParams.addAll(_queryParams('', 'longitude', longitude));
    if (searchRange != null) {
      queryParams.addAll(_queryParams('', 'searchRange', searchRange));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (supportedPostalCodes != null) {
      queryParams.addAll(_queryParams('', 'supportedPostalCodes', supportedPostalCodes));
    }
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (categories != null) {
      queryParams.addAll(_queryParams('', 'categories', categories));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (offerTypes != null) {
      queryParams.addAll(_queryParams('', 'offerTypes', offerTypes));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (recommendOfferIds != null) {
      queryParams.addAll(_queryParams('', 'recommendOfferIds', recommendOfferIds));
    }
      queryParams.addAll(_queryParams('', 'recommendationType', recommendationType));
      queryParams.addAll(_queryParams('', 'locationId', locationId));
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (includeMission != null) {
      queryParams.addAll(_queryParams('', 'includeMission', includeMission));
    }
    if (includeCategories != null) {
      queryParams.addAll(_queryParams('', 'includeCategories', includeCategories));
    }
    if (includeFilters != null) {
      queryParams.addAll(_queryParams('', 'includeFilters', includeFilters));
    }
    if (includeExpired != null) {
      queryParams.addAll(_queryParams('', 'includeExpired', includeExpired));
    }
    if (includeFavorite != null) {
      queryParams.addAll(_queryParams('', 'includeFavorite', includeFavorite));
    }
      queryParams.addAll(_queryParams('', 'start', start));
      queryParams.addAll(_queryParams('', 'limit', limit));
      queryParams.addAll(_queryParams('', 'maxRecommendations', maxRecommendations));
      queryParams.addAll(_queryParams('', 'distanceUnit', distanceUnit));
    if (closestOfferOnly != null) {
      queryParams.addAll(_queryParams('', 'closestOfferOnly', closestOfferOnly));
    }
    if (searchExpression != null) {
      queryParams.addAll(_queryParams('', 'searchExpression', searchExpression));
    }
    if (groupBy != null) {
      queryParams.addAll(_queryParams('', 'groupBy', groupBy));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Offers
  ///
  /// Searches for offers as a consumer.
  ///
  /// Parameters:
  ///
  /// * [double] latitude (required):
  ///   The latitude of where the search will center at
  ///
  /// * [double] longitude (required):
  ///   The longitude of where the search will center at
  ///
  /// * [String] recommendationType (required):
  ///   The method to use to gather recommendations: WALLET base relevance on items in users wallets CLICKS base relevance on items users have clicked on BLENDED blend using all methods available
  ///
  /// * [int] locationId (required):
  ///   This parameter is deprecated. The location id
  ///
  /// * [int] start (required):
  ///   The start index for pagination
  ///
  /// * [int] limit (required):
  ///   The limit for pagination
  ///
  /// * [int] maxRecommendations (required):
  ///   
  ///
  /// * [String] distanceUnit (required):
  ///   
  ///
  /// * [String] appKey:
  ///   The application key used to identify the application
  ///
  /// * [String] deviceId:
  ///   The device id for returning account information (i.e. offer transactions made by the user)
  ///
  /// * [int] accountId:
  ///   The account id for returning account information (i.e. offer transactions made by the user)
  ///
  /// * [double] searchRange:
  ///   The range of the search
  ///
  /// * [String] tags:
  ///   Does a full-text search on tags
  ///
  /// * [String] supportedPostalCodes:
  ///   supported postal codes
  ///
  /// * [String] keyword:
  ///   The keyword to filter results by
  ///
  /// * [String] categories:
  ///   Comma separate list of category ids
  ///
  /// * [String] filters:
  ///   Comma separated list of filter ids
  ///
  /// * [String] offerTypes:
  ///   Comma separated list of offer types {COUPON, VOUCHER, PRODUCT, MEDIA, EVENT, DEVICE}
  ///
  /// * [String] type:
  ///   The special offer type {ALL, RESERVABLE, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW}
  ///
  /// * [String] sortField:
  ///   The field to sort the result set on:DISTANCE Sort the offers nearest to farthest BUSINESS_NAME Sort the offers alphabetically by location name SHUFFLE Sort the nearest offers randomly USERPREFS accountId must accompany this parameter. Gives the first X recommendations where X equals the parameter maxRecommendations
  ///
  /// * [String] recommendOfferIds:
  ///   Return recommendations based on these offers IDs
  ///
  /// * [String] retailerLocationIds:
  ///   Only return offer locations for the specific retailer locations.
  ///
  /// * [int] offerId:
  ///   Only return offer locations for the specific offer.
  ///
  /// * [bool] includeMission:
  ///   If true include the mission response as part of the offer. Default is false.
  ///
  /// * [bool] includeCategories:
  ///   If true include the category list response as part of the offer. Default is false.
  ///
  /// * [bool] includeFilters:
  ///   If true include the filter list response as part of the offer. Default is false.
  ///
  /// * [bool] includeExpired:
  ///   If true then ignore the expired dates. Default is false.
  ///
  /// * [bool] includeFavorite:
  ///   If true then ignore the favorite. Default is false.
  ///
  /// * [bool] closestOfferOnly:
  ///   This parameter is deprecated. see groupBy. If true then it only returns the offer location for an offer closest to the given lat/lon
  ///
  /// * [String] searchExpression:
  ///   
  ///
  /// * [String] groupBy:
  ///   groups the results by a certain field. For example, if you want to return the closest offer location of an offer, then pass in groupBy=OFFER_ID and sortField=DISTANCE (to sort by distance).
  Future<OfferListResponse?> searchOffersForConsumer(double latitude, double longitude, String recommendationType, int locationId, int start, int limit, int maxRecommendations, String distanceUnit, { String? appKey, String? deviceId, int? accountId, double? searchRange, String? tags, String? supportedPostalCodes, String? keyword, String? categories, String? filters, String? offerTypes, String? type, String? sortField, String? recommendOfferIds, String? retailerLocationIds, int? offerId, bool? includeMission, bool? includeCategories, bool? includeFilters, bool? includeExpired, bool? includeFavorite, bool? closestOfferOnly, String? searchExpression, String? groupBy, }) async {
    final response = await searchOffersForConsumerWithHttpInfo(latitude, longitude, recommendationType, locationId, start, limit, maxRecommendations, distanceUnit,  appKey: appKey, deviceId: deviceId, accountId: accountId, searchRange: searchRange, tags: tags, supportedPostalCodes: supportedPostalCodes, keyword: keyword, categories: categories, filters: filters, offerTypes: offerTypes, type: type, sortField: sortField, recommendOfferIds: recommendOfferIds, retailerLocationIds: retailerLocationIds, offerId: offerId, includeMission: includeMission, includeCategories: includeCategories, includeFilters: includeFilters, includeExpired: includeExpired, includeFavorite: includeFavorite, closestOfferOnly: closestOfferOnly, searchExpression: searchExpression, groupBy: groupBy, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferListResponse',) as OfferListResponse;
    
    }
    return null;
  }

  /// Get Offers (Top)
  ///
  /// Gets the top active offers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   The index into the record set to start with. Default is 0.
  ///
  /// * [int] limit:
  ///   The total number of record to return. Default id 20.
  Future<Response> topOfferTransactionsWithHttpInfo({ int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/offer/top';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Offers (Top)
  ///
  /// Gets the top active offers.
  ///
  /// Parameters:
  ///
  /// * [int] start:
  ///   The index into the record set to start with. Default is 0.
  ///
  /// * [int] limit:
  ///   The total number of record to return. Default id 20.
  Future<OfferListResponse?> topOfferTransactions({ int? start, int? limit, }) async {
    final response = await topOfferTransactionsWithHttpInfo( start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OfferListResponse',) as OfferListResponse;
    
    }
    return null;
  }

  /// Update Offer
  ///
  /// Update an offer, must provide a current list of retailer locations or the current offer locations will be marked as deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offerId (required):
  ///   The offer to update
  ///
  /// * [bool] includeOfferLocations (required):
  ///   If true return all the offer locations associated with the offer
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the update, must have rights to edit the offer (deviceId or accountId required)
  ///
  /// * [int] parentOfferId:
  ///   
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids. This will assign the offer to these retailer locations.
  ///
  /// * [String] offerLocations:
  ///   A list of json data that has offer location specific values.
  ///
  /// * [String] tags:
  ///   Custom string field for doing full-text searches
  ///
  /// * [String] title:
  ///   The title (255 char limit)
  ///
  /// * [String] subTitle:
  ///   The sub title (255 char limit)
  ///
  /// * [String] details:
  ///   The details
  ///
  /// * [String] subDetails:
  ///   A string for custom details (255 char limit)
  ///
  /// * [String] finePrint:
  ///   The fine print
  ///
  /// * [String] barcodeType:
  ///   The bar code type {NONE, UPC, CODE_128, QR, CUSTOM_MEDIA}
  ///
  /// * [String] barcodeEntry:
  ///   The bar code entry string
  ///
  /// * [String] externalRedeemOptions:
  ///   An external identifier. What the identifier will be used for and how it is formatted is up to the frontend developer.
  ///
  /// * [String] externalUrl:
  ///   The clickUrl of the offer
  ///
  /// * [String] externalId:
  ///   
  ///
  /// * [String] ticketsRewardType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] ticketsReward:
  ///   Determines how many tickets are awarded
  ///
  /// * [int] activated:
  ///   The date of when the offer will be visible to consumers
  ///
  /// * [int] expires:
  ///   The date of when the offer expires
  ///
  /// * [bool] noExpiration:
  ///   Overrides the expiration date so that the offer does not expire
  ///
  /// * [int] availableLimit:
  ///   The limit of how many times the offer can be used by consumers
  ///
  /// * [int] availableLimitPerUser:
  ///   The limit of how many times a user can used the same offer
  ///
  /// * [int] addedLimit:
  ///   The limit of how many times the offer can be added to consumer wallets
  ///
  /// * [int] viewLimit:
  ///   
  ///
  /// * [int] maxPrints:
  ///   The maximum number of times the offer can be printed
  ///
  /// * [String] ticketPriceType:
  ///   the type of ticket needed to buy the offer
  ///
  /// * [int] ticketPrice:
  ///   The cost of the offer in tickets
  ///
  /// * [double] fullPrice:
  ///   The retail/full price cost of the offer in real currency
  ///
  /// * [double] discountPrice:
  ///   The cost of the offer at a discounted price (what the consumer pays)
  ///
  /// * [bool] showRemaining:
  ///   show remaining offers available
  ///
  /// * [bool] showRedeemed:
  ///   show how many offers have been redeemed
  ///
  /// * [bool] replaced:
  ///   
  ///
  /// * [bool] featured:
  ///   whether the offer is featured or not
  ///
  /// * [String] offerType:
  ///   The offer type {VOUCHER, COUPON, PRODUCT, MEDIA, EVENT}
  ///
  /// * [String] specialOfferType:
  ///   The special offer type {ALL, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW}
  ///
  /// * [String] offerVisibility:
  ///   The offer visibility {PUBLIC, REWARDABLE, TRIGGERABLE}
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter ids
  ///
  /// * [bool] active:
  ///   Sets the active flag
  ///
  /// * [int] barcodeAssetId:
  ///   The id of the barcode asset
  ///
  /// * [int] imageAssetId:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId1:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId2:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId3:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId4:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId5:
  ///   The id of the an offer asset
  ///
  /// * [String] publisher:
  ///   The maker of the item.
  ///
  /// * [int] redeemableStart:
  ///   The redeemable start date/time of the offer.
  ///
  /// * [int] redeemableEnd:
  ///   The redeemable start date/time of the offer.
  ///
  /// * [String] brand:
  ///   The brand. OfferType PRODUCT only.
  ///
  /// * [String] productType:
  ///   The product type. OfferType PRODUCT only.
  ///
  /// * [String] conditionType:
  ///   The condition. OfferType PRODUCT only.
  ///
  /// * [String] isbn:
  ///   The ISBN id. OfferType PRODUCT only.
  ///
  /// * [String] asin:
  ///   The ASIN id. OfferType PRODUCT only.
  ///
  /// * [String] catalogNumbers:
  ///   The list of catelog numbers, comma seperated. OfferType PRODUCT only.
  ///
  /// * [String] department:
  ///   The department name. The OfferType PRODUCT only.
  ///
  /// * [String] features:
  ///   The list of features, comma seperated. OfferType PRODUCT only.
  ///
  /// * [double] minimumPrice:
  ///   The MAP price. OfferType PRODUCT only.
  ///
  /// * [double] width:
  ///   The width of the item. OfferType PRODUCT only.
  ///
  /// * [double] height:
  ///   The height of the item. OfferType PRODUCT only.
  ///
  /// * [double] depth:
  ///   The depth of the item. OfferType PRODUCT only.
  ///
  /// * [double] weight:
  ///   The weight of the item. OfferType PRODUCT only.
  ///
  /// * [String] unit:
  ///   The unit of measurement. OfferType PRODUCT only.
  ///
  /// * [String] studio:
  ///   The studio name. OfferType PRODUCT only.
  ///
  /// * [String] parentalRating:
  ///   The parental control rating. OfferType PRODUCT only.
  ///
  /// * [int] publishDate:
  ///   The date published. OfferType PRODUCT only.
  ///
  /// * [int] availabilityDate:
  ///   The date available. OfferType PRODUCT only.
  ///
  /// * [int] sizeId:
  ///   The size Id. OfferType PRODUCT only.
  ///
  /// * [int] listingId:
  ///   The ID of the event listing
  ///
  /// * [String] mediaType:
  ///   
  ///
  /// * [int] duration:
  ///   The total playing time of the media item. OfferType MEDIA only.
  ///
  /// * [String] author:
  ///   The created/author of the media item. OfferType MEDIA only.
  ///
  /// * [int] releaseDate:
  ///   The date/time of when the media item was originally released. OfferType MEDIA only.
  ///
  /// * [String] collectionIds:
  ///   
  ///
  /// * [int] rebootTimeHour:
  ///   The reboot hour time ranging from 0 to 23
  ///
  /// * [int] rebootTimeMinute:
  ///   The reboot minute time ranging from 0 to 59
  ///
  /// * [int] idleTimeoutInSecond:
  ///   If the device is idle for idleTimeoutInSecond then the device should timeout
  ///
  /// * [String] serialNumber:
  ///   The serial number on the device
  ///
  /// * [String] udid:
  ///   The unique device id for the device
  ///
  /// * [String] deviceType:
  ///   The type of the device, for example: \"Kiosk\", \"Beacon\".
  ///
  /// * [double] devicePower:
  ///   RSSI reading at 1 meter from device (-10 to -140)
  ///
  /// * [double] deviceInterference:
  ///   
  ///
  /// * [String] availability:
  ///   
  ///
  /// * [String] availabilitySummary:
  ///   
  Future<Response> updateOfferWithHttpInfo(int offerId, bool includeOfferLocations, { String? deviceId, int? accountId, int? parentOfferId, String? retailerLocationIds, String? offerLocations, String? tags, String? title, String? subTitle, String? details, String? subDetails, String? finePrint, String? barcodeType, String? barcodeEntry, String? externalRedeemOptions, String? externalUrl, String? externalId, String? ticketsRewardType, int? ticketsReward, int? activated, int? expires, bool? noExpiration, int? availableLimit, int? availableLimitPerUser, int? addedLimit, int? viewLimit, int? maxPrints, String? ticketPriceType, int? ticketPrice, double? fullPrice, double? discountPrice, bool? showRemaining, bool? showRedeemed, bool? replaced, bool? featured, String? offerType, String? specialOfferType, String? offerVisibility, String? categoryIds, String? filterIds, bool? active, int? barcodeAssetId, int? imageAssetId, int? imageAssetId1, int? imageAssetId2, int? imageAssetId3, int? imageAssetId4, int? imageAssetId5, String? publisher, int? redeemableStart, int? redeemableEnd, String? brand, String? productType, String? conditionType, String? isbn, String? asin, String? catalogNumbers, String? department, String? features, double? minimumPrice, double? width, double? height, double? depth, double? weight, String? unit, String? studio, String? parentalRating, int? publishDate, int? availabilityDate, int? sizeId, int? listingId, String? mediaType, int? duration, String? author, int? releaseDate, String? collectionIds, int? rebootTimeHour, int? rebootTimeMinute, int? idleTimeoutInSecond, String? serialNumber, String? udid, String? deviceType, double? devicePower, double? deviceInterference, String? availability, String? availabilitySummary, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/offer/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    if (parentOfferId != null) {
      queryParams.addAll(_queryParams('', 'parentOfferId', parentOfferId));
    }
      queryParams.addAll(_queryParams('', 'includeOfferLocations', includeOfferLocations));
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
    }
    if (offerLocations != null) {
      queryParams.addAll(_queryParams('', 'offerLocations', offerLocations));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('', 'tags', tags));
    }
    if (title != null) {
      queryParams.addAll(_queryParams('', 'title', title));
    }
    if (subTitle != null) {
      queryParams.addAll(_queryParams('', 'subTitle', subTitle));
    }
    if (details != null) {
      queryParams.addAll(_queryParams('', 'details', details));
    }
    if (subDetails != null) {
      queryParams.addAll(_queryParams('', 'subDetails', subDetails));
    }
    if (finePrint != null) {
      queryParams.addAll(_queryParams('', 'finePrint', finePrint));
    }
    if (barcodeType != null) {
      queryParams.addAll(_queryParams('', 'barcodeType', barcodeType));
    }
    if (barcodeEntry != null) {
      queryParams.addAll(_queryParams('', 'barcodeEntry', barcodeEntry));
    }
    if (externalRedeemOptions != null) {
      queryParams.addAll(_queryParams('', 'externalRedeemOptions', externalRedeemOptions));
    }
    if (externalUrl != null) {
      queryParams.addAll(_queryParams('', 'externalUrl', externalUrl));
    }
    if (externalId != null) {
      queryParams.addAll(_queryParams('', 'externalId', externalId));
    }
    if (ticketsRewardType != null) {
      queryParams.addAll(_queryParams('', 'ticketsRewardType', ticketsRewardType));
    }
    if (ticketsReward != null) {
      queryParams.addAll(_queryParams('', 'ticketsReward', ticketsReward));
    }
    if (activated != null) {
      queryParams.addAll(_queryParams('', 'activated', activated));
    }
    if (expires != null) {
      queryParams.addAll(_queryParams('', 'expires', expires));
    }
    if (noExpiration != null) {
      queryParams.addAll(_queryParams('', 'noExpiration', noExpiration));
    }
    if (availableLimit != null) {
      queryParams.addAll(_queryParams('', 'availableLimit', availableLimit));
    }
    if (availableLimitPerUser != null) {
      queryParams.addAll(_queryParams('', 'availableLimitPerUser', availableLimitPerUser));
    }
    if (addedLimit != null) {
      queryParams.addAll(_queryParams('', 'addedLimit', addedLimit));
    }
    if (viewLimit != null) {
      queryParams.addAll(_queryParams('', 'viewLimit', viewLimit));
    }
    if (maxPrints != null) {
      queryParams.addAll(_queryParams('', 'maxPrints', maxPrints));
    }
    if (ticketPriceType != null) {
      queryParams.addAll(_queryParams('', 'ticketPriceType', ticketPriceType));
    }
    if (ticketPrice != null) {
      queryParams.addAll(_queryParams('', 'ticketPrice', ticketPrice));
    }
    if (fullPrice != null) {
      queryParams.addAll(_queryParams('', 'fullPrice', fullPrice));
    }
    if (discountPrice != null) {
      queryParams.addAll(_queryParams('', 'discountPrice', discountPrice));
    }
    if (showRemaining != null) {
      queryParams.addAll(_queryParams('', 'showRemaining', showRemaining));
    }
    if (showRedeemed != null) {
      queryParams.addAll(_queryParams('', 'showRedeemed', showRedeemed));
    }
    if (replaced != null) {
      queryParams.addAll(_queryParams('', 'replaced', replaced));
    }
    if (featured != null) {
      queryParams.addAll(_queryParams('', 'featured', featured));
    }
    if (offerType != null) {
      queryParams.addAll(_queryParams('', 'offerType', offerType));
    }
    if (specialOfferType != null) {
      queryParams.addAll(_queryParams('', 'specialOfferType', specialOfferType));
    }
    if (offerVisibility != null) {
      queryParams.addAll(_queryParams('', 'offerVisibility', offerVisibility));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (barcodeAssetId != null) {
      queryParams.addAll(_queryParams('', 'barcodeAssetId', barcodeAssetId));
    }
    if (imageAssetId != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId', imageAssetId));
    }
    if (imageAssetId1 != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId1', imageAssetId1));
    }
    if (imageAssetId2 != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId2', imageAssetId2));
    }
    if (imageAssetId3 != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId3', imageAssetId3));
    }
    if (imageAssetId4 != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId4', imageAssetId4));
    }
    if (imageAssetId5 != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId5', imageAssetId5));
    }
    if (publisher != null) {
      queryParams.addAll(_queryParams('', 'publisher', publisher));
    }
    if (redeemableStart != null) {
      queryParams.addAll(_queryParams('', 'redeemableStart', redeemableStart));
    }
    if (redeemableEnd != null) {
      queryParams.addAll(_queryParams('', 'redeemableEnd', redeemableEnd));
    }
    if (brand != null) {
      queryParams.addAll(_queryParams('', 'brand', brand));
    }
    if (productType != null) {
      queryParams.addAll(_queryParams('', 'productType', productType));
    }
    if (conditionType != null) {
      queryParams.addAll(_queryParams('', 'conditionType', conditionType));
    }
    if (isbn != null) {
      queryParams.addAll(_queryParams('', 'isbn', isbn));
    }
    if (asin != null) {
      queryParams.addAll(_queryParams('', 'asin', asin));
    }
    if (catalogNumbers != null) {
      queryParams.addAll(_queryParams('', 'catalogNumbers', catalogNumbers));
    }
    if (department != null) {
      queryParams.addAll(_queryParams('', 'department', department));
    }
    if (features != null) {
      queryParams.addAll(_queryParams('', 'features', features));
    }
    if (minimumPrice != null) {
      queryParams.addAll(_queryParams('', 'minimumPrice', minimumPrice));
    }
    if (width != null) {
      queryParams.addAll(_queryParams('', 'width', width));
    }
    if (height != null) {
      queryParams.addAll(_queryParams('', 'height', height));
    }
    if (depth != null) {
      queryParams.addAll(_queryParams('', 'depth', depth));
    }
    if (weight != null) {
      queryParams.addAll(_queryParams('', 'weight', weight));
    }
    if (unit != null) {
      queryParams.addAll(_queryParams('', 'unit', unit));
    }
    if (studio != null) {
      queryParams.addAll(_queryParams('', 'studio', studio));
    }
    if (parentalRating != null) {
      queryParams.addAll(_queryParams('', 'parentalRating', parentalRating));
    }
    if (publishDate != null) {
      queryParams.addAll(_queryParams('', 'publishDate', publishDate));
    }
    if (availabilityDate != null) {
      queryParams.addAll(_queryParams('', 'availabilityDate', availabilityDate));
    }
    if (sizeId != null) {
      queryParams.addAll(_queryParams('', 'sizeId', sizeId));
    }
    if (listingId != null) {
      queryParams.addAll(_queryParams('', 'listingId', listingId));
    }
    if (mediaType != null) {
      queryParams.addAll(_queryParams('', 'mediaType', mediaType));
    }
    if (duration != null) {
      queryParams.addAll(_queryParams('', 'duration', duration));
    }
    if (author != null) {
      queryParams.addAll(_queryParams('', 'author', author));
    }
    if (releaseDate != null) {
      queryParams.addAll(_queryParams('', 'releaseDate', releaseDate));
    }
    if (collectionIds != null) {
      queryParams.addAll(_queryParams('', 'collectionIds', collectionIds));
    }
    if (rebootTimeHour != null) {
      queryParams.addAll(_queryParams('', 'rebootTimeHour', rebootTimeHour));
    }
    if (rebootTimeMinute != null) {
      queryParams.addAll(_queryParams('', 'rebootTimeMinute', rebootTimeMinute));
    }
    if (idleTimeoutInSecond != null) {
      queryParams.addAll(_queryParams('', 'idleTimeoutInSecond', idleTimeoutInSecond));
    }
    if (serialNumber != null) {
      queryParams.addAll(_queryParams('', 'serialNumber', serialNumber));
    }
    if (udid != null) {
      queryParams.addAll(_queryParams('', 'udid', udid));
    }
    if (deviceType != null) {
      queryParams.addAll(_queryParams('', 'deviceType', deviceType));
    }
    if (devicePower != null) {
      queryParams.addAll(_queryParams('', 'devicePower', devicePower));
    }
    if (deviceInterference != null) {
      queryParams.addAll(_queryParams('', 'deviceInterference', deviceInterference));
    }
    if (availability != null) {
      queryParams.addAll(_queryParams('', 'availability', availability));
    }
    if (availabilitySummary != null) {
      queryParams.addAll(_queryParams('', 'availabilitySummary', availabilitySummary));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Offer
  ///
  /// Update an offer, must provide a current list of retailer locations or the current offer locations will be marked as deleted.
  ///
  /// Parameters:
  ///
  /// * [int] offerId (required):
  ///   The offer to update
  ///
  /// * [bool] includeOfferLocations (required):
  ///   If true return all the offer locations associated with the offer
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the update, must have rights to edit the offer (deviceId or accountId required)
  ///
  /// * [int] parentOfferId:
  ///   
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids. This will assign the offer to these retailer locations.
  ///
  /// * [String] offerLocations:
  ///   A list of json data that has offer location specific values.
  ///
  /// * [String] tags:
  ///   Custom string field for doing full-text searches
  ///
  /// * [String] title:
  ///   The title (255 char limit)
  ///
  /// * [String] subTitle:
  ///   The sub title (255 char limit)
  ///
  /// * [String] details:
  ///   The details
  ///
  /// * [String] subDetails:
  ///   A string for custom details (255 char limit)
  ///
  /// * [String] finePrint:
  ///   The fine print
  ///
  /// * [String] barcodeType:
  ///   The bar code type {NONE, UPC, CODE_128, QR, CUSTOM_MEDIA}
  ///
  /// * [String] barcodeEntry:
  ///   The bar code entry string
  ///
  /// * [String] externalRedeemOptions:
  ///   An external identifier. What the identifier will be used for and how it is formatted is up to the frontend developer.
  ///
  /// * [String] externalUrl:
  ///   The clickUrl of the offer
  ///
  /// * [String] externalId:
  ///   
  ///
  /// * [String] ticketsRewardType:
  ///   The type of ticket to reward, null means default type
  ///
  /// * [int] ticketsReward:
  ///   Determines how many tickets are awarded
  ///
  /// * [int] activated:
  ///   The date of when the offer will be visible to consumers
  ///
  /// * [int] expires:
  ///   The date of when the offer expires
  ///
  /// * [bool] noExpiration:
  ///   Overrides the expiration date so that the offer does not expire
  ///
  /// * [int] availableLimit:
  ///   The limit of how many times the offer can be used by consumers
  ///
  /// * [int] availableLimitPerUser:
  ///   The limit of how many times a user can used the same offer
  ///
  /// * [int] addedLimit:
  ///   The limit of how many times the offer can be added to consumer wallets
  ///
  /// * [int] viewLimit:
  ///   
  ///
  /// * [int] maxPrints:
  ///   The maximum number of times the offer can be printed
  ///
  /// * [String] ticketPriceType:
  ///   the type of ticket needed to buy the offer
  ///
  /// * [int] ticketPrice:
  ///   The cost of the offer in tickets
  ///
  /// * [double] fullPrice:
  ///   The retail/full price cost of the offer in real currency
  ///
  /// * [double] discountPrice:
  ///   The cost of the offer at a discounted price (what the consumer pays)
  ///
  /// * [bool] showRemaining:
  ///   show remaining offers available
  ///
  /// * [bool] showRedeemed:
  ///   show how many offers have been redeemed
  ///
  /// * [bool] replaced:
  ///   
  ///
  /// * [bool] featured:
  ///   whether the offer is featured or not
  ///
  /// * [String] offerType:
  ///   The offer type {VOUCHER, COUPON, PRODUCT, MEDIA, EVENT}
  ///
  /// * [String] specialOfferType:
  ///   The special offer type {ALL, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW}
  ///
  /// * [String] offerVisibility:
  ///   The offer visibility {PUBLIC, REWARDABLE, TRIGGERABLE}
  ///
  /// * [String] categoryIds:
  ///   Comma separated list of category ids
  ///
  /// * [String] filterIds:
  ///   Comma separated list of filter ids
  ///
  /// * [bool] active:
  ///   Sets the active flag
  ///
  /// * [int] barcodeAssetId:
  ///   The id of the barcode asset
  ///
  /// * [int] imageAssetId:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId1:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId2:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId3:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId4:
  ///   The id of the an offer asset
  ///
  /// * [int] imageAssetId5:
  ///   The id of the an offer asset
  ///
  /// * [String] publisher:
  ///   The maker of the item.
  ///
  /// * [int] redeemableStart:
  ///   The redeemable start date/time of the offer.
  ///
  /// * [int] redeemableEnd:
  ///   The redeemable start date/time of the offer.
  ///
  /// * [String] brand:
  ///   The brand. OfferType PRODUCT only.
  ///
  /// * [String] productType:
  ///   The product type. OfferType PRODUCT only.
  ///
  /// * [String] conditionType:
  ///   The condition. OfferType PRODUCT only.
  ///
  /// * [String] isbn:
  ///   The ISBN id. OfferType PRODUCT only.
  ///
  /// * [String] asin:
  ///   The ASIN id. OfferType PRODUCT only.
  ///
  /// * [String] catalogNumbers:
  ///   The list of catelog numbers, comma seperated. OfferType PRODUCT only.
  ///
  /// * [String] department:
  ///   The department name. The OfferType PRODUCT only.
  ///
  /// * [String] features:
  ///   The list of features, comma seperated. OfferType PRODUCT only.
  ///
  /// * [double] minimumPrice:
  ///   The MAP price. OfferType PRODUCT only.
  ///
  /// * [double] width:
  ///   The width of the item. OfferType PRODUCT only.
  ///
  /// * [double] height:
  ///   The height of the item. OfferType PRODUCT only.
  ///
  /// * [double] depth:
  ///   The depth of the item. OfferType PRODUCT only.
  ///
  /// * [double] weight:
  ///   The weight of the item. OfferType PRODUCT only.
  ///
  /// * [String] unit:
  ///   The unit of measurement. OfferType PRODUCT only.
  ///
  /// * [String] studio:
  ///   The studio name. OfferType PRODUCT only.
  ///
  /// * [String] parentalRating:
  ///   The parental control rating. OfferType PRODUCT only.
  ///
  /// * [int] publishDate:
  ///   The date published. OfferType PRODUCT only.
  ///
  /// * [int] availabilityDate:
  ///   The date available. OfferType PRODUCT only.
  ///
  /// * [int] sizeId:
  ///   The size Id. OfferType PRODUCT only.
  ///
  /// * [int] listingId:
  ///   The ID of the event listing
  ///
  /// * [String] mediaType:
  ///   
  ///
  /// * [int] duration:
  ///   The total playing time of the media item. OfferType MEDIA only.
  ///
  /// * [String] author:
  ///   The created/author of the media item. OfferType MEDIA only.
  ///
  /// * [int] releaseDate:
  ///   The date/time of when the media item was originally released. OfferType MEDIA only.
  ///
  /// * [String] collectionIds:
  ///   
  ///
  /// * [int] rebootTimeHour:
  ///   The reboot hour time ranging from 0 to 23
  ///
  /// * [int] rebootTimeMinute:
  ///   The reboot minute time ranging from 0 to 59
  ///
  /// * [int] idleTimeoutInSecond:
  ///   If the device is idle for idleTimeoutInSecond then the device should timeout
  ///
  /// * [String] serialNumber:
  ///   The serial number on the device
  ///
  /// * [String] udid:
  ///   The unique device id for the device
  ///
  /// * [String] deviceType:
  ///   The type of the device, for example: \"Kiosk\", \"Beacon\".
  ///
  /// * [double] devicePower:
  ///   RSSI reading at 1 meter from device (-10 to -140)
  ///
  /// * [double] deviceInterference:
  ///   
  ///
  /// * [String] availability:
  ///   
  ///
  /// * [String] availabilitySummary:
  ///   
  Future<RetailerOfferResponse?> updateOffer(int offerId, bool includeOfferLocations, { String? deviceId, int? accountId, int? parentOfferId, String? retailerLocationIds, String? offerLocations, String? tags, String? title, String? subTitle, String? details, String? subDetails, String? finePrint, String? barcodeType, String? barcodeEntry, String? externalRedeemOptions, String? externalUrl, String? externalId, String? ticketsRewardType, int? ticketsReward, int? activated, int? expires, bool? noExpiration, int? availableLimit, int? availableLimitPerUser, int? addedLimit, int? viewLimit, int? maxPrints, String? ticketPriceType, int? ticketPrice, double? fullPrice, double? discountPrice, bool? showRemaining, bool? showRedeemed, bool? replaced, bool? featured, String? offerType, String? specialOfferType, String? offerVisibility, String? categoryIds, String? filterIds, bool? active, int? barcodeAssetId, int? imageAssetId, int? imageAssetId1, int? imageAssetId2, int? imageAssetId3, int? imageAssetId4, int? imageAssetId5, String? publisher, int? redeemableStart, int? redeemableEnd, String? brand, String? productType, String? conditionType, String? isbn, String? asin, String? catalogNumbers, String? department, String? features, double? minimumPrice, double? width, double? height, double? depth, double? weight, String? unit, String? studio, String? parentalRating, int? publishDate, int? availabilityDate, int? sizeId, int? listingId, String? mediaType, int? duration, String? author, int? releaseDate, String? collectionIds, int? rebootTimeHour, int? rebootTimeMinute, int? idleTimeoutInSecond, String? serialNumber, String? udid, String? deviceType, double? devicePower, double? deviceInterference, String? availability, String? availabilitySummary, }) async {
    final response = await updateOfferWithHttpInfo(offerId, includeOfferLocations,  deviceId: deviceId, accountId: accountId, parentOfferId: parentOfferId, retailerLocationIds: retailerLocationIds, offerLocations: offerLocations, tags: tags, title: title, subTitle: subTitle, details: details, subDetails: subDetails, finePrint: finePrint, barcodeType: barcodeType, barcodeEntry: barcodeEntry, externalRedeemOptions: externalRedeemOptions, externalUrl: externalUrl, externalId: externalId, ticketsRewardType: ticketsRewardType, ticketsReward: ticketsReward, activated: activated, expires: expires, noExpiration: noExpiration, availableLimit: availableLimit, availableLimitPerUser: availableLimitPerUser, addedLimit: addedLimit, viewLimit: viewLimit, maxPrints: maxPrints, ticketPriceType: ticketPriceType, ticketPrice: ticketPrice, fullPrice: fullPrice, discountPrice: discountPrice, showRemaining: showRemaining, showRedeemed: showRedeemed, replaced: replaced, featured: featured, offerType: offerType, specialOfferType: specialOfferType, offerVisibility: offerVisibility, categoryIds: categoryIds, filterIds: filterIds, active: active, barcodeAssetId: barcodeAssetId, imageAssetId: imageAssetId, imageAssetId1: imageAssetId1, imageAssetId2: imageAssetId2, imageAssetId3: imageAssetId3, imageAssetId4: imageAssetId4, imageAssetId5: imageAssetId5, publisher: publisher, redeemableStart: redeemableStart, redeemableEnd: redeemableEnd, brand: brand, productType: productType, conditionType: conditionType, isbn: isbn, asin: asin, catalogNumbers: catalogNumbers, department: department, features: features, minimumPrice: minimumPrice, width: width, height: height, depth: depth, weight: weight, unit: unit, studio: studio, parentalRating: parentalRating, publishDate: publishDate, availabilityDate: availabilityDate, sizeId: sizeId, listingId: listingId, mediaType: mediaType, duration: duration, author: author, releaseDate: releaseDate, collectionIds: collectionIds, rebootTimeHour: rebootTimeHour, rebootTimeMinute: rebootTimeMinute, idleTimeoutInSecond: idleTimeoutInSecond, serialNumber: serialNumber, udid: udid, deviceType: deviceType, devicePower: devicePower, deviceInterference: deviceInterference, availability: availability, availabilitySummary: availabilitySummary, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetailerOfferResponse',) as RetailerOfferResponse;
    
    }
    return null;
  }

  /// Activate Offer
  ///
  /// Sets the activated date on offers. This will make offers visible for consumers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] offerIds (required):
  ///   Comma separated list of offer ids
  ///
  /// * [bool] active (required):
  ///   Determines whether to make the offer active as well
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the activation, must have rights to edit the offer.
  Future<Response> updateOfferStatusWithHttpInfo(String offerIds, bool active, { String? deviceId, int? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/retailer/offer/status';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deviceId != null) {
      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
      queryParams.addAll(_queryParams('', 'offerIds', offerIds));
      queryParams.addAll(_queryParams('', 'active', active));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Activate Offer
  ///
  /// Sets the activated date on offers. This will make offers visible for consumers.
  ///
  /// Parameters:
  ///
  /// * [String] offerIds (required):
  ///   Comma separated list of offer ids
  ///
  /// * [bool] active (required):
  ///   Determines whether to make the offer active as well
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account used to perform the activation, must have rights to edit the offer.
  Future<SirqulResponse?> updateOfferStatus(String offerIds, bool active, { String? deviceId, int? accountId, }) async {
    final response = await updateOfferStatusWithHttpInfo(offerIds, active,  deviceId: deviceId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SirqulResponse',) as SirqulResponse;
    
    }
    return null;
  }
}
