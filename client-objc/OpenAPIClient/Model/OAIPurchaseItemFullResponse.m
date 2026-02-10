#import "OAIPurchaseItemFullResponse.h"

@implementation OAIPurchaseItemFullResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"_description": @"description", @"tickets": @"tickets", @"coverAsset": @"coverAsset", @"promoAsset": @"promoAsset", @"giftable": @"giftable", @"assetable": @"assetable", @"gameType": @"gameType", @"price": @"price", @"purchaseType": @"purchaseType", @"purchaseCode": @"purchaseCode", @"purchaseLimit": @"purchaseLimit", @"quantity": @"quantity", @"serviceAction": @"serviceAction", @"appName": @"appName", @"secretKey": @"secretKey", @"appKey": @"appKey", @"allocateTickets": @"allocateTickets", @"ticketType": @"ticketType", @"ticketCount": @"ticketCount", @"points": @"points" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"_description", @"tickets", @"coverAsset", @"promoAsset", @"giftable", @"assetable", @"gameType", @"price", @"purchaseType", @"purchaseCode", @"purchaseLimit", @"quantity", @"serviceAction", @"appName", @"secretKey", @"appKey", @"allocateTickets", @"ticketType", @"ticketCount", @"points"];
  return [optionalProperties containsObject:propertyName];
}

@end
