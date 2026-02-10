#import "OAIPackResponse.h"

@implementation OAIPackResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"action": @"action", @"highestAppVersion": @"highestAppVersion", @"gameType": @"gameType", @"packId": @"packId", @"name": @"name", @"_description": @"description", @"active": @"active", @"downloaded": @"downloaded", @"completed": @"completed", @"icon": @"icon", @"background": @"background", @"ticketsEarned": @"ticketsEarned", @"levels": @"levels", @"sequenceType": @"sequenceType", @"scores": @"scores", @"owner": @"owner", @"costToRedeem": @"costToRedeem", @"price": @"price", @"priceType": @"priceType", @"userPermissionsList": @"userPermissionsList", @"results": @"results", @"tickets": @"tickets", @"authorOverride": @"authorOverride", @"updatedDate": @"updatedDate", @"startDate": @"startDate", @"endDate": @"endDate", @"packType": @"packType", @"packOrder": @"packOrder", @"appKey": @"appKey", @"application": @"application", @"inGame": @"inGame", @"highest": @"highest", @"allocateTickets": @"allocateTickets", @"ticketType": @"ticketType", @"ticketCount": @"ticketCount", @"points": @"points" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"action", @"highestAppVersion", @"gameType", @"packId", @"name", @"_description", @"active", @"downloaded", @"completed", @"icon", @"background", @"ticketsEarned", @"levels", @"sequenceType", @"scores", @"owner", @"costToRedeem", @"price", @"priceType", @"userPermissionsList", @"results", @"tickets", @"authorOverride", @"updatedDate", @"startDate", @"endDate", @"packType", @"packOrder", @"appKey", @"application", @"inGame", @"highest", @"allocateTickets", @"ticketType", @"ticketCount", @"points"];
  return [optionalProperties containsObject:propertyName];
}

@end
