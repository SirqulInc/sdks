#import "OAIReportDefinition.h"

@implementation OAIReportDefinition

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"query": @"query", @"queryName": @"queryName", @"displayName": @"displayName", @"columnNames": @"columnNames", @"nativeSql": @"nativeSql", @"display": @"display", @"dataSource": @"dataSource", @"maxLimit": @"maxLimit", @"maxDateRange": @"maxDateRange", @"displayParams": @"displayParams", @"metaData": @"metaData", @"columnNamesRaw": @"columnNamesRaw" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"query", @"queryName", @"displayName", @"columnNames", @"nativeSql", @"display", @"dataSource", @"maxLimit", @"maxDateRange", @"displayParams", @"metaData", @"columnNamesRaw"];
  return [optionalProperties containsObject:propertyName];
}

@end
