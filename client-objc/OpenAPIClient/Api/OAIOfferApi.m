#import "OAIOfferApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIListCountResponse.h"
#import "OAIOfferListResponse.h"
#import "OAIOfferResponse.h"
#import "OAIOfferShortResponse.h"
#import "OAIOfferTransactionResponse.h"
#import "OAIRetailerOfferResponse.h"
#import "OAISirqulResponse.h"


@interface OAIOfferApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIOfferApi

NSString* kOAIOfferApiErrorDomain = @"OAIOfferApiErrorDomain";
NSInteger kOAIOfferApiMissingParamErrorCode = 234513;

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
/// Update Offer Locations
/// Batch update offer locations.
///  @param data JSON string in the following format: ```json [{   \"offerLocationId\": 1705,   \"latitude\": 54.0,   \"longitude\": -122.0,   \"altitude\": 1.0,   \"locationDetail\": \"floor 1\",   \"locationDescription\": \"behind the Coke sign\" }, {   \"offerLocationId\": 1704,   \"latitude\": 54.1,   \"longitude\": -122.1 }] ```  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) batchUpdateOfferLocationsWithData: (NSString*) data
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/offer/location/batchUpdate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (data != nil) {
        queryParams[@"data"] = data;
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
/// Create Offer
/// Create an offer and assign it to the provided retailer locations.
///  @param includeOfferLocations If true return all the offer locations associated with the offer 
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
///  @param offerType The offer type {VOUCHER, COUPON, PRODUCT, EVENT, MEDIA, DEVICE} 
///
///  @param specialOfferType The special offer type {ALL, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW} 
///
///  @param offerVisibility The offer visibility {PUBLIC, REWARDABLE, TRIGGERABLE} 
///
///  @param active Sets the active flag 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id (deviceId or accountId required) (optional)
///
///  @param tags Custom string field for doing full-text searches (optional)
///
///  @param parentOfferId the parent offer id (optional)
///
///  @param retailerLocationIds Comma separated list of retailer location ids. This will assign the offer to these retailer locations. (optional)
///
///  @param offerLocations A list of json data that has offer location specific values. (optional)
///
///  @param subTitle The sub title (255 char limit) (optional)
///
///  @param details The details (optional)
///
///  @param subDetails A string for custom details (255 char limit) (optional)
///
///  @param finePrint The fine print (optional)
///
///  @param barcodeEntry The bar code entry string (optional)
///
///  @param externalRedeemOptions An external identifier. What the identifier will be used for and how it is formatted is up to the frontend developer (optional)
///
///  @param externalUrl The clickUrl of the offer (optional)
///
///  @param externalId an external identifier. What the identifier will be used for and how it is formatted is up to the frontend developer (optional)
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
///  @param showRemaining show remaining offers available (optional)
///
///  @param showRedeemed show how many offers have been redeemed (optional)
///
///  @param replaced  (optional)
///
///  @param featured flag if offer is featured or not (optional)
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
///  @param brand The brand. OfferType PRODUCT only. (optional)
///
///  @param productType The product type. OfferType PRODUCT only. (optional)
///
///  @param conditionType The condition. OfferType PRODUCT only. (optional)
///
///  @param isbn The ISBN id. OfferType PRODUCT only. (optional)
///
///  @param asin The ASIN id. OfferType PRODUCT only. (optional)
///
///  @param catalogNumbers The list of catelog numbers, comma seperated. OfferType PRODUCT only. (optional)
///
///  @param department The department name. The OfferType PRODUCT only. (optional)
///
///  @param features The list of features, comma seperated. OfferType PRODUCT only. (optional)
///
///  @param minimumPrice The MAP price. OfferType PRODUCT only. (optional)
///
///  @param width The width of the item. OfferType PRODUCT only. (optional)
///
///  @param height The height of the item. OfferType PRODUCT only. (optional)
///
///  @param depth The depth of the item. OfferType PRODUCT only. (optional)
///
///  @param weight The weight of the item. OfferType PRODUCT only. (optional)
///
///  @param unit The unit of measurement. OfferType PRODUCT only. (optional)
///
///  @param studio The studio name. OfferType PRODUCT only. (optional)
///
///  @param parentalRating The parental control rating. OfferType PRODUCT only. (optional)
///
///  @param publishDate The date published. OfferType PRODUCT only. (optional)
///
///  @param availabilityDate The date available. OfferType PRODUCT only. (optional)
///
///  @param sizeId  (optional)
///
///  @param listingId The ID of the event listing (optional)
///
///  @param mediaType the media type of the offer (optional)
///
///  @param duration The total playing time of the media item. OfferType MEDIA only. (optional)
///
///  @param author The created/author of the media item. OfferType MEDIA only. (optional)
///
///  @param releaseDate The date/time of when the media item was originally released. OfferType MEDIA only. (optional)
///
///  @param collectionIds  (optional)
///
///  @param rebootTimeHour The reboot hour time ranging from 0 to 23 (optional)
///
///  @param rebootTimeMinute The reboot minute time ranging from 0 to 59 (optional)
///
///  @param idleTimeoutInSecond If the device is idle for idleTimeoutInSecond then the device should timeout (optional)
///
///  @param serialNumber The serial number on the device (optional)
///
///  @param udid The unique device id for the device (optional)
///
///  @param deviceType The type of the device, for example: \"Kiosk\", \"Beacon\". (optional)
///
///  @param devicePower Edysen device power level setting (optional)
///
///  @param deviceInterference Edysen device inteference setting (optional)
///
///  @param availability  (optional)
///
///  @param availabilitySummary  (optional)
///
///  @returns OAIRetailerOfferResponse*
///
-(NSURLSessionTask*) createOfferWithIncludeOfferLocations: (NSNumber*) includeOfferLocations
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
    offerType: (NSString*) offerType
    specialOfferType: (NSString*) specialOfferType
    offerVisibility: (NSString*) offerVisibility
    active: (NSNumber*) active
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    tags: (NSString*) tags
    parentOfferId: (NSNumber*) parentOfferId
    retailerLocationIds: (NSString*) retailerLocationIds
    offerLocations: (NSString*) offerLocations
    subTitle: (NSString*) subTitle
    details: (NSString*) details
    subDetails: (NSString*) subDetails
    finePrint: (NSString*) finePrint
    barcodeEntry: (NSString*) barcodeEntry
    externalRedeemOptions: (NSString*) externalRedeemOptions
    externalUrl: (NSString*) externalUrl
    externalId: (NSString*) externalId
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
    brand: (NSString*) brand
    productType: (NSString*) productType
    conditionType: (NSString*) conditionType
    isbn: (NSString*) isbn
    asin: (NSString*) asin
    catalogNumbers: (NSString*) catalogNumbers
    department: (NSString*) department
    features: (NSString*) features
    minimumPrice: (NSNumber*) minimumPrice
    width: (NSNumber*) width
    height: (NSNumber*) height
    depth: (NSNumber*) depth
    weight: (NSNumber*) weight
    unit: (NSString*) unit
    studio: (NSString*) studio
    parentalRating: (NSString*) parentalRating
    publishDate: (NSNumber*) publishDate
    availabilityDate: (NSNumber*) availabilityDate
    sizeId: (NSNumber*) sizeId
    listingId: (NSNumber*) listingId
    mediaType: (NSString*) mediaType
    duration: (NSNumber*) duration
    author: (NSString*) author
    releaseDate: (NSNumber*) releaseDate
    collectionIds: (NSString*) collectionIds
    rebootTimeHour: (NSNumber*) rebootTimeHour
    rebootTimeMinute: (NSNumber*) rebootTimeMinute
    idleTimeoutInSecond: (NSNumber*) idleTimeoutInSecond
    serialNumber: (NSString*) serialNumber
    udid: (NSString*) udid
    deviceType: (NSString*) deviceType
    devicePower: (NSNumber*) devicePower
    deviceInterference: (NSNumber*) deviceInterference
    availability: (NSString*) availability
    availabilitySummary: (NSString*) availabilitySummary
    completionHandler: (void (^)(OAIRetailerOfferResponse* output, NSError* error)) handler {
    // verify the required parameter 'includeOfferLocations' is set
    if (includeOfferLocations == nil) {
        NSParameterAssert(includeOfferLocations);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeOfferLocations"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'barcodeType' is set
    if (barcodeType == nil) {
        NSParameterAssert(barcodeType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"barcodeType"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'noExpiration' is set
    if (noExpiration == nil) {
        NSParameterAssert(noExpiration);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"noExpiration"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'availableLimit' is set
    if (availableLimit == nil) {
        NSParameterAssert(availableLimit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"availableLimit"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'availableLimitPerUser' is set
    if (availableLimitPerUser == nil) {
        NSParameterAssert(availableLimitPerUser);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"availableLimitPerUser"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'addedLimit' is set
    if (addedLimit == nil) {
        NSParameterAssert(addedLimit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"addedLimit"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'viewLimit' is set
    if (viewLimit == nil) {
        NSParameterAssert(viewLimit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"viewLimit"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'maxPrints' is set
    if (maxPrints == nil) {
        NSParameterAssert(maxPrints);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"maxPrints"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ticketPrice' is set
    if (ticketPrice == nil) {
        NSParameterAssert(ticketPrice);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketPrice"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'fullPrice' is set
    if (fullPrice == nil) {
        NSParameterAssert(fullPrice);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fullPrice"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'discountPrice' is set
    if (discountPrice == nil) {
        NSParameterAssert(discountPrice);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"discountPrice"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'offerType' is set
    if (offerType == nil) {
        NSParameterAssert(offerType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerType"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'specialOfferType' is set
    if (specialOfferType == nil) {
        NSParameterAssert(specialOfferType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"specialOfferType"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'offerVisibility' is set
    if (offerVisibility == nil) {
        NSParameterAssert(offerVisibility);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerVisibility"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'active' is set
    if (active == nil) {
        NSParameterAssert(active);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"active"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/offer/create"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (parentOfferId != nil) {
        queryParams[@"parentOfferId"] = parentOfferId;
    }
    if (includeOfferLocations != nil) {
        queryParams[@"includeOfferLocations"] = [includeOfferLocations isEqual:@(YES)] ? @"true" : @"false";
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
    if (externalId != nil) {
        queryParams[@"externalId"] = externalId;
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
    if (offerType != nil) {
        queryParams[@"offerType"] = offerType;
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
    if (brand != nil) {
        queryParams[@"brand"] = brand;
    }
    if (productType != nil) {
        queryParams[@"productType"] = productType;
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
    if (department != nil) {
        queryParams[@"department"] = department;
    }
    if (features != nil) {
        queryParams[@"features"] = features;
    }
    if (minimumPrice != nil) {
        queryParams[@"minimumPrice"] = minimumPrice;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (depth != nil) {
        queryParams[@"depth"] = depth;
    }
    if (weight != nil) {
        queryParams[@"weight"] = weight;
    }
    if (unit != nil) {
        queryParams[@"unit"] = unit;
    }
    if (studio != nil) {
        queryParams[@"studio"] = studio;
    }
    if (parentalRating != nil) {
        queryParams[@"parentalRating"] = parentalRating;
    }
    if (publishDate != nil) {
        queryParams[@"publishDate"] = publishDate;
    }
    if (availabilityDate != nil) {
        queryParams[@"availabilityDate"] = availabilityDate;
    }
    if (sizeId != nil) {
        queryParams[@"sizeId"] = sizeId;
    }
    if (listingId != nil) {
        queryParams[@"listingId"] = listingId;
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
    if (rebootTimeHour != nil) {
        queryParams[@"rebootTimeHour"] = rebootTimeHour;
    }
    if (rebootTimeMinute != nil) {
        queryParams[@"rebootTimeMinute"] = rebootTimeMinute;
    }
    if (idleTimeoutInSecond != nil) {
        queryParams[@"idleTimeoutInSecond"] = idleTimeoutInSecond;
    }
    if (serialNumber != nil) {
        queryParams[@"serialNumber"] = serialNumber;
    }
    if (udid != nil) {
        queryParams[@"udid"] = udid;
    }
    if (deviceType != nil) {
        queryParams[@"deviceType"] = deviceType;
    }
    if (devicePower != nil) {
        queryParams[@"devicePower"] = devicePower;
    }
    if (deviceInterference != nil) {
        queryParams[@"deviceInterference"] = deviceInterference;
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
                              responseType: @"OAIRetailerOfferResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetailerOfferResponse*)data, error);
                                }
                            }];
}

///
/// Delete Offer
/// Set the deleted timestamp to current time. This effectively deletes the offer since all queries should ignore any records with a deleted time stamp.
///  @param offerId The ID of the offer to be deleted 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account used to perform the delete, must have rights to edit the offer. (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteOfferWithOfferId: (NSNumber*) offerId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'offerId' is set
    if (offerId == nil) {
        NSParameterAssert(offerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerId"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/offer/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
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
/// Delete Offer Location
/// Set the deleted timestamp to current time. This effectively deletes the offer location since all queries should ignore any records with a deleted time stamp.
///  @param offerLocationId The ID of the offer location to be deleted 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account used to perform the delete, must have rights to edit the offer location. (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) deleteOfferLocationWithOfferLocationId: (NSNumber*) offerLocationId
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'offerLocationId' is set
    if (offerLocationId == nil) {
        NSParameterAssert(offerLocationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerLocationId"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/offer/location/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
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
/// Get Offer
/// Gets the details of an offer that the user has access to.
///  @param offerId The id of the offer 
///
///  @param includeOfferLocations  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id (deviceId or accountId required) (optional)
///
///  @returns OAIRetailerOfferResponse*
///
-(NSURLSessionTask*) getOfferWithOfferId: (NSNumber*) offerId
    includeOfferLocations: (NSNumber*) includeOfferLocations
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAIRetailerOfferResponse* output, NSError* error)) handler {
    // verify the required parameter 'offerId' is set
    if (offerId == nil) {
        NSParameterAssert(offerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerId"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeOfferLocations' is set
    if (includeOfferLocations == nil) {
        NSParameterAssert(includeOfferLocations);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeOfferLocations"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/offer/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (includeOfferLocations != nil) {
        queryParams[@"includeOfferLocations"] = [includeOfferLocations isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIRetailerOfferResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetailerOfferResponse*)data, error);
                                }
                            }];
}

///
/// Get Offer
/// Gets offer or offer location details as a consumer.  Will check if it is a favorite if the deviceId/accountId is provided.  If the offerId is provided it will look up the main offer and ignore the the offerLocationId. If no offerId is provided then an offerLocationId must be specified.
///  @param deviceId The device id for returning account information (i.e. favorites) (optional)
///
///  @param accountId The account id for returning account information (i.e. favorites) (optional)
///
///  @param offerId The offer id (either offeLocationId or offerId must be provided) (optional)
///
///  @param offerLocationId The offer location id (either offeLocationId or offerId must be provided) (optional)
///
///  @param distance The distance of the offer from the user's current location (this is returned when the offer is searched) (optional)
///
///  @param latitude The latitude to calculate distance from the offer (optional)
///
///  @param longitude The longitude to calculate distance from the offer (optional)
///
///  @param includeOfferLocations Determines whether to return offer locations for the offer (optional, default to @(NO))
///
///  @param includeRetailerLocations Determines whether to return the retailer location info for each offer location response (includeOfferLocations must also be true for this to work) (optional, default to @(NO))
///
///  @param includeChildOffers Determines whether to include child offers in the response (optional, default to @(NO))
///
///  @returns OAIOfferResponse*
///
-(NSURLSessionTask*) getOfferDetailsWithDeviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    offerId: (NSNumber*) offerId
    offerLocationId: (NSNumber*) offerLocationId
    distance: (NSNumber*) distance
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    includeOfferLocations: (NSNumber*) includeOfferLocations
    includeRetailerLocations: (NSNumber*) includeRetailerLocations
    includeChildOffers: (NSNumber*) includeChildOffers
    completionHandler: (void (^)(OAIOfferResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/offer/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
    }
    if (distance != nil) {
        queryParams[@"distance"] = distance;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (includeOfferLocations != nil) {
        queryParams[@"includeOfferLocations"] = [includeOfferLocations isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeRetailerLocations != nil) {
        queryParams[@"includeRetailerLocations"] = [includeRetailerLocations isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeChildOffers != nil) {
        queryParams[@"includeChildOffers"] = [includeChildOffers isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIOfferResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOfferResponse*)data, error);
                                }
                            }];
}

///
/// Get Offers (Counts)
/// Gets the offer list counts.
///  @param latitude The latitude of where the search will center at 
///
///  @param longitude The longitude of where the search will center at 
///
///  @param searchRange The range of the search (optional, default to @5)
///
///  @param distanceUnit The units to use for distance calculations (e.g. MILES, KILOMETERS) (optional, default to @"MILES")
///
///  @returns OAIListCountResponse*
///
-(NSURLSessionTask*) getOfferListCountsWithLatitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    searchRange: (NSNumber*) searchRange
    distanceUnit: (NSString*) distanceUnit
    completionHandler: (void (^)(OAIListCountResponse* output, NSError* error)) handler {
    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/offer/lists/count"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (searchRange != nil) {
        queryParams[@"searchRange"] = searchRange;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
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
                              responseType: @"OAIListCountResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIListCountResponse*)data, error);
                                }
                            }];
}

///
/// Get Offer Location
/// Gets the offer location by offer location id or udid (of a device)
///  @param offerLocationId the id of the offer location to get (optional)
///
///  @param udid the UDID of the device (optional)
///
///  @returns OAIOfferShortResponse*
///
-(NSURLSessionTask*) getOfferLocationWithOfferLocationId: (NSNumber*) offerLocationId
    udid: (NSString*) udid
    completionHandler: (void (^)(OAIOfferShortResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/offer/location/get"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
    }
    if (udid != nil) {
        queryParams[@"udid"] = udid;
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
                              responseType: @"OAIOfferShortResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOfferShortResponse*)data, error);
                                }
                            }];
}

///
/// Search Offer Locations
/// Searches on offer locations, which are records that represent an offer that has been assigned to a retailer location. If an offer does not have any locations assigned, then it will NOT be returned.
///  @param sortField The column to sort the results on. Default is \"TITLE\", which will sort the results by the offer title. Possible input values: {CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, RETAILER_ID,RETAILER_LOCATION_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY} 
///
///  @param descending The order to return the results. Default is false, which will return the results in ascending order. 
///
///  @param start The index into the record set to start with. Default is 0. 
///
///  @param limit The total number of records to return. Default is 20. 
///
///  @param activeOnly Determines whether to return only active results. Default is false. 
///
///  @param includeRetailerLocation  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param retailerId Filter results for a specific retailer (optional)
///
///  @param retailerLocationId Filter results for a specific retailer location (optional)
///
///  @param offerType Filter results to only return COUPON, VOUCHER, PRODUCT, MEDIA, or EVENT offers (optional)
///
///  @param specialOfferType Filter results to only return REGULAR_OFFER, ACT_NOW, GET_THERE_NOW offer specials (optional)
///
///  @param barcodeType  (optional)
///
///  @param barcodeEntry  (optional)
///
///  @param isbn  (optional)
///
///  @param asin  (optional)
///
///  @param deviceStatus Edysen device status, running, warning, or down (optional)
///
///  @param needsNotificationSent  (optional)
///
///  @param lastNotificationSent  (optional)
///
///  @returns NSArray<OAIOfferShortResponse>*
///
-(NSURLSessionTask*) getOfferLocationsForRetailersWithSortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    includeRetailerLocation: (NSNumber*) includeRetailerLocation
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    keyword: (NSString*) keyword
    retailerId: (NSNumber*) retailerId
    retailerLocationId: (NSNumber*) retailerLocationId
    offerType: (NSString*) offerType
    specialOfferType: (NSString*) specialOfferType
    barcodeType: (NSString*) barcodeType
    barcodeEntry: (NSString*) barcodeEntry
    isbn: (NSString*) isbn
    asin: (NSString*) asin
    deviceStatus: (NSString*) deviceStatus
    needsNotificationSent: (NSNumber*) needsNotificationSent
    lastNotificationSent: (NSNumber*) lastNotificationSent
    completionHandler: (void (^)(NSArray<OAIOfferShortResponse>* output, NSError* error)) handler {
    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeRetailerLocation' is set
    if (includeRetailerLocation == nil) {
        NSParameterAssert(includeRetailerLocation);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeRetailerLocation"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/offer/location/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (retailerId != nil) {
        queryParams[@"retailerId"] = retailerId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (offerType != nil) {
        queryParams[@"offerType"] = offerType;
    }
    if (specialOfferType != nil) {
        queryParams[@"specialOfferType"] = specialOfferType;
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
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeRetailerLocation != nil) {
        queryParams[@"includeRetailerLocation"] = [includeRetailerLocation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (barcodeType != nil) {
        queryParams[@"barcodeType"] = barcodeType;
    }
    if (barcodeEntry != nil) {
        queryParams[@"barcodeEntry"] = barcodeEntry;
    }
    if (isbn != nil) {
        queryParams[@"isbn"] = isbn;
    }
    if (asin != nil) {
        queryParams[@"asin"] = asin;
    }
    if (deviceStatus != nil) {
        queryParams[@"deviceStatus"] = deviceStatus;
    }
    if (needsNotificationSent != nil) {
        queryParams[@"needsNotificationSent"] = [needsNotificationSent isEqual:@(YES)] ? @"true" : @"false";
    }
    if (lastNotificationSent != nil) {
        queryParams[@"lastNotificationSent"] = lastNotificationSent;
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
                              responseType: @"NSArray<OAIOfferShortResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIOfferShortResponse>*)data, error);
                                }
                            }];
}

///
/// Search Offers
/// Searches on offers that the account has access to.
///  @param offerVisibility  
///
///  @param sortField The column to sort the search on. Possible values include: ID, CREATED, UPDATED, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, DETAILS, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, ESTIMATED_VALUE, VOUCHER_PRICE, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY 
///
///  @param descending The order to return the search results 
///
///  @param start The record to begin the return set on 
///
///  @param limit The number of records to return 
///
///  @param availableOnly Return only results that are currently being promoted (is activated and not expired) 
///
///  @param activeOnly Return only active results 
///
///  @param includeCategories  
///
///  @param includeFilters  
///
///  @param includeOfferLocations  
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param categoryIds  (optional)
///
///  @param filterIds  (optional)
///
///  @param q This parameter is deprecated. (optional)
///
///  @param keyword The keyword used to search (optional)
///
///  @param retailerId the id of the retailer (optional)
///
///  @param retailerLocationId the id of the retailer location (optional)
///
///  @param couponType This parameter is deprecated. (optional)
///
///  @param offerType This parameter is deprecated. Use offer types. Filter results to only return COUPON, VOUCHER, PRODUCT, MEDIA, or EVENT offers (optional)
///
///  @param offerTypes Comma separated list of offer types {COUPON, VOUCHER, PRODUCT, MEDIA, EVENT, DEVICE} (optional)
///
///  @param specialOfferType Filter results to only return REGULAR_OFFER, ACT_NOW, GET_THERE_NOW offer specials (optional)
///
///  @param i This parameter is deprecated. (optional)
///
///  @param l This parameter is deprecated. (optional)
///
///  @param barcodeType  (optional)
///
///  @param barcodeEntry  (optional)
///
///  @param isbn  (optional)
///
///  @param asin  (optional)
///
///  @param deviceStatus Edysen device status (optional)
///
///  @param needsNotificationSent  (optional)
///
///  @param lastNotificationSent  (optional)
///
///  @returns NSArray<OAIOfferResponse>*
///
-(NSURLSessionTask*) getOffersForRetailersWithOfferVisibility: (NSString*) offerVisibility
    sortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    availableOnly: (NSNumber*) availableOnly
    activeOnly: (NSNumber*) activeOnly
    includeCategories: (NSNumber*) includeCategories
    includeFilters: (NSNumber*) includeFilters
    includeOfferLocations: (NSNumber*) includeOfferLocations
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    categoryIds: (NSString*) categoryIds
    filterIds: (NSString*) filterIds
    q: (NSString*) q
    keyword: (NSString*) keyword
    retailerId: (NSNumber*) retailerId
    retailerLocationId: (NSNumber*) retailerLocationId
    couponType: (NSString*) couponType
    offerType: (NSString*) offerType
    offerTypes: (NSString*) offerTypes
    specialOfferType: (NSString*) specialOfferType
    i: (NSNumber*) i
    l: (NSNumber*) l
    barcodeType: (NSString*) barcodeType
    barcodeEntry: (NSString*) barcodeEntry
    isbn: (NSString*) isbn
    asin: (NSString*) asin
    deviceStatus: (NSString*) deviceStatus
    needsNotificationSent: (NSNumber*) needsNotificationSent
    lastNotificationSent: (NSNumber*) lastNotificationSent
    completionHandler: (void (^)(NSArray<OAIOfferResponse>* output, NSError* error)) handler {
    // verify the required parameter 'offerVisibility' is set
    if (offerVisibility == nil) {
        NSParameterAssert(offerVisibility);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerVisibility"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'availableOnly' is set
    if (availableOnly == nil) {
        NSParameterAssert(availableOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"availableOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeCategories' is set
    if (includeCategories == nil) {
        NSParameterAssert(includeCategories);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeCategories"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeFilters' is set
    if (includeFilters == nil) {
        NSParameterAssert(includeFilters);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeFilters"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeOfferLocations' is set
    if (includeOfferLocations == nil) {
        NSParameterAssert(includeOfferLocations);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeOfferLocations"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/offer/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (filterIds != nil) {
        queryParams[@"filterIds"] = filterIds;
    }
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (retailerId != nil) {
        queryParams[@"retailerId"] = retailerId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (couponType != nil) {
        queryParams[@"couponType"] = couponType;
    }
    if (offerType != nil) {
        queryParams[@"offerType"] = offerType;
    }
    if (offerTypes != nil) {
        queryParams[@"offerTypes"] = offerTypes;
    }
    if (specialOfferType != nil) {
        queryParams[@"specialOfferType"] = specialOfferType;
    }
    if (offerVisibility != nil) {
        queryParams[@"offerVisibility"] = offerVisibility;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (i != nil) {
        queryParams[@"_i"] = i;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (l != nil) {
        queryParams[@"_l"] = l;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (availableOnly != nil) {
        queryParams[@"availableOnly"] = [availableOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeCategories != nil) {
        queryParams[@"includeCategories"] = [includeCategories isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeFilters != nil) {
        queryParams[@"includeFilters"] = [includeFilters isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeOfferLocations != nil) {
        queryParams[@"includeOfferLocations"] = [includeOfferLocations isEqual:@(YES)] ? @"true" : @"false";
    }
    if (barcodeType != nil) {
        queryParams[@"barcodeType"] = barcodeType;
    }
    if (barcodeEntry != nil) {
        queryParams[@"barcodeEntry"] = barcodeEntry;
    }
    if (isbn != nil) {
        queryParams[@"isbn"] = isbn;
    }
    if (asin != nil) {
        queryParams[@"asin"] = asin;
    }
    if (deviceStatus != nil) {
        queryParams[@"deviceStatus"] = deviceStatus;
    }
    if (needsNotificationSent != nil) {
        queryParams[@"needsNotificationSent"] = [needsNotificationSent isEqual:@(YES)] ? @"true" : @"false";
    }
    if (lastNotificationSent != nil) {
        queryParams[@"lastNotificationSent"] = lastNotificationSent;
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
                              responseType: @"NSArray<OAIOfferResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIOfferResponse>*)data, error);
                                }
                            }];
}

///
/// Update Offer Transaction
/// Redeems an offer.
///  @param offerTransactionId the OfferTransaction ID of the transaction being redeemed 
///
///  @param status the status to set the offer transaction to - 1 sets it to redeemable and 2 sets it to redeemed 
///
///  @param deviceId the device id (deviceId or accountId required) (optional)
///
///  @param accountId the account id of the user (deviceId or accountId required) (optional)
///
///  @param offerLocationId the OfferLocation ID where the offer is being redeemed (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) redeemOfferTransactionWithOfferTransactionId: (NSNumber*) offerTransactionId
    status: (NSNumber*) status
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    offerLocationId: (NSNumber*) offerLocationId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'offerTransactionId' is set
    if (offerTransactionId == nil) {
        NSParameterAssert(offerTransactionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerTransactionId"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'status' is set
    if (status == nil) {
        NSParameterAssert(status);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"status"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/offer/transaction/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (offerTransactionId != nil) {
        queryParams[@"offerTransactionId"] = offerTransactionId;
    }
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
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
/// Search Offer Transactions
/// Searches on offer transactions for offers that the account has access to.
///  @param sortField Determines what to sort the results by {CREATED, UPDATED, SEARCH_TAGS, ACTIVE, ACTIVATED, EXPIRES, TITLE, SUBTITLE, OFFER_TYPE, SPECIAL_OFFER_TYPE, OFFER_VISIBILITY, CUSTOMER_ID, CUSTOMER_DISPLAY, RETAILER_ID, RETAILER_NAME, RETAILER_LOCATION_ID, RETAILER_LOCATION_NAME, BILLABLE_ENTITY_ID, BILLABLE_ENTITY_NAME, RESPONSIBLE_DISPLAY} 
///
///  @param descending Determines whether the results are in descending order 
///
///  @param start The start index for pagination 
///
///  @param limit The limit for pagination 
///
///  @param activeOnly Determines whether to only return active offer transactions 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account id of the user (deviceId or accountId required) (optional)
///
///  @param q This parameter is deprecated. (optional)
///
///  @param keyword The keyword to search for (optional)
///
///  @param retailerId Filter results for this retailer (optional)
///
///  @param retailerLocationId Filter results for this retailer location (optional)
///
///  @param offerId Filter results for this offer (optional)
///
///  @param offerLocationId Filter results for this offer location (optional)
///
///  @param redeemed if true return redeemed transactions (status 2), if false return active transactions (status 0 or 1) (optional)
///
///  @param reservationsOnly returns only reservation transactions if true (optional)
///
///  @param couponType This parameter is deprecated. (optional)
///
///  @param offerType Filter results to only return COUPON, VOUCHER, PRODUCT, MEDIA, or EVENT offers (optional)
///
///  @param specialOfferType Filter results to only return REGULAR_OFFER, ACT_NOW, GET_THERE_NOW offer specials (optional)
///
///  @param customerAccountIds Filter results by accounts (optional)
///
///  @param categoryIds  (optional)
///
///  @param redeemableStartDate  (optional)
///
///  @param redeemableEndDate  (optional)
///
///  @param i This parameter is deprecated. (optional)
///
///  @param l This parameter is deprecated. (optional)
///
///  @returns NSArray<OAIOfferTransactionResponse>*
///
-(NSURLSessionTask*) searchOfferTransactionsForRetailersWithSortField: (NSString*) sortField
    descending: (NSNumber*) descending
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    activeOnly: (NSNumber*) activeOnly
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    q: (NSString*) q
    keyword: (NSString*) keyword
    retailerId: (NSNumber*) retailerId
    retailerLocationId: (NSNumber*) retailerLocationId
    offerId: (NSNumber*) offerId
    offerLocationId: (NSNumber*) offerLocationId
    redeemed: (NSNumber*) redeemed
    reservationsOnly: (NSNumber*) reservationsOnly
    couponType: (NSString*) couponType
    offerType: (NSString*) offerType
    specialOfferType: (NSString*) specialOfferType
    customerAccountIds: (NSString*) customerAccountIds
    categoryIds: (NSString*) categoryIds
    redeemableStartDate: (NSNumber*) redeemableStartDate
    redeemableEndDate: (NSNumber*) redeemableEndDate
    i: (NSNumber*) i
    l: (NSNumber*) l
    completionHandler: (void (^)(NSArray<OAIOfferTransactionResponse>* output, NSError* error)) handler {
    // verify the required parameter 'sortField' is set
    if (sortField == nil) {
        NSParameterAssert(sortField);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sortField"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'descending' is set
    if (descending == nil) {
        NSParameterAssert(descending);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"descending"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'activeOnly' is set
    if (activeOnly == nil) {
        NSParameterAssert(activeOnly);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"activeOnly"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/offer/transaction/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (retailerId != nil) {
        queryParams[@"retailerId"] = retailerId;
    }
    if (retailerLocationId != nil) {
        queryParams[@"retailerLocationId"] = retailerLocationId;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (offerLocationId != nil) {
        queryParams[@"offerLocationId"] = offerLocationId;
    }
    if (redeemed != nil) {
        queryParams[@"redeemed"] = [redeemed isEqual:@(YES)] ? @"true" : @"false";
    }
    if (reservationsOnly != nil) {
        queryParams[@"reservationsOnly"] = [reservationsOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (couponType != nil) {
        queryParams[@"couponType"] = couponType;
    }
    if (offerType != nil) {
        queryParams[@"offerType"] = offerType;
    }
    if (specialOfferType != nil) {
        queryParams[@"specialOfferType"] = specialOfferType;
    }
    if (customerAccountIds != nil) {
        queryParams[@"customerAccountIds"] = customerAccountIds;
    }
    if (categoryIds != nil) {
        queryParams[@"categoryIds"] = categoryIds;
    }
    if (redeemableStartDate != nil) {
        queryParams[@"redeemableStartDate"] = redeemableStartDate;
    }
    if (redeemableEndDate != nil) {
        queryParams[@"redeemableEndDate"] = redeemableEndDate;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (descending != nil) {
        queryParams[@"descending"] = [descending isEqual:@(YES)] ? @"true" : @"false";
    }
    if (i != nil) {
        queryParams[@"_i"] = i;
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (l != nil) {
        queryParams[@"_l"] = l;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (activeOnly != nil) {
        queryParams[@"activeOnly"] = [activeOnly isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIOfferTransactionResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIOfferTransactionResponse>*)data, error);
                                }
                            }];
}

///
/// Search Offers
/// Searches for offers as a consumer.
///  @param latitude The latitude of where the search will center at 
///
///  @param longitude The longitude of where the search will center at 
///
///  @param recommendationType The method to use to gather recommendations: WALLET base relevance on items in users wallets CLICKS base relevance on items users have clicked on BLENDED blend using all methods available 
///
///  @param locationId This parameter is deprecated. The location id 
///
///  @param start The start index for pagination 
///
///  @param limit The limit for pagination 
///
///  @param maxRecommendations  
///
///  @param distanceUnit  
///
///  @param appKey The application key used to identify the application (optional)
///
///  @param deviceId The device id for returning account information (i.e. offer transactions made by the user) (optional)
///
///  @param accountId The account id for returning account information (i.e. offer transactions made by the user) (optional)
///
///  @param searchRange The range of the search (optional, default to @5)
///
///  @param tags Does a full-text search on tags (optional)
///
///  @param supportedPostalCodes supported postal codes (optional)
///
///  @param keyword The keyword to filter results by (optional)
///
///  @param categories Comma separate list of category ids (optional)
///
///  @param filters Comma separated list of filter ids (optional)
///
///  @param offerTypes Comma separated list of offer types {COUPON, VOUCHER, PRODUCT, MEDIA, EVENT, DEVICE} (optional, default to @"COUPON, VOUCHER")
///
///  @param type The special offer type {ALL, RESERVABLE, REGULAR_OFFER, ACT_NOW, GET_THERE_NOW} (optional)
///
///  @param sortField The field to sort the result set on:DISTANCE Sort the offers nearest to farthest BUSINESS_NAME Sort the offers alphabetically by location name SHUFFLE Sort the nearest offers randomly USERPREFS accountId must accompany this parameter. Gives the first X recommendations where X equals the parameter maxRecommendations (optional)
///
///  @param recommendOfferIds Return recommendations based on these offers IDs (optional)
///
///  @param retailerLocationIds Only return offer locations for the specific retailer locations. (optional)
///
///  @param offerId Only return offer locations for the specific offer. (optional)
///
///  @param includeMission If true include the mission response as part of the offer. Default is false. (optional)
///
///  @param includeCategories If true include the category list response as part of the offer. Default is false. (optional)
///
///  @param includeFilters If true include the filter list response as part of the offer. Default is false. (optional)
///
///  @param includeExpired If true then ignore the expired dates. Default is false. (optional)
///
///  @param includeFavorite If true then ignore the favorite. Default is false. (optional)
///
///  @param closestOfferOnly This parameter is deprecated. see groupBy. If true then it only returns the offer location for an offer closest to the given lat/lon (optional)
///
///  @param searchExpression  (optional)
///
///  @param groupBy groups the results by a certain field. For example, if you want to return the closest offer location of an offer, then pass in groupBy=OFFER_ID and sortField=DISTANCE (to sort by distance). (optional)
///
///  @returns OAIOfferListResponse*
///
-(NSURLSessionTask*) searchOffersForConsumerWithLatitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    recommendationType: (NSString*) recommendationType
    locationId: (NSNumber*) locationId
    start: (NSNumber*) start
    limit: (NSNumber*) limit
    maxRecommendations: (NSNumber*) maxRecommendations
    distanceUnit: (NSString*) distanceUnit
    appKey: (NSString*) appKey
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    searchRange: (NSNumber*) searchRange
    tags: (NSString*) tags
    supportedPostalCodes: (NSString*) supportedPostalCodes
    keyword: (NSString*) keyword
    categories: (NSString*) categories
    filters: (NSString*) filters
    offerTypes: (NSString*) offerTypes
    type: (NSString*) type
    sortField: (NSString*) sortField
    recommendOfferIds: (NSString*) recommendOfferIds
    retailerLocationIds: (NSString*) retailerLocationIds
    offerId: (NSNumber*) offerId
    includeMission: (NSNumber*) includeMission
    includeCategories: (NSNumber*) includeCategories
    includeFilters: (NSNumber*) includeFilters
    includeExpired: (NSNumber*) includeExpired
    includeFavorite: (NSNumber*) includeFavorite
    closestOfferOnly: (NSNumber*) closestOfferOnly
    searchExpression: (NSString*) searchExpression
    groupBy: (NSString*) groupBy
    completionHandler: (void (^)(OAIOfferListResponse* output, NSError* error)) handler {
    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recommendationType' is set
    if (recommendationType == nil) {
        NSParameterAssert(recommendationType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recommendationType"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'start' is set
    if (start == nil) {
        NSParameterAssert(start);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"start"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'limit' is set
    if (limit == nil) {
        NSParameterAssert(limit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"limit"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'maxRecommendations' is set
    if (maxRecommendations == nil) {
        NSParameterAssert(maxRecommendations);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"maxRecommendations"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'distanceUnit' is set
    if (distanceUnit == nil) {
        NSParameterAssert(distanceUnit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"distanceUnit"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/offer/lists"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (appKey != nil) {
        queryParams[@"appKey"] = appKey;
    }
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (searchRange != nil) {
        queryParams[@"searchRange"] = searchRange;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (supportedPostalCodes != nil) {
        queryParams[@"supportedPostalCodes"] = supportedPostalCodes;
    }
    if (keyword != nil) {
        queryParams[@"keyword"] = keyword;
    }
    if (categories != nil) {
        queryParams[@"categories"] = categories;
    }
    if (filters != nil) {
        queryParams[@"filters"] = filters;
    }
    if (offerTypes != nil) {
        queryParams[@"offerTypes"] = offerTypes;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (sortField != nil) {
        queryParams[@"sortField"] = sortField;
    }
    if (recommendOfferIds != nil) {
        queryParams[@"recommendOfferIds"] = recommendOfferIds;
    }
    if (recommendationType != nil) {
        queryParams[@"recommendationType"] = recommendationType;
    }
    if (locationId != nil) {
        queryParams[@"locationId"] = locationId;
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (includeMission != nil) {
        queryParams[@"includeMission"] = [includeMission isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeCategories != nil) {
        queryParams[@"includeCategories"] = [includeCategories isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeFilters != nil) {
        queryParams[@"includeFilters"] = [includeFilters isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeExpired != nil) {
        queryParams[@"includeExpired"] = [includeExpired isEqual:@(YES)] ? @"true" : @"false";
    }
    if (includeFavorite != nil) {
        queryParams[@"includeFavorite"] = [includeFavorite isEqual:@(YES)] ? @"true" : @"false";
    }
    if (start != nil) {
        queryParams[@"start"] = start;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (maxRecommendations != nil) {
        queryParams[@"maxRecommendations"] = maxRecommendations;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (closestOfferOnly != nil) {
        queryParams[@"closestOfferOnly"] = [closestOfferOnly isEqual:@(YES)] ? @"true" : @"false";
    }
    if (searchExpression != nil) {
        queryParams[@"searchExpression"] = searchExpression;
    }
    if (groupBy != nil) {
        queryParams[@"groupBy"] = groupBy;
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
                              responseType: @"OAIOfferListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOfferListResponse*)data, error);
                                }
                            }];
}

///
/// Get Offers (Top)
/// Gets the top active offers.
///  @param start The index into the record set to start with. Default is 0. (optional, default to @0)
///
///  @param limit The total number of record to return. Default id 20. (optional, default to @20)
///
///  @returns OAIOfferListResponse*
///
-(NSURLSessionTask*) topOfferTransactionsWithStart: (NSNumber*) start
    limit: (NSNumber*) limit
    completionHandler: (void (^)(OAIOfferListResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/offer/top"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"OAIOfferListResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOfferListResponse*)data, error);
                                }
                            }];
}

///
/// Update Offer
/// Update an offer, must provide a current list of retailer locations or the current offer locations will be marked as deleted.
///  @param offerId The offer to update 
///
///  @param includeOfferLocations If true return all the offer locations associated with the offer 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account used to perform the update, must have rights to edit the offer (deviceId or accountId required) (optional)
///
///  @param parentOfferId  (optional)
///
///  @param retailerLocationIds Comma separated list of retailer location ids. This will assign the offer to these retailer locations. (optional)
///
///  @param offerLocations A list of json data that has offer location specific values. (optional)
///
///  @param tags Custom string field for doing full-text searches (optional)
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
///  @param externalId  (optional)
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
///  @param showRemaining show remaining offers available (optional)
///
///  @param showRedeemed show how many offers have been redeemed (optional)
///
///  @param replaced  (optional)
///
///  @param featured whether the offer is featured or not (optional)
///
///  @param offerType The offer type {VOUCHER, COUPON, PRODUCT, MEDIA, EVENT} (optional)
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
///  @param brand The brand. OfferType PRODUCT only. (optional)
///
///  @param productType The product type. OfferType PRODUCT only. (optional)
///
///  @param conditionType The condition. OfferType PRODUCT only. (optional)
///
///  @param isbn The ISBN id. OfferType PRODUCT only. (optional)
///
///  @param asin The ASIN id. OfferType PRODUCT only. (optional)
///
///  @param catalogNumbers The list of catelog numbers, comma seperated. OfferType PRODUCT only. (optional)
///
///  @param department The department name. The OfferType PRODUCT only. (optional)
///
///  @param features The list of features, comma seperated. OfferType PRODUCT only. (optional)
///
///  @param minimumPrice The MAP price. OfferType PRODUCT only. (optional)
///
///  @param width The width of the item. OfferType PRODUCT only. (optional)
///
///  @param height The height of the item. OfferType PRODUCT only. (optional)
///
///  @param depth The depth of the item. OfferType PRODUCT only. (optional)
///
///  @param weight The weight of the item. OfferType PRODUCT only. (optional)
///
///  @param unit The unit of measurement. OfferType PRODUCT only. (optional)
///
///  @param studio The studio name. OfferType PRODUCT only. (optional)
///
///  @param parentalRating The parental control rating. OfferType PRODUCT only. (optional)
///
///  @param publishDate The date published. OfferType PRODUCT only. (optional)
///
///  @param availabilityDate The date available. OfferType PRODUCT only. (optional)
///
///  @param sizeId The size Id. OfferType PRODUCT only. (optional)
///
///  @param listingId The ID of the event listing (optional)
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
///  @param rebootTimeHour The reboot hour time ranging from 0 to 23 (optional)
///
///  @param rebootTimeMinute The reboot minute time ranging from 0 to 59 (optional)
///
///  @param idleTimeoutInSecond If the device is idle for idleTimeoutInSecond then the device should timeout (optional)
///
///  @param serialNumber The serial number on the device (optional)
///
///  @param udid The unique device id for the device (optional)
///
///  @param deviceType The type of the device, for example: \"Kiosk\", \"Beacon\". (optional)
///
///  @param devicePower RSSI reading at 1 meter from device (-10 to -140) (optional)
///
///  @param deviceInterference  (optional)
///
///  @param availability  (optional)
///
///  @param availabilitySummary  (optional)
///
///  @returns OAIRetailerOfferResponse*
///
-(NSURLSessionTask*) updateOfferWithOfferId: (NSNumber*) offerId
    includeOfferLocations: (NSNumber*) includeOfferLocations
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    parentOfferId: (NSNumber*) parentOfferId
    retailerLocationIds: (NSString*) retailerLocationIds
    offerLocations: (NSString*) offerLocations
    tags: (NSString*) tags
    title: (NSString*) title
    subTitle: (NSString*) subTitle
    details: (NSString*) details
    subDetails: (NSString*) subDetails
    finePrint: (NSString*) finePrint
    barcodeType: (NSString*) barcodeType
    barcodeEntry: (NSString*) barcodeEntry
    externalRedeemOptions: (NSString*) externalRedeemOptions
    externalUrl: (NSString*) externalUrl
    externalId: (NSString*) externalId
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
    offerType: (NSString*) offerType
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
    brand: (NSString*) brand
    productType: (NSString*) productType
    conditionType: (NSString*) conditionType
    isbn: (NSString*) isbn
    asin: (NSString*) asin
    catalogNumbers: (NSString*) catalogNumbers
    department: (NSString*) department
    features: (NSString*) features
    minimumPrice: (NSNumber*) minimumPrice
    width: (NSNumber*) width
    height: (NSNumber*) height
    depth: (NSNumber*) depth
    weight: (NSNumber*) weight
    unit: (NSString*) unit
    studio: (NSString*) studio
    parentalRating: (NSString*) parentalRating
    publishDate: (NSNumber*) publishDate
    availabilityDate: (NSNumber*) availabilityDate
    sizeId: (NSNumber*) sizeId
    listingId: (NSNumber*) listingId
    mediaType: (NSString*) mediaType
    duration: (NSNumber*) duration
    author: (NSString*) author
    releaseDate: (NSNumber*) releaseDate
    collectionIds: (NSString*) collectionIds
    rebootTimeHour: (NSNumber*) rebootTimeHour
    rebootTimeMinute: (NSNumber*) rebootTimeMinute
    idleTimeoutInSecond: (NSNumber*) idleTimeoutInSecond
    serialNumber: (NSString*) serialNumber
    udid: (NSString*) udid
    deviceType: (NSString*) deviceType
    devicePower: (NSNumber*) devicePower
    deviceInterference: (NSNumber*) deviceInterference
    availability: (NSString*) availability
    availabilitySummary: (NSString*) availabilitySummary
    completionHandler: (void (^)(OAIRetailerOfferResponse* output, NSError* error)) handler {
    // verify the required parameter 'offerId' is set
    if (offerId == nil) {
        NSParameterAssert(offerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerId"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'includeOfferLocations' is set
    if (includeOfferLocations == nil) {
        NSParameterAssert(includeOfferLocations);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"includeOfferLocations"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/offer/update"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (offerId != nil) {
        queryParams[@"offerId"] = offerId;
    }
    if (parentOfferId != nil) {
        queryParams[@"parentOfferId"] = parentOfferId;
    }
    if (includeOfferLocations != nil) {
        queryParams[@"includeOfferLocations"] = [includeOfferLocations isEqual:@(YES)] ? @"true" : @"false";
    }
    if (retailerLocationIds != nil) {
        queryParams[@"retailerLocationIds"] = retailerLocationIds;
    }
    if (offerLocations != nil) {
        queryParams[@"offerLocations"] = offerLocations;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
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
    if (externalId != nil) {
        queryParams[@"externalId"] = externalId;
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
    if (offerType != nil) {
        queryParams[@"offerType"] = offerType;
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
    if (brand != nil) {
        queryParams[@"brand"] = brand;
    }
    if (productType != nil) {
        queryParams[@"productType"] = productType;
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
    if (department != nil) {
        queryParams[@"department"] = department;
    }
    if (features != nil) {
        queryParams[@"features"] = features;
    }
    if (minimumPrice != nil) {
        queryParams[@"minimumPrice"] = minimumPrice;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (depth != nil) {
        queryParams[@"depth"] = depth;
    }
    if (weight != nil) {
        queryParams[@"weight"] = weight;
    }
    if (unit != nil) {
        queryParams[@"unit"] = unit;
    }
    if (studio != nil) {
        queryParams[@"studio"] = studio;
    }
    if (parentalRating != nil) {
        queryParams[@"parentalRating"] = parentalRating;
    }
    if (publishDate != nil) {
        queryParams[@"publishDate"] = publishDate;
    }
    if (availabilityDate != nil) {
        queryParams[@"availabilityDate"] = availabilityDate;
    }
    if (sizeId != nil) {
        queryParams[@"sizeId"] = sizeId;
    }
    if (listingId != nil) {
        queryParams[@"listingId"] = listingId;
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
    if (rebootTimeHour != nil) {
        queryParams[@"rebootTimeHour"] = rebootTimeHour;
    }
    if (rebootTimeMinute != nil) {
        queryParams[@"rebootTimeMinute"] = rebootTimeMinute;
    }
    if (idleTimeoutInSecond != nil) {
        queryParams[@"idleTimeoutInSecond"] = idleTimeoutInSecond;
    }
    if (serialNumber != nil) {
        queryParams[@"serialNumber"] = serialNumber;
    }
    if (udid != nil) {
        queryParams[@"udid"] = udid;
    }
    if (deviceType != nil) {
        queryParams[@"deviceType"] = deviceType;
    }
    if (devicePower != nil) {
        queryParams[@"devicePower"] = devicePower;
    }
    if (deviceInterference != nil) {
        queryParams[@"deviceInterference"] = deviceInterference;
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
                              responseType: @"OAIRetailerOfferResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRetailerOfferResponse*)data, error);
                                }
                            }];
}

///
/// Activate Offer
/// Sets the activated date on offers. This will make offers visible for consumers.
///  @param offerIds Comma separated list of offer ids 
///
///  @param active Determines whether to make the offer active as well 
///
///  @param deviceId The device id (deviceId or accountId required) (optional)
///
///  @param accountId The account used to perform the activation, must have rights to edit the offer. (optional)
///
///  @returns OAISirqulResponse*
///
-(NSURLSessionTask*) updateOfferStatusWithOfferIds: (NSString*) offerIds
    active: (NSNumber*) active
    deviceId: (NSString*) deviceId
    accountId: (NSNumber*) accountId
    completionHandler: (void (^)(OAISirqulResponse* output, NSError* error)) handler {
    // verify the required parameter 'offerIds' is set
    if (offerIds == nil) {
        NSParameterAssert(offerIds);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"offerIds"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'active' is set
    if (active == nil) {
        NSParameterAssert(active);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"active"] };
            NSError* error = [NSError errorWithDomain:kOAIOfferApiErrorDomain code:kOAIOfferApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/retailer/offer/status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (accountId != nil) {
        queryParams[@"accountId"] = accountId;
    }
    if (offerIds != nil) {
        queryParams[@"offerIds"] = offerIds;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
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
