#import "OAIOffer.h"

@implementation OAIOffer

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"valid": @"valid", @"testField": @"testField", @"billableEntity": @"billableEntity", @"offerLocations": @"offerLocations", @"missions": @"missions", @"activated": @"activated", @"expires": @"expires", @"redeemableStart": @"redeemableStart", @"redeemableEnd": @"redeemableEnd", @"title": @"title", @"subTitle": @"subTitle", @"type": @"type", @"specialOfferType": @"specialOfferType", @"details": @"details", @"subDetails": @"subDetails", @"finePrint": @"finePrint", @"getThereNowNotification": @"getThereNowNotification", @"maxPrints": @"maxPrints", @"viewLimit": @"viewLimit", @"featured": @"featured", @"replaced": @"replaced", @"showRemaining": @"showRemaining", @"showRedeemed": @"showRedeemed", @"parentOffer": @"parentOffer", @"artwork": @"artwork", @"offerImage1": @"offerImage1", @"offerImage2": @"offerImage2", @"offerImage3": @"offerImage3", @"offerImage4": @"offerImage4", @"offerImage5": @"offerImage5", @"barCode": @"barCode", @"barCodeType": @"barCodeType", @"barCodeEntry": @"barCodeEntry", @"categories": @"categories", @"filters": @"filters", @"ticketType": @"ticketType", @"allocateTickets": @"allocateTickets", @"ticketPriceType": @"ticketPriceType", @"ticketPrice": @"ticketPrice", @"fullPrice": @"fullPrice", @"discountPrice": @"discountPrice", @"availableLimit": @"availableLimit", @"availableLimitPerUser": @"availableLimitPerUser", @"addedLimit": @"addedLimit", @"usedCount": @"usedCount", @"addedCount": @"addedCount", @"removedCount": @"removedCount", @"viewedCount": @"viewedCount", @"clickedCount": @"clickedCount", @"offerVisibility": @"offerVisibility", @"offerProcessorId": @"offerProcessorId", @"externalId": @"externalId", @"externalUrl": @"externalUrl", @"externalUntrackedUrl": @"externalUntrackedUrl", @"sqootId": @"sqootId", @"sqootUrl": @"sqootUrl", @"sqootCategorySlug": @"sqootCategorySlug", @"sqootCategoryName": @"sqootCategoryName", @"yipitId": @"yipitId", @"redeemAuthOptions": @"redeemAuthOptions", @"publisher": @"publisher", @"product": @"product", @"media": @"media", @"event": @"event", @"device": @"device", @"notes": @"notes", @"noteCount": @"noteCount", @"favoriteCount": @"favoriteCount", @"hasRatings": @"hasRatings", @"likes": @"likes", @"likeCount": @"likeCount", @"dislikeCount": @"dislikeCount", @"availabilitySummary": @"availabilitySummary", @"flags": @"flags", @"flagCount": @"flagCount", @"flagThreshold": @"flagThreshold", @"savings": @"savings", @"clickStream": @"clickStream", @"ticketCount": @"ticketCount", @"display": @"display", @"appKey": @"appKey", @"categoryTree": @"categoryTree", @"filterTree": @"filterTree", @"indexable": @"indexable", @"billableId": @"billableId", @"subType": @"subType", @"contentName": @"contentName", @"defaultThreshold": @"defaultThreshold", @"contentAsset": @"contentAsset", @"owner": @"owner", @"secondaryType": @"secondaryType", @"discountPercentage": @"discountPercentage" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"valid", @"testField", @"billableEntity", @"offerLocations", @"missions", @"activated", @"expires", @"redeemableStart", @"redeemableEnd", @"title", @"subTitle", @"type", @"specialOfferType", @"details", @"subDetails", @"finePrint", @"getThereNowNotification", @"maxPrints", @"viewLimit", @"featured", @"replaced", @"showRemaining", @"showRedeemed", @"parentOffer", @"artwork", @"offerImage1", @"offerImage2", @"offerImage3", @"offerImage4", @"offerImage5", @"barCode", @"barCodeType", @"barCodeEntry", @"categories", @"filters", @"ticketType", @"allocateTickets", @"ticketPriceType", @"ticketPrice", @"fullPrice", @"discountPrice", @"availableLimit", @"availableLimitPerUser", @"addedLimit", @"usedCount", @"addedCount", @"removedCount", @"viewedCount", @"clickedCount", @"offerVisibility", @"offerProcessorId", @"externalId", @"externalUrl", @"externalUntrackedUrl", @"sqootId", @"sqootUrl", @"sqootCategorySlug", @"sqootCategoryName", @"yipitId", @"redeemAuthOptions", @"publisher", @"product", @"media", @"event", @"device", @"notes", @"noteCount", @"favoriteCount", @"hasRatings", @"likes", @"likeCount", @"dislikeCount", @"availabilitySummary", @"flags", @"flagCount", @"flagThreshold", @"savings", @"clickStream", @"ticketCount", @"display", @"appKey", @"categoryTree", @"filterTree", @"indexable", @"billableId", @"subType", @"contentName", @"defaultThreshold", @"contentAsset", @"owner", @"secondaryType", @"discountPercentage"];
  return [optionalProperties containsObject:propertyName];
}

@end
