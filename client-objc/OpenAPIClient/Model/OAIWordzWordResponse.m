#import "OAIWordzWordResponse.h"

@implementation OAIWordzWordResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"word": @"word", @"definition": @"definition", @"scores": @"scores", @"icon": @"icon", @"image": @"image", @"authorOverride": @"authorOverride", @"updatedDate": @"updatedDate", @"startDate": @"startDate", @"endDate": @"endDate", @"createdDate": @"createdDate", @"active": @"active", @"allocateTickets": @"allocateTickets", @"ticketType": @"ticketType", @"ticketCount": @"ticketCount", @"points": @"points" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"word", @"definition", @"scores", @"icon", @"image", @"authorOverride", @"updatedDate", @"startDate", @"endDate", @"createdDate", @"active", @"allocateTickets", @"ticketType", @"ticketCount", @"points"];
  return [optionalProperties containsObject:propertyName];
}

@end
