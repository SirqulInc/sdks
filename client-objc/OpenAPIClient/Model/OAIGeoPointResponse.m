#import "OAIGeoPointResponse.h"

@implementation OAIGeoPointResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"objectId": @"objectId", @"latitude": @"latitude", @"longitude": @"longitude", @"altitude": @"altitude", @"locationDescription": @"locationDescription", @"locatableId": @"locatableId", @"locatableObjectId": @"locatableObjectId", @"locatableObjectName": @"locatableObjectName", @"locatableDisplay": @"locatableDisplay", @"asset": @"asset", @"distance": @"distance" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"objectId", @"latitude", @"longitude", @"altitude", @"locationDescription", @"locatableId", @"locatableObjectId", @"locatableObjectName", @"locatableDisplay", @"asset", @"distance"];
  return [optionalProperties containsObject:propertyName];
}

@end
