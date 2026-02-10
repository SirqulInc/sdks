#import "OAIPreviewPersonaResponse.h"

@implementation OAIPreviewPersonaResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"personaId": @"personaId", @"title": @"title", @"previewAccounts": @"previewAccounts", @"active": @"active", @"date": @"date", @"age": @"age", @"gender": @"gender", @"gameExperienceLevel": @"gameExperienceLevel", @"latitude": @"latitude", @"longitude": @"longitude" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"personaId", @"title", @"previewAccounts", @"active", @"date", @"age", @"gender", @"gameExperienceLevel", @"latitude", @"longitude"];
  return [optionalProperties containsObject:propertyName];
}

@end
