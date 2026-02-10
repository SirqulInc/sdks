#import "OAIRankResponse.h"

@implementation OAIRankResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"owner": @"owner", @"rank": @"rank", @"scoreValue": @"scoreValue", @"timeValue": @"timeValue", @"countValue": @"countValue", @"updated": @"updated" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"owner", @"rank", @"scoreValue", @"timeValue", @"countValue", @"updated"];
  return [optionalProperties containsObject:propertyName];
}

@end
