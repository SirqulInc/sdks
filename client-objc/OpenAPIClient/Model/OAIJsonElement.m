#import "OAIJsonElement.h"

@implementation OAIJsonElement

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"asInt": @"asInt", @"asJsonObject": @"asJsonObject", @"jsonNull": @"jsonNull", @"asString": @"asString", @"asBoolean": @"asBoolean", @"jsonArray": @"jsonArray", @"jsonObject": @"jsonObject", @"jsonPrimitive": @"jsonPrimitive", @"asJsonArray": @"asJsonArray", @"asJsonPrimitive": @"asJsonPrimitive", @"asJsonNull": @"asJsonNull", @"asNumber": @"asNumber", @"asDouble": @"asDouble", @"asFloat": @"asFloat", @"asLong": @"asLong", @"asByte": @"asByte", @"asCharacter": @"asCharacter", @"asBigDecimal": @"asBigDecimal", @"asBigInteger": @"asBigInteger", @"asShort": @"asShort" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"asInt", @"asJsonObject", @"jsonNull", @"asString", @"asBoolean", @"jsonArray", @"jsonObject", @"jsonPrimitive", @"asJsonArray", @"asJsonPrimitive", @"asJsonNull", @"asNumber", @"asDouble", @"asFloat", @"asLong", @"asByte", @"asCharacter", @"asBigDecimal", @"asBigInteger", @"asShort"];
  return [optionalProperties containsObject:propertyName];
}

@end
