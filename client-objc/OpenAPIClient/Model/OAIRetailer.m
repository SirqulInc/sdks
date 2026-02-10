#import "OAIRetailer.h"

@implementation OAIRetailer

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"name": @"name", @"responsible": @"responsible", @"manager": @"manager", @"detailsHeader": @"detailsHeader", @"detailsBody": @"detailsBody", @"detailsLineLeft1": @"detailsLineLeft1", @"detailsLineLeft2": @"detailsLineLeft2", @"detailsLineRight1": @"detailsLineRight1", @"metaDescription": @"metaDescription", @"directions": @"directions", @"hours": @"hours", @"homePhone": @"homePhone", @"cellPhone": @"cellPhone", @"cellCarrier": @"cellCarrier", @"businessPhone": @"businessPhone", @"businessPhoneExt": @"businessPhoneExt", @"faxNumber": @"faxNumber", @"timeZone": @"timeZone", @"utcOffset": @"utcOffset", @"code501c3": @"code501c3", @"emailAddress": @"emailAddress", @"address": @"address", @"web": @"web", @"featured": @"featured", @"listed": @"listed", @"categories": @"categories", @"territory": @"territory", @"locations": @"locations", @"yipitId": @"yipitId", @"facebookUrl": @"facebookUrl", @"twitterUrl": @"twitterUrl", @"visibility": @"visibility", @"notes": @"notes", @"noteCount": @"noteCount", @"appKey": @"appKey", @"categoryTree": @"categoryTree", @"filterTree": @"filterTree", @"billableId": @"billableId", @"subType": @"subType", @"contentName": @"contentName", @"owner": @"owner" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"name", @"responsible", @"manager", @"detailsHeader", @"detailsBody", @"detailsLineLeft1", @"detailsLineLeft2", @"detailsLineRight1", @"metaDescription", @"directions", @"hours", @"homePhone", @"cellPhone", @"cellCarrier", @"businessPhone", @"businessPhoneExt", @"faxNumber", @"timeZone", @"utcOffset", @"code501c3", @"emailAddress", @"address", @"web", @"featured", @"listed", @"categories", @"territory", @"locations", @"yipitId", @"facebookUrl", @"twitterUrl", @"visibility", @"notes", @"noteCount", @"appKey", @"categoryTree", @"filterTree", @"billableId", @"subType", @"contentName", @"owner"];
  return [optionalProperties containsObject:propertyName];
}

@end
