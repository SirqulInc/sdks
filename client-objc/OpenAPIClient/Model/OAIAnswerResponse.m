#import "OAIAnswerResponse.h"

@implementation OAIAnswerResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"answerId": @"answerId", @"answer": @"answer", @"correct": @"correct", @"image": @"image", @"videoURL": @"videoURL" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"answerId", @"answer", @"correct", @"image", @"videoURL"];
  return [optionalProperties containsObject:propertyName];
}

@end
