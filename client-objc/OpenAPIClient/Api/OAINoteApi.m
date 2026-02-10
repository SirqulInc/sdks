#import "OAINoteApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAINoteResponse.h"
#import "OAISirqulResponse.h"


@interface OAINoteApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAINoteApi

NSString* kOAINoteApiErrorDomain = @"OAINoteApiErrorDomain";
NSInteger kOAINoteApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Batch Note Operation
/// Perform a batch operation on notes for a notable object (for example: DELETE_ALL_NOTES_IN_NOTABLE). 
///  @param version  
///
///  @param notableId The id of the notable object the batch operation will affect 
///
///  @param notableType The notable object type (for example ALBUM, ASSET, OFFER, etc.) 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param batchOperation The batch operation to perform (e.g., DELETE_ALL_NOTES_IN_NOTABLE). Optional. (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) batchOperationWithVersion: (NSNumber*) version
    notableId: (NSNumber*) notableId
    notableType: (NSString*) notableType
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    batchOperation: (NSString*) batchOperation
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'notableId' is set
    if (notableId == nil) {
        NSParameterAssert(notableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"notableId"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'notableType' is set
    if (notableType == nil) {
        NSParameterAssert(notableType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"notableType"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/note/batch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (notableId != nil) {
        queryParams[@"notableId"] = notableId;
    }
    if (notableType != nil) {
        queryParams[@"notableType"] = notableType;
    }
    if (batchOperation != nil) {
        queryParams[@"batchOperation"] = batchOperation;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Create Note
/// This is used to leave a comment (note) on a notable object (i.e. albums, album contests, assets, game levels, offers, offer locations, retailers, retailer locations, and theme descriptors). Leaving a comment on a notable object will be visiable to everyone who has access to view the object.
///  @param version  
///
///  @param comment The message the user wishes to leave a comment on 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param notableType The notable object type {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, OFFER, OFFER_LOCATION, RETAILER, RETAILER_LOCATION, THEME_DESCRIPTOR} (optional)
///
///  @param notableId The id of the notable object (optional)
///
///  @param noteType The custom string defined by the client (used for differentiating various note types) (optional)
///
///  @param assetIds A comma separated list of asset IDs to add with the note (optional)
///
///  @param tags search tags (optional)
///
///  @param permissionableType This is used for sending out group notifications. For example, when someone adds a note to an asset which is also a part of an album, everyone in the album will receive a notification. This is achieved by passing in the permissionable type (in this case \"album\"), and the permissionable id (the album id). Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR} (optional)
///
///  @param permissionableId The id of the permissionable object (for sending group notifications) (optional)
///
///  @param appKey The application key used to identify the application (optional)
///
///  @param locationDescription The description of the location (optional)
///
///  @param latitude The current location of the user (optional)
///
///  @param longitude The current location of the user (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param receiverAccountIds Comma separated list of additional account IDs that will receive the note notifications (optional)
///
///  @param returnFullResponse whether to return the full response or not (optional)
///
///  @param initializeAsset Check true if need to initialize an asset and assign to current note (optional)
///
///  @param assetReturnNulls Return null fields for asset response when creating an asset (optional)
///
///  @param assetAlbumId the album the asset will be added to (optional) (optional)
///
///  @param assetCollectionId the collection ID that the asset is associated with (optional)
///
///  @param assetAddToDefaultAlbum the default album to add the asset to (optional)
///
///  @param assetAddToMediaLibrary the media library to add the asset to (optional)
///
///  @param assetVersionCode the version code of the asset (optional)
///
///  @param assetVersionName the version name of the asset (optional)
///
///  @param assetMetaData the meta data of the asset (optional)
///
///  @param assetCaption the caption of the asset (optional)
///
///  @param assetMedia the media of the asset (optional)
///
///  @param assetMediaUrl the media URL of the asset (optional)
///
///  @param assetMediaString the media string of the asset (optional)
///
///  @param assetMediaStringFileName the media string file name of the asset (optional)
///
///  @param assetMediaStringContentType the media string content type of the asset (optional)
///
///  @param assetAttachedMedia the attached media of the asset (optional)
///
///  @param assetAttachedMediaUrl the attached media URL of the asset (optional)
///
///  @param assetAttachedMediaString the attached media string of the asset (optional)
///
///  @param assetAttachedMediaStringFileName the attached media string file name of the asset (optional)
///
///  @param assetAttachedMediaStringContentType the attached media string content type of the asset (optional)
///
///  @param assetLocationDescription the location description for the asset (optional)
///
///  @param assetApp the application for the asset (optional)
///
///  @param assetSearchTags the search tags used for the asset (optional)
///
///  @param assetLatitude the latitude of the asset (optional)
///
///  @param assetLongitude the longitude of the asset (optional)
///
///  @returns OAINoteResponse*
///
-(NSURLSessionTask*) createNoteWithVersion: (NSNumber*) version
    comment: (NSString*) comment
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    notableType: (NSString*) notableType
    notableId: (NSNumber*) notableId
    noteType: (NSString*) noteType
    assetIds: (NSString*) assetIds
    tags: (NSString*) tags
    permissionableType: (NSString*) permissionableType
    permissionableId: (NSNumber*) permissionableId
    appKey: (NSString*) appKey
    locationDescription: (NSString*) locationDescription
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    metaData: (NSString*) metaData
    receiverAccountIds: (NSString*) receiverAccountIds
    returnFullResponse: (NSNumber*) returnFullResponse
    initializeAsset: (NSNumber*) initializeAsset
    assetReturnNulls: (NSNumber*) assetReturnNulls
    assetAlbumId: (NSNumber*) assetAlbumId
    assetCollectionId: (NSNumber*) assetCollectionId
    assetAddToDefaultAlbum: (NSString*) assetAddToDefaultAlbum
    assetAddToMediaLibrary: (NSNumber*) assetAddToMediaLibrary
    assetVersionCode: (NSNumber*) assetVersionCode
    assetVersionName: (NSString*) assetVersionName
    assetMetaData: (NSString*) assetMetaData
    assetCaption: (NSString*) assetCaption
    assetMedia: (NSURL*) assetMedia
    assetMediaUrl: (NSString*) assetMediaUrl
    assetMediaString: (NSString*) assetMediaString
    assetMediaStringFileName: (NSString*) assetMediaStringFileName
    assetMediaStringContentType: (NSString*) assetMediaStringContentType
    assetAttachedMedia: (NSURL*) assetAttachedMedia
    assetAttachedMediaUrl: (NSString*) assetAttachedMediaUrl
    assetAttachedMediaString: (NSString*) assetAttachedMediaString
    assetAttachedMediaStringFileName: (NSString*) assetAttachedMediaStringFileName
    assetAttachedMediaStringContentType: (NSString*) assetAttachedMediaStringContentType
    assetLocationDescription: (NSString*) assetLocationDescription
    assetApp: (NSString*) assetApp
    assetSearchTags: (NSString*) assetSearchTags
    assetLatitude: (NSNumber*) assetLatitude
    assetLongitude: (NSNumber*) assetLongitude
    completionHandler: (void (^)(OAINoteResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'comment' is set
    if (comment == nil) {
        NSParameterAssert(comment);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"comment"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/note/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (notableType != nil) {
        queryParams[@"notableType"] = notableType;
    }
    if (notableId != nil) {
        queryParams[@"notableId"] = notableId;
    }
    if (comment != nil) {
        queryParams[@"comment"] = comment;
    }
    if (noteType != nil) {
        queryParams[@"noteType"] = noteType;
    }
    if (assetIds != nil) {
        queryParams[@"assetIds"] = assetIds;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (permissionableType != nil) {
        queryParams[@"permissionableType"] = permissionableType;
    }
    if (permissionableId != nil) {
        queryParams[@"permissionableId"] = permissionableId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (receiverAccountIds != nil) {
        queryParams[@"receiverAccountIds"] = receiverAccountIds;
    }
    if (returnFullResponse != nil) {
        queryParams[@"returnFullResponse"] = [returnFullResponse isEqual:@(YES)] ? @"true" : @"false";
    }
    if (initializeAsset != nil) {
        queryParams[@"initializeAsset"] = [initializeAsset isEqual:@(YES)] ? @"true" : @"false";
    }
    if (assetReturnNulls != nil) {
        queryParams[@"assetReturnNulls"] = [assetReturnNulls isEqual:@(YES)] ? @"true" : @"false";
    }
    if (assetAlbumId != nil) {
        queryParams[@"assetAlbumId"] = assetAlbumId;
    }
    if (assetCollectionId != nil) {
        queryParams[@"assetCollectionId"] = assetCollectionId;
    }
    if (assetAddToDefaultAlbum != nil) {
        queryParams[@"assetAddToDefaultAlbum"] = assetAddToDefaultAlbum;
    }
    if (assetAddToMediaLibrary != nil) {
        queryParams[@"assetAddToMediaLibrary"] = [assetAddToMediaLibrary isEqual:@(YES)] ? @"true" : @"false";
    }
    if (assetVersionCode != nil) {
        queryParams[@"assetVersionCode"] = assetVersionCode;
    }
    if (assetVersionName != nil) {
        queryParams[@"assetVersionName"] = assetVersionName;
    }
    if (assetMetaData != nil) {
        queryParams[@"assetMetaData"] = assetMetaData;
    }
    if (assetCaption != nil) {
        queryParams[@"assetCaption"] = assetCaption;
    }
    if (assetMedia != nil) {
        queryParams[@"assetMedia"] = assetMedia;
    }
    if (assetMediaUrl != nil) {
        queryParams[@"assetMediaUrl"] = assetMediaUrl;
    }
    if (assetMediaString != nil) {
        queryParams[@"assetMediaString"] = assetMediaString;
    }
    if (assetMediaStringFileName != nil) {
        queryParams[@"assetMediaStringFileName"] = assetMediaStringFileName;
    }
    if (assetMediaStringContentType != nil) {
        queryParams[@"assetMediaStringContentType"] = assetMediaStringContentType;
    }
    if (assetAttachedMedia != nil) {
        queryParams[@"assetAttachedMedia"] = assetAttachedMedia;
    }
    if (assetAttachedMediaUrl != nil) {
        queryParams[@"assetAttachedMediaUrl"] = assetAttachedMediaUrl;
    }
    if (assetAttachedMediaString != nil) {
        queryParams[@"assetAttachedMediaString"] = assetAttachedMediaString;
    }
    if (assetAttachedMediaStringFileName != nil) {
        queryParams[@"assetAttachedMediaStringFileName"] = assetAttachedMediaStringFileName;
    }
    if (assetAttachedMediaStringContentType != nil) {
        queryParams[@"assetAttachedMediaStringContentType"] = assetAttachedMediaStringContentType;
    }
    if (assetLocationDescription != nil) {
        queryParams[@"assetLocationDescription"] = assetLocationDescription;
    }
    if (assetApp != nil) {
        queryParams[@"assetApp"] = assetApp;
    }
    if (assetSearchTags != nil) {
        queryParams[@"assetSearchTags"] = assetSearchTags;
    }
    if (assetLatitude != nil) {
        queryParams[@"assetLatitude"] = assetLatitude;
    }
    if (assetLongitude != nil) {
        queryParams[@"assetLongitude"] = assetLongitude;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAINoteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAINoteResponse*)data, error);
                                }
                            }];
}

///
/// Delete Note
/// Sets a comment (note) as deleted.
///  @param version  
///
///  @param noteId The ID of the note to delete 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param latitude The current location of the user (optional)
///
///  @param longitude The current location of the user (optional)
///
///  @param appKey The application key used to identify the application (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteNoteWithVersion: (NSNumber*) version
    noteId: (NSNumber*) noteId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    appKey: (NSString*) appKey
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'noteId' is set
    if (noteId == nil) {
        NSParameterAssert(noteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"noteId"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/note/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (noteId != nil) {
        queryParams[@"noteId"] = noteId;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Get Note
/// Get for a note based on its Id.
///  @param version  
///
///  @param noteId the id of the note to get 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param returnFullResponse Determines whether to return the NoteFullResponse for the item (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) getNoteWithVersion: (NSNumber*) version
    noteId: (NSNumber*) noteId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    returnFullResponse: (NSNumber*) returnFullResponse
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'noteId' is set
    if (noteId == nil) {
        NSParameterAssert(noteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"noteId"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/note/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (returnFullResponse != nil) {
        queryParams[@"returnFullResponse"] = [returnFullResponse isEqual:@(YES)] ? @"true" : @"false";
    }
    if (noteId != nil) {
        queryParams[@"noteId"] = noteId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISirqulResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISirqulResponse*)data, error);
                                }
                            }];
}

///
/// Search Notes
/// Search for notes on a notable object.
///  @param version  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param notableType The notable object type {ALBUM, ALBUM_CONTEST, ASSET, GAME_LEVEL, OFFER, OFFER_LOCATION, RETAILER, RETAILER_LOCATION, THEME_DESCRIPTOR} (optional)
///
///  @param notableId The id of the notable object (optional)
///
///  @param noteTypes Comma separated list of noteType strings to filter results with (optional)
///
///  @param appKey The application key used to identify the application (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param flagCountMinimum return items that has flagCount >= flagCountMinimum if this is set, return all items, even ones with flagCount >= flagThreshold (optional)
///
///  @param flagsExceedThreshold return items that has flagCount >= flagThreshold, which are hidden by default (optional)
///
///  @param includeInactive include inactive in the result (optional)
///
///  @param sortField The column to sort the search on (optional)
///
///  @param descending The order to return the search results (optional)
///
///  @param returnFullResponse Determines whether to return the NoteFullResponse for each search item (optional)
///
///  @param updatedSince return items that have been updated since this date (time-stamp in milliseconds) (optional)
///
///  @param updatedBefore return items that have been updated before this date (time-stamp in milliseconds) (optional)
///
///  @param start The record to begin the return set on (optional)
///
///  @param limit The number of records to return (optional)
///
///  @returns NSArray<OAINoteResponse>*
///
-(NSURLSessionTask*) searchNotesWithVersion: (NSNumber*) version
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    notableType: (NSString*) notableType
    notableId: (NSNumber*) notableId
    noteTypes: (NSString*) noteTypes
    appKey: (NSString*) appKey
    keyword: (NSString*) keyword
    flagCountMinimum: (NSNumber*) flagCountMinimum
    flagsExceedThreshold: (NSNumber*) flagsExceedThreshold
    includeInactive: (NSNumber*) includeInactive
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    returnFullResponse: (NSNumber*) returnFullResponse
    updatedSince: (NSNumber*) updatedSince
    updatedBefore: (NSNumber*) updatedBefore
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAINoteResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/note/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (notableType != nil) {
        queryParams[@"notableType"] = notableType;
    }
    if (notableId != nil) {
        queryParams[@"notableId"] = notableId;
    }
    if (noteTypes != nil) {
        queryParams[@"noteTypes"] = noteTypes;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (flagCountMinimum != nil) {
        queryParams[@"flagCountMinimum"] = flagCountMinimum;
    }
    if (flagsExceedThreshold != nil) {
        queryParams[@"flagsExceedThreshold"] = [flagsExceedThreshold isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeInactive != nil) {
        queryParams[@"includeInactive"] = [includeInactive isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnFullResponse != nil) {
        queryParams[@"returnFullResponse"] = [returnFullResponse isEqual:@(YES)] ? @"true" : @"false";
    }
    if (updatedSince != nil) {
        queryParams[@"updatedSince"] = updatedSince;
    }
    if (updatedBefore != nil) {
        queryParams[@"updatedBefore"] = updatedBefore;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAINoteResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAINoteResponse>*)data, error);
                                }
                            }];
}

///
/// Update Note
/// Update an existing comment (note). Only the creator of the note have permission to update.
///  @param version  
///
///  @param noteId The id of the note, used when editing a comment 
///
///  @param deviceId The unique device identifier that made the request (either deviceId or accountId must be used) (optional)
///
///  @param accountId The unique accountId that made the request (either deviceId or accountId must be used) (optional)
///
///  @param comment The message the user wishes to leave a comment on (optional)
///
///  @param noteType The custom string defined by the client (used for differentiating on various note types) (optional)
///
///  @param assetIds A comma separated list of asset IDs to add with the note (optional)
///
///  @param tags search tags (optional)
///
///  @param permissionableType This is used for sending out group notifications. For example, when someone adds a note to an asset which is also a part of an album, everyone in the album will receive a notification. This is achieved by passing in the permissionable type (in this case \"album\"), and the permissionable id (the album id). Possible types: {ALBUM, ALBUM_CONTEST, GAME_LEVEL, THEME_DESCRIPTOR} (optional)
///
///  @param permissionableId The id of the permissionable object (for sending group notifications) (optional)
///
///  @param appKey The application key used to identify the application (optional)
///
///  @param locationDescription The description of the location (optional)
///
///  @param latitude The current location of the user (optional)
///
///  @param longitude The current location of the user (optional)
///
///  @param metaData meta data to update with the note (optional)
///
///  @param returnFullResponse whether to return the full response or not (optional)
///
///  @param active Sets the active flag for the note (optional)
///
///  @param updateAsset main flag for updating asset in note, must set to true if you want to update the note's asset (optional)
///
///  @param assetReturnNulls Return null fields for asset response when updating an asset (optional)
///
///  @param assetAlbumId the album the asset will be added to (optional) (optional)
///
///  @param assetCollectionId the collection ID that the asset is associated with (optional)
///
///  @param assetAddToDefaultAlbum the default album to add the asset to (optional)
///
///  @param assetAddToMediaLibrary the media library to add the asset to (optional)
///
///  @param assetVersionCode the version code of the asset (optional)
///
///  @param assetVersionName the version name of the asset (optional)
///
///  @param assetMetaData the meta data of the asset (optional)
///
///  @param assetCaption the caption of the asset (optional)
///
///  @param assetMedia the media of the asset (optional)
///
///  @param assetMediaUrl the media URL of the asset (optional)
///
///  @param assetMediaString the media string of the asset (optional)
///
///  @param assetMediaStringFileName the media string file name of the asset (optional)
///
///  @param assetMediaStringContentType the media string content type of the asset (optional)
///
///  @param assetAttachedMedia the attached media of the asset (optional)
///
///  @param assetAttachedMediaUrl the attached media URL of the asset (optional)
///
///  @param assetAttachedMediaString the attached media string of the asset (optional)
///
///  @param assetAttachedMediaStringFileName the attached media string file name of the asset (optional)
///
///  @param assetAttachedMediaStringContentType the attached media string content type of the asset (optional)
///
///  @param assetLocationDescription the location description for the asset (optional)
///
///  @param assetApp the application for the asset (optional)
///
///  @param assetSearchTags the search tags used for the asset (optional)
///
///  @param assetLatitude the latitude of the asset (optional)
///
///  @param assetLongitude the longitude of the asset (optional)
///
///  @returns OAINoteResponse*
///
-(NSURLSessionTask*) updateNoteWithVersion: (NSNumber*) version
    noteId: (NSNumber*) noteId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    comment: (NSString*) comment
    noteType: (NSString*) noteType
    assetIds: (NSString*) assetIds
    tags: (NSString*) tags
    permissionableType: (NSString*) permissionableType
    permissionableId: (NSNumber*) permissionableId
    appKey: (NSString*) appKey
    locationDescription: (NSString*) locationDescription
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    metaData: (NSString*) metaData
    returnFullResponse: (NSNumber*) returnFullResponse
    active: (NSNumber*) active
    updateAsset: (NSNumber*) updateAsset
    assetReturnNulls: (NSNumber*) assetReturnNulls
    assetAlbumId: (NSNumber*) assetAlbumId
    assetCollectionId: (NSNumber*) assetCollectionId
    assetAddToDefaultAlbum: (NSString*) assetAddToDefaultAlbum
    assetAddToMediaLibrary: (NSNumber*) assetAddToMediaLibrary
    assetVersionCode: (NSNumber*) assetVersionCode
    assetVersionName: (NSString*) assetVersionName
    assetMetaData: (NSString*) assetMetaData
    assetCaption: (NSString*) assetCaption
    assetMedia: (NSURL*) assetMedia
    assetMediaUrl: (NSString*) assetMediaUrl
    assetMediaString: (NSString*) assetMediaString
    assetMediaStringFileName: (NSString*) assetMediaStringFileName
    assetMediaStringContentType: (NSString*) assetMediaStringContentType
    assetAttachedMedia: (NSURL*) assetAttachedMedia
    assetAttachedMediaUrl: (NSString*) assetAttachedMediaUrl
    assetAttachedMediaString: (NSString*) assetAttachedMediaString
    assetAttachedMediaStringFileName: (NSString*) assetAttachedMediaStringFileName
    assetAttachedMediaStringContentType: (NSString*) assetAttachedMediaStringContentType
    assetLocationDescription: (NSString*) assetLocationDescription
    assetApp: (NSString*) assetApp
    assetSearchTags: (NSString*) assetSearchTags
    assetLatitude: (NSNumber*) assetLatitude
    assetLongitude: (NSNumber*) assetLongitude
    completionHandler: (void (^)(OAINoteResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'noteId' is set
    if (noteId == nil) {
        NSParameterAssert(noteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"noteId"] };
            NSError* error = [NSError errorWithDomain:kOAINoteApiErrorDomain code:kOAINoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/note/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (noteId != nil) {
        queryParams[@"noteId"] = noteId;
    }
    if (comment != nil) {
        queryParams[@"comment"] = comment;
    }
    if (noteType != nil) {
        queryParams[@"noteType"] = noteType;
    }
    if (assetIds != nil) {
        queryParams[@"assetIds"] = assetIds;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (permissionableType != nil) {
        queryParams[@"permissionableType"] = permissionableType;
    }
    if (permissionableId != nil) {
        queryParams[@"permissionableId"] = permissionableId;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (returnFullResponse != nil) {
        queryParams[@"returnFullResponse"] = [returnFullResponse isEqual:@(YES)] ? @"true" : @"false";
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (updateAsset != nil) {
        queryParams[@"updateAsset"] = [updateAsset isEqual:@(YES)] ? @"true" : @"false";
    }
    if (assetReturnNulls != nil) {
        queryParams[@"assetReturnNulls"] = [assetReturnNulls isEqual:@(YES)] ? @"true" : @"false";
    }
    if (assetAlbumId != nil) {
        queryParams[@"assetAlbumId"] = assetAlbumId;
    }
    if (assetCollectionId != nil) {
        queryParams[@"assetCollectionId"] = assetCollectionId;
    }
    if (assetAddToDefaultAlbum != nil) {
        queryParams[@"assetAddToDefaultAlbum"] = assetAddToDefaultAlbum;
    }
    if (assetAddToMediaLibrary != nil) {
        queryParams[@"assetAddToMediaLibrary"] = [assetAddToMediaLibrary isEqual:@(YES)] ? @"true" : @"false";
    }
    if (assetVersionCode != nil) {
        queryParams[@"assetVersionCode"] = assetVersionCode;
    }
    if (assetVersionName != nil) {
        queryParams[@"assetVersionName"] = assetVersionName;
    }
    if (assetMetaData != nil) {
        queryParams[@"assetMetaData"] = assetMetaData;
    }
    if (assetCaption != nil) {
        queryParams[@"assetCaption"] = assetCaption;
    }
    if (assetMedia != nil) {
        queryParams[@"assetMedia"] = assetMedia;
    }
    if (assetMediaUrl != nil) {
        queryParams[@"assetMediaUrl"] = assetMediaUrl;
    }
    if (assetMediaString != nil) {
        queryParams[@"assetMediaString"] = assetMediaString;
    }
    if (assetMediaStringFileName != nil) {
        queryParams[@"assetMediaStringFileName"] = assetMediaStringFileName;
    }
    if (assetMediaStringContentType != nil) {
        queryParams[@"assetMediaStringContentType"] = assetMediaStringContentType;
    }
    if (assetAttachedMedia != nil) {
        queryParams[@"assetAttachedMedia"] = assetAttachedMedia;
    }
    if (assetAttachedMediaUrl != nil) {
        queryParams[@"assetAttachedMediaUrl"] = assetAttachedMediaUrl;
    }
    if (assetAttachedMediaString != nil) {
        queryParams[@"assetAttachedMediaString"] = assetAttachedMediaString;
    }
    if (assetAttachedMediaStringFileName != nil) {
        queryParams[@"assetAttachedMediaStringFileName"] = assetAttachedMediaStringFileName;
    }
    if (assetAttachedMediaStringContentType != nil) {
        queryParams[@"assetAttachedMediaStringContentType"] = assetAttachedMediaStringContentType;
    }
    if (assetLocationDescription != nil) {
        queryParams[@"assetLocationDescription"] = assetLocationDescription;
    }
    if (assetApp != nil) {
        queryParams[@"assetApp"] = assetApp;
    }
    if (assetSearchTags != nil) {
        queryParams[@"assetSearchTags"] = assetSearchTags;
    }
    if (assetLatitude != nil) {
        queryParams[@"assetLatitude"] = assetLatitude;
    }
    if (assetLongitude != nil) {
        queryParams[@"assetLongitude"] = assetLongitude;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAINoteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAINoteResponse*)data, error);
                                }
                            }];
}



@end
