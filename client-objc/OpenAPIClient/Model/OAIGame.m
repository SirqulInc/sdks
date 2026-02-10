#import "OAIGame.h"

@implementation OAIGame

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"owner": @"owner", @"application": @"application", @"title": @"title", @"_description": @"description", @"startDate": @"startDate", @"endDate": @"endDate", @"packs": @"packs", @"sequenceType": @"sequenceType", @"authorOverride": @"authorOverride", @"icon": @"icon", @"image": @"image", @"points": @"points", @"ticketType": @"ticketType", @"ticketCount": @"ticketCount", @"allocateTickets": @"allocateTickets", @"allGameLevels": @"allGameLevels", @"contentName": @"contentName", @"contentType": @"contentType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"owner", @"application", @"title", @"_description", @"startDate", @"endDate", @"packs", @"sequenceType", @"authorOverride", @"icon", @"image", @"points", @"ticketType", @"ticketCount", @"allocateTickets", @"allGameLevels", @"contentName", @"contentType"];
  return [optionalProperties containsObject:propertyName];
}

@end
