#import "OAIPurchaseOrderItemResponse.h"

@implementation OAIPurchaseOrderItemResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"purchaseOrderItemId": @"purchaseOrderItemId", @"created": @"created", @"updated": @"updated", @"customer": @"customer", @"orderItemType": @"orderItemType", @"orderItemId": @"orderItemId", @"orderCustomType": @"orderCustomType", @"orderCustomId": @"orderCustomId", @"retailerLocationId": @"retailerLocationId", @"amount": @"amount", @"tax": @"tax", @"comment": @"comment", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"purchaseOrderItemId", @"created", @"updated", @"customer", @"orderItemType", @"orderItemId", @"orderCustomType", @"orderCustomId", @"retailerLocationId", @"amount", @"tax", @"comment", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
