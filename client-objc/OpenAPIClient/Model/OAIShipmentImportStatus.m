#import "OAIShipmentImportStatus.h"

@implementation OAIShipmentImportStatus

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"name": @"name", @"batchId": @"batchId", @"message": @"message", @"shipment": @"shipment", @"started": @"started", @"completed": @"completed" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"name", @"batchId", @"message", @"shipment", @"started", @"completed"];
  return [optionalProperties containsObject:propertyName];
}

@end
