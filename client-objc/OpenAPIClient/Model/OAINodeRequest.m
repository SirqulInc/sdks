#import "OAINodeRequest.h"

@implementation OAINodeRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"x": @"x", @"y": @"y", @"z": @"z", @"latitude": @"latitude", @"longitude": @"longitude", @"altitude": @"altitude", @"date": @"date", @"isWaypoint": @"isWaypoint", @"accountId": @"accountId", @"node": @"node" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"x", @"y", @"z", @"latitude", @"longitude", @"altitude", @"date", @"isWaypoint", @"accountId", @"node"];
  return [optionalProperties containsObject:propertyName];
}

@end
