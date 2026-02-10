#import "OAIConnectionResponse.h"

@implementation OAIConnectionResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"connectionId": @"connectionId", @"connectionAccountId": @"connectionAccountId", @"connectionPendingId": @"connectionPendingId", @"display": @"display", @"locationDisplay": @"locationDisplay", @"connectionViewedDate": @"connectionViewedDate", @"profileImage": @"profileImage", @"title": @"title", @"connectionAccountType": @"connectionAccountType", @"trusted": @"trusted", @"following": @"following", @"friendRequested": @"friendRequested", @"friendRequestPending": @"friendRequestPending", @"blocked": @"blocked", @"friend": @"friend" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"connectionId", @"connectionAccountId", @"connectionPendingId", @"display", @"locationDisplay", @"connectionViewedDate", @"profileImage", @"title", @"connectionAccountType", @"trusted", @"following", @"friendRequested", @"friendRequestPending", @"blocked", @"friend"];
  return [optionalProperties containsObject:propertyName];
}

@end
