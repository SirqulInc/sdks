#import "OAIRegion.h"

@implementation OAIRegion

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"owner": @"owner", @"shortName": @"shortName", @"fullName": @"fullName", @"bounds": @"bounds", @"start": @"start", @"end": @"end", @"polygon": @"polygon", @"metaData": @"metaData", @"children": @"children", @"parents": @"parents", @"postalCodes": @"postalCodes", @"regionClass": @"regionClass", @"root": @"root", @"webActive": @"webActive", @"adminActive": @"adminActive", @"visibility": @"visibility", @"categories": @"categories", @"filters": @"filters", @"truncatedLatitude": @"truncatedLatitude", @"truncatedLongitude": @"truncatedLongitude", @"versionCode": @"versionCode", @"display": @"display", @"contentName": @"contentName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"owner", @"shortName", @"fullName", @"bounds", @"start", @"end", @"polygon", @"metaData", @"children", @"parents", @"postalCodes", @"regionClass", @"root", @"webActive", @"adminActive", @"visibility", @"categories", @"filters", @"truncatedLatitude", @"truncatedLongitude", @"versionCode", @"display", @"contentName"];
  return [optionalProperties containsObject:propertyName];
}

@end
