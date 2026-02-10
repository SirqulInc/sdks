#import "OAIReportBatchResponse.h"

@implementation OAIReportBatchResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"batchId": @"batchId", @"reportBatchStatus": @"reportBatchStatus", @"errorMessage": @"errorMessage", @"endpoint": @"endpoint", @"pageUrl": @"pageUrl", @"name": @"name", @"_description": @"description", @"created": @"created", @"updated": @"updated", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"batchId", @"reportBatchStatus", @"errorMessage", @"endpoint", @"pageUrl", @"name", @"_description", @"created", @"updated", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
