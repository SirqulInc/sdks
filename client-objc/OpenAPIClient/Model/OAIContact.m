#import "OAIContact.h"

@implementation OAIContact

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"firstName": @"firstName", @"middleName": @"middleName", @"lastName": @"lastName", @"prefix": @"prefix", @"suffix": @"suffix", @"title": @"title", @"homePhone": @"homePhone", @"cellPhone": @"cellPhone", @"cellCarrier": @"cellCarrier", @"businessPhone": @"businessPhone", @"businessPhoneExt": @"businessPhoneExt", @"faxNumber": @"faxNumber", @"timeZone": @"timeZone", @"utcOffset": @"utcOffset", @"code501c3": @"code501c3", @"emailAddress": @"emailAddress", @"address": @"address", @"web": @"web", @"display": @"display" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"firstName", @"middleName", @"lastName", @"prefix", @"suffix", @"title", @"homePhone", @"cellPhone", @"cellCarrier", @"businessPhone", @"businessPhoneExt", @"faxNumber", @"timeZone", @"utcOffset", @"code501c3", @"emailAddress", @"address", @"web", @"display"];
  return [optionalProperties containsObject:propertyName];
}

@end
