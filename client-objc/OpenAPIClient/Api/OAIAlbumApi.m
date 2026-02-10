#import "OAIAlbumApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAlbumFullResponse.h"
#import "OAIAlbumResponse.h"
#import "OAISearchResponse.h"
#import "OAISirqulResponse.h"


@interface OAIAlbumApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAlbumApi

NSString* kOAIAlbumApiErrorDomain = @"OAIAlbumApiErrorDomain";
NSInteger kOAIAlbumApiMissingParamErrorCode = 234513;

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
/// Create Album
/// Create an Album.
///  @param version  
///
///  @param title the title of the album 
///
///  @param coverAssetNullable determines whether the cover image of the album can be empty, else will use the user's profile picture as the cover image 
///
///  @param includeCoverInAssetList determines whether the cover image should be added to the album asset list 
///
///  @param publicRead determines whether the album's participants has read permissions 
///
///  @param publicWrite determines whether the album's participants has write permissions 
///
///  @param publicDelete determines whether the album's participants has delete permissions 
///
///  @param publicAdd determines whether the album's participants has add permissions 
///
///  @param anonymous determines whether the album is posted anonymously 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param assetsToAdd Comma separated list of asset IDs to add to the album's asset list (use \"assetId\" for setting the cover of the album) (optional)
///
///  @param media a MultipartFile containing the cover image of the album (this will only be used if \"assetId\" is empty) (optional)
///
///  @param mediaURL this can be used if the \"media\" is a link (this will only be used if \"assetId\" and media are empty) (optional)
///
///  @param assetId The asset ID to set the album cover image (optional)
///
///  @param attachedMedia a MultipartFile containing an asset that the \"media\" file references. Example to upload a video: the \"media\" file should contain a screen capture of the video, and the \"attachedMedia\" should be the actual video. (optional)
///
///  @param attachedMediaURL this can be used if the \"attachedMedia\" is a link (i.e. a Youtube video, etc) (optional)
///
///  @param startDate the start date (optional)
///
///  @param endDate the end date (optional)
///
///  @param tags the tags (optional)
///
///  @param _description the description of the album (optional)
///
///  @param albumType a custom field used for aggregation and searching (optional)
///
///  @param albumTypeId a custom indexed number used for aggregation and searching (optional)
///
///  @param subType a custom string field used for aggregation and searching (optional)
///
///  @param latitude latitude used to update the album's location (optional)
///
///  @param longitude longitude used to update the album's location (optional)
///
///  @param locationDescription the location description (optional)
///
///  @param visibility the determines the album's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants) (optional)
///
///  @param gameType @deprecated, use the appKey (optional)
///
///  @param appKey the application key (optional)
///
///  @param cellPhone the cell phone number (optional)
///
///  @param streetAddress The street address of the location (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box) (optional)
///
///  @param city The city of the location (optional)
///
///  @param state The state of of the location (optional)
///
///  @param postalCode The postal code of the location (optional)
///
///  @param fullAddress The full address of the location which should include the street address, city, state, and postal code (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param categoryIds comma separated category ids string associated with the Album (optional)
///
///  @param categoryFilterIds comma separated filter ids string associated with the Album (optional)
///
///  @param audienceIds comma separated audience ids string associated with the album (optional)
///
///  @param includeAllAppUsersAsMembers determines whether to include all app users as members (only admins of the app can do this) (optional)
///
///  @param includeAudiencesAsMembers determines whether to include all users of the audiences as members (only admins of the app can do this) (optional)
///
///  @param audienceOperator determines whether to use ands or ors when using the audience list to add users (optional)
///
///  @param approvalStatus The approval status to set {PENDING, REJECTED, APPROVED, FEATURED} (optional)
///
///  @param linkedObjectType sets a linked object so that it can be returned as part of the album response (optional)
///
///  @param linkedObjectId sets a linked object id so that it can be returned as part of the album response (optional)
///
///  @returns OAISearchResponse*
///
-(NSURLSessionTask*) addAlbumCollectionWithVersion: (NSNumber*) version
    title: (NSString*) title
    coverAssetNullable: (NSNumber*) coverAssetNullable
    includeCoverInAssetList: (NSNumber*) includeCoverInAssetList
    publicRead: (NSNumber*) publicRead
    publicWrite: (NSNumber*) publicWrite
    publicDelete: (NSNumber*) publicDelete
    publicAdd: (NSNumber*) publicAdd
    anonymous: (NSNumber*) anonymous
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    assetsToAdd: (NSString*) assetsToAdd
    media: (NSURL*) media
    mediaURL: (NSString*) mediaURL
    assetId: (NSNumber*) assetId
    attachedMedia: (NSURL*) attachedMedia
    attachedMediaURL: (NSString*) attachedMediaURL
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    tags: (NSString*) tags
    _description: (NSString*) _description
    albumType: (NSString*) albumType
    albumTypeId: (NSNumber*) albumTypeId
    subType: (NSString*) subType
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    locationDescription: (NSString*) locationDescription
    visibility: (NSString*) visibility
    gameType: (NSString*) gameType
    appKey: (NSString*) appKey
    cellPhone: (NSString*) cellPhone
    streetAddress: (NSString*) streetAddress
    streetAddress2: (NSString*) streetAddress2
    city: (NSString*) city
    state: (NSString*) state
    postalCode: (NSString*) postalCode
    fullAddress: (NSString*) fullAddress
    metaData: (NSString*) metaData
    categoryIds: (NSString*) categoryIds
    categoryFilterIds: (NSString*) categoryFilterIds
    audienceIds: (NSString*) audienceIds
    includeAllAppUsersAsMembers: (NSNumber*) includeAllAppUsersAsMembers
    includeAudiencesAsMembers: (NSNumber*) includeAudiencesAsMembers
    audienceOperator: (NSString*) audienceOperator
    approvalStatus: (NSString*) approvalStatus
    linkedObjectType: (NSString*) linkedObjectType
    linkedObjectId: (NSNumber*) linkedObjectId
    completionHandler: (void (^)(OAISearchResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'coverAssetNullable' is set
    if (coverAssetNullable == nil) {
        NSParameterAssert(coverAssetNullable);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"coverAssetNullable"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeCoverInAssetList' is set
    if (includeCoverInAssetList == nil) {
        NSParameterAssert(includeCoverInAssetList);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeCoverInAssetList"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'publicRead' is set
    if (publicRead == nil) {
        NSParameterAssert(publicRead);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicRead"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'publicWrite' is set
    if (publicWrite == nil) {
        NSParameterAssert(publicWrite);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicWrite"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'publicDelete' is set
    if (publicDelete == nil) {
        NSParameterAssert(publicDelete);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicDelete"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'publicAdd' is set
    if (publicAdd == nil) {
        NSParameterAssert(publicAdd);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"publicAdd"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'anonymous' is set
    if (anonymous == nil) {
        NSParameterAssert(anonymous);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"anonymous"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/album/create"];

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
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (assetsToAdd != nil) {
        queryParams[@"assetsToAdd"] = assetsToAdd;
    }
    if (media != nil) {
        queryParams[@"media"] = media;
    }
    if (mediaURL != nil) {
        queryParams[@"mediaURL"] = mediaURL;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (attachedMedia != nil) {
        queryParams[@"attachedMedia"] = attachedMedia;
    }
    if (attachedMediaURL != nil) {
        queryParams[@"attachedMediaURL"] = attachedMediaURL;
    }
    if (coverAssetNullable != nil) {
        queryParams[@"coverAssetNullable"] = [coverAssetNullable isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeCoverInAssetList != nil) {
        queryParams[@"includeCoverInAssetList"] = [includeCoverInAssetList isEqual:@(YES)] ? @"true" : @"false";
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (albumType != nil) {
        queryParams[@"albumType"] = albumType;
    }
    if (albumTypeId != nil) {
        queryParams[@"albumTypeId"] = albumTypeId;
    }
    if (subType != nil) {
        queryParams[@"subType"] = subType;
    }
    if (publicRead != nil) {
        queryParams[@"publicRead"] = [publicRead isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicWrite != nil) {
        queryParams[@"publicWrite"] = [publicWrite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicDelete != nil) {
        queryParams[@"publicDelete"] = [publicDelete isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicAdd != nil) {
        queryParams[@"publicAdd"] = [publicAdd isEqual:@(YES)] ? @"true" : @"false";
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (gameType != nil) {
        queryParams[@"gameType"] = gameType;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (cellPhone != nil) {
        queryParams[@"cellPhone"] = cellPhone;
    }
    if (streetAddress != nil) {
        queryParams[@"streetAddress"] = streetAddress;
    }
    if (streetAddress2 != nil) {
        queryParams[@"streetAddress2"] = streetAddress2;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    if (postalCode != nil) {
        queryParams[@"postalCode"] = postalCode;
    }
    if (fullAddress != nil) {
        queryParams[@"fullAddress"] = fullAddress;
    }
    if (anonymous != nil) {
        queryParams[@"anonymous"] = [anonymous isEqual:@(YES)] ? @"true" : @"false";
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (categoryFilterIds != nil) {
        queryParams[@"categoryFilterIds"] = categoryFilterIds;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (includeAllAppUsersAsMembers != nil) {
        queryParams[@"includeAllAppUsersAsMembers"] = [includeAllAppUsersAsMembers isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeAudiencesAsMembers != nil) {
        queryParams[@"includeAudiencesAsMembers"] = [includeAudiencesAsMembers isEqual:@(YES)] ? @"true" : @"false";
    }
    if (audienceOperator != nil) {
        queryParams[@"audienceOperator"] = audienceOperator;
    }
    if (approvalStatus != nil) {
        queryParams[@"approvalStatus"] = approvalStatus;
    }
    if (linkedObjectType != nil) {
        queryParams[@"linkedObjectType"] = linkedObjectType;
    }
    if (linkedObjectId != nil) {
        queryParams[@"linkedObjectId"] = linkedObjectId;
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
                              responseType: @"OAISearchResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISearchResponse*)data, error);
                                }
                            }];
}

///
/// Add Album Users
/// Add users to an album as participants.
///  @param version  
///
///  @param albumId the album ID 
///
///  @param includeFriendGroup determines whether to include all friends as participants 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param read determines whether the users being added have read permissions (optional)
///
///  @param write determines whether the users being added have write permissions (optional)
///
///  @param delete determines whether the users being added have delete permissions (optional)
///
///  @param add determines whether the users being added have add permissions (optional)
///
///  @param connections comma separated list of connection IDs (optional)
///
///  @param connectionGroups comma separated list of connection group IDs (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) addAlbumUsersWithVersion: (NSNumber*) version
    albumId: (NSNumber*) albumId
    includeFriendGroup: (NSNumber*) includeFriendGroup
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    read: (NSNumber*) read
    write: (NSNumber*) write
    delete: (NSNumber*) delete
    add: (NSNumber*) add
    connections: (NSString*) connections
    connectionGroups: (NSString*) connectionGroups
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'albumId' is set
    if (albumId == nil) {
        NSParameterAssert(albumId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumId"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeFriendGroup' is set
    if (includeFriendGroup == nil) {
        NSParameterAssert(includeFriendGroup);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeFriendGroup"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/album/user/add"];

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
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
    }
    if (read != nil) {
        queryParams[@"read"] = [read isEqual:@(YES)] ? @"true" : @"false";
    }
    if (write != nil) {
        queryParams[@"write"] = [write isEqual:@(YES)] ? @"true" : @"false";
    }
    if (delete != nil) {
        queryParams[@"delete"] = [delete isEqual:@(YES)] ? @"true" : @"false";
    }
    if (add != nil) {
        queryParams[@"add"] = [add isEqual:@(YES)] ? @"true" : @"false";
    }
    if (connections != nil) {
        queryParams[@"connections"] = connections;
    }
    if (connectionGroups != nil) {
        queryParams[@"connectionGroups"] = connectionGroups;
    }
    if (includeFriendGroup != nil) {
        queryParams[@"includeFriendGroup"] = [includeFriendGroup isEqual:@(YES)] ? @"true" : @"false";
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
/// Approve Album
/// Sets the approval status of an Album.
///  @param version  
///
///  @param albumId The ID of the album 
///
///  @param deviceId A unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId The account ID of the user (deviceId or accountId required) (optional)
///
///  @param approvalStatus The approval status to set {PENDING, REJECTED, APPROVED, FEATURED} (optional)
///
///  @param verified Sets whether the album should be marked as \"verified\" (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) approveAlbumWithVersion: (NSNumber*) version
    albumId: (NSNumber*) albumId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    approvalStatus: (NSString*) approvalStatus
    verified: (NSNumber*) verified
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'albumId' is set
    if (albumId == nil) {
        NSParameterAssert(albumId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumId"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/album/approve"];

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
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
    }
    if (approvalStatus != nil) {
        queryParams[@"approvalStatus"] = approvalStatus;
    }
    if (verified != nil) {
        queryParams[@"verified"] = [verified isEqual:@(YES)] ? @"true" : @"false";
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
///  Get Album
/// Get an Album.
///  @param version  
///
///  @param returnNulls This parameter is deprecated. 
///
///  @param albumId the album to look up 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param likePreviewSize returns the last X likes. To search on and paginate the remaining likes - please use the \"/like/search\"Â endpoint. (optional)
///
///  @param assetPreviewSize returns the first X assets. To search on and paginate the remaining assets - please use the \"/assets/search\"Â endpoint. (optional)
///
///  @param notePreviewSize returns the last X notes. To search on and paginate the remaining notes - please use the \"/note/search\" endpoint. (optional)
///
///  @param connectionPreviewSize returns the first X users/connections. To search on and paginate the remaining connections - please use the \"/permissions/search\" endpoint. (optional)
///
///  @param audiencePreviewSize returns the first X audiences. To search on and paginate the remaining audiences - please use the \"/audience/search\" endpoint. (optional)
///
///  @returns OAIAlbumFullResponse*
///
-(NSURLSessionTask*) getAlbumCollectionWithVersion: (NSNumber*) version
    returnNulls: (NSNumber*) returnNulls
    albumId: (NSNumber*) albumId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    likePreviewSize: (NSNumber*) likePreviewSize
    assetPreviewSize: (NSNumber*) assetPreviewSize
    notePreviewSize: (NSNumber*) notePreviewSize
    connectionPreviewSize: (NSNumber*) connectionPreviewSize
    audiencePreviewSize: (NSNumber*) audiencePreviewSize
    completionHandler: (void (^)(OAIAlbumFullResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'returnNulls' is set
    if (returnNulls == nil) {
        NSParameterAssert(returnNulls);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"returnNulls"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'albumId' is set
    if (albumId == nil) {
        NSParameterAssert(albumId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumId"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/album/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }

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
    if (likePreviewSize != nil) {
        queryParams[@"likePreviewSize"] = likePreviewSize;
    }
    if (assetPreviewSize != nil) {
        queryParams[@"assetPreviewSize"] = assetPreviewSize;
    }
    if (notePreviewSize != nil) {
        queryParams[@"notePreviewSize"] = notePreviewSize;
    }
    if (connectionPreviewSize != nil) {
        queryParams[@"connectionPreviewSize"] = connectionPreviewSize;
    }
    if (audiencePreviewSize != nil) {
        queryParams[@"audiencePreviewSize"] = audiencePreviewSize;
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
                              responseType: @"OAIAlbumFullResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAlbumFullResponse*)data, error);
                                }
                            }];
}

///
/// Leave Album
///  Allows a user to leave an album (they are no longer considered a participant). The album creator cannot leave their own albums.
///  @param version  
///
///  @param albumId the album ID 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) leaveAlbumWithVersion: (NSNumber*) version
    albumId: (NSNumber*) albumId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'albumId' is set
    if (albumId == nil) {
        NSParameterAssert(albumId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumId"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/album/user/leave"];

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
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
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
/// Delete Album
/// Deletes an Album
///  @param version  
///
///  @param albumId the album ID to delete 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) removeAlbumWithVersion: (NSNumber*) version
    albumId: (NSNumber*) albumId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'albumId' is set
    if (albumId == nil) {
        NSParameterAssert(albumId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumId"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/album/delete"];

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
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
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
/// Remove Album Users
/// Remove participants of an album.
///  @param version  
///
///  @param albumId the album ID 
///
///  @param removeFriendGroup remove friend group 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param connections comma separated list of connection IDs (optional)
///
///  @param connectionGroups comma separated list of connection group IDs (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) removeAlbumUsersWithVersion: (NSNumber*) version
    albumId: (NSNumber*) albumId
    removeFriendGroup: (NSNumber*) removeFriendGroup
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    connections: (NSString*) connections
    connectionGroups: (NSString*) connectionGroups
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'albumId' is set
    if (albumId == nil) {
        NSParameterAssert(albumId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumId"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'removeFriendGroup' is set
    if (removeFriendGroup == nil) {
        NSParameterAssert(removeFriendGroup);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"removeFriendGroup"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/album/user/delete"];

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
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
    }
    if (connections != nil) {
        queryParams[@"connections"] = connections;
    }
    if (connectionGroups != nil) {
        queryParams[@"connectionGroups"] = connectionGroups;
    }
    if (removeFriendGroup != nil) {
        queryParams[@"removeFriendGroup"] = [removeFriendGroup isEqual:@(YES)] ? @"true" : @"false";
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
/// Search Albums
/// Searches on Albums.
///  @param version  
///
///  @param filter a comma separated list of filters: * MINE - Return albums that the user has created. * SHARED - Return albums that have been shared to the user via addAlbumUsers, or addUsersToPermissionable . * FOLLOWER - Return albums that have been created by the user's followers (the content needs to have been APPROVED or FEATURED). * FOLLOWING - Return albums that have been created by people who the user is following (the content needs to have been APPROVED or FEATURED). * PUBLIC - Return all PUBLIC albums that have been APPROVED or FEATURED. * ALL_PUBLIC - Return all PUBLIC albums regardless of whether they are approved or not (ignores the approval status). * LIKED - Return all albums that the user has liked. * FEATURED - Return all albums that have been featured. * PENDING - Return all pending albums.  
///
///  @param albumTypeId id of custom albumType 
///
///  @param subType filter albums with this album sub type 
///
///  @param includeInactive determines whether to return inactive albums 
///
///  @param sortField the field to sort by. See AlbumApiMap 
///
///  @param descending determines whether the sorted list is in descending or ascending order 
///
///  @param start the start index for pagination 
///
///  @param limit the limit for pagination (There is a hard limit of 100) 
///
///  @param range the maximum range the album can be from the center (used when sortField=ALBUM_DISTANCE) 
///
///  @param includeLiked returns whether or not the current logged in user has liked the album 
///
///  @param includeFavorited returns whether or not the current logged in user has favorited the album 
///
///  @param includePermissions returns permission details on whether they have read/write/delete permissions etc (client app probably doesn't need this) 
///
///  @param likePreviewSize returns the last X likes 
///
///  @param assetPreviewSize returns the first X assets 
///
///  @param notePreviewSize returns the last X notes 
///
///  @param connectionPreviewSize returns the first X users/connections 
///
///  @param audiencePreviewSize returns the first X audiences. To search on and paginate the remaining audiences, please use the \"/audience/search\" endpoint. 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param connectionAccountId the account ID of the user that the results will be based on. This is used to return albums that this account has liked/favorited. (optional)
///
///  @param ownerId search on albums that have been created by this account (that the user has permissions to) (optional)
///
///  @param albumIds search on album within a comma separated list of album IDs (this does not work with sortField=ALBUM_DISTANCE, or when stackSearch=true) (optional)
///
///  @param excludeAlbumIds Only for CLOUDINDEX mode, exclude albums with ids matching this list (optional)
///
///  @param mediaId search on albums that are in a particular media offering (optional)
///
///  @param keyword keyword search string (optional)
///
///  @param albumType filter albums with this album type (optional)
///
///  @param limitPerAlbumType When using multiple album types this sets a per-album-type limit (used with cloud index mode) (optional)
///
///  @param dateCreated return items that have been created before this date (time-stamp in milliseconds) (optional)
///
///  @param updatedSince return items that have been updated since this date (time-stamp in milliseconds) (optional)
///
///  @param updatedBefore return items that have been updated before this date (time-stamp in milliseconds) (optional)
///
///  @param createdSince return items that have been created since this date (time-stamp in milliseconds) (optional)
///
///  @param createdBefore return items that have been created before this date (time-stamp in milliseconds) (optional)
///
///  @param startedSince return items that have been started since this date (time-stamp in milliseconds) (optional)
///
///  @param startedBefore return items that have been started before this date (time-stamp in milliseconds) (optional)
///
///  @param endedSince return items that have been ended since this date (time-stamp in milliseconds) (optional)
///
///  @param endedBefore return items that have been ended before this date (time-stamp in milliseconds) (optional)
///
///  @param latitude the latitude of where the search is centered on (used when sortField=ALBUM_DISTANCE) (optional)
///
///  @param longitude the longitude of where the search is centered on (used when sortField=ALBUM_DISTANCE) (optional)
///
///  @param appKey the application key to filter results by application. This is required for consumer searches. Leaving this empty will return albums for the applications that the logged in user owns or has access to. (optional)
///
///  @param categoryIds return results with categories matching this list (optional)
///
///  @param categoryFilterIds return results with filters matching this list (optional)
///
///  @param audienceIds return results with audiences matching this list (optional)
///
///  @param excludeAudienceIds exclude audiences with ids matching this list (optional)
///
///  @param includeCompletable returns the user's completable object for the album if it exists (optional)
///
///  @param includeRating returns the user's rating for the album if it exists (optional)
///
///  @param searchMode The search index mode to use (RDS, LUCENE, or CLOUDINDEX). If not provided will use server default. (optional)
///
///  @param stackSearch groups similar albums together that have the same albumTypeId, within a time window defined in stackWindowSize (optional)
///
///  @param stackWindowSize size of each window for each stack (optional)
///
///  @param minStackPerPage The minimum number of stacks returned in a response. For example,  first call, minStackPerPage = 20, the API will return at least 20 results (optional)
///
///  @param stackPaginationIdentifier this is used to tell the system where it left off on the previous previous page, since we can't use start/limit for stackSearch (optional)
///
///  @param stackDetails set this to true when making the call to view the albums in the stack (optional)
///
///  @param flagCountMinimum Return any results that have a minimum of the specified flag count (even ones that have met the flag threshold) (optional)
///
///  @param removeFlaggedContent return items that have flagCount >= flagThreshold (controls removal of flagged content) (optional, default to @(YES))
///
///  @param verifiedFilter setting to true will return only verified albums only, setting to false will return non-verified albums only (leave empty to return both) (optional)
///
///  @param linkedObjectType filter results by the linkedObjectType (optional)
///
///  @param linkedObjectId filter results by the linkedObjectId (optional)
///
///  @param orderAudienceId determines whether to use the order assigned via the /album/order/_* api (which is tied to an audience) (optional)
///
///  @param ignoreDefaultAppFilter if true, ignore the application's default app filter when searching (optional)
///
///  @param searchExpression Advanced search expression to be used by the server (optional)
///
///  @param generateAlbums If true and results are empty, attempt to generate albums via templates (optional)
///
///  @returns NSArray<OAIAlbumFullResponse>*
///
-(NSURLSessionTask*) searchAlbumsWithVersion: (NSNumber*) version
    filter: (NSString*) filter
    albumTypeId: (NSNumber*) albumTypeId
    subType: (NSString*) subType
    includeInactive: (NSNumber*) includeInactive
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    range: (NSNumber*) range
    includeLiked: (NSNumber*) includeLiked
    includeFavorited: (NSNumber*) includeFavorited
    includePermissions: (NSNumber*) includePermissions
    likePreviewSize: (NSNumber*) likePreviewSize
    assetPreviewSize: (NSNumber*) assetPreviewSize
    notePreviewSize: (NSNumber*) notePreviewSize
    connectionPreviewSize: (NSNumber*) connectionPreviewSize
    audiencePreviewSize: (NSNumber*) audiencePreviewSize
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    connectionAccountId: (NSNumber*) connectionAccountId
    ownerId: (NSNumber*) ownerId
    albumIds: (NSString*) albumIds
    excludeAlbumIds: (NSString*) excludeAlbumIds
    mediaId: (NSNumber*) mediaId
    keyword: (NSString*) keyword
    albumType: (NSString*) albumType
    limitPerAlbumType: (NSNumber*) limitPerAlbumType
    dateCreated: (NSNumber*) dateCreated
    updatedSince: (NSNumber*) updatedSince
    updatedBefore: (NSNumber*) updatedBefore
    createdSince: (NSNumber*) createdSince
    createdBefore: (NSNumber*) createdBefore
    startedSince: (NSNumber*) startedSince
    startedBefore: (NSNumber*) startedBefore
    endedSince: (NSNumber*) endedSince
    endedBefore: (NSNumber*) endedBefore
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    appKey: (NSString*) appKey
    categoryIds: (NSString*) categoryIds
    categoryFilterIds: (NSString*) categoryFilterIds
    audienceIds: (NSString*) audienceIds
    excludeAudienceIds: (NSString*) excludeAudienceIds
    includeCompletable: (NSNumber*) includeCompletable
    includeRating: (NSNumber*) includeRating
    searchMode: (NSString*) searchMode
    stackSearch: (NSNumber*) stackSearch
    stackWindowSize: (NSNumber*) stackWindowSize
    minStackPerPage: (NSNumber*) minStackPerPage
    stackPaginationIdentifier: (NSString*) stackPaginationIdentifier
    stackDetails: (NSNumber*) stackDetails
    flagCountMinimum: (NSNumber*) flagCountMinimum
    removeFlaggedContent: (NSNumber*) removeFlaggedContent
    verifiedFilter: (NSNumber*) verifiedFilter
    linkedObjectType: (NSString*) linkedObjectType
    linkedObjectId: (NSNumber*) linkedObjectId
    orderAudienceId: (NSNumber*) orderAudienceId
    ignoreDefaultAppFilter: (NSNumber*) ignoreDefaultAppFilter
    searchExpression: (NSString*) searchExpression
    generateAlbums: (NSNumber*) generateAlbums
    completionHandler: (void (^)(NSArray<OAIAlbumFullResponse>* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'filter' is set
    if (filter == nil) {
        NSParameterAssert(filter);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"filter"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'albumTypeId' is set
    if (albumTypeId == nil) {
        NSParameterAssert(albumTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumTypeId"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'subType' is set
    if (subType == nil) {
        NSParameterAssert(subType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subType"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeInactive' is set
    if (includeInactive == nil) {
        NSParameterAssert(includeInactive);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeInactive"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'range' is set
    if (range == nil) {
        NSParameterAssert(range);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"range"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeLiked' is set
    if (includeLiked == nil) {
        NSParameterAssert(includeLiked);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeLiked"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeFavorited' is set
    if (includeFavorited == nil) {
        NSParameterAssert(includeFavorited);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeFavorited"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includePermissions' is set
    if (includePermissions == nil) {
        NSParameterAssert(includePermissions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includePermissions"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'likePreviewSize' is set
    if (likePreviewSize == nil) {
        NSParameterAssert(likePreviewSize);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"likePreviewSize"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'assetPreviewSize' is set
    if (assetPreviewSize == nil) {
        NSParameterAssert(assetPreviewSize);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assetPreviewSize"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'notePreviewSize' is set
    if (notePreviewSize == nil) {
        NSParameterAssert(notePreviewSize);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"notePreviewSize"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'connectionPreviewSize' is set
    if (connectionPreviewSize == nil) {
        NSParameterAssert(connectionPreviewSize);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectionPreviewSize"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'audiencePreviewSize' is set
    if (audiencePreviewSize == nil) {
        NSParameterAssert(audiencePreviewSize);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"audiencePreviewSize"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/album/search"];

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
    if (connectionAccountId != nil) {
        queryParams[@"connectionAccountId"] = connectionAccountId;
    }
    if (ownerId != nil) {
        queryParams[@"ownerId"] = ownerId;
    }
    if (albumIds != nil) {
        queryParams[@"albumIds"] = albumIds;
    }
    if (excludeAlbumIds != nil) {
        queryParams[@"excludeAlbumIds"] = excludeAlbumIds;
    }
    if (mediaId != nil) {
        queryParams[@"mediaId"] = mediaId;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (filter != nil) {
        queryParams[@"filter"] = filter;
    }
    if (albumType != nil) {
        queryParams[@"albumType"] = albumType;
    }
    if (albumTypeId != nil) {
        queryParams[@"albumTypeId"] = albumTypeId;
    }
    if (subType != nil) {
        queryParams[@"subType"] = subType;
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
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (limitPerAlbumType != nil) {
        queryParams[@"limitPerAlbumType"] = limitPerAlbumType;
    }
    if (dateCreated != nil) {
        queryParams[@"dateCreated"] = dateCreated;
    }
    if (updatedSince != nil) {
        queryParams[@"updatedSince"] = updatedSince;
    }
    if (updatedBefore != nil) {
        queryParams[@"updatedBefore"] = updatedBefore;
    }
    if (createdSince != nil) {
        queryParams[@"createdSince"] = createdSince;
    }
    if (createdBefore != nil) {
        queryParams[@"createdBefore"] = createdBefore;
    }
    if (startedSince != nil) {
        queryParams[@"startedSince"] = startedSince;
    }
    if (startedBefore != nil) {
        queryParams[@"startedBefore"] = startedBefore;
    }
    if (endedSince != nil) {
        queryParams[@"endedSince"] = endedSince;
    }
    if (endedBefore != nil) {
        queryParams[@"endedBefore"] = endedBefore;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (range != nil) {
        queryParams[@"range"] = range;
    }
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (categoryFilterIds != nil) {
        queryParams[@"categoryFilterIds"] = categoryFilterIds;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (excludeAudienceIds != nil) {
        queryParams[@"excludeAudienceIds"] = excludeAudienceIds;
    }
    if (includeLiked != nil) {
        queryParams[@"includeLiked"] = [includeLiked isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeFavorited != nil) {
        queryParams[@"includeFavorited"] = [includeFavorited isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includePermissions != nil) {
        queryParams[@"includePermissions"] = [includePermissions isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeCompletable != nil) {
        queryParams[@"includeCompletable"] = [includeCompletable isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeRating != nil) {
        queryParams[@"includeRating"] = [includeRating isEqual:@(YES)] ? @"true" : @"false";
    }
    if (likePreviewSize != nil) {
        queryParams[@"likePreviewSize"] = likePreviewSize;
    }
    if (assetPreviewSize != nil) {
        queryParams[@"assetPreviewSize"] = assetPreviewSize;
    }
    if (notePreviewSize != nil) {
        queryParams[@"notePreviewSize"] = notePreviewSize;
    }
    if (connectionPreviewSize != nil) {
        queryParams[@"connectionPreviewSize"] = connectionPreviewSize;
    }
    if (audiencePreviewSize != nil) {
        queryParams[@"audiencePreviewSize"] = audiencePreviewSize;
    }
    if (searchMode != nil) {
        queryParams[@"searchMode"] = searchMode;
    }
    if (stackSearch != nil) {
        queryParams[@"stackSearch"] = [stackSearch isEqual:@(YES)] ? @"true" : @"false";
    }
    if (stackWindowSize != nil) {
        queryParams[@"stackWindowSize"] = stackWindowSize;
    }
    if (minStackPerPage != nil) {
        queryParams[@"minStackPerPage"] = minStackPerPage;
    }
    if (stackPaginationIdentifier != nil) {
        queryParams[@"stackPaginationIdentifier"] = stackPaginationIdentifier;
    }
    if (stackDetails != nil) {
        queryParams[@"stackDetails"] = [stackDetails isEqual:@(YES)] ? @"true" : @"false";
    }
    if (flagCountMinimum != nil) {
        queryParams[@"flagCountMinimum"] = flagCountMinimum;
    }
    if (removeFlaggedContent != nil) {
        queryParams[@"removeFlaggedContent"] = [removeFlaggedContent isEqual:@(YES)] ? @"true" : @"false";
    }
    if (verifiedFilter != nil) {
        queryParams[@"verifiedFilter"] = [verifiedFilter isEqual:@(YES)] ? @"true" : @"false";
    }
    if (linkedObjectType != nil) {
        queryParams[@"linkedObjectType"] = linkedObjectType;
    }
    if (linkedObjectId != nil) {
        queryParams[@"linkedObjectId"] = linkedObjectId;
    }
    if (orderAudienceId != nil) {
        queryParams[@"orderAudienceId"] = orderAudienceId;
    }
    if (ignoreDefaultAppFilter != nil) {
        queryParams[@"ignoreDefaultAppFilter"] = [ignoreDefaultAppFilter isEqual:@(YES)] ? @"true" : @"false";
    }
    if (searchExpression != nil) {
        queryParams[@"searchExpression"] = searchExpression;
    }
    if (generateAlbums != nil) {
        queryParams[@"generateAlbums"] = [generateAlbums isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIAlbumFullResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIAlbumFullResponse>*)data, error);
                                }
                            }];
}

///
/// Update Album
/// Update an Album.
///  @param version  
///
///  @param albumId the ID of the album to update 
///
///  @param deviceId a unique ID given by the device (deviceId or accountId required) (optional)
///
///  @param accountId the account ID of the user (deviceId or accountId required) (optional)
///
///  @param assetsToAdd Comma separated list of asset IDs to add to the album's asset list (use \"assetId\" for setting the cover of the album) (optional)
///
///  @param assetsToRemove Comma separated list of asset IDs to remove from the album's asset list (optional)
///
///  @param assetId the cover asset ID (optional)
///
///  @param media a MultipartFile containing the cover image of the album (this will only be used if \"assetId\" is empty) (optional)
///
///  @param mediaURL this can be used if the \"media\" is a link (this will only be used if \"assetId\" and media are empty) (optional)
///
///  @param active determines whether the album is active or inactive (optional)
///
///  @param title the title of the album (optional)
///
///  @param startDate the start date (optional)
///
///  @param endDate the end date (optional)
///
///  @param tags the tags (optional)
///
///  @param _description the description of the album (optional)
///
///  @param albumType a custom field used for aggregation and searching (optional)
///
///  @param albumTypeId a custom indexed number used for aggregation and searching (optional)
///
///  @param subType a custom string field used for aggregation and searching (optional)
///
///  @param publicRead determines whether the album's participants have read permissions (optional)
///
///  @param publicWrite determines whether the album's participants have write permissions (optional)
///
///  @param publicDelete determines whether the album's participants have delete permissions (optional)
///
///  @param publicAdd determines whether the album's participants have add permissions (optional)
///
///  @param latitude latitude used to update the album's location (optional)
///
///  @param longitude longitude used to update the album's location (optional)
///
///  @param locationDescription the location description (optional)
///
///  @param visibility the determines the album's participants (PUBLIC - includes everyone in the system as a potential participant, PRIVATE - only considers people who have been invited as participants) (optional)
///
///  @param cellPhone the cell phone number (optional)
///
///  @param streetAddress The street address of the location (optional)
///
///  @param streetAddress2 Additional address information (such as a suite number, floor number, building name, or PO Box) (optional)
///
///  @param city The city of the location (optional)
///
///  @param state The state of of the location (optional)
///
///  @param postalCode The postal code of the location (optional)
///
///  @param fullAddress The full address of the location which should include the street address, city, state, and postal code (optional)
///
///  @param anonymous determines whether the album is posted anonymously (optional)
///
///  @param metaData External custom client defined data (optional)
///
///  @param categoryIds comma separated category ids string associated with the Album (optional)
///
///  @param categoryFilterIds comma separated filter ids string associated with the Album (optional)
///
///  @param audienceIds comma separated audience ids string associated with the album (optional)
///
///  @param audienceIdsToAdd comma separated audience ids to add to the album (optional)
///
///  @param audienceIdsToRemove comma separated audience ids to remove from the album (overrides audienceIds and audienceIdsToAdd) (optional)
///
///  @param includeAllAppUsersAsMembers determines whether to include all app users as members (only admins of the app can do this) (optional)
///
///  @param includeAudiencesAsMembers determines whether to include all users of the audiences as members (only admins of the app can do this) (optional)
///
///  @param audienceOperator determines whether to use ands or ors when using the audience list to add users (optional)
///
///  @param linkedObjectType sets a linked object so that it can be returned as part of the album response (optional)
///
///  @param linkedObjectId sets a linked object id so that it can be returned as part of the album response (optional)
///
///  @param indexNow determines whether the album should be indexed immediately (optional)
///
///  @returns OAIAlbumResponse*
///
-(NSURLSessionTask*) updateAlbumCollectionWithVersion: (NSNumber*) version
    albumId: (NSNumber*) albumId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    assetsToAdd: (NSString*) assetsToAdd
    assetsToRemove: (NSString*) assetsToRemove
    assetId: (NSNumber*) assetId
    media: (NSURL*) media
    mediaURL: (NSString*) mediaURL
    active: (NSNumber*) active
    title: (NSString*) title
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    tags: (NSString*) tags
    _description: (NSString*) _description
    albumType: (NSString*) albumType
    albumTypeId: (NSNumber*) albumTypeId
    subType: (NSString*) subType
    publicRead: (NSNumber*) publicRead
    publicWrite: (NSNumber*) publicWrite
    publicDelete: (NSNumber*) publicDelete
    publicAdd: (NSNumber*) publicAdd
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    locationDescription: (NSString*) locationDescription
    visibility: (NSString*) visibility
    cellPhone: (NSString*) cellPhone
    streetAddress: (NSString*) streetAddress
    streetAddress2: (NSString*) streetAddress2
    city: (NSString*) city
    state: (NSString*) state
    postalCode: (NSString*) postalCode
    fullAddress: (NSString*) fullAddress
    anonymous: (NSNumber*) anonymous
    metaData: (NSString*) metaData
    categoryIds: (NSString*) categoryIds
    categoryFilterIds: (NSString*) categoryFilterIds
    audienceIds: (NSString*) audienceIds
    audienceIdsToAdd: (NSString*) audienceIdsToAdd
    audienceIdsToRemove: (NSString*) audienceIdsToRemove
    includeAllAppUsersAsMembers: (NSNumber*) includeAllAppUsersAsMembers
    includeAudiencesAsMembers: (NSNumber*) includeAudiencesAsMembers
    audienceOperator: (NSString*) audienceOperator
    linkedObjectType: (NSString*) linkedObjectType
    linkedObjectId: (NSNumber*) linkedObjectId
    indexNow: (NSNumber*) indexNow
    completionHandler: (void (^)(OAIAlbumResponse* output, NSError* error)) handler {
    // verify the required parameter 'version' is set
    if (version == nil) {
        NSParameterAssert(version);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"version"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'albumId' is set
    if (albumId == nil) {
        NSParameterAssert(albumId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumId"] };
            NSError* error = [NSError errorWithDomain:kOAIAlbumApiErrorDomain code:kOAIAlbumApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/{version}/album/update"];

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
    if (albumId != nil) {
        queryParams[@"albumId"] = albumId;
    }
    if (assetsToAdd != nil) {
        queryParams[@"assetsToAdd"] = assetsToAdd;
    }
    if (assetsToRemove != nil) {
        queryParams[@"assetsToRemove"] = assetsToRemove;
    }
    if (assetId != nil) {
        queryParams[@"assetId"] = assetId;
    }
    if (media != nil) {
        queryParams[@"media"] = media;
    }
    if (mediaURL != nil) {
        queryParams[@"mediaURL"] = mediaURL;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (albumType != nil) {
        queryParams[@"albumType"] = albumType;
    }
    if (albumTypeId != nil) {
        queryParams[@"albumTypeId"] = albumTypeId;
    }
    if (subType != nil) {
        queryParams[@"subType"] = subType;
    }
    if (publicRead != nil) {
        queryParams[@"publicRead"] = [publicRead isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicWrite != nil) {
        queryParams[@"publicWrite"] = [publicWrite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicDelete != nil) {
        queryParams[@"publicDelete"] = [publicDelete isEqual:@(YES)] ? @"true" : @"false";
    }
    if (publicAdd != nil) {
        queryParams[@"publicAdd"] = [publicAdd isEqual:@(YES)] ? @"true" : @"false";
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (locationDescription != nil) {
        queryParams[@"locationDescription"] = locationDescription;
    }
    if (visibility != nil) {
        queryParams[@"visibility"] = visibility;
    }
    if (cellPhone != nil) {
        queryParams[@"cellPhone"] = cellPhone;
    }
    if (streetAddress != nil) {
        queryParams[@"streetAddress"] = streetAddress;
    }
    if (streetAddress2 != nil) {
        queryParams[@"streetAddress2"] = streetAddress2;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    if (postalCode != nil) {
        queryParams[@"postalCode"] = postalCode;
    }
    if (fullAddress != nil) {
        queryParams[@"fullAddress"] = fullAddress;
    }
    if (anonymous != nil) {
        queryParams[@"anonymous"] = [anonymous isEqual:@(YES)] ? @"true" : @"false";
    }
    if (metaData != nil) {
        queryParams[@"metaData"] = metaData;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (categoryFilterIds != nil) {
        queryParams[@"categoryFilterIds"] = categoryFilterIds;
    }
    if (audienceIds != nil) {
        queryParams[@"audienceIds"] = audienceIds;
    }
    if (audienceIdsToAdd != nil) {
        queryParams[@"audienceIdsToAdd"] = audienceIdsToAdd;
    }
    if (audienceIdsToRemove != nil) {
        queryParams[@"audienceIdsToRemove"] = audienceIdsToRemove;
    }
    if (includeAllAppUsersAsMembers != nil) {
        queryParams[@"includeAllAppUsersAsMembers"] = [includeAllAppUsersAsMembers isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeAudiencesAsMembers != nil) {
        queryParams[@"includeAudiencesAsMembers"] = [includeAudiencesAsMembers isEqual:@(YES)] ? @"true" : @"false";
    }
    if (audienceOperator != nil) {
        queryParams[@"audienceOperator"] = audienceOperator;
    }
    if (linkedObjectType != nil) {
        queryParams[@"linkedObjectType"] = linkedObjectType;
    }
    if (linkedObjectId != nil) {
        queryParams[@"linkedObjectId"] = linkedObjectId;
    }
    if (indexNow != nil) {
        queryParams[@"indexNow"] = [indexNow isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIAlbumResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAlbumResponse*)data, error);
                                }
                            }];
}



@end
