#import "OAIPaymentTypesResponse.h"

@implementation OAIPaymentTypesResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"creditCardOnFile": @"creditCardOnFile", @"creditCardNumber": @"creditCardNumber", @"creditCardExpirationMonth": @"creditCardExpirationMonth", @"creditCardExpirationYear": @"creditCardExpirationYear", @"pointsOnFile": @"pointsOnFile", @"pointsAmount": @"pointsAmount", @"account": @"account", @"firstName": @"firstName", @"lastName": @"lastName", @"address": @"address", @"city": @"city", @"state": @"state", @"postalCode": @"postalCode", @"phone": @"phone", @"provider": @"provider", @"paymentMethodId": @"paymentMethodId", @"validated": @"validated", @"accountNumber": @"accountNumber", @"bankName": @"bankName", @"routingNumber": @"routingNumber", @"isDefaultPaymentMethod": @"isDefaultPaymentMethod", @"accountName": @"accountName", @"paymentMethodNickname": @"paymentMethodNickname", @"taxId": @"taxId", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"creditCardOnFile", @"creditCardNumber", @"creditCardExpirationMonth", @"creditCardExpirationYear", @"pointsOnFile", @"pointsAmount", @"account", @"firstName", @"lastName", @"address", @"city", @"state", @"postalCode", @"phone", @"provider", @"paymentMethodId", @"validated", @"accountNumber", @"bankName", @"routingNumber", @"isDefaultPaymentMethod", @"accountName", @"paymentMethodNickname", @"taxId", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
