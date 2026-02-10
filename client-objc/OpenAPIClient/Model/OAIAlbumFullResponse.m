#import "OAIAlbumFullResponse.h"

@implementation OAIAlbumFullResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"albumId": @"albumId", @"albumType": @"albumType", @"ownerId": @"ownerId", @"owner": @"owner", @"title": @"title", @"_description": @"description", @"coverAsset": @"coverAsset", @"tags": @"tags", @"visibility": @"visibility", @"startDate": @"startDate", @"endDate": @"endDate", @"assetCount": @"assetCount", @"likeCount": @"likeCount", @"dislikeCount": @"dislikeCount", @"commentsCount": @"commentsCount", @"userCount": @"userCount", @"notifications": @"notifications", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"distance": @"distance", @"dateCreated": @"dateCreated", @"dateUpdated": @"dateUpdated", @"cellPhone": @"cellPhone", @"fullAddress": @"fullAddress", @"approvalStatus": @"approvalStatus", @"favoriteCount": @"favoriteCount", @"liked": @"liked", @"favorite": @"favorite", @"favoriteId": @"favoriteId", @"anonymous": @"anonymous", @"flagCount": @"flagCount", @"viewedCount": @"viewedCount", @"clickedCount": @"clickedCount", @"sharedCount": @"sharedCount", @"assets": @"assets", @"comments": @"comments", @"likes": @"likes", @"connectionGroups": @"connectionGroups", @"connections": @"connections", @"hasLiked": @"hasLiked", @"hasDisliked": @"hasDisliked", @"userPermissions": @"userPermissions", @"publicPermissions": @"publicPermissions", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"albumId", @"albumType", @"ownerId", @"owner", @"title", @"_description", @"coverAsset", @"tags", @"visibility", @"startDate", @"endDate", @"assetCount", @"likeCount", @"dislikeCount", @"commentsCount", @"userCount", @"notifications", @"latitude", @"longitude", @"locationDescription", @"distance", @"dateCreated", @"dateUpdated", @"cellPhone", @"fullAddress", @"approvalStatus", @"favoriteCount", @"liked", @"favorite", @"favoriteId", @"anonymous", @"flagCount", @"viewedCount", @"clickedCount", @"sharedCount", @"assets", @"comments", @"likes", @"connectionGroups", @"connections", @"hasLiked", @"hasDisliked", @"userPermissions", @"publicPermissions", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
