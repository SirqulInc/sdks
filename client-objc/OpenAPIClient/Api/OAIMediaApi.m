#import "OAIMediaApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIMediaOfferResponse.h"
#import "OAISirqulResponse.h"


@interface OAIMediaApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMediaApi

NSString* kOAIMediaApiErrorDomain = @"OAIMediaApiErrorDomain";
NSInteger kOAIMediaApiMissingParamErrorCode = 234513;

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
/// Create Media
/// Create a media offering.
///  @param accountId The account id of the logged in user 
///
///  @param title The title (255 char limit) 
///
///  @param barcodeType The bar code type {NONE, UPC, CODE_128, QR, CUSTOM_MEDIA} 
///
///  @param noExpiration Overrides the expiration date so that the offer does not expire 
///
///  @param availableLimit The limit of how many times the offer can be used by consumers 
///
///  @param availableLimitPerUser The limit of how many times a user can used the same offer 
///
///  @param addedLimit The limit of how many times the offer can be added to consumer wallets 
///
///  @param viewLimit The limit of how many times the offer can be viewed 
///
///  @param maxPrints The maximum number of times the offer can be printed 
///
///  @param ticketPrice The cost of the offer in tickets 
///
///  @param fullPrice The retail/full price cost of the offer in real currency 
///
///  @param discountPrice The cost of the offer at a discounted price (what the consumer pays) 
///
///  @param specialOfferType The special offer type {ALL, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW} 
///
///  @param offerVisibility The offer visibility {PUBLIC, REWARDABLE, TRIGGERABLE} 
///
///  @param active Sets the active flag 
///
///  @param retailerLocationIds Comma separated list of retailer location ids. This will assign the offer to these retailer locations. (optional)
///
///  @param subTitle The sub title (255 char limit) (optional)
///
///  @param details The details of the media (optional)
///
///  @param subDetails A string for custom details (255 char limit) (optional)
///
///  @param finePrint The fine print of the media (optional)
///
///  @param barcodeEntry The bar code entry string (optional)
///
///  @param externalRedeemOptions An external identifier. What the identifier will be used for and how it is formatted is up to the frontend developer (optional)
///
///  @param externalUrl The clickUrl of the offer (optional)
///
///  @param ticketsRewardType The type of ticket to reward, null means default type (optional)
///
///  @param ticketsReward Determines how many tickets are awarded (optional)
///
///  @param activated The date of when the offer will be visible to consumers (optional)
///
///  @param expires The date of when the offer expires (optional)
///
///  @param ticketPriceType the type of ticket needed to buy offer (optional)
///
///  @param showRemaining show how many of the media is remaining (if there is a limit) (optional)
///
///  @param showRedeemed show how many of the media has been redeemed (optional)
///
///  @param replaced if the media has been replaced (optional)
///
///  @param featured if the media should be featured or not (optional)
///
///  @param categoryIds Comma separated list of category ids (optional)
///
///  @param filterIds Comma separated list of filter ids (optional)
///
///  @param barcodeAssetId The id of the barcode asset (optional)
///
///  @param imageAssetId The id of the an offer asset (optional)
///
///  @param imageAssetId1 The id of the an offer asset (optional)
///
///  @param imageAssetId2 The id of the an offer asset (optional)
///
///  @param imageAssetId3 The id of the an offer asset (optional)
///
///  @param imageAssetId4 The id of the an offer asset (optional)
///
///  @param imageAssetId5 The id of the an offer asset (optional)
///
///  @param publisher The maker of the item. (optional)
///
///  @param redeemableStart The redeemable start date/time of the offer. (optional)
///
///  @param redeemableEnd The redeemable start date/time of the offer. (optional)
///
///  @param conditionType The condition type of the media (optional)
///
///  @param isbn The ISBN id (optional)
///
///  @param asin The ASIN id (optional)
///
///  @param catalogNumbers The list of catelog numbers, comma seperated (optional)
///
///  @param parentalRating The parental control rating (optional)
///
///  @param availabilityDate The date the media is available to use (optional)
///
///  @param mediaType the media type (optional)
///
///  @param duration The total playing time of the media item (optional)
///
///  @param author The created/author of the media item (optional)
///
///  @param releaseDate The date/time of when the media item was originally released (optional)
///
///  @param collectionIds the IDs of the collections this media should be assigned to (optional)
///
///  @param availability ability to assign if this media should active or not (optional)
///
///  @param availabilitySummary ability to assign when the media expires (optional)
///
///  @returns OAIMediaOfferResponse*
///
-(NSURLSessionTask*) createMediaWithAccountId: (NSNumber*) accountId
    title: (NSString*) title
    barcodeType: (NSString*) barcodeType
    noExpiration: (NSNumber*) noExpiration
    availableLimit: (NSNumber*) availableLimit
    availableLimitPerUser: (NSNumber*) availableLimitPerUser
    addedLimit: (NSNumber*) addedLimit
    viewLimit: (NSNumber*) viewLimit
    maxPrints: (NSNumber*) maxPrints
    ticketPrice: (NSNumber*) ticketPrice
    fullPrice: (NSNumber*) fullPrice
    discountPrice: (NSNumber*) discountPrice
    specialOfferType: (NSString*) specialOfferType
    offerVisibility: (NSString*) offerVisibility
    active: (NSNumber*) active
    retailerLocationIds: (NSString*) retailerLocationIds
    subTitle: (NSString*) subTitle
    details: (NSString*) details
    subDetails: (NSString*) subDetails
    finePrint: (NSString*) finePrint
    barcodeEntry: (NSString*) barcodeEntry
    externalRedeemOptions: (NSString*) externalRedeemOptions
    externalUrl: (NSString*) externalUrl
    ticketsRewardType: (NSString*) ticketsRewardType
    ticketsReward: (NSNumber*) ticketsReward
    activated: (NSNumber*) activated
    expires: (NSNumber*) expires
    ticketPriceType: (NSString*) ticketPriceType
    showRemaining: (NSNumber*) showRemaining
    showRedeemed: (NSNumber*) showRedeemed
    replaced: (NSNumber*) replaced
    featured: (NSNumber*) featured
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    barcodeAssetId: (NSNumber*) barcodeAssetId
    imageAssetId: (NSNumber*) imageAssetId
    imageAssetId1: (NSNumber*) imageAssetId1
    imageAssetId2: (NSNumber*) imageAssetId2
    imageAssetId3: (NSNumber*) imageAssetId3
    imageAssetId4: (NSNumber*) imageAssetId4
    imageAssetId5: (NSNumber*) imageAssetId5
    publisher: (NSString*) publisher
    redeemableStart: (NSNumber*) redeemableStart
    redeemableEnd: (NSNumber*) redeemableEnd
    conditionType: (NSString*) conditionType
    isbn: (NSString*) isbn
    asin: (NSString*) asin
    catalogNumbers: (NSString*) catalogNumbers
    parentalRating: (NSString*) parentalRating
    availabilityDate: (NSNumber*) availabilityDate
    mediaType: (NSString*) mediaType
    duration: (NSNumber*) duration
    author: (NSString*) author
    releaseDate: (NSNumber*) releaseDate
    collectionIds: (NSString*) collectionIds
    availability: (NSString*) availability
    availabilitySummary: (NSString*) availabilitySummary
    completionHandler: (void (^)(OAIMediaOfferResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'barcodeType' is set
    if (barcodeType == nil) {
        NSParameterAssert(barcodeType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"barcodeType"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'noExpiration' is set
    if (noExpiration == nil) {
        NSParameterAssert(noExpiration);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"noExpiration"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'availableLimit' is set
    if (availableLimit == nil) {
        NSParameterAssert(availableLimit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"availableLimit"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'availableLimitPerUser' is set
    if (availableLimitPerUser == nil) {
        NSParameterAssert(availableLimitPerUser);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"availableLimitPerUser"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'addedLimit' is set
    if (addedLimit == nil) {
        NSParameterAssert(addedLimit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"addedLimit"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'viewLimit' is set
    if (viewLimit == nil) {
        NSParameterAssert(viewLimit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"viewLimit"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'maxPrints' is set
    if (maxPrints == nil) {
        NSParameterAssert(maxPrints);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"maxPrints"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ticketPrice' is set
    if (ticketPrice == nil) {
        NSParameterAssert(ticketPrice);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketPrice"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'fullPrice' is set
    if (fullPrice == nil) {
        NSParameterAssert(fullPrice);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fullPrice"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'discountPrice' is set
    if (discountPrice == nil) {
        NSParameterAssert(discountPrice);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"discountPrice"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'specialOfferType' is set
    if (specialOfferType == nil) {
        NSParameterAssert(specialOfferType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"specialOfferType"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'offerVisibility' is set
    if (offerVisibility == nil) {
        NSParameterAssert(offerVisibility);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerVisibility"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'active' is set
    if (active == nil) {
        NSParameterAssert(active);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"active"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/media/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (subTitle != nil) {
        queryParams[@"subTitle"] = subTitle;
    }
    if (details != nil) {
        queryParams[@"details"] = details;
    }
    if (subDetails != nil) {
        queryParams[@"subDetails"] = subDetails;
    }
    if (finePrint != nil) {
        queryParams[@"finePrint"] = finePrint;
    }
    if (barcodeType != nil) {
        queryParams[@"barcodeType"] = barcodeType;
    }
    if (barcodeEntry != nil) {
        queryParams[@"barcodeEntry"] = barcodeEntry;
    }
    if (externalRedeemOptions != nil) {
        queryParams[@"externalRedeemOptions"] = externalRedeemOptions;
    }
    if (externalUrl != nil) {
        queryParams[@"externalUrl"] = externalUrl;
    }
    if (ticketsRewardType != nil) {
        queryParams[@"ticketsRewardType"] = ticketsRewardType;
    }
    if (ticketsReward != nil) {
        queryParams[@"ticketsReward"] = ticketsReward;
    }
    if (activated != nil) {
        queryParams[@"activated"] = activated;
    }
    if (expires != nil) {
        queryParams[@"expires"] = expires;
    }
    if (noExpiration != nil) {
        queryParams[@"noExpiration"] = [noExpiration isEqual:@(YES)] ? @"true" : @"false";
    }
    if (availableLimit != nil) {
        queryParams[@"availableLimit"] = availableLimit;
    }
    if (availableLimitPerUser != nil) {
        queryParams[@"availableLimitPerUser"] = availableLimitPerUser;
    }
    if (addedLimit != nil) {
        queryParams[@"addedLimit"] = addedLimit;
    }
    if (viewLimit != nil) {
        queryParams[@"viewLimit"] = viewLimit;
    }
    if (maxPrints != nil) {
        queryParams[@"maxPrints"] = maxPrints;
    }
    if (ticketPriceType != nil) {
        queryParams[@"ticketPriceType"] = ticketPriceType;
    }
    if (ticketPrice != nil) {
        queryParams[@"ticketPrice"] = ticketPrice;
    }
    if (fullPrice != nil) {
        queryParams[@"fullPrice"] = fullPrice;
    }
    if (discountPrice != nil) {
        queryParams[@"discountPrice"] = discountPrice;
    }
    if (showRemaining != nil) {
        queryParams[@"showRemaining"] = [showRemaining isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showRedeemed != nil) {
        queryParams[@"showRedeemed"] = [showRedeemed isEqual:@(YES)] ? @"true" : @"false";
    }
    if (replaced != nil) {
        queryParams[@"replaced"] = [replaced isEqual:@(YES)] ? @"true" : @"false";
    }
    if (featured != nil) {
        queryParams[@"featured"] = [featured isEqual:@(YES)] ? @"true" : @"false";
    }
    if (specialOfferType != nil) {
        queryParams[@"specialOfferType"] = specialOfferType;
    }
    if (offerVisibility != nil) {
        queryParams[@"offerVisibility"] = offerVisibility;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (barcodeAssetId != nil) {
        queryParams[@"barcodeAssetId"] = barcodeAssetId;
    }
    if (imageAssetId != nil) {
        queryParams[@"imageAssetId"] = imageAssetId;
    }
    if (imageAssetId1 != nil) {
        queryParams[@"imageAssetId1"] = imageAssetId1;
    }
    if (imageAssetId2 != nil) {
        queryParams[@"imageAssetId2"] = imageAssetId2;
    }
    if (imageAssetId3 != nil) {
        queryParams[@"imageAssetId3"] = imageAssetId3;
    }
    if (imageAssetId4 != nil) {
        queryParams[@"imageAssetId4"] = imageAssetId4;
    }
    if (imageAssetId5 != nil) {
        queryParams[@"imageAssetId5"] = imageAssetId5;
    }
    if (publisher != nil) {
        queryParams[@"publisher"] = publisher;
    }
    if (redeemableStart != nil) {
        queryParams[@"redeemableStart"] = redeemableStart;
    }
    if (redeemableEnd != nil) {
        queryParams[@"redeemableEnd"] = redeemableEnd;
    }
    if (conditionType != nil) {
        queryParams[@"conditionType"] = conditionType;
    }
    if (isbn != nil) {
        queryParams[@"isbn"] = isbn;
    }
    if (asin != nil) {
        queryParams[@"asin"] = asin;
    }
    if (catalogNumbers != nil) {
        queryParams[@"catalogNumbers"] = catalogNumbers;
    }
    if (parentalRating != nil) {
        queryParams[@"parentalRating"] = parentalRating;
    }
    if (availabilityDate != nil) {
        queryParams[@"availabilityDate"] = availabilityDate;
    }
    if (mediaType != nil) {
        queryParams[@"mediaType"] = mediaType;
    }
    if (duration != nil) {
        queryParams[@"duration"] = duration;
    }
    if (author != nil) {
        queryParams[@"author"] = author;
    }
    if (releaseDate != nil) {
        queryParams[@"releaseDate"] = releaseDate;
    }
    if (collectionIds != nil) {
        queryParams[@"collectionIds"] = collectionIds;
    }
    if (availability != nil) {
        queryParams[@"availability"] = availability;
    }
    if (availabilitySummary != nil) {
        queryParams[@"availabilitySummary"] = availabilitySummary;
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
                              responseType: @"OAIMediaOfferResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMediaOfferResponse*)data, error);
                                }
                            }];
}

///
/// Delete Media
/// Delete a media offering that the user has permissions to.
///  @param accountId the id of the logged in user 
///
///  @param mediaId the ID of the media to delete 
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteMediaWithAccountId: (NSNumber*) accountId
    mediaId: (NSNumber*) mediaId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'mediaId' is set
    if (mediaId == nil) {
        NSParameterAssert(mediaId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mediaId"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/media/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (mediaId != nil) {
        queryParams[@"mediaId"] = mediaId;
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
/// Media Get
/// Get a media offering.
///  @param accountId the id of the logged in user 
///
///  @param mediaId the id of the media to get 
///
///  @returns OAIMediaOfferResponse*
///
-(NSURLSessionTask*) getMediaWithAccountId: (NSNumber*) accountId
    mediaId: (NSNumber*) mediaId
    completionHandler: (void (^)(OAIMediaOfferResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'mediaId' is set
    if (mediaId == nil) {
        NSParameterAssert(mediaId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mediaId"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/media/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (mediaId != nil) {
        queryParams[@"mediaId"] = mediaId;
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
                              responseType: @"OAIMediaOfferResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMediaOfferResponse*)data, error);
                                }
                            }];
}

///
/// Search Media
/// Searches on events that the account has access to.
///  @param accountId The logged in user. 
///
///  @param activeOnly Return only active results 
///
///  @param sortField The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, ESTIMATED_VALUE, VOUCHER_PRICE, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY, AVAILABILITY_DATE, RELEASE_DATE 
///
///  @param descending The order to return the search results 
///
///  @param keyword The keyword used to search (optional)
///
///  @param categoryIds  (optional)
///
///  @param filterIds  (optional)
///
///  @param start The record to begin the return set on (optional)
///
///  @param limit The number of records to return (optional)
///
///  @returns NSArray<OAIMediaOfferResponse>*
///
-(NSURLSessionTask*) searchMediaWithAccountId: (NSNumber*) accountId
    activeOnly: (NSNumber*) activeOnly
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    keyword: (NSString*) keyword
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSArray<OAIMediaOfferResponse>* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/media/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
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
                              responseType: @"NSArray<OAIMediaOfferResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIMediaOfferResponse>*)data, error);
                                }
                            }];
}

///
/// Update Media
/// Update a media offering.
///  @param accountId The account used to perform the update, must have rights to edit the offer (deviceId or accountId required) 
///
///  @param mediaId  
///
///  @param retailerLocationIds Comma separated list of retailer location ids. This will assign the offer to these retailer locations. (optional)
///
///  @param offerLocations A list of json data that has offer location specific values. (optional)
///
///  @param title The title (255 char limit) (optional)
///
///  @param subTitle The sub title (255 char limit) (optional)
///
///  @param details The details (optional)
///
///  @param subDetails A string for custom details (255 char limit) (optional)
///
///  @param finePrint The fine print (optional)
///
///  @param barcodeType The bar code type {NONE, UPC, CODE_128, QR, CUSTOM_MEDIA} (optional)
///
///  @param barcodeEntry The bar code entry string (optional)
///
///  @param externalRedeemOptions An external identifier. What the identifier will be used for and how it is formatted is up to the frontend developer. (optional)
///
///  @param externalUrl The clickUrl of the offer (optional)
///
///  @param ticketsRewardType The type of ticket to reward, null means default type (optional)
///
///  @param ticketsReward Determines how many tickets are awarded (optional)
///
///  @param activated The date of when the offer will be visible to consumers (optional)
///
///  @param expires The date of when the offer expires (optional)
///
///  @param noExpiration Overrides the expiration date so that the offer does not expire (optional)
///
///  @param availableLimit The limit of how many times the offer can be used by consumers (optional)
///
///  @param availableLimitPerUser The limit of how many times a user can used the same offer (optional)
///
///  @param addedLimit The limit of how many times the offer can be added to consumer wallets (optional)
///
///  @param viewLimit  (optional)
///
///  @param maxPrints The maximum number of times the offer can be printed (optional)
///
///  @param ticketPriceType the type of ticket needed to buy the offer (optional)
///
///  @param ticketPrice The cost of the offer in tickets (optional)
///
///  @param fullPrice The retail/full price cost of the offer in real currency (optional)
///
///  @param discountPrice The cost of the offer at a discounted price (what the consumer pays) (optional)
///
///  @param showRemaining The show remaining (optional)
///
///  @param showRedeemed The show redeemed (optional)
///
///  @param replaced The replaced (optional)
///
///  @param featured The featured (optional)
///
///  @param specialOfferType The special offer type {ALL, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW} (optional)
///
///  @param offerVisibility The offer visibility {PUBLIC, REWARDABLE, TRIGGERABLE} (optional)
///
///  @param categoryIds Comma separated list of category ids (optional)
///
///  @param filterIds Comma separated list of filter ids (optional)
///
///  @param active Sets the active flag (optional)
///
///  @param barcodeAssetId The id of the barcode asset (optional)
///
///  @param imageAssetId The id of the an offer asset (optional)
///
///  @param imageAssetId1 The id of the an offer asset (optional)
///
///  @param imageAssetId2 The id of the an offer asset (optional)
///
///  @param imageAssetId3 The id of the an offer asset (optional)
///
///  @param imageAssetId4 The id of the an offer asset (optional)
///
///  @param imageAssetId5 The id of the an offer asset (optional)
///
///  @param publisher The maker of the item. (optional)
///
///  @param redeemableStart The redeemable start date/time of the offer. (optional)
///
///  @param redeemableEnd The redeemable start date/time of the offer. (optional)
///
///  @param conditionType The condition. OfferType PRODUCT only. (optional)
///
///  @param isbn The ISBN id. OfferType PRODUCT only. (optional)
///
///  @param asin The ASIN id. OfferType PRODUCT only. (optional)
///
///  @param catalogNumbers The list of catelog numbers, comma seperated. OfferType PRODUCT only. (optional)
///
///  @param availabilityDate The date available. OfferType PRODUCT only. (optional)
///
///  @param parentalRating The parental control rating. OfferType PRODUCT only. (optional)
///
///  @param mediaType  (optional)
///
///  @param duration The total playing time of the media item. OfferType MEDIA only. (optional)
///
///  @param author The created/author of the media item. OfferType MEDIA only. (optional)
///
///  @param releaseDate The date/time of when the media item was originally released. OfferType MEDIA only. (optional)
///
///  @param collectionIds  (optional)
///
///  @param availability  (optional)
///
///  @param availabilitySummary  (optional)
///
///  @returns OAIMediaOfferResponse*
///
-(NSURLSessionTask*) updateMediaWithAccountId: (NSNumber*) accountId
    mediaId: (NSNumber*) mediaId
    retailerLocationIds: (NSString*) retailerLocationIds
    offerLocations: (NSString*) offerLocations
    title: (NSString*) title
    subTitle: (NSString*) subTitle
    details: (NSString*) details
    subDetails: (NSString*) subDetails
    finePrint: (NSString*) finePrint
    barcodeType: (NSString*) barcodeType
    barcodeEntry: (NSString*) barcodeEntry
    externalRedeemOptions: (NSString*) externalRedeemOptions
    externalUrl: (NSString*) externalUrl
    ticketsRewardType: (NSString*) ticketsRewardType
    ticketsReward: (NSNumber*) ticketsReward
    activated: (NSNumber*) activated
    expires: (NSNumber*) expires
    noExpiration: (NSNumber*) noExpiration
    availableLimit: (NSNumber*) availableLimit
    availableLimitPerUser: (NSNumber*) availableLimitPerUser
    addedLimit: (NSNumber*) addedLimit
    viewLimit: (NSNumber*) viewLimit
    maxPrints: (NSNumber*) maxPrints
    ticketPriceType: (NSString*) ticketPriceType
    ticketPrice: (NSNumber*) ticketPrice
    fullPrice: (NSNumber*) fullPrice
    discountPrice: (NSNumber*) discountPrice
    showRemaining: (NSNumber*) showRemaining
    showRedeemed: (NSNumber*) showRedeemed
    replaced: (NSNumber*) replaced
    featured: (NSNumber*) featured
    specialOfferType: (NSString*) specialOfferType
    offerVisibility: (NSString*) offerVisibility
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    active: (NSNumber*) active
    barcodeAssetId: (NSNumber*) barcodeAssetId
    imageAssetId: (NSNumber*) imageAssetId
    imageAssetId1: (NSNumber*) imageAssetId1
    imageAssetId2: (NSNumber*) imageAssetId2
    imageAssetId3: (NSNumber*) imageAssetId3
    imageAssetId4: (NSNumber*) imageAssetId4
    imageAssetId5: (NSNumber*) imageAssetId5
    publisher: (NSString*) publisher
    redeemableStart: (NSNumber*) redeemableStart
    redeemableEnd: (NSNumber*) redeemableEnd
    conditionType: (NSString*) conditionType
    isbn: (NSString*) isbn
    asin: (NSString*) asin
    catalogNumbers: (NSString*) catalogNumbers
    availabilityDate: (NSNumber*) availabilityDate
    parentalRating: (NSString*) parentalRating
    mediaType: (NSString*) mediaType
    duration: (NSNumber*) duration
    author: (NSString*) author
    releaseDate: (NSNumber*) releaseDate
    collectionIds: (NSString*) collectionIds
    availability: (NSString*) availability
    availabilitySummary: (NSString*) availabilitySummary
    completionHandler: (void (^)(OAIMediaOfferResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'mediaId' is set
    if (mediaId == nil) {
        NSParameterAssert(mediaId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mediaId"] };
            NSError* error = [NSError errorWithDomain:kOAIMediaApiErrorDomain code:kOAIMediaApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/media/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (mediaId != nil) {
        queryParams[@"mediaId"] = mediaId;
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
    }
    if (offerLocations != nil) {
        queryParams[@"offerLocations"] = offerLocations;
    }
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    if (subTitle != nil) {
        queryParams[@"subTitle"] = subTitle;
    }
    if (details != nil) {
        queryParams[@"details"] = details;
    }
    if (subDetails != nil) {
        queryParams[@"subDetails"] = subDetails;
    }
    if (finePrint != nil) {
        queryParams[@"finePrint"] = finePrint;
    }
    if (barcodeType != nil) {
        queryParams[@"barcodeType"] = barcodeType;
    }
    if (barcodeEntry != nil) {
        queryParams[@"barcodeEntry"] = barcodeEntry;
    }
    if (externalRedeemOptions != nil) {
        queryParams[@"externalRedeemOptions"] = externalRedeemOptions;
    }
    if (externalUrl != nil) {
        queryParams[@"externalUrl"] = externalUrl;
    }
    if (ticketsRewardType != nil) {
        queryParams[@"ticketsRewardType"] = ticketsRewardType;
    }
    if (ticketsReward != nil) {
        queryParams[@"ticketsReward"] = ticketsReward;
    }
    if (activated != nil) {
        queryParams[@"activated"] = activated;
    }
    if (expires != nil) {
        queryParams[@"expires"] = expires;
    }
    if (noExpiration != nil) {
        queryParams[@"noExpiration"] = [noExpiration isEqual:@(YES)] ? @"true" : @"false";
    }
    if (availableLimit != nil) {
        queryParams[@"availableLimit"] = availableLimit;
    }
    if (availableLimitPerUser != nil) {
        queryParams[@"availableLimitPerUser"] = availableLimitPerUser;
    }
    if (addedLimit != nil) {
        queryParams[@"addedLimit"] = addedLimit;
    }
    if (viewLimit != nil) {
        queryParams[@"viewLimit"] = viewLimit;
    }
    if (maxPrints != nil) {
        queryParams[@"maxPrints"] = maxPrints;
    }
    if (ticketPriceType != nil) {
        queryParams[@"ticketPriceType"] = ticketPriceType;
    }
    if (ticketPrice != nil) {
        queryParams[@"ticketPrice"] = ticketPrice;
    }
    if (fullPrice != nil) {
        queryParams[@"fullPrice"] = fullPrice;
    }
    if (discountPrice != nil) {
        queryParams[@"discountPrice"] = discountPrice;
    }
    if (showRemaining != nil) {
        queryParams[@"showRemaining"] = [showRemaining isEqual:@(YES)] ? @"true" : @"false";
    }
    if (showRedeemed != nil) {
        queryParams[@"showRedeemed"] = [showRedeemed isEqual:@(YES)] ? @"true" : @"false";
    }
    if (replaced != nil) {
        queryParams[@"replaced"] = [replaced isEqual:@(YES)] ? @"true" : @"false";
    }
    if (featured != nil) {
        queryParams[@"featured"] = [featured isEqual:@(YES)] ? @"true" : @"false";
    }
    if (specialOfferType != nil) {
        queryParams[@"specialOfferType"] = specialOfferType;
    }
    if (offerVisibility != nil) {
        queryParams[@"offerVisibility"] = offerVisibility;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (barcodeAssetId != nil) {
        queryParams[@"barcodeAssetId"] = barcodeAssetId;
    }
    if (imageAssetId != nil) {
        queryParams[@"imageAssetId"] = imageAssetId;
    }
    if (imageAssetId1 != nil) {
        queryParams[@"imageAssetId1"] = imageAssetId1;
    }
    if (imageAssetId2 != nil) {
        queryParams[@"imageAssetId2"] = imageAssetId2;
    }
    if (imageAssetId3 != nil) {
        queryParams[@"imageAssetId3"] = imageAssetId3;
    }
    if (imageAssetId4 != nil) {
        queryParams[@"imageAssetId4"] = imageAssetId4;
    }
    if (imageAssetId5 != nil) {
        queryParams[@"imageAssetId5"] = imageAssetId5;
    }
    if (publisher != nil) {
        queryParams[@"publisher"] = publisher;
    }
    if (redeemableStart != nil) {
        queryParams[@"redeemableStart"] = redeemableStart;
    }
    if (redeemableEnd != nil) {
        queryParams[@"redeemableEnd"] = redeemableEnd;
    }
    if (conditionType != nil) {
        queryParams[@"conditionType"] = conditionType;
    }
    if (isbn != nil) {
        queryParams[@"isbn"] = isbn;
    }
    if (asin != nil) {
        queryParams[@"asin"] = asin;
    }
    if (catalogNumbers != nil) {
        queryParams[@"catalogNumbers"] = catalogNumbers;
    }
    if (availabilityDate != nil) {
        queryParams[@"availabilityDate"] = availabilityDate;
    }
    if (parentalRating != nil) {
        queryParams[@"parentalRating"] = parentalRating;
    }
    if (mediaType != nil) {
        queryParams[@"mediaType"] = mediaType;
    }
    if (duration != nil) {
        queryParams[@"duration"] = duration;
    }
    if (author != nil) {
        queryParams[@"author"] = author;
    }
    if (releaseDate != nil) {
        queryParams[@"releaseDate"] = releaseDate;
    }
    if (collectionIds != nil) {
        queryParams[@"collectionIds"] = collectionIds;
    }
    if (availability != nil) {
        queryParams[@"availability"] = availability;
    }
    if (availabilitySummary != nil) {
        queryParams[@"availabilitySummary"] = availabilitySummary;
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
                              responseType: @"OAIMediaOfferResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMediaOfferResponse*)data, error);
                                }
                            }];
}



@end
