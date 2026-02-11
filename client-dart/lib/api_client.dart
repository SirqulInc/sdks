//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://dev.sirqul.com/api/3.18', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'Account':
          return Account.fromJson(value);
        case 'AccountListResponse':
          return AccountListResponse.fromJson(value);
        case 'AccountLoginResponse':
          return AccountLoginResponse.fromJson(value);
        case 'AccountMiniResponse':
          return AccountMiniResponse.fromJson(value);
        case 'AccountProfileInfo':
          return AccountProfileInfo.fromJson(value);
        case 'AccountResponse':
          return AccountResponse.fromJson(value);
        case 'AccountShortResponse':
          return AccountShortResponse.fromJson(value);
        case 'AchievementProgressResponse':
          return AchievementProgressResponse.fromJson(value);
        case 'AchievementResponse':
          return AchievementResponse.fromJson(value);
        case 'AchievementShortResponse':
          return AchievementShortResponse.fromJson(value);
        case 'AchievementTierResponse':
          return AchievementTierResponse.fromJson(value);
        case 'ActivityResponse':
          return ActivityResponse.fromJson(value);
        case 'Address':
          return Address.fromJson(value);
        case 'AddressResponse':
          return AddressResponse.fromJson(value);
        case 'AgeGroupResponse':
          return AgeGroupResponse.fromJson(value);
        case 'Album':
          return Album.fromJson(value);
        case 'AlbumContestListResponse':
          return AlbumContestListResponse.fromJson(value);
        case 'AlbumContestResponse':
          return AlbumContestResponse.fromJson(value);
        case 'AlbumFullResponse':
          return AlbumFullResponse.fromJson(value);
        case 'AlbumResponse':
          return AlbumResponse.fromJson(value);
        case 'AnswerResponse':
          return AnswerResponse.fromJson(value);
        case 'AppInfoResponse':
          return AppInfoResponse.fromJson(value);
        case 'AppResponse':
          return AppResponse.fromJson(value);
        case 'AppVersion':
          return AppVersion.fromJson(value);
        case 'Application':
          return Application.fromJson(value);
        case 'ApplicationConfigResponse':
          return ApplicationConfigResponse.fromJson(value);
        case 'ApplicationMiniResponse':
          return ApplicationMiniResponse.fromJson(value);
        case 'ApplicationResponse':
          return ApplicationResponse.fromJson(value);
        case 'ApplicationSettingsResponse':
          return ApplicationSettingsResponse.fromJson(value);
        case 'ApplicationShortResponse':
          return ApplicationShortResponse.fromJson(value);
        case 'ApplicationUsageResponse':
          return ApplicationUsageResponse.fromJson(value);
        case 'Asset':
          return Asset.fromJson(value);
        case 'AssetFullResponse':
          return AssetFullResponse.fromJson(value);
        case 'AssetListResponse':
          return AssetListResponse.fromJson(value);
        case 'AssetResponse':
          return AssetResponse.fromJson(value);
        case 'AssetShortResponse':
          return AssetShortResponse.fromJson(value);
        case 'Assignment':
          return Assignment.fromJson(value);
        case 'AssignmentResponse':
          return AssignmentResponse.fromJson(value);
        case 'AssignmentStatus':
          return AssignmentStatus.fromJson(value);
        case 'AssignmentStatusResponse':
          return AssignmentStatusResponse.fromJson(value);
        case 'Audience':
          return Audience.fromJson(value);
        case 'AudienceDevice':
          return AudienceDevice.fromJson(value);
        case 'AudienceDeviceResponse':
          return AudienceDeviceResponse.fromJson(value);
        case 'AudienceDeviceVersionRange':
          return AudienceDeviceVersionRange.fromJson(value);
        case 'AudienceLocation':
          return AudienceLocation.fromJson(value);
        case 'AudienceResponse':
          return AudienceResponse.fromJson(value);
        case 'AudienceTargetType':
          return AudienceTargetType.fromJson(value);
        case 'AvailabilityResponse':
          return AvailabilityResponse.fromJson(value);
        case 'BaseOfferResponse':
          return BaseOfferResponse.fromJson(value);
        case 'BidResponse':
          return BidResponse.fromJson(value);
        case 'BillableEntity':
          return BillableEntity.fromJson(value);
        case 'BillableEntityResponse':
          return BillableEntityResponse.fromJson(value);
        case 'BillableEntityShortResponse':
          return BillableEntityShortResponse.fromJson(value);
        case 'BiometricImage':
          return BiometricImage.fromJson(value);
        case 'BiometricRequest':
          return BiometricRequest.fromJson(value);
        case 'BlobFile':
          return BlobFile.fromJson(value);
        case 'BlockedNotificationResponse':
          return BlockedNotificationResponse.fromJson(value);
        case 'Building':
          return Building.fromJson(value);
        case 'CargoType':
          return CargoType.fromJson(value);
        case 'Category':
          return Category.fromJson(value);
        case 'CategoryResponse':
          return CategoryResponse.fromJson(value);
        case 'CategoryTreeResponse':
          return CategoryTreeResponse.fromJson(value);
        case 'CellCarrier':
          return CellCarrier.fromJson(value);
        case 'CellCarrierResponse':
          return CellCarrierResponse.fromJson(value);
        case 'ChartData':
          return ChartData.fromJson(value);
        case 'Chronology':
          return Chronology.fromJson(value);
        case 'ConfigRoutingRequest':
          return ConfigRoutingRequest.fromJson(value);
        case 'ConnectedFriend':
          return ConnectedFriend.fromJson(value);
        case 'Connection':
          return Connection.fromJson(value);
        case 'ConnectionGroup':
          return ConnectionGroup.fromJson(value);
        case 'ConnectionGroupResponse':
          return ConnectionGroupResponse.fromJson(value);
        case 'ConnectionGroupShortResponse':
          return ConnectionGroupShortResponse.fromJson(value);
        case 'ConnectionInfoResponse':
          return ConnectionInfoResponse.fromJson(value);
        case 'ConnectionListResponse':
          return ConnectionListResponse.fromJson(value);
        case 'ConnectionResponse':
          return ConnectionResponse.fromJson(value);
        case 'ConsumerInviteResponse':
          return ConsumerInviteResponse.fromJson(value);
        case 'Contact':
          return Contact.fromJson(value);
        case 'ContactInfo':
          return ContactInfo.fromJson(value);
        case 'ContactInfoResponse':
          return ContactInfoResponse.fromJson(value);
        case 'ContactResponse':
          return ContactResponse.fromJson(value);
        case 'CoordsResponse':
          return CoordsResponse.fromJson(value);
        case 'CountResponse':
          return CountResponse.fromJson(value);
        case 'CreativeResponse':
          return CreativeResponse.fromJson(value);
        case 'CsvImportResponse':
          return CsvImportResponse.fromJson(value);
        case 'DateTimeField':
          return DateTimeField.fromJson(value);
        case 'DateTimeFieldType':
          return DateTimeFieldType.fromJson(value);
        case 'DateTimeRange':
          return DateTimeRange.fromJson(value);
        case 'DateTimeZone':
          return DateTimeZone.fromJson(value);
        case 'Device':
          return Device.fromJson(value);
        case 'Dimensions':
          return Dimensions.fromJson(value);
        case 'Direction':
          return Direction.fromJson(value);
        case 'DirectionResponse':
          return DirectionResponse.fromJson(value);
        case 'DisbursementResponse':
          return DisbursementResponse.fromJson(value);
        case 'DriverResponse':
          return DriverResponse.fromJson(value);
        case 'DurationField':
          return DurationField.fromJson(value);
        case 'DurationFieldType':
          return DurationFieldType.fromJson(value);
        case 'EmployeeResponse':
          return EmployeeResponse.fromJson(value);
        case 'EntityReference':
          return EntityReference.fromJson(value);
        case 'Event':
          return Event.fromJson(value);
        case 'EventAttendanceResponse':
          return EventAttendanceResponse.fromJson(value);
        case 'EventResponse':
          return EventResponse.fromJson(value);
        case 'Filter':
          return Filter.fromJson(value);
        case 'FilterResponse':
          return FilterResponse.fromJson(value);
        case 'FilterTreeResponse':
          return FilterTreeResponse.fromJson(value);
        case 'FingerprintBiometricImage':
          return FingerprintBiometricImage.fromJson(value);
        case 'Flag':
          return Flag.fromJson(value);
        case 'FlagResponse':
          return FlagResponse.fromJson(value);
        case 'FlagThreshold':
          return FlagThreshold.fromJson(value);
        case 'Game':
          return Game.fromJson(value);
        case 'GameLevel':
          return GameLevel.fromJson(value);
        case 'GameLevelListResponse':
          return GameLevelListResponse.fromJson(value);
        case 'GameLevelResponse':
          return GameLevelResponse.fromJson(value);
        case 'GameListResponse':
          return GameListResponse.fromJson(value);
        case 'GameObjectListResponse':
          return GameObjectListResponse.fromJson(value);
        case 'GameObjectResponse':
          return GameObjectResponse.fromJson(value);
        case 'GameResponse':
          return GameResponse.fromJson(value);
        case 'GeoBox':
          return GeoBox.fromJson(value);
        case 'GeoPointResponse':
          return GeoPointResponse.fromJson(value);
        case 'GeoResponse':
          return GeoResponse.fromJson(value);
        case 'GeocodeLatLngResponse':
          return GeocodeLatLngResponse.fromJson(value);
        case 'GroupPermissions':
          return GroupPermissions.fromJson(value);
        case 'ImageGenerationResponse':
          return ImageGenerationResponse.fromJson(value);
        case 'ImportStatuses':
          return ImportStatuses.fromJson(value);
        case 'Interval':
          return Interval.fromJson(value);
        case 'InviteResponse':
          return InviteResponse.fromJson(value);
        case 'Invoice':
          return Invoice.fromJson(value);
        case 'ItineraryResponse':
          return ItineraryResponse.fromJson(value);
        case 'JsonArray':
          return JsonArray.fromJson(value);
        case 'JsonElement':
          return JsonElement.fromJson(value);
        case 'JsonNull':
          return JsonNull.fromJson(value);
        case 'JsonObject':
          return JsonObject.fromJson(value);
        case 'JsonPrimitive':
          return JsonPrimitive.fromJson(value);
        case 'Leaderboard':
          return Leaderboard.fromJson(value);
        case 'LeaderboardFullResponse':
          return LeaderboardFullResponse.fromJson(value);
        case 'LeaderboardResponse':
          return LeaderboardResponse.fromJson(value);
        case 'Leg':
          return Leg.fromJson(value);
        case 'LegResponse':
          return LegResponse.fromJson(value);
        case 'LikableResponse':
          return LikableResponse.fromJson(value);
        case 'LikeResponse':
          return LikeResponse.fromJson(value);
        case 'LineItem':
          return LineItem.fromJson(value);
        case 'ListCountResponse':
          return ListCountResponse.fromJson(value);
        case 'ListResponse':
          return ListResponse.fromJson(value);
        case 'Listing':
          return Listing.fromJson(value);
        case 'ListingFullResponse':
          return ListingFullResponse.fromJson(value);
        case 'ListingGroupResponse':
          return ListingGroupResponse.fromJson(value);
        case 'ListingResponse':
          return ListingResponse.fromJson(value);
        case 'LoadResponse':
          return LoadResponse.fromJson(value);
        case 'LoadShortResponse':
          return LoadShortResponse.fromJson(value);
        case 'LocalTime':
          return LocalTime.fromJson(value);
        case 'Location':
          return Location.fromJson(value);
        case 'LocationResponse':
          return LocationResponse.fromJson(value);
        case 'LocationSearchResponse':
          return LocationSearchResponse.fromJson(value);
        case 'Media':
          return Media.fromJson(value);
        case 'MediaOfferResponse':
          return MediaOfferResponse.fromJson(value);
        case 'MediaResponse':
          return MediaResponse.fromJson(value);
        case 'MessageListResponse':
          return MessageListResponse.fromJson(value);
        case 'MessageResponse':
          return MessageResponse.fromJson(value);
        case 'Mission':
          return Mission.fromJson(value);
        case 'MissionFormatResponse':
          return MissionFormatResponse.fromJson(value);
        case 'MissionInviteResponse':
          return MissionInviteResponse.fromJson(value);
        case 'MissionListResponse':
          return MissionListResponse.fromJson(value);
        case 'MissionResponse':
          return MissionResponse.fromJson(value);
        case 'MissionShortResponse':
          return MissionShortResponse.fromJson(value);
        case 'MissionTask':
          return MissionTask.fromJson(value);
        case 'NameStringValueResponse':
          return NameStringValueResponse.fromJson(value);
        case 'Node':
          return Node.fromJson(value);
        case 'NodeRequest':
          return NodeRequest.fromJson(value);
        case 'Note':
          return Note.fromJson(value);
        case 'NoteFullResponse':
          return NoteFullResponse.fromJson(value);
        case 'NoteResponse':
          return NoteResponse.fromJson(value);
        case 'NotificationMessageListResponse':
          return NotificationMessageListResponse.fromJson(value);
        case 'NotificationMessageResponse':
          return NotificationMessageResponse.fromJson(value);
        case 'NotificationRecipientResponse':
          return NotificationRecipientResponse.fromJson(value);
        case 'NotificationRecipientResponseListResponse':
          return NotificationRecipientResponseListResponse.fromJson(value);
        case 'NotificationSettingsResponse':
          return NotificationSettingsResponse.fromJson(value);
        case 'NotificationTemplateResponse':
          return NotificationTemplateResponse.fromJson(value);
        case 'ObjectStoreResponse':
          return ObjectStoreResponse.fromJson(value);
        case 'Offer':
          return Offer.fromJson(value);
        case 'OfferListResponse':
          return OfferListResponse.fromJson(value);
        case 'OfferLocation':
          return OfferLocation.fromJson(value);
        case 'OfferResponse':
          return OfferResponse.fromJson(value);
        case 'OfferShortResponse':
          return OfferShortResponse.fromJson(value);
        case 'OfferTransactionResponse':
          return OfferTransactionResponse.fromJson(value);
        case 'OfferTransactionStatusResponse':
          return OfferTransactionStatusResponse.fromJson(value);
        case 'OrderItemRequest':
          return OrderItemRequest.fromJson(value);
        case 'OrderPackage':
          return OrderPackage.fromJson(value);
        case 'OrderResponse':
          return OrderResponse.fromJson(value);
        case 'Orders':
          return Orders.fromJson(value);
        case 'OrsonAiAddMovieResponse':
          return OrsonAiAddMovieResponse.fromJson(value);
        case 'OrsonAiBatchEmotionsResponse':
          return OrsonAiBatchEmotionsResponse.fromJson(value);
        case 'OrsonAiBatchResponse':
          return OrsonAiBatchResponse.fromJson(value);
        case 'OrsonAiBatchTopicsResponse':
          return OrsonAiBatchTopicsResponse.fromJson(value);
        case 'OrsonAiBatchTranscriptResponse':
          return OrsonAiBatchTranscriptResponse.fromJson(value);
        case 'OrsonAiEmotionsResponse':
          return OrsonAiEmotionsResponse.fromJson(value);
        case 'OrsonAiProdResponse':
          return OrsonAiProdResponse.fromJson(value);
        case 'OrsonAiProtoResponse':
          return OrsonAiProtoResponse.fromJson(value);
        case 'OrsonAiSTTResponse':
          return OrsonAiSTTResponse.fromJson(value);
        case 'OrsonAiTTSResponse':
          return OrsonAiTTSResponse.fromJson(value);
        case 'OrsonAiTechTuneResponse':
          return OrsonAiTechTuneResponse.fromJson(value);
        case 'OrsonAiTopicResponse':
          return OrsonAiTopicResponse.fromJson(value);
        case 'OrsonAiTopicsResponse':
          return OrsonAiTopicsResponse.fromJson(value);
        case 'OrsonAiVisualEmotionResponse':
          return OrsonAiVisualEmotionResponse.fromJson(value);
        case 'OrsonAiVoiceCanvasResponse':
          return OrsonAiVoiceCanvasResponse.fromJson(value);
        case 'OrsonEpisodeResponse':
          return OrsonEpisodeResponse.fromJson(value);
        case 'OrsonRenderResponse':
          return OrsonRenderResponse.fromJson(value);
        case 'OrsonVideoResponse':
          return OrsonVideoResponse.fromJson(value);
        case 'Pack':
          return Pack.fromJson(value);
        case 'PackListResponse':
          return PackListResponse.fromJson(value);
        case 'PackResponse':
          return PackResponse.fromJson(value);
        case 'Participant':
          return Participant.fromJson(value);
        case 'ParticipantResponse':
          return ParticipantResponse.fromJson(value);
        case 'PathingResponse':
          return PathingResponse.fromJson(value);
        case 'PaymentRequest':
          return PaymentRequest.fromJson(value);
        case 'PaymentTransactionResponse':
          return PaymentTransactionResponse.fromJson(value);
        case 'PaymentTypesResponse':
          return PaymentTypesResponse.fromJson(value);
        case 'PermissionResponse':
          return PermissionResponse.fromJson(value);
        case 'Permissions':
          return Permissions.fromJson(value);
        case 'PersonalProfileResponse':
          return PersonalProfileResponse.fromJson(value);
        case 'Placement':
          return Placement.fromJson(value);
        case 'PlacementResponse':
          return PlacementResponse.fromJson(value);
        case 'Platform':
          return Platform.fromJson(value);
        case 'PlatformResponse':
          return PlatformResponse.fromJson(value);
        case 'PostalCode':
          return PostalCode.fromJson(value);
        case 'PostalCodeResponse':
          return PostalCodeResponse.fromJson(value);
        case 'PredictedLocationResponse':
          return PredictedLocationResponse.fromJson(value);
        case 'PreferredLocationResponse':
          return PreferredLocationResponse.fromJson(value);
        case 'PreviewPersonaResponse':
          return PreviewPersonaResponse.fromJson(value);
        case 'Product':
          return Product.fromJson(value);
        case 'ProductResponse':
          return ProductResponse.fromJson(value);
        case 'ProfileInfoResponse':
          return ProfileInfoResponse.fromJson(value);
        case 'ProfileResponse':
          return ProfileResponse.fromJson(value);
        case 'ProfileShortResponse':
          return ProfileShortResponse.fromJson(value);
        case 'Program':
          return Program.fromJson(value);
        case 'PromoCode':
          return PromoCode.fromJson(value);
        case 'PurchaseItemFullResponse':
          return PurchaseItemFullResponse.fromJson(value);
        case 'PurchaseItemListResponse':
          return PurchaseItemListResponse.fromJson(value);
        case 'PurchaseItemResponse':
          return PurchaseItemResponse.fromJson(value);
        case 'PurchaseItemShortResponse':
          return PurchaseItemShortResponse.fromJson(value);
        case 'PurchaseOrderItemResponse':
          return PurchaseOrderItemResponse.fromJson(value);
        case 'QuestionResponse':
          return QuestionResponse.fromJson(value);
        case 'QueueResponse':
          return QueueResponse.fromJson(value);
        case 'RankFullResponse':
          return RankFullResponse.fromJson(value);
        case 'RankListResponse':
          return RankListResponse.fromJson(value);
        case 'RankResponse':
          return RankResponse.fromJson(value);
        case 'RatingIndexResponse':
          return RatingIndexResponse.fromJson(value);
        case 'RatingResponse':
          return RatingResponse.fromJson(value);
        case 'Recurrence':
          return Recurrence.fromJson(value);
        case 'Region':
          return Region.fromJson(value);
        case 'RegionLegSummary':
          return RegionLegSummary.fromJson(value);
        case 'RegionResponse':
          return RegionResponse.fromJson(value);
        case 'ReportBatchResponse':
          return ReportBatchResponse.fromJson(value);
        case 'ReportDefinition':
          return ReportDefinition.fromJson(value);
        case 'ReportRegionLegSummaryBatchResponse':
          return ReportRegionLegSummaryBatchResponse.fromJson(value);
        case 'ReportResponse':
          return ReportResponse.fromJson(value);
        case 'ReportTypeResponse':
          return ReportTypeResponse.fromJson(value);
        case 'ReservationResponse':
          return ReservationResponse.fromJson(value);
        case 'Retailer':
          return Retailer.fromJson(value);
        case 'RetailerCountResponse':
          return RetailerCountResponse.fromJson(value);
        case 'RetailerFullResponse':
          return RetailerFullResponse.fromJson(value);
        case 'RetailerLocation':
          return RetailerLocation.fromJson(value);
        case 'RetailerLocationResponse':
          return RetailerLocationResponse.fromJson(value);
        case 'RetailerLocationShortResponse':
          return RetailerLocationShortResponse.fromJson(value);
        case 'RetailerOfferResponse':
          return RetailerOfferResponse.fromJson(value);
        case 'RetailerProfile':
          return RetailerProfile.fromJson(value);
        case 'RetailerResponse':
          return RetailerResponse.fromJson(value);
        case 'RetailerShortResponse':
          return RetailerShortResponse.fromJson(value);
        case 'RewardResponse':
          return RewardResponse.fromJson(value);
        case 'Route':
          return Route.fromJson(value);
        case 'RouteSettings':
          return RouteSettings.fromJson(value);
        case 'RoutingListResponse':
          return RoutingListResponse.fromJson(value);
        case 'RoutingResponse':
          return RoutingResponse.fromJson(value);
        case 'RuleListResponse':
          return RuleListResponse.fromJson(value);
        case 'RuleResponse':
          return RuleResponse.fromJson(value);
        case 'ScheduledNotification':
          return ScheduledNotification.fromJson(value);
        case 'ScheduledNotificationFullResponse':
          return ScheduledNotificationFullResponse.fromJson(value);
        case 'ScheduledNotificationShortResponse':
          return ScheduledNotificationShortResponse.fromJson(value);
        case 'ScoreListResponse':
          return ScoreListResponse.fromJson(value);
        case 'ScoreResponse':
          return ScoreResponse.fromJson(value);
        case 'SearchResponse':
          return SearchResponse.fromJson(value);
        case 'ServiceHub':
          return ServiceHub.fromJson(value);
        case 'ServiceType':
          return ServiceType.fromJson(value);
        case 'Shipment':
          return Shipment.fromJson(value);
        case 'ShipmentBatch':
          return ShipmentBatch.fromJson(value);
        case 'ShipmentImportStatus':
          return ShipmentImportStatus.fromJson(value);
        case 'ShipmentOrder':
          return ShipmentOrder.fromJson(value);
        case 'SirqulResponse':
          return SirqulResponse.fromJson(value);
        case 'SizeGroup':
          return SizeGroup.fromJson(value);
        case 'SizeGroupResponse':
          return SizeGroupResponse.fromJson(value);
        case 'Step':
          return Step.fromJson(value);
        case 'StepResponse':
          return StepResponse.fromJson(value);
        case 'Stop':
          return Stop.fromJson(value);
        case 'StopResponse':
          return StopResponse.fromJson(value);
        case 'Subscription':
          return Subscription.fromJson(value);
        case 'SubscriptionOption':
          return SubscriptionOption.fromJson(value);
        case 'SubscriptionOptionResponse':
          return SubscriptionOptionResponse.fromJson(value);
        case 'SubscriptionPlan':
          return SubscriptionPlan.fromJson(value);
        case 'SubscriptionPlanResponse':
          return SubscriptionPlanResponse.fromJson(value);
        case 'SubscriptionResponse':
          return SubscriptionResponse.fromJson(value);
        case 'TaskResponse':
          return TaskResponse.fromJson(value);
        case 'Territory':
          return Territory.fromJson(value);
        case 'TerritoryResponse':
          return TerritoryResponse.fromJson(value);
        case 'ThemeDescriptorResponse':
          return ThemeDescriptorResponse.fromJson(value);
        case 'ThirdPartyCredentialResponse':
          return ThirdPartyCredentialResponse.fromJson(value);
        case 'ThirdPartyCredentials':
          return ThirdPartyCredentials.fromJson(value);
        case 'ThirdPartyNetwork':
          return ThirdPartyNetwork.fromJson(value);
        case 'ThirdPartyNetworkResponse':
          return ThirdPartyNetworkResponse.fromJson(value);
        case 'ThirdPartyNetworkShortResponse':
          return ThirdPartyNetworkShortResponse.fromJson(value);
        case 'TicketCountResponse':
          return TicketCountResponse.fromJson(value);
        case 'TicketListResponse':
          return TicketListResponse.fromJson(value);
        case 'TicketOfferResponse':
          return TicketOfferResponse.fromJson(value);
        case 'TicketResponse':
          return TicketResponse.fromJson(value);
        case 'TimeSlotResponse':
          return TimeSlotResponse.fromJson(value);
        case 'TokenResponse':
          return TokenResponse.fromJson(value);
        case 'TournamentResponse':
          return TournamentResponse.fromJson(value);
        case 'TriggerResponse':
          return TriggerResponse.fromJson(value);
        case 'TrilatAppSettings':
          return TrilatAppSettings.fromJson(value);
        case 'TrilatCacheRequest':
          return TrilatCacheRequest.fromJson(value);
        case 'TrilatCacheSample':
          return TrilatCacheSample.fromJson(value);
        case 'Trip':
          return Trip.fromJson(value);
        case 'Tutorial':
          return Tutorial.fromJson(value);
        case 'TutorialResponse':
          return TutorialResponse.fromJson(value);
        case 'TwiMLResponse':
          return TwiMLResponse.fromJson(value);
        case 'UrlResponse':
          return UrlResponse.fromJson(value);
        case 'UserActivityResponse':
          return UserActivityResponse.fromJson(value);
        case 'UserLocationListResponse':
          return UserLocationListResponse.fromJson(value);
        case 'UserLocationResponse':
          return UserLocationResponse.fromJson(value);
        case 'UserLocationSearchResponse':
          return UserLocationSearchResponse.fromJson(value);
        case 'UserPermissions':
          return UserPermissions.fromJson(value);
        case 'UserPermissionsListResponse':
          return UserPermissionsListResponse.fromJson(value);
        case 'UserPermissionsResponse':
          return UserPermissionsResponse.fromJson(value);
        case 'UserSettingsResponse':
          return UserSettingsResponse.fromJson(value);
        case 'Vehicle':
          return Vehicle.fromJson(value);
        case 'VehicleCargoSetting':
          return VehicleCargoSetting.fromJson(value);
        case 'VehicleResponse':
          return VehicleResponse.fromJson(value);
        case 'VehicleType':
          return VehicleType.fromJson(value);
        case 'Verb':
          return Verb.fromJson(value);
        case 'WeatherForecastResponse':
          return WeatherForecastResponse.fromJson(value);
        case 'WeatherResponse':
          return WeatherResponse.fromJson(value);
        case 'WordzWordResponse':
          return WordzWordResponse.fromJson(value);
        case 'WrappedProxyItemResponse':
          return WrappedProxyItemResponse.fromJson(value);
        case 'WrappedProxyResponse':
          return WrappedProxyResponse.fromJson(value);
        case 'WrappedResponse':
          return WrappedResponse.fromJson(value);
        case 'YayOrNay':
          return YayOrNay.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
