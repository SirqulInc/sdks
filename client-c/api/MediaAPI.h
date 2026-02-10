#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/media_offer_response.h"
#include "../model/sirqul_response.h"

// Enum BARCODETYPE for MediaAPI_createMedia
typedef enum  { sirqul_iot_platform_createMedia_BARCODETYPE_NULL = 0, sirqul_iot_platform_createMedia_BARCODETYPE_NONE, sirqul_iot_platform_createMedia_BARCODETYPE_UPC, sirqul_iot_platform_createMedia_BARCODETYPE_CODE_128, sirqul_iot_platform_createMedia_BARCODETYPE_QR, sirqul_iot_platform_createMedia_BARCODETYPE_CUSTOM_MEDIA } sirqul_iot_platform_createMedia_barcodeType_e;

// Enum SPECIALOFFERTYPE for MediaAPI_createMedia
typedef enum  { sirqul_iot_platform_createMedia_SPECIALOFFERTYPE_NULL = 0, sirqul_iot_platform_createMedia_SPECIALOFFERTYPE_ALL, sirqul_iot_platform_createMedia_SPECIALOFFERTYPE_RESERVABLE, sirqul_iot_platform_createMedia_SPECIALOFFERTYPE_REGULAR_OFFER, sirqul_iot_platform_createMedia_SPECIALOFFERTYPE_ACT_NOW, sirqul_iot_platform_createMedia_SPECIALOFFERTYPE_GET_THERE_NOW, sirqul_iot_platform_createMedia_SPECIALOFFERTYPE_SQOOT, sirqul_iot_platform_createMedia_SPECIALOFFERTYPE_TICKETS, sirqul_iot_platform_createMedia_SPECIALOFFERTYPE_YIPIT } sirqul_iot_platform_createMedia_specialOfferType_e;

// Enum OFFERVISIBILITY for MediaAPI_createMedia
typedef enum  { sirqul_iot_platform_createMedia_OFFERVISIBILITY_NULL = 0, sirqul_iot_platform_createMedia_OFFERVISIBILITY__PUBLIC, sirqul_iot_platform_createMedia_OFFERVISIBILITY_LISTABLE, sirqul_iot_platform_createMedia_OFFERVISIBILITY_REWARDABLE, sirqul_iot_platform_createMedia_OFFERVISIBILITY_TRIGGERABLE, sirqul_iot_platform_createMedia_OFFERVISIBILITY__PRIVATE } sirqul_iot_platform_createMedia_offerVisibility_e;

// Enum CONDITIONTYPE for MediaAPI_createMedia
typedef enum  { sirqul_iot_platform_createMedia_CONDITIONTYPE_NULL = 0, sirqul_iot_platform_createMedia_CONDITIONTYPE__NEW, sirqul_iot_platform_createMedia_CONDITIONTYPE_USED, sirqul_iot_platform_createMedia_CONDITIONTYPE_REFURBISHED, sirqul_iot_platform_createMedia_CONDITIONTYPE_OTHER } sirqul_iot_platform_createMedia_conditionType_e;

// Enum MEDIATYPE for MediaAPI_createMedia
typedef enum  { sirqul_iot_platform_createMedia_MEDIATYPE_NULL = 0, sirqul_iot_platform_createMedia_MEDIATYPE_APK, sirqul_iot_platform_createMedia_MEDIATYPE_APPLICATION, sirqul_iot_platform_createMedia_MEDIATYPE_IMAGE, sirqul_iot_platform_createMedia_MEDIATYPE_AUDIO, sirqul_iot_platform_createMedia_MEDIATYPE_VIDEO, sirqul_iot_platform_createMedia_MEDIATYPE_MULTIPART, sirqul_iot_platform_createMedia_MEDIATYPE_BAR_CODE, sirqul_iot_platform_createMedia_MEDIATYPE_TEXT, sirqul_iot_platform_createMedia_MEDIATYPE_OTHER } sirqul_iot_platform_createMedia_mediaType_e;

// Enum SORTFIELD for MediaAPI_searchMedia
typedef enum  { sirqul_iot_platform_searchMedia_SORTFIELD_NULL = 0, sirqul_iot_platform_searchMedia_SORTFIELD_ID, sirqul_iot_platform_searchMedia_SORTFIELD_CREATED, sirqul_iot_platform_searchMedia_SORTFIELD_UPDATED, sirqul_iot_platform_searchMedia_SORTFIELD_DELETED, sirqul_iot_platform_searchMedia_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchMedia_SORTFIELD_ACTIVE, sirqul_iot_platform_searchMedia_SORTFIELD_ACTIVATED, sirqul_iot_platform_searchMedia_SORTFIELD_EXPIRES, sirqul_iot_platform_searchMedia_SORTFIELD_REDEEMABLE_START, sirqul_iot_platform_searchMedia_SORTFIELD_REDEEMABLE_END, sirqul_iot_platform_searchMedia_SORTFIELD_TITLE, sirqul_iot_platform_searchMedia_SORTFIELD_SUBTITLE, sirqul_iot_platform_searchMedia_SORTFIELD_DETAILS, sirqul_iot_platform_searchMedia_SORTFIELD_OFFER_TYPE, sirqul_iot_platform_searchMedia_SORTFIELD_SPECIAL_OFFER_TYPE, sirqul_iot_platform_searchMedia_SORTFIELD_OFFER_VISIBILITY, sirqul_iot_platform_searchMedia_SORTFIELD_ESTIMATED_VALUE, sirqul_iot_platform_searchMedia_SORTFIELD_VOUCHER_PRICE, sirqul_iot_platform_searchMedia_SORTFIELD_VOUCHER_DISCOUNT_PRICE, sirqul_iot_platform_searchMedia_SORTFIELD_FULL_PRICE, sirqul_iot_platform_searchMedia_SORTFIELD_DICOUNT_PRICE, sirqul_iot_platform_searchMedia_SORTFIELD_TICKETS_REWARD, sirqul_iot_platform_searchMedia_SORTFIELD_AVAILABILITY_DATE, sirqul_iot_platform_searchMedia_SORTFIELD_RELEASE_DATE, sirqul_iot_platform_searchMedia_SORTFIELD_RETAILER_ID, sirqul_iot_platform_searchMedia_SORTFIELD_RETAILER_NAME, sirqul_iot_platform_searchMedia_SORTFIELD_RETAILER_LOCATION_ID, sirqul_iot_platform_searchMedia_SORTFIELD_RETAILER_LOCATION_NAME, sirqul_iot_platform_searchMedia_SORTFIELD_BILLABLE_ENTITY_ID, sirqul_iot_platform_searchMedia_SORTFIELD_BILLABLE_ENTITY_NAME, sirqul_iot_platform_searchMedia_SORTFIELD_RESPONSIBLE_DISPLAY } sirqul_iot_platform_searchMedia_sortField_e;

// Enum BARCODETYPE for MediaAPI_updateMedia
typedef enum  { sirqul_iot_platform_updateMedia_BARCODETYPE_NULL = 0, sirqul_iot_platform_updateMedia_BARCODETYPE_NONE, sirqul_iot_platform_updateMedia_BARCODETYPE_UPC, sirqul_iot_platform_updateMedia_BARCODETYPE_CODE_128, sirqul_iot_platform_updateMedia_BARCODETYPE_QR, sirqul_iot_platform_updateMedia_BARCODETYPE_CUSTOM_MEDIA } sirqul_iot_platform_updateMedia_barcodeType_e;

// Enum SPECIALOFFERTYPE for MediaAPI_updateMedia
typedef enum  { sirqul_iot_platform_updateMedia_SPECIALOFFERTYPE_NULL = 0, sirqul_iot_platform_updateMedia_SPECIALOFFERTYPE_ALL, sirqul_iot_platform_updateMedia_SPECIALOFFERTYPE_RESERVABLE, sirqul_iot_platform_updateMedia_SPECIALOFFERTYPE_REGULAR_OFFER, sirqul_iot_platform_updateMedia_SPECIALOFFERTYPE_ACT_NOW, sirqul_iot_platform_updateMedia_SPECIALOFFERTYPE_GET_THERE_NOW, sirqul_iot_platform_updateMedia_SPECIALOFFERTYPE_SQOOT, sirqul_iot_platform_updateMedia_SPECIALOFFERTYPE_TICKETS, sirqul_iot_platform_updateMedia_SPECIALOFFERTYPE_YIPIT } sirqul_iot_platform_updateMedia_specialOfferType_e;

// Enum OFFERVISIBILITY for MediaAPI_updateMedia
typedef enum  { sirqul_iot_platform_updateMedia_OFFERVISIBILITY_NULL = 0, sirqul_iot_platform_updateMedia_OFFERVISIBILITY__PUBLIC, sirqul_iot_platform_updateMedia_OFFERVISIBILITY_LISTABLE, sirqul_iot_platform_updateMedia_OFFERVISIBILITY_REWARDABLE, sirqul_iot_platform_updateMedia_OFFERVISIBILITY_TRIGGERABLE, sirqul_iot_platform_updateMedia_OFFERVISIBILITY__PRIVATE } sirqul_iot_platform_updateMedia_offerVisibility_e;

// Enum CONDITIONTYPE for MediaAPI_updateMedia
typedef enum  { sirqul_iot_platform_updateMedia_CONDITIONTYPE_NULL = 0, sirqul_iot_platform_updateMedia_CONDITIONTYPE__NEW, sirqul_iot_platform_updateMedia_CONDITIONTYPE_USED, sirqul_iot_platform_updateMedia_CONDITIONTYPE_REFURBISHED, sirqul_iot_platform_updateMedia_CONDITIONTYPE_OTHER } sirqul_iot_platform_updateMedia_conditionType_e;

// Enum MEDIATYPE for MediaAPI_updateMedia
typedef enum  { sirqul_iot_platform_updateMedia_MEDIATYPE_NULL = 0, sirqul_iot_platform_updateMedia_MEDIATYPE_APK, sirqul_iot_platform_updateMedia_MEDIATYPE_APPLICATION, sirqul_iot_platform_updateMedia_MEDIATYPE_IMAGE, sirqul_iot_platform_updateMedia_MEDIATYPE_AUDIO, sirqul_iot_platform_updateMedia_MEDIATYPE_VIDEO, sirqul_iot_platform_updateMedia_MEDIATYPE_MULTIPART, sirqul_iot_platform_updateMedia_MEDIATYPE_BAR_CODE, sirqul_iot_platform_updateMedia_MEDIATYPE_TEXT, sirqul_iot_platform_updateMedia_MEDIATYPE_OTHER } sirqul_iot_platform_updateMedia_mediaType_e;


// Create Media
//
// Create a media offering.
//
media_offer_response_t*
MediaAPI_createMedia(apiClient_t *apiClient, double version, long accountId, char *title, sirqul_iot_platform_createMedia_barcodeType_e barcodeType, int *noExpiration, int *availableLimit, int *availableLimitPerUser, int *addedLimit, int *viewLimit, int *maxPrints, long ticketPrice, double fullPrice, double discountPrice, sirqul_iot_platform_createMedia_specialOfferType_e specialOfferType, sirqul_iot_platform_createMedia_offerVisibility_e offerVisibility, int *active, char *retailerLocationIds, char *subTitle, char *details, char *subDetails, char *finePrint, char *barcodeEntry, char *externalRedeemOptions, char *externalUrl, char *ticketsRewardType, long ticketsReward, long activated, long expires, char *ticketPriceType, int *showRemaining, int *showRedeemed, int *replaced, int *featured, char *categoryIds, char *filterIds, long barcodeAssetId, long imageAssetId, long imageAssetId1, long imageAssetId2, long imageAssetId3, long imageAssetId4, long imageAssetId5, char *publisher, long redeemableStart, long redeemableEnd, sirqul_iot_platform_createMedia_conditionType_e conditionType, char *isbn, char *asin, char *catalogNumbers, char *parentalRating, long availabilityDate, sirqul_iot_platform_createMedia_mediaType_e mediaType, int *duration, char *author, long releaseDate, char *collectionIds, char *availability, char *availabilitySummary);


// Delete Media
//
// Delete a media offering that the user has permissions to.
//
sirqul_response_t*
MediaAPI_deleteMedia(apiClient_t *apiClient, double version, long accountId, long mediaId);


// Media Get
//
// Get a media offering.
//
media_offer_response_t*
MediaAPI_getMedia(apiClient_t *apiClient, double version, long accountId, long mediaId);


// Search Media
//
// Searches on events that the account has access to.
//
list_t*
MediaAPI_searchMedia(apiClient_t *apiClient, double version, long accountId, int *activeOnly, sirqul_iot_platform_searchMedia_sortField_e sortField, int *descending, char *keyword, char *categoryIds, char *filterIds, int *start, int *limit);


// Update Media
//
// Update a media offering.
//
media_offer_response_t*
MediaAPI_updateMedia(apiClient_t *apiClient, double version, long accountId, long mediaId, char *retailerLocationIds, char *offerLocations, char *title, char *subTitle, char *details, char *subDetails, char *finePrint, sirqul_iot_platform_updateMedia_barcodeType_e barcodeType, char *barcodeEntry, char *externalRedeemOptions, char *externalUrl, char *ticketsRewardType, long ticketsReward, long activated, long expires, int *noExpiration, int *availableLimit, int *availableLimitPerUser, int *addedLimit, int *viewLimit, int *maxPrints, char *ticketPriceType, long ticketPrice, double fullPrice, double discountPrice, int *showRemaining, int *showRedeemed, int *replaced, int *featured, sirqul_iot_platform_updateMedia_specialOfferType_e specialOfferType, sirqul_iot_platform_updateMedia_offerVisibility_e offerVisibility, char *categoryIds, char *filterIds, int *active, long barcodeAssetId, long imageAssetId, long imageAssetId1, long imageAssetId2, long imageAssetId3, long imageAssetId4, long imageAssetId5, char *publisher, long redeemableStart, long redeemableEnd, sirqul_iot_platform_updateMedia_conditionType_e conditionType, char *isbn, char *asin, char *catalogNumbers, long availabilityDate, char *parentalRating, sirqul_iot_platform_updateMedia_mediaType_e mediaType, int *duration, char *author, long releaseDate, char *collectionIds, char *availability, char *availabilitySummary);


