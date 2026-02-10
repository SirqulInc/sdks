#import "OAIQuestionResponse.h"

@implementation OAIQuestionResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"question": @"question", @"image": @"image", @"videoURL": @"videoURL", @"active": @"active", @"answers": @"answers", @"scores": @"scores", @"tickets": @"tickets", @"owner": @"owner", @"icon": @"icon", @"authorOverride": @"authorOverride", @"updatedDate": @"updatedDate", @"startDate": @"startDate", @"endDate": @"endDate", @"createdDate": @"createdDate", @"tags": @"tags", @"allocateTickets": @"allocateTickets", @"ticketType": @"ticketType", @"ticketCount": @"ticketCount", @"points": @"points" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"question", @"image", @"videoURL", @"active", @"answers", @"scores", @"tickets", @"owner", @"icon", @"authorOverride", @"updatedDate", @"startDate", @"endDate", @"createdDate", @"tags", @"allocateTickets", @"ticketType", @"ticketCount", @"points"];
  return [optionalProperties containsObject:propertyName];
}

@end
