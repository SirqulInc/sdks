#import "OAIGameObjectResponse.h"

@implementation OAIGameObjectResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"action": @"action", @"gameObjectId": @"gameObjectId", @"gameType": @"gameType", @"ticketsEarned": @"ticketsEarned", @"scores": @"scores", @"tickets": @"tickets", @"items": @"items", @"allocateTickets": @"allocateTickets" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"action", @"gameObjectId", @"gameType", @"ticketsEarned", @"scores", @"tickets", @"items", @"allocateTickets"];
  return [optionalProperties containsObject:propertyName];
}

@end
