#import "OAIDisbursementResponse.h"

@implementation OAIDisbursementResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"disbursementId": @"disbursementId", @"title": @"title", @"comment": @"comment", @"externalId": @"externalId", @"introspectionParams": @"introspectionParams", @"amount": @"amount", @"scheduledDate": @"scheduledDate", @"captureDate": @"captureDate", @"estimatedDate": @"estimatedDate", @"settledDate": @"settledDate", @"status": @"status", @"provider": @"provider", @"senderBillable": @"senderBillable", @"receiverBillable": @"receiverBillable", @"errorCode": @"errorCode", @"errorMessage": @"errorMessage" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"disbursementId", @"title", @"comment", @"externalId", @"introspectionParams", @"amount", @"scheduledDate", @"captureDate", @"estimatedDate", @"settledDate", @"status", @"provider", @"senderBillable", @"receiverBillable", @"errorCode", @"errorMessage"];
  return [optionalProperties containsObject:propertyName];
}

@end
