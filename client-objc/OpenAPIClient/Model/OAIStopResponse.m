#import "OAIStopResponse.h"

@implementation OAIStopResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"geoId": @"geoId", @"latitude": @"latitude", @"longitude": @"longitude", @"startWindow": @"startWindow", @"endWindow": @"endWindow", @"type": @"type", @"eta": @"eta", @"etd": @"etd", @"score": @"score", @"errorCode": @"errorCode", @"error": @"error", @"itemId": @"itemId", @"itemSize": @"itemSize", @"load": @"load", @"floorPlanPath": @"floorPlanPath", @"valid": @"valid" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"geoId", @"latitude", @"longitude", @"startWindow", @"endWindow", @"type", @"eta", @"etd", @"score", @"errorCode", @"error", @"itemId", @"itemSize", @"load", @"floorPlanPath", @"valid"];
  return [optionalProperties containsObject:propertyName];
}

@end
