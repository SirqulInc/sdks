//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MediaApi {
  MediaApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Media
  ///
  /// Create a media offering.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
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
  /// * [String] specialOfferType (required):
  ///   The special offer type {ALL, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW}
  ///
  /// * [String] offerVisibility (required):
  ///   The offer visibility {PUBLIC, REWARDABLE, TRIGGERABLE}
  ///
  /// * [bool] active (required):
  ///   Sets the active flag
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids. This will assign the offer to these retailer locations.
  ///
  /// * [String] subTitle:
  ///   The sub title (255 char limit)
  ///
  /// * [String] details:
  ///   The details of the media
  ///
  /// * [String] subDetails:
  ///   A string for custom details (255 char limit)
  ///
  /// * [String] finePrint:
  ///   The fine print of the media
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
  ///   show how many of the media is remaining (if there is a limit)
  ///
  /// * [bool] showRedeemed:
  ///   show how many of the media has been redeemed
  ///
  /// * [bool] replaced:
  ///   if the media has been replaced
  ///
  /// * [bool] featured:
  ///   if the media should be featured or not
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
  /// * [String] conditionType:
  ///   The condition type of the media
  ///
  /// * [String] isbn:
  ///   The ISBN id
  ///
  /// * [String] asin:
  ///   The ASIN id
  ///
  /// * [String] catalogNumbers:
  ///   The list of catelog numbers, comma seperated
  ///
  /// * [String] parentalRating:
  ///   The parental control rating
  ///
  /// * [int] availabilityDate:
  ///   The date the media is available to use
  ///
  /// * [String] mediaType:
  ///   the media type
  ///
  /// * [int] duration:
  ///   The total playing time of the media item
  ///
  /// * [String] author:
  ///   The created/author of the media item
  ///
  /// * [int] releaseDate:
  ///   The date/time of when the media item was originally released
  ///
  /// * [String] collectionIds:
  ///   the IDs of the collections this media should be assigned to
  ///
  /// * [String] availability:
  ///   ability to assign if this media should active or not
  ///
  /// * [String] availabilitySummary:
  ///   ability to assign when the media expires
  Future<Response> createMediaWithHttpInfo(num version, int accountId, String title, String barcodeType, bool noExpiration, int availableLimit, int availableLimitPerUser, int addedLimit, int viewLimit, int maxPrints, int ticketPrice, double fullPrice, double discountPrice, String specialOfferType, String offerVisibility, bool active, { String? retailerLocationIds, String? subTitle, String? details, String? subDetails, String? finePrint, String? barcodeEntry, String? externalRedeemOptions, String? externalUrl, String? ticketsRewardType, int? ticketsReward, int? activated, int? expires, String? ticketPriceType, bool? showRemaining, bool? showRedeemed, bool? replaced, bool? featured, String? categoryIds, String? filterIds, int? barcodeAssetId, int? imageAssetId, int? imageAssetId1, int? imageAssetId2, int? imageAssetId3, int? imageAssetId4, int? imageAssetId5, String? publisher, int? redeemableStart, int? redeemableEnd, String? conditionType, String? isbn, String? asin, String? catalogNumbers, String? parentalRating, int? availabilityDate, String? mediaType, int? duration, String? author, int? releaseDate, String? collectionIds, String? availability, String? availabilitySummary, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/media/create'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
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
    if (parentalRating != null) {
      queryParams.addAll(_queryParams('', 'parentalRating', parentalRating));
    }
    if (availabilityDate != null) {
      queryParams.addAll(_queryParams('', 'availabilityDate', availabilityDate));
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

  /// Create Media
  ///
  /// Create a media offering.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account id of the logged in user
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
  /// * [String] specialOfferType (required):
  ///   The special offer type {ALL, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW}
  ///
  /// * [String] offerVisibility (required):
  ///   The offer visibility {PUBLIC, REWARDABLE, TRIGGERABLE}
  ///
  /// * [bool] active (required):
  ///   Sets the active flag
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids. This will assign the offer to these retailer locations.
  ///
  /// * [String] subTitle:
  ///   The sub title (255 char limit)
  ///
  /// * [String] details:
  ///   The details of the media
  ///
  /// * [String] subDetails:
  ///   A string for custom details (255 char limit)
  ///
  /// * [String] finePrint:
  ///   The fine print of the media
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
  ///   show how many of the media is remaining (if there is a limit)
  ///
  /// * [bool] showRedeemed:
  ///   show how many of the media has been redeemed
  ///
  /// * [bool] replaced:
  ///   if the media has been replaced
  ///
  /// * [bool] featured:
  ///   if the media should be featured or not
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
  /// * [String] conditionType:
  ///   The condition type of the media
  ///
  /// * [String] isbn:
  ///   The ISBN id
  ///
  /// * [String] asin:
  ///   The ASIN id
  ///
  /// * [String] catalogNumbers:
  ///   The list of catelog numbers, comma seperated
  ///
  /// * [String] parentalRating:
  ///   The parental control rating
  ///
  /// * [int] availabilityDate:
  ///   The date the media is available to use
  ///
  /// * [String] mediaType:
  ///   the media type
  ///
  /// * [int] duration:
  ///   The total playing time of the media item
  ///
  /// * [String] author:
  ///   The created/author of the media item
  ///
  /// * [int] releaseDate:
  ///   The date/time of when the media item was originally released
  ///
  /// * [String] collectionIds:
  ///   the IDs of the collections this media should be assigned to
  ///
  /// * [String] availability:
  ///   ability to assign if this media should active or not
  ///
  /// * [String] availabilitySummary:
  ///   ability to assign when the media expires
  Future<MediaOfferResponse?> createMedia(num version, int accountId, String title, String barcodeType, bool noExpiration, int availableLimit, int availableLimitPerUser, int addedLimit, int viewLimit, int maxPrints, int ticketPrice, double fullPrice, double discountPrice, String specialOfferType, String offerVisibility, bool active, { String? retailerLocationIds, String? subTitle, String? details, String? subDetails, String? finePrint, String? barcodeEntry, String? externalRedeemOptions, String? externalUrl, String? ticketsRewardType, int? ticketsReward, int? activated, int? expires, String? ticketPriceType, bool? showRemaining, bool? showRedeemed, bool? replaced, bool? featured, String? categoryIds, String? filterIds, int? barcodeAssetId, int? imageAssetId, int? imageAssetId1, int? imageAssetId2, int? imageAssetId3, int? imageAssetId4, int? imageAssetId5, String? publisher, int? redeemableStart, int? redeemableEnd, String? conditionType, String? isbn, String? asin, String? catalogNumbers, String? parentalRating, int? availabilityDate, String? mediaType, int? duration, String? author, int? releaseDate, String? collectionIds, String? availability, String? availabilitySummary, }) async {
    final response = await createMediaWithHttpInfo(version, accountId, title, barcodeType, noExpiration, availableLimit, availableLimitPerUser, addedLimit, viewLimit, maxPrints, ticketPrice, fullPrice, discountPrice, specialOfferType, offerVisibility, active,  retailerLocationIds: retailerLocationIds, subTitle: subTitle, details: details, subDetails: subDetails, finePrint: finePrint, barcodeEntry: barcodeEntry, externalRedeemOptions: externalRedeemOptions, externalUrl: externalUrl, ticketsRewardType: ticketsRewardType, ticketsReward: ticketsReward, activated: activated, expires: expires, ticketPriceType: ticketPriceType, showRemaining: showRemaining, showRedeemed: showRedeemed, replaced: replaced, featured: featured, categoryIds: categoryIds, filterIds: filterIds, barcodeAssetId: barcodeAssetId, imageAssetId: imageAssetId, imageAssetId1: imageAssetId1, imageAssetId2: imageAssetId2, imageAssetId3: imageAssetId3, imageAssetId4: imageAssetId4, imageAssetId5: imageAssetId5, publisher: publisher, redeemableStart: redeemableStart, redeemableEnd: redeemableEnd, conditionType: conditionType, isbn: isbn, asin: asin, catalogNumbers: catalogNumbers, parentalRating: parentalRating, availabilityDate: availabilityDate, mediaType: mediaType, duration: duration, author: author, releaseDate: releaseDate, collectionIds: collectionIds, availability: availability, availabilitySummary: availabilitySummary, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MediaOfferResponse',) as MediaOfferResponse;
    
    }
    return null;
  }

  /// Delete Media
  ///
  /// Delete a media offering that the user has permissions to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] mediaId (required):
  ///   the ID of the media to delete
  Future<Response> deleteMediaWithHttpInfo(num version, int accountId, int mediaId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/media/delete'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'mediaId', mediaId));

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

  /// Delete Media
  ///
  /// Delete a media offering that the user has permissions to.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] mediaId (required):
  ///   the ID of the media to delete
  Future<SirqulResponse?> deleteMedia(num version, int accountId, int mediaId,) async {
    final response = await deleteMediaWithHttpInfo(version, accountId, mediaId,);
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

  /// Media Get
  ///
  /// Get a media offering.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] mediaId (required):
  ///   the id of the media to get
  Future<Response> getMediaWithHttpInfo(num version, int accountId, int mediaId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/media/get'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'mediaId', mediaId));

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

  /// Media Get
  ///
  /// Get a media offering.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] mediaId (required):
  ///   the id of the media to get
  Future<MediaOfferResponse?> getMedia(num version, int accountId, int mediaId,) async {
    final response = await getMediaWithHttpInfo(version, accountId, mediaId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MediaOfferResponse',) as MediaOfferResponse;
    
    }
    return null;
  }

  /// Search Media
  ///
  /// Searches on events that the account has access to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [String] sortField (required):
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, ESTIMATED_VALUE, VOUCHER_PRICE, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY, AVAILABILITY_DATE, RELEASE_DATE
  ///
  /// * [bool] descending (required):
  ///   The order to return the search results
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] categoryIds:
  ///   
  ///
  /// * [String] filterIds:
  ///   
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  Future<Response> searchMediaWithHttpInfo(num version, int accountId, bool activeOnly, String sortField, bool descending, { String? keyword, String? categoryIds, String? filterIds, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/media/search'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
      queryParams.addAll(_queryParams('', 'sortField', sortField));
      queryParams.addAll(_queryParams('', 'descending', descending));
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

  /// Search Media
  ///
  /// Searches on events that the account has access to.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [bool] activeOnly (required):
  ///   Return only active results
  ///
  /// * [String] sortField (required):
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, ESTIMATED_VALUE, VOUCHER_PRICE, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY, AVAILABILITY_DATE, RELEASE_DATE
  ///
  /// * [bool] descending (required):
  ///   The order to return the search results
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [String] categoryIds:
  ///   
  ///
  /// * [String] filterIds:
  ///   
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  Future<List<MediaOfferResponse>?> searchMedia(num version, int accountId, bool activeOnly, String sortField, bool descending, { String? keyword, String? categoryIds, String? filterIds, int? start, int? limit, }) async {
    final response = await searchMediaWithHttpInfo(version, accountId, activeOnly, sortField, descending,  keyword: keyword, categoryIds: categoryIds, filterIds: filterIds, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MediaOfferResponse>') as List)
        .cast<MediaOfferResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Media
  ///
  /// Update a media offering.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the update, must have rights to edit the offer (deviceId or accountId required)
  ///
  /// * [int] mediaId (required):
  ///   
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids. This will assign the offer to these retailer locations.
  ///
  /// * [String] offerLocations:
  ///   A list of json data that has offer location specific values.
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
  ///   The show remaining
  ///
  /// * [bool] showRedeemed:
  ///   The show redeemed
  ///
  /// * [bool] replaced:
  ///   The replaced
  ///
  /// * [bool] featured:
  ///   The featured
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
  /// * [int] availabilityDate:
  ///   The date available. OfferType PRODUCT only.
  ///
  /// * [String] parentalRating:
  ///   The parental control rating. OfferType PRODUCT only.
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
  /// * [String] availability:
  ///   
  ///
  /// * [String] availabilitySummary:
  ///   
  Future<Response> updateMediaWithHttpInfo(num version, int accountId, int mediaId, { String? retailerLocationIds, String? offerLocations, String? title, String? subTitle, String? details, String? subDetails, String? finePrint, String? barcodeType, String? barcodeEntry, String? externalRedeemOptions, String? externalUrl, String? ticketsRewardType, int? ticketsReward, int? activated, int? expires, bool? noExpiration, int? availableLimit, int? availableLimitPerUser, int? addedLimit, int? viewLimit, int? maxPrints, String? ticketPriceType, int? ticketPrice, double? fullPrice, double? discountPrice, bool? showRemaining, bool? showRedeemed, bool? replaced, bool? featured, String? specialOfferType, String? offerVisibility, String? categoryIds, String? filterIds, bool? active, int? barcodeAssetId, int? imageAssetId, int? imageAssetId1, int? imageAssetId2, int? imageAssetId3, int? imageAssetId4, int? imageAssetId5, String? publisher, int? redeemableStart, int? redeemableEnd, String? conditionType, String? isbn, String? asin, String? catalogNumbers, int? availabilityDate, String? parentalRating, String? mediaType, int? duration, String? author, int? releaseDate, String? collectionIds, String? availability, String? availabilitySummary, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/{version}/media/update'
      .replaceAll('{version}', version.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'mediaId', mediaId));
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
    }
    if (offerLocations != null) {
      queryParams.addAll(_queryParams('', 'offerLocations', offerLocations));
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
    if (availabilityDate != null) {
      queryParams.addAll(_queryParams('', 'availabilityDate', availabilityDate));
    }
    if (parentalRating != null) {
      queryParams.addAll(_queryParams('', 'parentalRating', parentalRating));
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

  /// Update Media
  ///
  /// Update a media offering.
  ///
  /// Parameters:
  ///
  /// * [num] version (required):
  ///
  /// * [int] accountId (required):
  ///   The account used to perform the update, must have rights to edit the offer (deviceId or accountId required)
  ///
  /// * [int] mediaId (required):
  ///   
  ///
  /// * [String] retailerLocationIds:
  ///   Comma separated list of retailer location ids. This will assign the offer to these retailer locations.
  ///
  /// * [String] offerLocations:
  ///   A list of json data that has offer location specific values.
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
  ///   The show remaining
  ///
  /// * [bool] showRedeemed:
  ///   The show redeemed
  ///
  /// * [bool] replaced:
  ///   The replaced
  ///
  /// * [bool] featured:
  ///   The featured
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
  /// * [int] availabilityDate:
  ///   The date available. OfferType PRODUCT only.
  ///
  /// * [String] parentalRating:
  ///   The parental control rating. OfferType PRODUCT only.
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
  /// * [String] availability:
  ///   
  ///
  /// * [String] availabilitySummary:
  ///   
  Future<MediaOfferResponse?> updateMedia(num version, int accountId, int mediaId, { String? retailerLocationIds, String? offerLocations, String? title, String? subTitle, String? details, String? subDetails, String? finePrint, String? barcodeType, String? barcodeEntry, String? externalRedeemOptions, String? externalUrl, String? ticketsRewardType, int? ticketsReward, int? activated, int? expires, bool? noExpiration, int? availableLimit, int? availableLimitPerUser, int? addedLimit, int? viewLimit, int? maxPrints, String? ticketPriceType, int? ticketPrice, double? fullPrice, double? discountPrice, bool? showRemaining, bool? showRedeemed, bool? replaced, bool? featured, String? specialOfferType, String? offerVisibility, String? categoryIds, String? filterIds, bool? active, int? barcodeAssetId, int? imageAssetId, int? imageAssetId1, int? imageAssetId2, int? imageAssetId3, int? imageAssetId4, int? imageAssetId5, String? publisher, int? redeemableStart, int? redeemableEnd, String? conditionType, String? isbn, String? asin, String? catalogNumbers, int? availabilityDate, String? parentalRating, String? mediaType, int? duration, String? author, int? releaseDate, String? collectionIds, String? availability, String? availabilitySummary, }) async {
    final response = await updateMediaWithHttpInfo(version, accountId, mediaId,  retailerLocationIds: retailerLocationIds, offerLocations: offerLocations, title: title, subTitle: subTitle, details: details, subDetails: subDetails, finePrint: finePrint, barcodeType: barcodeType, barcodeEntry: barcodeEntry, externalRedeemOptions: externalRedeemOptions, externalUrl: externalUrl, ticketsRewardType: ticketsRewardType, ticketsReward: ticketsReward, activated: activated, expires: expires, noExpiration: noExpiration, availableLimit: availableLimit, availableLimitPerUser: availableLimitPerUser, addedLimit: addedLimit, viewLimit: viewLimit, maxPrints: maxPrints, ticketPriceType: ticketPriceType, ticketPrice: ticketPrice, fullPrice: fullPrice, discountPrice: discountPrice, showRemaining: showRemaining, showRedeemed: showRedeemed, replaced: replaced, featured: featured, specialOfferType: specialOfferType, offerVisibility: offerVisibility, categoryIds: categoryIds, filterIds: filterIds, active: active, barcodeAssetId: barcodeAssetId, imageAssetId: imageAssetId, imageAssetId1: imageAssetId1, imageAssetId2: imageAssetId2, imageAssetId3: imageAssetId3, imageAssetId4: imageAssetId4, imageAssetId5: imageAssetId5, publisher: publisher, redeemableStart: redeemableStart, redeemableEnd: redeemableEnd, conditionType: conditionType, isbn: isbn, asin: asin, catalogNumbers: catalogNumbers, availabilityDate: availabilityDate, parentalRating: parentalRating, mediaType: mediaType, duration: duration, author: author, releaseDate: releaseDate, collectionIds: collectionIds, availability: availability, availabilitySummary: availabilitySummary, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MediaOfferResponse',) as MediaOfferResponse;
    
    }
    return null;
  }
}
