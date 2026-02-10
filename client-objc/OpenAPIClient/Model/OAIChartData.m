#import "OAIChartData.h"

@implementation OAIChartData

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"identifier": @"identifier", @"idAttribute": @"idAttribute", @"label": @"label", @"maxValue": @"maxValue", @"totalCount": @"totalCount", @"items": @"items", @"aggregatedItems": @"aggregatedItems", @"caption": @"caption", @"showAnchor": @"showAnchor", @"anchorAlpha": @"anchorAlpha", @"getxAxisName": @"getxAxisName", @"getyAxisMinValue": @"getyAxisMinValue", @"getyAxisName": @"getyAxisName", @"decimalPrecision": @"decimalPrecision", @"formatNumberScale": @"formatNumberScale", @"numberPrefix": @"numberPrefix", @"showNames": @"showNames", @"showValues": @"showValues", @"showAlternateHGridColor": @"showAlternateHGridColor", @"alternateHGridColor": @"alternateHGridColor", @"divLineColor": @"divLineColor", @"divLineAlpha": @"divLineAlpha", @"alternateHGridAlpha": @"alternateHGridAlpha", @"rotateNames": @"rotateNames", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"identifier", @"idAttribute", @"label", @"maxValue", @"totalCount", @"items", @"aggregatedItems", @"caption", @"showAnchor", @"anchorAlpha", @"getxAxisName", @"getyAxisMinValue", @"getyAxisName", @"decimalPrecision", @"formatNumberScale", @"numberPrefix", @"showNames", @"showValues", @"showAlternateHGridColor", @"alternateHGridColor", @"divLineColor", @"divLineAlpha", @"alternateHGridAlpha", @"rotateNames", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
