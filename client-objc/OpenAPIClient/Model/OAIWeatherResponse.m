#import "OAIWeatherResponse.h"

@implementation OAIWeatherResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"cloudcover": @"cloudcover", @"humidity": @"humidity", @"observationTime": @"observationTime", @"precipMM": @"precipMM", @"pressure": @"pressure", @"tempC": @"temp_C", @"tempF": @"temp_F", @"visibility": @"visibility", @"weatherCode": @"weatherCode", @"weatherDesc": @"weatherDesc", @"weatherIconUrl": @"weatherIconUrl", @"winddir16Point": @"winddir16Point", @"winddirDegree": @"winddirDegree", @"windspeedKmph": @"windspeedKmph", @"windspeedMiles": @"windspeedMiles", @"forecasts": @"forecasts" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"cloudcover", @"humidity", @"observationTime", @"precipMM", @"pressure", @"tempC", @"tempF", @"visibility", @"weatherCode", @"weatherDesc", @"weatherIconUrl", @"winddir16Point", @"winddirDegree", @"windspeedKmph", @"windspeedMiles", @"forecasts"];
  return [optionalProperties containsObject:propertyName];
}

@end
