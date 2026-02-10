#import "OAIListingFullResponse.h"

@implementation OAIListingFullResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"_description": @"description", @"start": @"start", @"end": @"end", @"locationName": @"locationName", @"locationDescription": @"locationDescription", @"privateListing": @"privateListing", @"active": @"active", @"participants": @"participants", @"owner": @"owner", @"filters": @"filters" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"_description", @"start", @"end", @"locationName", @"locationDescription", @"privateListing", @"active", @"participants", @"owner", @"filters"];
  return [optionalProperties containsObject:propertyName];
}

@end
