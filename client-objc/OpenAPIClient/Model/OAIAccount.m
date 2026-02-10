#import "OAIAccount.h"

@implementation OAIAccount

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"created": @"created", @"updated": @"updated", @"active": @"active", @"valid": @"valid", @"latitude": @"latitude", @"longitude": @"longitude", @"locationDescription": @"locationDescription", @"currentRegion": @"currentRegion", @"locationLastUpdated": @"locationLastUpdated", @"currentPostalCode": @"currentPostalCode", @"currentPostalCodeLatitude": @"currentPostalCodeLatitude", @"currentPostalCodeLongitude": @"currentPostalCodeLongitude", @"locationUpdated": @"locationUpdated", @"premigrationId": @"premigrationId", @"username": @"username", @"locale": @"locale", @"inviteCode": @"inviteCode", @"retailerInviteCode": @"retailerInviteCode", @"aboutUs": @"aboutUs", @"businessName": @"businessName", @"likeCount": @"likeCount", @"dislikeCount": @"dislikeCount", @"thirdPartyCredentials": @"thirdPartyCredentials", @"partnerActive": @"partnerActive", @"resetToken": @"resetToken", @"profileImage": @"profileImage", @"accountType": @"accountType", @"media": @"media", @"picture": @"picture", @"firstName": @"firstName", @"middleName": @"middleName", @"lastName": @"lastName", @"prefix": @"prefix", @"suffix": @"suffix", @"title": @"title", @"homePhone": @"homePhone", @"cellPhone": @"cellPhone", @"cellCarrier": @"cellCarrier", @"businessPhone": @"businessPhone", @"businessPhoneExt": @"businessPhoneExt", @"faxNumber": @"faxNumber", @"timeZone": @"timeZone", @"utcOffset": @"utcOffset", @"code501c3": @"code501c3", @"emailAddress": @"emailAddress", @"address": @"address", @"web": @"web", @"display": @"display", @"website": @"website", @"consumersNotes": @"consumersNotes", @"consumersAboutUs": @"consumersAboutUs", @"accountProfile": @"accountProfile", @"retailerLocations": @"retailerLocations", @"executive": @"executive", @"contentName": @"contentName", @"defaultThreshold": @"defaultThreshold", @"audienceInfoGender": @"audienceInfo_gender", @"flagThresholdId": @"flagThreshold_id", @"contentType": @"contentType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"created", @"updated", @"active", @"valid", @"latitude", @"longitude", @"locationDescription", @"currentRegion", @"locationLastUpdated", @"currentPostalCode", @"currentPostalCodeLatitude", @"currentPostalCodeLongitude", @"locationUpdated", @"premigrationId", @"username", @"locale", @"inviteCode", @"retailerInviteCode", @"aboutUs", @"businessName", @"likeCount", @"dislikeCount", @"thirdPartyCredentials", @"partnerActive", @"resetToken", @"profileImage", @"accountType", @"media", @"picture", @"firstName", @"middleName", @"lastName", @"prefix", @"suffix", @"title", @"homePhone", @"cellPhone", @"cellCarrier", @"businessPhone", @"businessPhoneExt", @"faxNumber", @"timeZone", @"utcOffset", @"code501c3", @"emailAddress", @"address", @"web", @"display", @"website", @"consumersNotes", @"consumersAboutUs", @"accountProfile", @"retailerLocations", @"executive", @"contentName", @"defaultThreshold", @"audienceInfoGender", @"flagThresholdId", @"contentType"];
  return [optionalProperties containsObject:propertyName];
}

@end
