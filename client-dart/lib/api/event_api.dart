//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EventApi {
  EventApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Attend Event
  ///
  ///  Specify whether the user is attending an event at a particular location. This can also be used as a \"check-in\" action.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   The application of where to send notifications about the attend action
  ///
  /// * [int] listingId:
  ///   The scheduled broadcast or marketing experience id
  ///
  /// * [int] retailerLocationId:
  ///   The retailer location where the event is being held
  ///
  /// * [int] offerLocationId:
  ///   The actual event being held
  ///
  /// * [int] transactionId:
  ///   The wallet item to update the status of, if provided then ignore the listingId, retailerLocationId, and the offerLocationId
  ///
  /// * [int] status:
  ///   Sets whether the user is: undecided (0), attending (1), attending and checked in (2), or not attending (3)
  ///
  /// * [double] latitude:
  ///   The location of the status update
  ///
  /// * [double] longitude:
  ///   The location of the status update
  Future<Response> attendEventWithHttpInfo({ String? deviceId, int? accountId, String? appKey, int? listingId, int? retailerLocationId, int? offerLocationId, int? transactionId, int? status, double? latitude, double? longitude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/event/attend';

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
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
    }
    if (listingId != null) {
      queryParams.addAll(_queryParams('', 'listingId', listingId));
    }
    if (retailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationId', retailerLocationId));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (transactionId != null) {
      queryParams.addAll(_queryParams('', 'transactionId', transactionId));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (latitude != null) {
      queryParams.addAll(_queryParams('', 'latitude', latitude));
    }
    if (longitude != null) {
      queryParams.addAll(_queryParams('', 'longitude', longitude));
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

  /// Attend Event
  ///
  ///  Specify whether the user is attending an event at a particular location. This can also be used as a \"check-in\" action.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   The application of where to send notifications about the attend action
  ///
  /// * [int] listingId:
  ///   The scheduled broadcast or marketing experience id
  ///
  /// * [int] retailerLocationId:
  ///   The retailer location where the event is being held
  ///
  /// * [int] offerLocationId:
  ///   The actual event being held
  ///
  /// * [int] transactionId:
  ///   The wallet item to update the status of, if provided then ignore the listingId, retailerLocationId, and the offerLocationId
  ///
  /// * [int] status:
  ///   Sets whether the user is: undecided (0), attending (1), attending and checked in (2), or not attending (3)
  ///
  /// * [double] latitude:
  ///   The location of the status update
  ///
  /// * [double] longitude:
  ///   The location of the status update
  Future<OfferResponse?> attendEvent({ String? deviceId, int? accountId, String? appKey, int? listingId, int? retailerLocationId, int? offerLocationId, int? transactionId, int? status, double? latitude, double? longitude, }) async {
    final response = await attendEventWithHttpInfo( deviceId: deviceId, accountId: accountId, appKey: appKey, listingId: listingId, retailerLocationId: retailerLocationId, offerLocationId: offerLocationId, transactionId: transactionId, status: status, latitude: latitude, longitude: longitude, );
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

  /// Create Event
  ///
  /// Create a private event to share with associates.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] title (required):
  ///   The event title
  ///
  /// * [String] retailerLocationIds:
  ///   The retailer location to have the event at
  ///
  /// * [String] subTitle:
  ///   The event sub title
  ///
  /// * [String] details:
  ///   The event details
  ///
  /// * [String] categoryIds:
  ///   The categories the associate the event with
  ///
  /// * [String] filterIds:
  ///   The filters the associate the event with
  ///
  /// * [bool] active:
  ///   Is this event active
  ///
  /// * [int] imageAssetId:
  ///   The image to show for the event
  ///
  /// * [int] redeemableStart:
  ///   The event start date/time
  ///
  /// * [int] redeemableEnd:
  ///   The event end date/time
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<Response> createEventWithHttpInfo(int accountId, String title, { String? retailerLocationIds, String? subTitle, String? details, String? categoryIds, String? filterIds, bool? active, int? imageAssetId, int? redeemableStart, int? redeemableEnd, String? metaData, }) async {
    // ignore: prefer_const_declarations
    final path = r'/event/create';

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
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (imageAssetId != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId', imageAssetId));
    }
    if (redeemableStart != null) {
      queryParams.addAll(_queryParams('', 'redeemableStart', redeemableStart));
    }
    if (redeemableEnd != null) {
      queryParams.addAll(_queryParams('', 'redeemableEnd', redeemableEnd));
    }
    if (metaData != null) {
      queryParams.addAll(_queryParams('', 'metaData', metaData));
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

  /// Create Event
  ///
  /// Create a private event to share with associates.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] title (required):
  ///   The event title
  ///
  /// * [String] retailerLocationIds:
  ///   The retailer location to have the event at
  ///
  /// * [String] subTitle:
  ///   The event sub title
  ///
  /// * [String] details:
  ///   The event details
  ///
  /// * [String] categoryIds:
  ///   The categories the associate the event with
  ///
  /// * [String] filterIds:
  ///   The filters the associate the event with
  ///
  /// * [bool] active:
  ///   Is this event active
  ///
  /// * [int] imageAssetId:
  ///   The image to show for the event
  ///
  /// * [int] redeemableStart:
  ///   The event start date/time
  ///
  /// * [int] redeemableEnd:
  ///   The event end date/time
  ///
  /// * [String] metaData:
  ///   external custom client defined data
  Future<OfferResponse?> createEvent(int accountId, String title, { String? retailerLocationIds, String? subTitle, String? details, String? categoryIds, String? filterIds, bool? active, int? imageAssetId, int? redeemableStart, int? redeemableEnd, String? metaData, }) async {
    final response = await createEventWithHttpInfo(accountId, title,  retailerLocationIds: retailerLocationIds, subTitle: subTitle, details: details, categoryIds: categoryIds, filterIds: filterIds, active: active, imageAssetId: imageAssetId, redeemableStart: redeemableStart, redeemableEnd: redeemableEnd, metaData: metaData, );
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

  /// Delete Event
  ///
  /// Delete an event that the user has permissions to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] eventId (required):
  ///   the id of the event to update
  Future<Response> deleteEventWithHttpInfo(int accountId, int eventId,) async {
    // ignore: prefer_const_declarations
    final path = r'/event/delete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'eventId', eventId));

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

  /// Delete Event
  ///
  /// Delete an event that the user has permissions to.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] eventId (required):
  ///   the id of the event to update
  Future<SirqulResponse?> deleteEvent(int accountId, int eventId,) async {
    final response = await deleteEventWithHttpInfo(accountId, eventId,);
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

  /// Get Event
  ///
  /// Get an event.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] eventId (required):
  ///   The id of the event to return
  Future<Response> getEventWithHttpInfo(int accountId, int eventId,) async {
    // ignore: prefer_const_declarations
    final path = r'/event/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'eventId', eventId));

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

  /// Get Event
  ///
  /// Get an event.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   the id of the logged in user
  ///
  /// * [int] eventId (required):
  ///   The id of the event to return
  Future<OfferResponse?> getEvent(int accountId, int eventId,) async {
    final response = await getEventWithHttpInfo(accountId, eventId,);
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

  /// Search Event Attendance
  ///
  /// Searches on event type transactions. This can be used to see who is attending an event.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   The application key
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
  /// * [int] excludeRetailerLocationId:
  ///   Exclude results from this retailer location
  ///
  /// * [int] listingId:
  ///   Filter results for this event listing
  ///
  /// * [int] offerId:
  ///   Filter results for this offer
  ///
  /// * [int] offerLocationId:
  ///   Filter results for this offer location
  ///
  /// * [String] customerAccountIds:
  ///   Filter results by accounts
  ///
  /// * [String] affiliatedCategoryIds:
  ///   Comma separated list of category ids to determine whether the attendee is affiliated with the category
  ///
  /// * [int] startDate:
  ///   Filter on attendance starting on or after this date (milliseconds since epoch)
  ///
  /// * [int] endDate:
  ///   Filter on attendance starting on or before this date (milliseconds since epoch)
  ///
  /// * [String] statuses:
  ///   Comma separated list of transaction statuses to filter on
  ///
  /// * [String] sortField:
  ///   Determines what to sort the results by {CREATED, UPDATED, SEARCH_TAGS, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, CUSTOMER_ID, CUSTOMER_DISPLAY, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY}
  ///
  /// * [bool] descending:
  ///   Determines whether the results are in descending order
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  Future<Response> searchEventTransactionsWithHttpInfo({ String? deviceId, int? accountId, String? appKey, String? keyword, int? retailerId, int? retailerLocationId, int? excludeRetailerLocationId, int? listingId, int? offerId, int? offerLocationId, String? customerAccountIds, String? affiliatedCategoryIds, int? startDate, int? endDate, String? statuses, String? sortField, bool? descending, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/event/attendance/search';

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
    if (appKey != null) {
      queryParams.addAll(_queryParams('', 'appKey', appKey));
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
    if (excludeRetailerLocationId != null) {
      queryParams.addAll(_queryParams('', 'excludeRetailerLocationId', excludeRetailerLocationId));
    }
    if (listingId != null) {
      queryParams.addAll(_queryParams('', 'listingId', listingId));
    }
    if (offerId != null) {
      queryParams.addAll(_queryParams('', 'offerId', offerId));
    }
    if (offerLocationId != null) {
      queryParams.addAll(_queryParams('', 'offerLocationId', offerLocationId));
    }
    if (customerAccountIds != null) {
      queryParams.addAll(_queryParams('', 'customerAccountIds', customerAccountIds));
    }
    if (affiliatedCategoryIds != null) {
      queryParams.addAll(_queryParams('', 'affiliatedCategoryIds', affiliatedCategoryIds));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (statuses != null) {
      queryParams.addAll(_queryParams('', 'statuses', statuses));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
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

  /// Search Event Attendance
  ///
  /// Searches on event type transactions. This can be used to see who is attending an event.
  ///
  /// Parameters:
  ///
  /// * [String] deviceId:
  ///   The device id (deviceId or accountId required)
  ///
  /// * [int] accountId:
  ///   The account id of the user (deviceId or accountId required)
  ///
  /// * [String] appKey:
  ///   The application key
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
  /// * [int] excludeRetailerLocationId:
  ///   Exclude results from this retailer location
  ///
  /// * [int] listingId:
  ///   Filter results for this event listing
  ///
  /// * [int] offerId:
  ///   Filter results for this offer
  ///
  /// * [int] offerLocationId:
  ///   Filter results for this offer location
  ///
  /// * [String] customerAccountIds:
  ///   Filter results by accounts
  ///
  /// * [String] affiliatedCategoryIds:
  ///   Comma separated list of category ids to determine whether the attendee is affiliated with the category
  ///
  /// * [int] startDate:
  ///   Filter on attendance starting on or after this date (milliseconds since epoch)
  ///
  /// * [int] endDate:
  ///   Filter on attendance starting on or before this date (milliseconds since epoch)
  ///
  /// * [String] statuses:
  ///   Comma separated list of transaction statuses to filter on
  ///
  /// * [String] sortField:
  ///   Determines what to sort the results by {CREATED, UPDATED, SEARCH_TAGS, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, CUSTOMER_ID, CUSTOMER_DISPLAY, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY}
  ///
  /// * [bool] descending:
  ///   Determines whether the results are in descending order
  ///
  /// * [int] start:
  ///   The start index for pagination
  ///
  /// * [int] limit:
  ///   The limit for pagination
  Future<List<EventAttendanceResponse>?> searchEventTransactions({ String? deviceId, int? accountId, String? appKey, String? keyword, int? retailerId, int? retailerLocationId, int? excludeRetailerLocationId, int? listingId, int? offerId, int? offerLocationId, String? customerAccountIds, String? affiliatedCategoryIds, int? startDate, int? endDate, String? statuses, String? sortField, bool? descending, int? start, int? limit, }) async {
    final response = await searchEventTransactionsWithHttpInfo( deviceId: deviceId, accountId: accountId, appKey: appKey, keyword: keyword, retailerId: retailerId, retailerLocationId: retailerLocationId, excludeRetailerLocationId: excludeRetailerLocationId, listingId: listingId, offerId: offerId, offerLocationId: offerLocationId, customerAccountIds: customerAccountIds, affiliatedCategoryIds: affiliatedCategoryIds, startDate: startDate, endDate: endDate, statuses: statuses, sortField: sortField, descending: descending, start: start, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EventAttendanceResponse>') as List)
        .cast<EventAttendanceResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Search Events
  ///
  /// Searches on events that the account has access to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  ///
  /// * [String] categoryIds:
  ///   the IDs of the categories that this event is associated with
  ///
  /// * [String] filterIds:
  ///   the IDs of the filters that this event is associated with
  ///
  /// * [String] offerAudienceIds:
  ///   Offer audience ids to filter on
  ///
  /// * [String] transactionAudienceIds:
  ///   Transaction audience ids to filter on
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, ESTIMATED_VALUE, VOUCHER_PRICE, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] startDate:
  ///   Filter the events to return only those that start on or after the date
  ///
  /// * [int] endDate:
  ///   Filter the events to return only those that start on or before the date
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  Future<Response> searchEventsWithHttpInfo(int accountId, { String? keyword, bool? activeOnly, String? categoryIds, String? filterIds, String? offerAudienceIds, String? transactionAudienceIds, String? sortField, bool? descending, int? startDate, int? endDate, int? start, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/event/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
    if (keyword != null) {
      queryParams.addAll(_queryParams('', 'keyword', keyword));
    }
    if (activeOnly != null) {
      queryParams.addAll(_queryParams('', 'activeOnly', activeOnly));
    }
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (offerAudienceIds != null) {
      queryParams.addAll(_queryParams('', 'offerAudienceIds', offerAudienceIds));
    }
    if (transactionAudienceIds != null) {
      queryParams.addAll(_queryParams('', 'transactionAudienceIds', transactionAudienceIds));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (descending != null) {
      queryParams.addAll(_queryParams('', 'descending', descending));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
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

  /// Search Events
  ///
  /// Searches on events that the account has access to.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [String] keyword:
  ///   The keyword used to search
  ///
  /// * [bool] activeOnly:
  ///   Return only active results
  ///
  /// * [String] categoryIds:
  ///   the IDs of the categories that this event is associated with
  ///
  /// * [String] filterIds:
  ///   the IDs of the filters that this event is associated with
  ///
  /// * [String] offerAudienceIds:
  ///   Offer audience ids to filter on
  ///
  /// * [String] transactionAudienceIds:
  ///   Transaction audience ids to filter on
  ///
  /// * [String] sortField:
  ///   The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, ESTIMATED_VALUE, VOUCHER_PRICE, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY
  ///
  /// * [bool] descending:
  ///   The order to return the search results
  ///
  /// * [int] startDate:
  ///   Filter the events to return only those that start on or after the date
  ///
  /// * [int] endDate:
  ///   Filter the events to return only those that start on or before the date
  ///
  /// * [int] start:
  ///   The record to begin the return set on
  ///
  /// * [int] limit:
  ///   The number of records to return
  Future<List<OfferShortResponse>?> searchEvents(int accountId, { String? keyword, bool? activeOnly, String? categoryIds, String? filterIds, String? offerAudienceIds, String? transactionAudienceIds, String? sortField, bool? descending, int? startDate, int? endDate, int? start, int? limit, }) async {
    final response = await searchEventsWithHttpInfo(accountId,  keyword: keyword, activeOnly: activeOnly, categoryIds: categoryIds, filterIds: filterIds, offerAudienceIds: offerAudienceIds, transactionAudienceIds: transactionAudienceIds, sortField: sortField, descending: descending, startDate: startDate, endDate: endDate, start: start, limit: limit, );
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

  /// Update Event
  ///
  /// Update a private event to share with associates.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] eventId (required):
  ///   The id of the event to update
  ///
  /// * [String] retailerLocationIds:
  ///   The retailer location to have the event at
  ///
  /// * [String] title:
  ///   The event title
  ///
  /// * [String] subTitle:
  ///   The event sub title
  ///
  /// * [String] details:
  ///   The event details
  ///
  /// * [String] categoryIds:
  ///   The categories the associate the event with
  ///
  /// * [String] filterIds:
  ///   The filters the associate the event with
  ///
  /// * [bool] active:
  ///   Is this event active
  ///
  /// * [int] imageAssetId:
  ///   The image to show for the event
  ///
  /// * [int] redeemableStart:
  ///   The event start date/time
  ///
  /// * [int] redeemableEnd:
  ///   The event end date/time
  Future<Response> updateEventWithHttpInfo(int accountId, int eventId, { String? retailerLocationIds, String? title, String? subTitle, String? details, String? categoryIds, String? filterIds, bool? active, int? imageAssetId, int? redeemableStart, int? redeemableEnd, }) async {
    // ignore: prefer_const_declarations
    final path = r'/event/update';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accountId', accountId));
      queryParams.addAll(_queryParams('', 'eventId', eventId));
    if (retailerLocationIds != null) {
      queryParams.addAll(_queryParams('', 'retailerLocationIds', retailerLocationIds));
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
    if (categoryIds != null) {
      queryParams.addAll(_queryParams('', 'categoryIds', categoryIds));
    }
    if (filterIds != null) {
      queryParams.addAll(_queryParams('', 'filterIds', filterIds));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (imageAssetId != null) {
      queryParams.addAll(_queryParams('', 'imageAssetId', imageAssetId));
    }
    if (redeemableStart != null) {
      queryParams.addAll(_queryParams('', 'redeemableStart', redeemableStart));
    }
    if (redeemableEnd != null) {
      queryParams.addAll(_queryParams('', 'redeemableEnd', redeemableEnd));
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

  /// Update Event
  ///
  /// Update a private event to share with associates.
  ///
  /// Parameters:
  ///
  /// * [int] accountId (required):
  ///   The logged in user.
  ///
  /// * [int] eventId (required):
  ///   The id of the event to update
  ///
  /// * [String] retailerLocationIds:
  ///   The retailer location to have the event at
  ///
  /// * [String] title:
  ///   The event title
  ///
  /// * [String] subTitle:
  ///   The event sub title
  ///
  /// * [String] details:
  ///   The event details
  ///
  /// * [String] categoryIds:
  ///   The categories the associate the event with
  ///
  /// * [String] filterIds:
  ///   The filters the associate the event with
  ///
  /// * [bool] active:
  ///   Is this event active
  ///
  /// * [int] imageAssetId:
  ///   The image to show for the event
  ///
  /// * [int] redeemableStart:
  ///   The event start date/time
  ///
  /// * [int] redeemableEnd:
  ///   The event end date/time
  Future<OfferResponse?> updateEvent(int accountId, int eventId, { String? retailerLocationIds, String? title, String? subTitle, String? details, String? categoryIds, String? filterIds, bool? active, int? imageAssetId, int? redeemableStart, int? redeemableEnd, }) async {
    final response = await updateEventWithHttpInfo(accountId, eventId,  retailerLocationIds: retailerLocationIds, title: title, subTitle: subTitle, details: details, categoryIds: categoryIds, filterIds: filterIds, active: active, imageAssetId: imageAssetId, redeemableStart: redeemableStart, redeemableEnd: redeemableEnd, );
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
}
