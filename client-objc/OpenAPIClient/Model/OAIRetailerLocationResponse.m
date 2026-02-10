#import "OAIRetailerLocationResponse.h"

@implementation OAIRetailerLocationResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"retailerLocationId": @"retailerLocationId", @"name": @"name", @"contact": @"contact", @"latitude": @"latitude", @"longitude": @"longitude", @"active": @"active", @"favoriteId": @"favoriteId", @"favorite": @"favorite", @"responsible": @"responsible", @"manager": @"manager", @"categories": @"categories", @"filters": @"filters", @"logo": @"logo", @"picture1": @"picture1", @"picture2": @"picture2", @"billableEntity": @"billableEntity", @"counts": @"counts", @"retailer": @"retailer", @"offers": @"offers", @"internalId": @"internalId", @"detailsHeader": @"detailsHeader", @"detailsBody": @"detailsBody", @"hours": @"hours", @"locationToken": @"locationToken", @"building": @"building", @"qrCodeUrl": @"qrCodeUrl", @"distance": @"distance", @"googlePlaceId": @"googlePlaceId", @"yelpId": @"yelpId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"retailerLocationId", @"name", @"contact", @"latitude", @"longitude", @"active", @"favoriteId", @"favorite", @"responsible", @"manager", @"categories", @"filters", @"logo", @"picture1", @"picture2", @"billableEntity", @"counts", @"retailer", @"offers", @"internalId", @"detailsHeader", @"detailsBody", @"hours", @"locationToken", @"building", @"qrCodeUrl", @"distance", @"googlePlaceId", @"yelpId"];
  return [optionalProperties containsObject:propertyName];
}

@end
