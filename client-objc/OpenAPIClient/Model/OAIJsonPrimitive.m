#import "OAIJsonPrimitive.h"

@implementation OAIJsonPrimitive

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"asInt": @"asInt", @"number": @"number", @"boolean": @"boolean", @"asString": @"asString", @"asBoolean": @"asBoolean", @"asNumber": @"asNumber", @"asDouble": @"asDouble", @"asFloat": @"asFloat", @"asLong": @"asLong", @"asByte": @"asByte", @"asCharacter": @"asCharacter", @"asBigDecimal": @"asBigDecimal", @"asBigInteger": @"asBigInteger", @"asShort": @"asShort", @"string": @"string", @"asJsonObject": @"asJsonObject", @"jsonNull": @"jsonNull", @"jsonArray": @"jsonArray", @"jsonObject": @"jsonObject", @"jsonPrimitive": @"jsonPrimitive", @"asJsonArray": @"asJsonArray", @"asJsonPrimitive": @"asJsonPrimitive", @"asJsonNull": @"asJsonNull" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"asInt", @"number", @"boolean", @"asString", @"asBoolean", @"asNumber", @"asDouble", @"asFloat", @"asLong", @"asByte", @"asCharacter", @"asBigDecimal", @"asBigInteger", @"asShort", @"string", @"asJsonObject", @"jsonNull", @"jsonArray", @"jsonObject", @"jsonPrimitive", @"asJsonArray", @"asJsonPrimitive", @"asJsonNull"];
  return [optionalProperties containsObject:propertyName];
}

@end
