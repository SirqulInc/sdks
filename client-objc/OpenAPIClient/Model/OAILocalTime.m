#import "OAILocalTime.h"

@implementation OAILocalTime

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"chronology": @"chronology", @"hourOfDay": @"hourOfDay", @"minuteOfHour": @"minuteOfHour", @"secondOfMinute": @"secondOfMinute", @"millisOfSecond": @"millisOfSecond", @"millisOfDay": @"millisOfDay", @"fields": @"fields", @"values": @"values", @"fieldTypes": @"fieldTypes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"chronology", @"hourOfDay", @"minuteOfHour", @"secondOfMinute", @"millisOfSecond", @"millisOfDay", @"fields", @"values", @"fieldTypes"];
  return [optionalProperties containsObject:propertyName];
}

@end
