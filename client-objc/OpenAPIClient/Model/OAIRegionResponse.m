#import "OAIRegionResponse.h"

@implementation OAIRegionResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"shortName": @"shortName", @"fullName": @"fullName", @"parent": @"parent", @"children": @"children", @"postalCodes": @"postalCodes", @"latitude": @"latitude", @"longitude": @"longitude", @"active": @"active", @"root": @"root", @"regionClass": @"regionClass", @"start": @"start", @"end": @"end", @"polygon": @"polygon", @"metaData": @"metaData", @"distance": @"distance", @"versionCode": @"versionCode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"shortName", @"fullName", @"parent", @"children", @"postalCodes", @"latitude", @"longitude", @"active", @"root", @"regionClass", @"start", @"end", @"polygon", @"metaData", @"distance", @"versionCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
