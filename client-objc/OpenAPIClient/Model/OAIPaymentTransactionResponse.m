#import "OAIPaymentTransactionResponse.h"

@implementation OAIPaymentTransactionResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"paymentTransactionId": @"paymentTransactionId", @"customer": @"customer", @"promoCode": @"promoCode", @"remoteRefId": @"remoteRefId", @"currencyType": @"currencyType", @"amount": @"amount", @"tax": @"tax", @"offerTransactions": @"offerTransactions", @"orderItems": @"orderItems", @"externalPaymentId": @"externalPaymentId", @"metadata": @"metadata", @"created": @"created", @"updated": @"updated", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"paymentTransactionId", @"customer", @"promoCode", @"remoteRefId", @"currencyType", @"amount", @"tax", @"offerTransactions", @"orderItems", @"externalPaymentId", @"metadata", @"created", @"updated", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
