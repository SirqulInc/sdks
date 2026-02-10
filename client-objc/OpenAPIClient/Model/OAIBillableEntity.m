#import "OAIBillableEntity.h"

@implementation OAIBillableEntity

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"name": @"name", @"contactInfo": @"contactInfo", @"responsible": @"responsible", @"retailers": @"retailers", @"managers": @"managers", @"categories": @"categories", @"filters": @"filters", @"media": @"media", @"mediaAlbum": @"mediaAlbum", @"subscription": @"subscription", @"disbursementIntrospect": @"disbursementIntrospect", @"authorizeNetTransactionKey": @"authorizeNetTransactionKey", @"authorizeNetApiKey": @"authorizeNetApiKey" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"name", @"contactInfo", @"responsible", @"retailers", @"managers", @"categories", @"filters", @"media", @"mediaAlbum", @"subscription", @"disbursementIntrospect", @"authorizeNetTransactionKey", @"authorizeNetApiKey"];
  return [optionalProperties containsObject:propertyName];
}

@end
