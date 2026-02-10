#import "OAINote.h"

@implementation OAINote

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"owner": @"owner", @"notableType": @"notableType", @"notableId": @"notableId", @"noteTag": @"noteTag", @"notes": @"notes", @"likes": @"likes", @"assets": @"assets", @"noteDescription": @"noteDescription", @"likeCount": @"likeCount", @"dislikeCount": @"dislikeCount", @"noteCount": @"noteCount", @"flags": @"flags", @"flagCount": @"flagCount", @"flagThreshold": @"flagThreshold", @"contentName": @"contentName", @"defaultThreshold": @"defaultThreshold" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"owner", @"notableType", @"notableId", @"noteTag", @"notes", @"likes", @"assets", @"noteDescription", @"likeCount", @"dislikeCount", @"noteCount", @"flags", @"flagCount", @"flagThreshold", @"contentName", @"defaultThreshold"];
  return [optionalProperties containsObject:propertyName];
}

@end
