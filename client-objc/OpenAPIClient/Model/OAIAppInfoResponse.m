#import "OAIAppInfoResponse.h"

@implementation OAIAppInfoResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"points": @"points", @"ticketsAvailable": @"ticketsAvailable", @"ticketsEarned": @"ticketsEarned", @"ticketsPurchased": @"ticketsPurchased", @"ticketsUsed": @"ticketsUsed", @"rank": @"rank", @"maxPoints": @"maxPoints", @"maxTickets": @"maxTickets", @"pointToTicketModifier": @"pointToTicketModifier", @"scoringType": @"scoringType", @"purchaseItemListResponse": @"purchaseItemListResponse", @"termsAcceptedDate": @"termsAcceptedDate", @"requiresTermsAcceptance": @"requiresTermsAcceptance", @"completedAchievements": @"completedAchievements", @"wipAchievements": @"wipAchievements", @"appBlob": @"appBlob", @"enablePush": @"enablePush", @"enableSMS": @"enableSMS", @"enableEmail": @"enableEmail", @"ticketCounts": @"ticketCounts" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"points", @"ticketsAvailable", @"ticketsEarned", @"ticketsPurchased", @"ticketsUsed", @"rank", @"maxPoints", @"maxTickets", @"pointToTicketModifier", @"scoringType", @"purchaseItemListResponse", @"termsAcceptedDate", @"requiresTermsAcceptance", @"completedAchievements", @"wipAchievements", @"appBlob", @"enablePush", @"enableSMS", @"enableEmail", @"ticketCounts"];
  return [optionalProperties containsObject:propertyName];
}

@end
