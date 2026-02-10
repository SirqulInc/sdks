#import "OAIOrderItemRequest.h"

@implementation OAIOrderItemRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"orderItemType": @"orderItemType", @"orderItemId": @"orderItemId", @"offerName": @"offerName", @"orderCustomType": @"orderCustomType", @"orderCustomId": @"orderCustomId", @"retailerLocationId": @"retailerLocationId", @"quantity": @"quantity", @"amount": @"amount", @"tax": @"tax", @"reserveStartDate": @"reserveStartDate", @"reserveEndDate": @"reserveEndDate", @"message": @"message" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"orderItemType", @"orderItemId", @"offerName", @"orderCustomType", @"orderCustomId", @"retailerLocationId", @"quantity", @"amount", @"tax", @"reserveStartDate", @"reserveEndDate", @"message"];
  return [optionalProperties containsObject:propertyName];
}

@end
