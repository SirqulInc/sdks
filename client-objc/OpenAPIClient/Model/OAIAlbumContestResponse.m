#import "OAIAlbumContestResponse.h"

@implementation OAIAlbumContestResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"albumContestId": @"albumContestId", @"contestType": @"contestType", @"owner": @"owner", @"title": @"title", @"_description": @"description", @"visibility": @"visibility", @"startDate": @"startDate", @"endDate": @"endDate", @"likeCount": @"likeCount", @"dislikeCount": @"dislikeCount", @"commentsCount": @"commentsCount", @"userCount": @"userCount", @"comments": @"comments", @"likes": @"likes", @"connectionGroups": @"connectionGroups", @"connections": @"connections", @"hasLiked": @"hasLiked", @"userPermissions": @"userPermissions", @"publicPermissions": @"publicPermissions", @"album1": @"album1", @"album2": @"album2", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"distance": @"distance", @"dateCreated": @"dateCreated", @"dateUpdated": @"dateUpdated", @"approvalStatus": @"approvalStatus", @"voteCount": @"voteCount", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"albumContestId", @"contestType", @"owner", @"title", @"_description", @"visibility", @"startDate", @"endDate", @"likeCount", @"dislikeCount", @"commentsCount", @"userCount", @"comments", @"likes", @"connectionGroups", @"connections", @"hasLiked", @"userPermissions", @"publicPermissions", @"album1", @"album2", @"latitude", @"longitude", @"locationDescription", @"distance", @"dateCreated", @"dateUpdated", @"approvalStatus", @"voteCount", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
