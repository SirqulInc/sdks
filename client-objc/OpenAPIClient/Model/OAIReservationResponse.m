#import "OAIReservationResponse.h"

@implementation OAIReservationResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"reservationId": @"reservationId", @"reservableId": @"reservableId", @"reservableType": @"reservableType", @"account": @"account", @"createdDate": @"createdDate", @"updatedDate": @"updatedDate", @"startDate": @"startDate", @"endDate": @"endDate", @"transaction": @"transaction" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"reservationId", @"reservableId", @"reservableType", @"account", @"createdDate", @"updatedDate", @"startDate", @"endDate", @"transaction"];
  return [optionalProperties containsObject:propertyName];
}

@end
