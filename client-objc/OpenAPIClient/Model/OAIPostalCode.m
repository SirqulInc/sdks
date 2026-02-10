#import "OAIPostalCode.h"

@implementation OAIPostalCode

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"code": @"code", @"plus4": @"plus4", @"stateCode": @"stateCode", @"city": @"city", @"timeZone": @"timeZone", @"utcOffset": @"utcOffset", @"regions": @"regions", @"eliminated": @"eliminated", @"searchPoint": @"searchPoint", @"lastOfferImport": @"lastOfferImport", @"truncatedLatitude": @"truncatedLatitude", @"truncatedLongitude": @"truncatedLongitude" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"code", @"plus4", @"stateCode", @"city", @"timeZone", @"utcOffset", @"regions", @"eliminated", @"searchPoint", @"lastOfferImport", @"truncatedLatitude", @"truncatedLongitude"];
  return [optionalProperties containsObject:propertyName];
}

@end
