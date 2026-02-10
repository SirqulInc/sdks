#import "OAIGameResponse.h"

@implementation OAIGameResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"action": @"action", @"highestAppVersion": @"highestAppVersion", @"gameId": @"gameId", @"gameType": @"gameType", @"packs": @"packs", @"scores": @"scores", @"owner": @"owner", @"userPermissionsList": @"userPermissionsList", @"rules": @"rules", @"results": @"results", @"ticketsEarned": @"ticketsEarned", @"title": @"title", @"_description": @"description", @"authorOverride": @"authorOverride", @"icon": @"icon", @"image": @"image", @"sequenceType": @"sequenceType", @"updatedDate": @"updatedDate", @"startDate": @"startDate", @"endDate": @"endDate", @"appKey": @"appKey" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"action", @"highestAppVersion", @"gameId", @"gameType", @"packs", @"scores", @"owner", @"userPermissionsList", @"rules", @"results", @"ticketsEarned", @"title", @"_description", @"authorOverride", @"icon", @"image", @"sequenceType", @"updatedDate", @"startDate", @"endDate", @"appKey"];
  return [optionalProperties containsObject:propertyName];
}

@end
