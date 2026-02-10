#import "OAIMediaOfferResponse.h"

@implementation OAIMediaOfferResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"title": @"title", @"details": @"details", @"subTitle": @"subTitle", @"activated": @"activated", @"expiration": @"expiration", @"redeemableStart": @"redeemableStart", @"redeemableEnd": @"redeemableEnd", @"offerType": @"offerType", @"offerVisibility": @"offerVisibility", @"favorite": @"favorite", @"deleted": @"deleted", @"fullPrice": @"fullPrice", @"discountPrice": @"discountPrice", @"image": @"image", @"image1": @"image1", @"image2": @"image2", @"image3": @"image3", @"image4": @"image4", @"image5": @"image5", @"images": @"images", @"barcode": @"barcode", @"externalUrl": @"externalUrl", @"active": @"active", @"subDetails": @"subDetails", @"externalRedeemOptions": @"externalRedeemOptions", @"publisher": @"publisher", @"viewedCount": @"viewedCount", @"clickedCount": @"clickedCount", @"addedLimit": @"addedLimit", @"addedCount": @"addedCount", @"usedCount": @"usedCount", @"removedCount": @"removedCount", @"ticketsReward": @"ticketsReward", @"ticketsRewardType": @"ticketsRewardType", @"specialOfferType": @"specialOfferType", @"likeCount": @"likeCount", @"dislikeCount": @"dislikeCount", @"favoriteCount": @"favoriteCount", @"noteCount": @"noteCount", @"billableEntityId": @"billableEntityId", @"responsibleAccountId": @"responsibleAccountId", @"availabilitySummary": @"availabilitySummary", @"flagCount": @"flagCount", @"flagThreshold": @"flagThreshold", @"externalId": @"externalId", @"parentOffer": @"parentOffer", @"categories": @"categories", @"filters": @"filters" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"title", @"details", @"subTitle", @"activated", @"expiration", @"redeemableStart", @"redeemableEnd", @"offerType", @"offerVisibility", @"favorite", @"deleted", @"fullPrice", @"discountPrice", @"image", @"image1", @"image2", @"image3", @"image4", @"image5", @"images", @"barcode", @"externalUrl", @"active", @"subDetails", @"externalRedeemOptions", @"publisher", @"viewedCount", @"clickedCount", @"addedLimit", @"addedCount", @"usedCount", @"removedCount", @"ticketsReward", @"ticketsRewardType", @"specialOfferType", @"likeCount", @"dislikeCount", @"favoriteCount", @"noteCount", @"billableEntityId", @"responsibleAccountId", @"availabilitySummary", @"flagCount", @"flagThreshold", @"externalId", @"parentOffer", @"categories", @"filters"];
  return [optionalProperties containsObject:propertyName];
}

@end
