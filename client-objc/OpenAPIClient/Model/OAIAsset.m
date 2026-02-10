#import "OAIAsset.h"

@implementation OAIAsset

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"premigrationId": @"premigrationId", @"varNewOwnerId": @"newOwnerId", @"folderUri": @"folderUri", @"fileName": @"fileName", @"mediaType": @"mediaType", @"mimeType": @"mimeType", @"metaData": @"metaData", @"caption": @"caption", @"versionCode": @"versionCode", @"versionName": @"versionName", @"likeCount": @"likeCount", @"dislikeCount": @"dislikeCount", @"noteCount": @"noteCount", @"owner": @"owner", @"notes": @"notes", @"likes": @"likes", @"attachedAssetId": @"attachedAssetId", @"flags": @"flags", @"flagCount": @"flagCount", @"flagThreshold": @"flagThreshold", @"defaultAlbumType": @"defaultAlbumType", @"album": @"album", @"assignment": @"assignment", @"application": @"application", @"display": @"display", @"appKey": @"appKey", @"billableId": @"billableId", @"subType": @"subType", @"contentName": @"contentName", @"urifolder": @"urifolder", @"defaultThreshold": @"defaultThreshold" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"premigrationId", @"varNewOwnerId", @"folderUri", @"fileName", @"mediaType", @"mimeType", @"metaData", @"caption", @"versionCode", @"versionName", @"likeCount", @"dislikeCount", @"noteCount", @"owner", @"notes", @"likes", @"attachedAssetId", @"flags", @"flagCount", @"flagThreshold", @"defaultAlbumType", @"album", @"assignment", @"application", @"display", @"appKey", @"billableId", @"subType", @"contentName", @"urifolder", @"defaultThreshold"];
  return [optionalProperties containsObject:propertyName];
}

@end
