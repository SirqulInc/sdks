#import "OAITicketResponse.h"

@implementation OAITicketResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"action": @"action", @"_id": @"id", @"accountId": @"accountId", @"objectId": @"objectId", @"type": @"type", @"actionType": @"actionType", @"used": @"used", @"count": @"count", @"purchaseItem": @"purchaseItem", @"customMessage": @"customMessage", @"sender": @"sender", @"receiver": @"receiver", @"customAsset": @"customAsset", @"receiptToken": @"receiptToken", @"ticketType": @"ticketType", @"application": @"application" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"action", @"_id", @"accountId", @"objectId", @"type", @"actionType", @"used", @"count", @"purchaseItem", @"customMessage", @"sender", @"receiver", @"customAsset", @"receiptToken", @"ticketType", @"application"];
  return [optionalProperties containsObject:propertyName];
}

@end
