#import "OAIOfferTransactionResponse.h"

@implementation OAIOfferTransactionResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"valid": @"valid", @"message": @"message", @"version": @"version", @"serializeNulls": @"serializeNulls", @"startTimeLog": @"startTimeLog", @"errorCode": @"errorCode", @"request": @"request", @"offerLocationId": @"offerLocationId", @"offerId": @"offerId", @"retailerId": @"retailerId", @"transactionId": @"transactionId", @"favoriteId": @"favoriteId", @"offerName": @"offerName", @"subTitle": @"subTitle", @"locationName": @"locationName", @"starts": @"starts", @"expires": @"expires", @"activated": @"activated", @"expiration": @"expiration", @"redeemableStart": @"redeemableStart", @"redeemableEnd": @"redeemableEnd", @"distance": @"distance", @"offerType": @"offerType", @"longitude": @"longitude", @"latitude": @"latitude", @"favorite": @"favorite", @"fullPrice": @"fullPrice", @"discountPrice": @"discountPrice", @"estimatedValue": @"estimatedValue", @"voucherDiscountPrice": @"voucherDiscountPrice", @"missionListResponse": @"missionListResponse", @"image": @"image", @"image1": @"image1", @"image2": @"image2", @"image3": @"image3", @"image4": @"image4", @"image5": @"image5", @"images": @"images", @"barcode": @"barcode", @"externalUrl": @"externalUrl", @"sqootUrl": @"sqootUrl", @"active": @"active", @"location": @"location", @"subDetails": @"subDetails", @"externalRedeemAuth": @"externalRedeemAuth", @"externalRedeemOptions": @"externalRedeemOptions", @"publisher": @"publisher", @"product": @"product", @"event": @"event", @"media": @"media", @"viewedCount": @"viewedCount", @"clickedCount": @"clickedCount", @"addedLimit": @"addedLimit", @"addedCount": @"addedCount", @"usedCount": @"usedCount", @"removedCount": @"removedCount", @"locationAddedCount": @"locationAddedCount", @"barcodeEntry": @"barcodeEntry", @"barcodeType": @"barcodeType", @"ticketsReward": @"ticketsReward", @"ticketsRewardType": @"ticketsRewardType", @"specialOfferType": @"specialOfferType", @"likeCount": @"likeCount", @"dislikeCount": @"dislikeCount", @"favoriteCount": @"favoriteCount", @"noteCount": @"noteCount", @"logId": @"logId", @"billableEntityId": @"billableEntityId", @"responsibleAccountId": @"responsibleAccountId", @"availabilitySummary": @"availabilitySummary", @"externalId": @"externalId", @"parentOffer": @"parentOffer", @"address": @"address", @"details": @"details", @"finePrint": @"finePrint", @"retailerPhoneNumber": @"retailerPhoneNumber", @"ticketPriceType": @"ticketPriceType", @"ticketPrice": @"ticketPrice", @"discountPercentage": @"discountPercentage", @"paymentFees": @"paymentFees", @"voucherPrice": @"voucherPrice", @"purchasesRemaining": @"purchasesRemaining", @"redemptionsRemaining": @"redemptionsRemaining", @"redemptionStatus": @"redemptionStatus", @"redemptionCode": @"redemptionCode", @"audiences": @"audiences", @"audienceCount": @"audienceCount", @"walletCount": @"walletCount", @"qrCodeUrl": @"qrCodeUrl", @"showRemaining": @"showRemaining", @"showRedeemed": @"showRedeemed", @"purchaseLimit": @"purchaseLimit", @"purchaseLimitPerUser": @"purchaseLimitPerUser", @"redemptionLimit": @"redemptionLimit", @"userRedemptionLimit": @"userRedemptionLimit", @"categories": @"categories", @"filters": @"filters", @"customer": @"customer", @"purchasedDate": @"purchasedDate", @"usedDate": @"usedDate", @"transactionCreated": @"transactionCreated", @"transactionUpdated": @"transactionUpdated", @"returning": @"returning" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"valid", @"message", @"version", @"serializeNulls", @"startTimeLog", @"errorCode", @"request", @"offerLocationId", @"offerId", @"retailerId", @"transactionId", @"favoriteId", @"offerName", @"subTitle", @"locationName", @"starts", @"expires", @"activated", @"expiration", @"redeemableStart", @"redeemableEnd", @"distance", @"offerType", @"longitude", @"latitude", @"favorite", @"fullPrice", @"discountPrice", @"estimatedValue", @"voucherDiscountPrice", @"missionListResponse", @"image", @"image1", @"image2", @"image3", @"image4", @"image5", @"images", @"barcode", @"externalUrl", @"sqootUrl", @"active", @"location", @"subDetails", @"externalRedeemAuth", @"externalRedeemOptions", @"publisher", @"product", @"event", @"media", @"viewedCount", @"clickedCount", @"addedLimit", @"addedCount", @"usedCount", @"removedCount", @"locationAddedCount", @"barcodeEntry", @"barcodeType", @"ticketsReward", @"ticketsRewardType", @"specialOfferType", @"likeCount", @"dislikeCount", @"favoriteCount", @"noteCount", @"logId", @"billableEntityId", @"responsibleAccountId", @"availabilitySummary", @"externalId", @"parentOffer", @"address", @"details", @"finePrint", @"retailerPhoneNumber", @"ticketPriceType", @"ticketPrice", @"discountPercentage", @"paymentFees", @"voucherPrice", @"purchasesRemaining", @"redemptionsRemaining", @"redemptionStatus", @"redemptionCode", @"audiences", @"audienceCount", @"walletCount", @"qrCodeUrl", @"showRemaining", @"showRedeemed", @"purchaseLimit", @"purchaseLimitPerUser", @"redemptionLimit", @"userRedemptionLimit", @"categories", @"filters", @"customer", @"purchasedDate", @"usedDate", @"transactionCreated", @"transactionUpdated", @"returning"];
  return [optionalProperties containsObject:propertyName];
}

@end
