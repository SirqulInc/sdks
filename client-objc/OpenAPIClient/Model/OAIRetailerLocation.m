#import "OAIRetailerLocation.h"

@implementation OAIRetailerLocation

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"categories": @"categories", @"filters": @"filters", @"offerLocations": @"offerLocations", @"logo": @"logo", @"picture1": @"picture1", @"picture2": @"picture2", @"qrCode": @"qrCode", @"name": @"name", @"locationId": @"locationId", @"code": @"code", @"retailer": @"retailer", @"assignments": @"assignments", @"currentAssignment": @"currentAssignment", @"profile": @"profile", @"regions": @"regions", @"offerPrintKeyPrefix": @"offerPrintKeyPrefix", @"administrators": @"administrators", @"sqootId": @"sqootId", @"yipitId": @"yipitId", @"locationToken": @"locationToken", @"building": @"building", @"notes": @"notes", @"noteCount": @"noteCount", @"searchIndexUpdated": @"searchIndexUpdated", @"inSearchIndex": @"inSearchIndex", @"favoriteCount": @"favoriteCount", @"hasRatings": @"hasRatings", @"googlePlaceId": @"googlePlaceId", @"yelpId": @"yelpId", @"display": @"display", @"appKey": @"appKey", @"categoryTree": @"categoryTree", @"filterTree": @"filterTree", @"addressDisplay": @"addressDisplay", @"mapQuery": @"mapQuery", @"sortName": @"sortName", @"fullDisplay": @"fullDisplay", @"hasOffers": @"hasOffers", @"billableId": @"billableId", @"subType": @"subType", @"contentName": @"contentName", @"owner": @"owner", @"secondaryType": @"secondaryType", @"locationAddress": @"locationAddress", @"validOfferLocationIds": @"validOfferLocationIds" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"categories", @"filters", @"offerLocations", @"logo", @"picture1", @"picture2", @"qrCode", @"name", @"locationId", @"code", @"retailer", @"assignments", @"currentAssignment", @"profile", @"regions", @"offerPrintKeyPrefix", @"administrators", @"sqootId", @"yipitId", @"locationToken", @"building", @"notes", @"noteCount", @"searchIndexUpdated", @"inSearchIndex", @"favoriteCount", @"hasRatings", @"googlePlaceId", @"yelpId", @"display", @"appKey", @"categoryTree", @"filterTree", @"addressDisplay", @"mapQuery", @"sortName", @"fullDisplay", @"hasOffers", @"billableId", @"subType", @"contentName", @"owner", @"secondaryType", @"locationAddress", @"validOfferLocationIds"];
  return [optionalProperties containsObject:propertyName];
}

@end
