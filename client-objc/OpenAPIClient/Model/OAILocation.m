#import "OAILocation.h"

@implementation OAILocation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"name": @"name", @"territory": @"territory", @"hub": @"hub", @"picture": @"picture", @"notes": @"notes", @"noteCount": @"noteCount", @"homePhone": @"homePhone", @"cellPhone": @"cellPhone", @"cellCarrier": @"cellCarrier", @"businessPhone": @"businessPhone", @"businessPhoneExt": @"businessPhoneExt", @"faxNumber": @"faxNumber", @"timeZone": @"timeZone", @"utcOffset": @"utcOffset", @"code501c3": @"code501c3", @"emailAddress": @"emailAddress", @"address": @"address", @"web": @"web", @"program": @"program", @"visibility": @"visibility", @"groupingId": @"groupingId", @"destination": @"destination", @"dockingTime": @"dockingTime", @"usageCount": @"usageCount", @"timeFramesAllowed": @"timeFramesAllowed", @"likes": @"likes", @"likeCount": @"likeCount", @"dislikeCount": @"dislikeCount", @"ownerDisplay": @"ownerDisplay", @"contentName": @"contentName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"name", @"territory", @"hub", @"picture", @"notes", @"noteCount", @"homePhone", @"cellPhone", @"cellCarrier", @"businessPhone", @"businessPhoneExt", @"faxNumber", @"timeZone", @"utcOffset", @"code501c3", @"emailAddress", @"address", @"web", @"program", @"visibility", @"groupingId", @"destination", @"dockingTime", @"usageCount", @"timeFramesAllowed", @"likes", @"likeCount", @"dislikeCount", @"ownerDisplay", @"contentName"];
  return [optionalProperties containsObject:propertyName];
}

@end
