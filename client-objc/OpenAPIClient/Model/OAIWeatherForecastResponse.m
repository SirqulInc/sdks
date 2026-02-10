#import "OAIWeatherForecastResponse.h"

@implementation OAIWeatherForecastResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"forecastDate": @"forecastDate", @"precipMM": @"precipMM", @"tempMaxC": @"tempMaxC", @"tempMaxF": @"tempMaxF", @"tempMinC": @"tempMinC", @"tempMinF": @"tempMinF", @"weatherCode": @"weatherCode", @"weatherDesc": @"weatherDesc", @"weatherIconUrl": @"weatherIconUrl", @"winddir16Point": @"winddir16Point", @"winddirDegree": @"winddirDegree", @"winddirection": @"winddirection", @"windspeedKmph": @"windspeedKmph", @"windspeedMiles": @"windspeedMiles" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"forecastDate", @"precipMM", @"tempMaxC", @"tempMaxF", @"tempMinC", @"tempMinF", @"weatherCode", @"weatherDesc", @"weatherIconUrl", @"winddir16Point", @"winddirDegree", @"winddirection", @"windspeedKmph", @"windspeedMiles"];
  return [optionalProperties containsObject:propertyName];
}

@end
