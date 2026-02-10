#import "OAIAlbum.h"

@implementation OAIAlbum

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"owner": @"owner", @"title": @"title", @"application": @"application", @"approvalStatus": @"approvalStatus", @"publicPermissions": @"publicPermissions", @"userPermissions": @"userPermissions", @"visibility": @"visibility", @"notes": @"notes", @"noteCount": @"noteCount", @"likes": @"likes", @"likeCount": @"likeCount", @"dislikeCount": @"dislikeCount", @"flags": @"flags", @"flagCount": @"flagCount", @"flagThreshold": @"flagThreshold", @"_description": @"description", @"albumType": @"albumType", @"assets": @"assets", @"coverAsset": @"coverAsset", @"tags": @"tags", @"startDate": @"startDate", @"endDate": @"endDate", @"contactInfo": @"contactInfo", @"assetCount": @"assetCount", @"favoriteCount": @"favoriteCount", @"viewedCount": @"viewedCount", @"clickedCount": @"clickedCount", @"sharedCount": @"sharedCount", @"anonymous": @"anonymous", @"ownerUsername": @"ownerUsername", @"display": @"display", @"appKey": @"appKey", @"billableId": @"billableId", @"subType": @"subType", @"contentAsset": @"contentAsset", @"secondaryType": @"secondaryType", @"contentName": @"contentName", @"applicationTitle": @"applicationTitle", @"shortTitle": @"shortTitle", @"defaultThreshold": @"defaultThreshold" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"owner", @"title", @"application", @"approvalStatus", @"publicPermissions", @"userPermissions", @"visibility", @"notes", @"noteCount", @"likes", @"likeCount", @"dislikeCount", @"flags", @"flagCount", @"flagThreshold", @"_description", @"albumType", @"assets", @"coverAsset", @"tags", @"startDate", @"endDate", @"contactInfo", @"assetCount", @"favoriteCount", @"viewedCount", @"clickedCount", @"sharedCount", @"anonymous", @"ownerUsername", @"display", @"appKey", @"billableId", @"subType", @"contentAsset", @"secondaryType", @"contentName", @"applicationTitle", @"shortTitle", @"defaultThreshold"];
  return [optionalProperties containsObject:propertyName];
}

@end
