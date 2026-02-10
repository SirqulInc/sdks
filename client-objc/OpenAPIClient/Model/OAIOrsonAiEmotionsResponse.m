#import "OAIOrsonAiEmotionsResponse.h"

@implementation OAIOrsonAiEmotionsResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"requestId": @"requestId", @"responseCode": @"responseCode", @"responseRaw": @"responseRaw", @"status": @"status", @"error": @"error", @"audioEmotions": @"audioEmotions", @"visualEmotions": @"visualEmotions" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"requestId", @"responseCode", @"responseRaw", @"status", @"error", @"audioEmotions", @"visualEmotions"];
  return [optionalProperties containsObject:propertyName];
}

@end
