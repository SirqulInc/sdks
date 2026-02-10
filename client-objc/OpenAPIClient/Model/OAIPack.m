#import "OAIPack.h"

@implementation OAIPack

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"varNewOwnerId": @"newOwnerId", @"owner": @"owner", @"application": @"application", @"sequenceType": @"sequenceType", @"title": @"title", @"_description": @"description", @"startDate": @"startDate", @"endDate": @"endDate", @"packType": @"packType", @"image": @"image", @"background": @"background", @"imageURL": @"imageURL", @"gameLevels": @"gameLevels", @"hasMoreItems": @"hasMoreItems", @"totalCount": @"totalCount", @"downloaded": @"downloaded", @"authorOverride": @"authorOverride", @"packOrder": @"packOrder", @"inGame": @"inGame", @"highest": @"highest", @"notificationCount": @"notificationCount", @"points": @"points", @"ticketType": @"ticketType", @"ticketCount": @"ticketCount", @"priceType": @"priceType", @"price": @"price", @"allocateTickets": @"allocateTickets", @"applicationTitle": @"applicationTitle", @"levelNumberMap": @"levelNumberMap" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"varNewOwnerId", @"owner", @"application", @"sequenceType", @"title", @"_description", @"startDate", @"endDate", @"packType", @"image", @"background", @"imageURL", @"gameLevels", @"hasMoreItems", @"totalCount", @"downloaded", @"authorOverride", @"packOrder", @"inGame", @"highest", @"notificationCount", @"points", @"ticketType", @"ticketCount", @"priceType", @"price", @"allocateTickets", @"applicationTitle", @"levelNumberMap"];
  return [optionalProperties containsObject:propertyName];
}

@end
