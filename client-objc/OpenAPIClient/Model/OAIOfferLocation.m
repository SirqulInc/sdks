#import "OAIOfferLocation.h"

@implementation OAIOfferLocation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"offer": @"offer", @"location": @"location", @"distance": @"distance", @"altitude": @"altitude", @"customValue": @"customValue", @"locationDetail": @"locationDetail", @"audiences": @"audiences", @"qrInviteCode": @"qrInviteCode", @"notes": @"notes", @"noteCount": @"noteCount", @"searchIndexUpdated": @"searchIndexUpdated", @"inSearchIndex": @"inSearchIndex", @"favoriteCount": @"favoriteCount", @"addedCount": @"addedCount", @"display": @"display", @"appKey": @"appKey", @"devicePower": @"devicePower", @"powerLoss": @"powerLoss", @"udid": @"udid", @"billableId": @"billableId", @"subType": @"subType", @"contentName": @"contentName", @"contentAsset": @"contentAsset", @"owner": @"owner", @"secondaryType": @"secondaryType", @"categoryIds": @"categoryIds", @"filterIds": @"filterIds" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"offer", @"location", @"distance", @"altitude", @"customValue", @"locationDetail", @"audiences", @"qrInviteCode", @"notes", @"noteCount", @"searchIndexUpdated", @"inSearchIndex", @"favoriteCount", @"addedCount", @"display", @"appKey", @"devicePower", @"powerLoss", @"udid", @"billableId", @"subType", @"contentName", @"contentAsset", @"owner", @"secondaryType", @"categoryIds", @"filterIds"];
  return [optionalProperties containsObject:propertyName];
}

@end
