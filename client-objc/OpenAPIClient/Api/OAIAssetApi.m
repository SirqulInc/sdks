#import "OAIAssetApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAssetFullResponse.h"
#import "OAIAssetResponse.h"
#import "OAIAssetShortResponse.h"
#import "OAISirqulResponse.h"


@interface OAIAssetApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAssetApi

NSString* kOAIAssetApiErrorDomain = @"OAIAssetApiErrorDomain";
NSInteger kOAIAssetApiMissingParamErrorCode = 234513;

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
/// Download Asset
/// Downloads an asset from the server for assets that have been uploaded to the server.
///  @param filename the filename in the following formats: {assetId}-{suffix}.{extension} | {assetId}.{extension} | {assetId} 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) assetDownloadWithFilename: (NSString*) filename
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'filename' is set
    if (filename == nil) {
        NSParameterAssert(filename);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"filename"] };
            NSError* error = [NSError errorWithDomain:kOAIAssetApiErrorDomain code:kOAIAssetApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/download/{filename}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (filename != nil) {
        pathParams[@"filename"] = filename;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                                    method: @"GET"
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
/// Convert Offer to Creative
/// Converts an offer image + text into a creative image.
///  @param offerId offer id used for inserting offer text/flavor 
///
///  @param adSize the ad size used for selecting a format for the creative image 
///
///  @param creativeId used for inserting the newly created image into (optional)
///
///  @param width total width of the creative image (optional)
///
///  @param height total height of the creative image (optional)
///
///  @param backgroundSize the size of the background (optional)
///
///  @param template the template to use (optional)
///
///  @returns OAIAssetShortResponse*
///
-(NSURLSessionTask*) assetMorphWithOfferId: (NSNumber*) offerId
    adSize: (NSString*) adSize
    creativeId: (NSNumber*) creativeId
    width: (NSNumber*) width
    height: (NSNumber*) height
    backgroundSize: (NSString*) backgroundSize
    template: (NSString*) template
    completionHandler: (void (^)(OAIAssetShortResponse* output, NSError* error)) handler {
    // verify the required parameter 'offerId' is set
    if (offerId == nil) {
        NSParameterAssert(offerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssetApiErrorDomain code:kOAIAssetApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'adSize' is set
    if (adSize == nil) {
        NSParameterAssert(adSize);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"adSize"] };
            NSError* error = [NSError errorWithDomain:kOAIAssetApiErrorDomain code:kOAIAssetApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/morph"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (creativeId != nil) {
        queryParams[@"creativeId"] = creativeId;
    }
    if (adSize != nil) {
        queryParams[@"adSize"] = adSize;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (backgroundSize != nil) {
        queryParams[@"backgroundSize"] = backgroundSize;
    }
    if (template != nil) {
        queryParams[@"template"] = template;
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
                              responseType: @"OAIAssetShortResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAssetShortResponse*)data, error);
                                }
                            }];
}

///
/// Create Asset
/// Uploads an asset to server and returns an asset id which can be used to assign to various objects.
///  @param returnNulls to return nulls (optional)
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param albumId the album the asset will be added to (optional) (optional)
///
///  @param collectionId Deprecated: use collections via the collection endpoints. (optional)
///
///  @param addToDefaultAlbum Whether to add to a default album (optional)
///
///  @param addToMediaLibrary Whether to add to the media library (optional)
///
///  @param versionCode the version code (optional)
///
///  @param versionName the version name (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param caption the caption (optional) (optional)
///
///  @param assetType the asset type (optional)
///
///  @param approvalStatus approval status for the asset (optional)
///
///  @param assignedAccountId account id assigned to the asset (optional)
///
///  @param media a MultipartFile containing the mimetype, etc (optional)
///
///  @param mediaUrl this can be used if the \"media\" is a link (optional) (optional)
///
///  @param mediaString the media content as a string (optional) (optional)
///
///  @param mediaStringFileName file name for mediaString (optional) (optional)
///
///  @param mediaStringContentType content type for mediaString (optional) (optional)
///
///  @param mediaHeight the media height (optional) (optional)
///
///  @param mediaWidth the media width (optional) (optional)
///
///  @param attachedMedia a MultipartFile containing an asset that the \"media\" file references (optional). Example: to upload a video the \"media\" file should contain a screen capture and the \"attachedMedia\" should be the actual video. (optional)
///
///  @param attachedMediaUrl this can be used if the \"attachedMedia\" is a link (i.e. a Youtube video, etc) (optional) (optional)
///
///  @param attachedMediaString attached media content as a string (optional) (optional)
///
///  @param attachedMediaStringFileName file name for attachedMediaString (optional) (optional)
///
///  @param attachedMediaStringContentType content type for attachedMediaString (optional) (optional)
///
///  @param attachedMediaHeight the attached media height (optional) (optional)
///
///  @param attachedMediaWidth the attached media width (optional) (optional)
///
///  @param locationDescription the location description (optional) (optional)
///
///  @param app Deprecated: app parameter (optional)
///
///  @param appKey the application key (optional)
///
///  @param searchTags the search tags (optional)
///
///  @param latitude the latitude (optional) (optional)
///
///  @param longitude the longitude (optional) (optional)
///
///  @returns OAIAssetResponse*
///
-(NSURLSessionTask*) createAssetWithReturnNulls: (NSNumber*) returnNulls
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    albumId: (NSNumber*) albumId
    collectionId: (NSNumber*) collectionId
    addToDefaultAlbum: (NSString*) addToDefaultAlbum
    addToMediaLibrary: (NSNumber*) addToMediaLibrary
    versionCode: (NSNumber*) versionCode
    versionName: (NSString*) versionName
    metaData: (NSString*) metaData
    caption: (NSString*) caption
    assetType: (NSString*) assetType
    approvalStatus: (NSString*) approvalStatus
    assignedAccountId: (NSNumber*) assignedAccountId
    media: (NSURL*) media
    mediaUrl: (NSString*) mediaUrl
    mediaString: (NSString*) mediaString
    mediaStringFileName: (NSString*) mediaStringFileName
    mediaStringContentType: (NSString*) mediaStringContentType
    mediaHeight: (NSNumber*) mediaHeight
    mediaWidth: (NSNumber*) mediaWidth
    attachedMedia: (NSURL*) attachedMedia
    attachedMediaUrl: (NSString*) attachedMediaUrl
    attachedMediaString: (NSString*) attachedMediaString
    attachedMediaStringFileName: (NSString*) attachedMediaStringFileName
    attachedMediaStringContentType: (NSString*) attachedMediaStringContentType
    attachedMediaHeight: (NSNumber*) attachedMediaHeight
    attachedMediaWidth: (NSNumber*) attachedMediaWidth
    locationDescription: (NSString*) locationDescription
    app: (NSString*) app
    appKey: (NSString*) appKey
    searchTags: (NSString*) searchTags
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAIAssetResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (returnNulls != nil) {
        queryParams[@"returnNulls"] = [returnNulls isEqual:@(YES)] ? @"true" : @"false";
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
    }
    if (collectionId != nil) {
        queryParams[@"collectionId"] = collectionId;
    }
    if (addToDefaultAlbum != nil) {
        queryParams[@"addToDefaultAlbum"] = addToDefaultAlbum;
    }
    if (addToMediaLibrary != nil) {
        queryParams[@"addToMediaLibrary"] = [addToMediaLibrary isEqual:@(YES)] ? @"true" : @"false";
    }
    if (versionCode != nil) {
        queryParams[@"versionCode"] = versionCode;
    }
    if (versionName != nil) {
        queryParams[@"versionName"] = versionName;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (caption != nil) {
        queryParams[@"caption"] = caption;
    }
    if (assetType != nil) {
        queryParams[@"assetType"] = assetType;
    }
    if (approvalStatus != nil) {
        queryParams[@"approvalStatus"] = approvalStatus;
    }
    if (assignedAccountId != nil) {
        queryParams[@"assignedAccountId"] = assignedAccountId;
    }
    if (media != nil) {
        queryParams[@"media"] = media;
    }
    if (mediaUrl != nil) {
        queryParams[@"mediaUrl"] = mediaUrl;
    }
    if (mediaString != nil) {
        queryParams[@"mediaString"] = mediaString;
    }
    if (mediaStringFileName != nil) {
        queryParams[@"mediaStringFileName"] = mediaStringFileName;
    }
    if (mediaStringContentType != nil) {
        queryParams[@"mediaStringContentType"] = mediaStringContentType;
    }
    if (mediaHeight != nil) {
        queryParams[@"mediaHeight"] = mediaHeight;
    }
    if (mediaWidth != nil) {
        queryParams[@"mediaWidth"] = mediaWidth;
    }
    if (attachedMedia != nil) {
        queryParams[@"attachedMedia"] = attachedMedia;
    }
    if (attachedMediaUrl != nil) {
        queryParams[@"attachedMediaUrl"] = attachedMediaUrl;
    }
    if (attachedMediaString != nil) {
        queryParams[@"attachedMediaString"] = attachedMediaString;
    }
    if (attachedMediaStringFileName != nil) {
        queryParams[@"attachedMediaStringFileName"] = attachedMediaStringFileName;
    }
    if (attachedMediaStringContentType != nil) {
        queryParams[@"attachedMediaStringContentType"] = attachedMediaStringContentType;
    }
    if (attachedMediaHeight != nil) {
        queryParams[@"attachedMediaHeight"] = attachedMediaHeight;
    }
    if (attachedMediaWidth != nil) {
        queryParams[@"attachedMediaWidth"] = attachedMediaWidth;
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
    }
    if (app != nil) {
        queryParams[@"app"] = app;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (searchTags != nil) {
        queryParams[@"searchTags"] = searchTags;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
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
                              responseType: @"OAIAssetResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAssetResponse*)data, error);
                                }
                            }];
}

///
/// Delete Asset
/// Delete an asset.
///  @param assetId the id of the asset to delete 
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteAssetWithAssetId: (NSString*) assetId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'assetId' is set
    if (assetId == nil) {
        NSParameterAssert(assetId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assetId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssetApiErrorDomain code:kOAIAssetApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
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
/// Get Asset
/// Gets the full asset response including attached likes and notes.
///  @param assetId the asset ID 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param noteDescending determines whether the notes on the asset are in descending order (optional, default to @(NO))
///
///  @returns OAIAssetFullResponse*
///
-(NSURLSessionTask*) getAssetWithAssetId: (NSNumber*) assetId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    noteDescending: (NSNumber*) noteDescending
    completionHandler: (void (^)(OAIAssetFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'assetId' is set
    if (assetId == nil) {
        NSParameterAssert(assetId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assetId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssetApiErrorDomain code:kOAIAssetApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (noteDescending != nil) {
        queryParams[@"noteDescending"] = [noteDescending isEqual:@(YES)] ? @"true" : @"false";
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAssetFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAssetFullResponse*)data, error);
                                }
                            }];
}

///
/// Remove Asset from Collection
/// Remove assets from collections
///  @param assetId the id of the asset to remove 
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param albumId the album id to remove the asset from (optional)
///
///  @param collectionId the collection id to remove the asset from (optional)
///
///  @param removeFromDefaultAlbums remove from the user's profile album (optional)
///
///  @param latitude latitude used to update the user's current location (optional)
///
///  @param longitude longitude used to update the user's current location (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) removeAssetWithAssetId: (NSString*) assetId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    albumId: (NSNumber*) albumId
    collectionId: (NSNumber*) collectionId
    removeFromDefaultAlbums: (NSNumber*) removeFromDefaultAlbums
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'assetId' is set
    if (assetId == nil) {
        NSParameterAssert(assetId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assetId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssetApiErrorDomain code:kOAIAssetApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/remove"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
    }
    if (collectionId != nil) {
        queryParams[@"collectionId"] = collectionId;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (removeFromDefaultAlbums != nil) {
        queryParams[@"removeFromDefaultAlbums"] = [removeFromDefaultAlbums isEqual:@(YES)] ? @"true" : @"false";
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
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
/// Search Assets
/// Searches for assets
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param albumIds comma separated list of album ids to search on (optional)
///
///  @param assetIds comma separated list of asset ids to search on (optional)
///
///  @param appKey the application key to filter results by application. (optional)
///
///  @param mediaType filter results by media type. Possible values include: APPLICATION, IMAGE, AUDIO, VIDEO, MULTIPART, TEXT (optional)
///
///  @param mimeType filter results by mime type (optional)
///
///  @param keyword keyword search string (optional)
///
///  @param versionCode filter results by version code (optional)
///
///  @param versionName filter results by version name (optional)
///
///  @param updatedSince return items that have been updated since this date (time-stamp in milliseconds) (optional)
///
///  @param updatedBefore return items that have been updated before this date (time-stamp in milliseconds) (optional)
///
///  @param sortField the field to sort by. See AssetApiMap (optional)
///
///  @param descending determines whether the sorted list is in descending or ascending order (optional)
///
///  @param searchMediaLibrary determines whether to search on the media library album (optional)
///
///  @param filterByBillable filter results by billable entity (optional)
///
///  @param activeOnly if only searching for active assets (optional)
///
///  @param returnApp determines whether to include the application response as part of the asset response (optional)
///
///  @param start the start index for pagination (optional)
///
///  @param limit the limit for pagination (there is a hard limit of 200) (optional)
///
///  @param searchMode search mode for index (SearchIndexMode) (optional)
///
///  @param assetType filter by asset type (optional)
///
///  @param approvalStatus filter by approval status (optional)
///
///  @param assignedAccountId filter results by an assigned account id (optional)
///
///  @returns NSArray<OAIAssetResponse>*
///
-(NSURLSessionTask*) searchAssetsWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    albumIds: (NSString*) albumIds
    assetIds: (NSString*) assetIds
    appKey: (NSString*) appKey
    mediaType: (NSString*) mediaType
    mimeType: (NSString*) mimeType
    keyword: (NSString*) keyword
    versionCode: (NSNumber*) versionCode
    versionName: (NSString*) versionName
    updatedSince: (NSNumber*) updatedSince
    updatedBefore: (NSNumber*) updatedBefore
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    searchMediaLibrary: (NSNumber*) searchMediaLibrary
    filterByBillable: (NSNumber*) filterByBillable
    activeOnly: (NSNumber*) activeOnly
    returnApp: (NSNumber*) returnApp
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    searchMode: (NSString*) searchMode
    assetType: (NSString*) assetType
    approvalStatus: (NSString*) approvalStatus
    assignedAccountId: (NSNumber*) assignedAccountId
    completionHandler: (void (^)(NSArray<OAIAssetResponse>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (albumIds != nil) {
        queryParams[@"albumIds"] = albumIds;
    }
    if (assetIds != nil) {
        queryParams[@"assetIds"] = assetIds;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (mediaType != nil) {
        queryParams[@"mediaType"] = mediaType;
    }
    if (mimeType != nil) {
        queryParams[@"mimeType"] = mimeType;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (versionCode != nil) {
        queryParams[@"versionCode"] = versionCode;
    }
    if (versionName != nil) {
        queryParams[@"versionName"] = versionName;
    }
    if (updatedSince != nil) {
        queryParams[@"updatedSince"] = updatedSince;
    }
    if (updatedBefore != nil) {
        queryParams[@"updatedBefore"] = updatedBefore;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (searchMediaLibrary != nil) {
        queryParams[@"searchMediaLibrary"] = [searchMediaLibrary isEqual:@(YES)] ? @"true" : @"false";
    }
    if (filterByBillable != nil) {
        queryParams[@"filterByBillable"] = [filterByBillable isEqual:@(YES)] ? @"true" : @"false";
    }
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (returnApp != nil) {
        queryParams[@"returnApp"] = [returnApp isEqual:@(YES)] ? @"true" : @"false";
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (searchMode != nil) {
        queryParams[@"searchMode"] = searchMode;
    }
    if (assetType != nil) {
        queryParams[@"assetType"] = assetType;
    }
    if (approvalStatus != nil) {
        queryParams[@"approvalStatus"] = approvalStatus;
    }
    if (assignedAccountId != nil) {
        queryParams[@"assignedAccountId"] = assignedAccountId;
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAIAssetResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAssetResponse>*)data, error);
                                }
                            }];
}

///
/// Update Asset
/// Updates an asset's meta data. If an album reference is passed in, the participants with write permissions are allowed to edit the asset. Otherwise, only the asset up-loader has permission to edit the data.
///  @param assetId the ID of the asset to update 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param albumId the ID of the album to check user permissions (optional)
///
///  @param attachedAssetId the ID of the attached asset (optional)
///
///  @param versionCode the version code (optional)
///
///  @param versionName the version name (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param caption the caption (optional)
///
///  @param assetType the asset type (optional)
///
///  @param approvalStatus approval status for the asset (optional)
///
///  @param assignedAccountId account id assigned to the asset (optional)
///
///  @param media a MultipartFile containing the mimetype, etc (optional)
///
///  @param mediaUrl this can be used if the \"media\" is a link (optional) (optional)
///
///  @param mediaString the media content as a string (optional) (optional)
///
///  @param mediaStringFileName file name for mediaString (optional) (optional)
///
///  @param mediaStringContentType content type for mediaString (optional) (optional)
///
///  @param mediaHeight the media height (optional) (optional)
///
///  @param mediaWidth the media width (optional) (optional)
///
///  @param attachedMedia a MultipartFile containing an asset that the \"media\" file references (optional). Example: to upload a video the \"media\" file should contain a screen capture and the \"attachedMedia\" should be the actual video. (optional)
///
///  @param attachedMediaUrl this can be used if the \"attachedMedia\" is a link (i.e. a Youtube video, etc) (optional) (optional)
///
///  @param attachedMediaString attached media content as a string (optional) (optional)
///
///  @param attachedMediaStringFileName file name for attachedMediaString (optional) (optional)
///
///  @param attachedMediaStringContentType content type for attachedMediaString (optional) (optional)
///
///  @param attachedMediaHeight the attached media height (optional) (optional)
///
///  @param attachedMediaWidth the attached media width (optional) (optional)
///
///  @param locationDescription the location description (optional)
///
///  @param searchTags search tags (optional)
///
///  @param appKey the application key (optional)
///
///  @param latitude latitude used to update the asset's location (optional)
///
///  @param longitude longitude used to update the asset's location (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) updateAssetWithAssetId: (NSNumber*) assetId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    albumId: (NSNumber*) albumId
    attachedAssetId: (NSNumber*) attachedAssetId
    versionCode: (NSNumber*) versionCode
    versionName: (NSString*) versionName
    metaData: (NSString*) metaData
    caption: (NSString*) caption
    assetType: (NSString*) assetType
    approvalStatus: (NSString*) approvalStatus
    assignedAccountId: (NSNumber*) assignedAccountId
    media: (NSURL*) media
    mediaUrl: (NSString*) mediaUrl
    mediaString: (NSString*) mediaString
    mediaStringFileName: (NSString*) mediaStringFileName
    mediaStringContentType: (NSString*) mediaStringContentType
    mediaHeight: (NSNumber*) mediaHeight
    mediaWidth: (NSNumber*) mediaWidth
    attachedMedia: (NSURL*) attachedMedia
    attachedMediaUrl: (NSString*) attachedMediaUrl
    attachedMediaString: (NSString*) attachedMediaString
    attachedMediaStringFileName: (NSString*) attachedMediaStringFileName
    attachedMediaStringContentType: (NSString*) attachedMediaStringContentType
    attachedMediaHeight: (NSNumber*) attachedMediaHeight
    attachedMediaWidth: (NSNumber*) attachedMediaWidth
    locationDescription: (NSString*) locationDescription
    searchTags: (NSString*) searchTags
    appKey: (NSString*) appKey
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'assetId' is set
    if (assetId == nil) {
        NSParameterAssert(assetId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assetId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssetApiErrorDomain code:kOAIAssetApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
    }
    if (attachedAssetId != nil) {
        queryParams[@"attachedAssetId"] = attachedAssetId;
    }
    if (versionCode != nil) {
        queryParams[@"versionCode"] = versionCode;
    }
    if (versionName != nil) {
        queryParams[@"versionName"] = versionName;
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (caption != nil) {
        queryParams[@"caption"] = caption;
    }
    if (assetType != nil) {
        queryParams[@"assetType"] = assetType;
    }
    if (approvalStatus != nil) {
        queryParams[@"approvalStatus"] = approvalStatus;
    }
    if (assignedAccountId != nil) {
        queryParams[@"assignedAccountId"] = assignedAccountId;
    }
    if (media != nil) {
        queryParams[@"media"] = media;
    }
    if (mediaUrl != nil) {
        queryParams[@"mediaUrl"] = mediaUrl;
    }
    if (mediaString != nil) {
        queryParams[@"mediaString"] = mediaString;
    }
    if (mediaStringFileName != nil) {
        queryParams[@"mediaStringFileName"] = mediaStringFileName;
    }
    if (mediaStringContentType != nil) {
        queryParams[@"mediaStringContentType"] = mediaStringContentType;
    }
    if (mediaHeight != nil) {
        queryParams[@"mediaHeight"] = mediaHeight;
    }
    if (mediaWidth != nil) {
        queryParams[@"mediaWidth"] = mediaWidth;
    }
    if (attachedMedia != nil) {
        queryParams[@"attachedMedia"] = attachedMedia;
    }
    if (attachedMediaUrl != nil) {
        queryParams[@"attachedMediaUrl"] = attachedMediaUrl;
    }
    if (attachedMediaString != nil) {
        queryParams[@"attachedMediaString"] = attachedMediaString;
    }
    if (attachedMediaStringFileName != nil) {
        queryParams[@"attachedMediaStringFileName"] = attachedMediaStringFileName;
    }
    if (attachedMediaStringContentType != nil) {
        queryParams[@"attachedMediaStringContentType"] = attachedMediaStringContentType;
    }
    if (attachedMediaHeight != nil) {
        queryParams[@"attachedMediaHeight"] = attachedMediaHeight;
    }
    if (attachedMediaWidth != nil) {
        queryParams[@"attachedMediaWidth"] = attachedMediaWidth;
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
    }
    if (searchTags != nil) {
        queryParams[@"searchTags"] = searchTags;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
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



@end
