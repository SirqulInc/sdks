package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.ListCountResponse
import org.openapitools.model.OfferListResponse
import org.openapitools.model.OfferResponse
import org.openapitools.model.OfferShortResponse
import org.openapitools.model.OfferTransactionResponse
import org.openapitools.model.RetailerOfferResponse
import org.openapitools.model.SirqulResponse

class OfferApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def batchUpdateOfferLocations ( BigDecimal version, String data, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/offer/location/batchUpdate"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (data == null) {
            throw new RuntimeException("missing required params data")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (data != null) {
            queryParams.put("data", data)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def createOffer ( BigDecimal version, Boolean includeOfferLocations, String title, String barcodeType, Boolean noExpiration, Integer availableLimit, Integer availableLimitPerUser, Integer addedLimit, Integer viewLimit, Integer maxPrints, Long ticketPrice, Double fullPrice, Double discountPrice, String offerType, String specialOfferType, String offerVisibility, Boolean active, String deviceId, Long accountId, String tags, Long parentOfferId, String retailerLocationIds, String offerLocations, String subTitle, String details, String subDetails, String finePrint, String barcodeEntry, String externalRedeemOptions, String externalUrl, String externalId, String ticketsRewardType, Long ticketsReward, Long activated, Long expires, String ticketPriceType, Boolean showRemaining, Boolean showRedeemed, Boolean replaced, Boolean featured, String categoryIds, String filterIds, Long barcodeAssetId, Long imageAssetId, Long imageAssetId1, Long imageAssetId2, Long imageAssetId3, Long imageAssetId4, Long imageAssetId5, String publisher, Long redeemableStart, Long redeemableEnd, String brand, String productType, String conditionType, String isbn, String asin, String catalogNumbers, String department, String features, Double minimumPrice, Double width, Double height, Double depth, Double weight, String unit, String studio, String parentalRating, Long publishDate, Long availabilityDate, Long sizeId, Long listingId, String mediaType, Integer duration, String author, Long releaseDate, String collectionIds, Integer rebootTimeHour, Integer rebootTimeMinute, Integer idleTimeoutInSecond, String serialNumber, String udid, String deviceType, Double devicePower, Double deviceInterference, String availability, String availabilitySummary, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/offer/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (includeOfferLocations == null) {
            throw new RuntimeException("missing required params includeOfferLocations")
        }
        // verify required params are set
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }
        // verify required params are set
        if (barcodeType == null) {
            throw new RuntimeException("missing required params barcodeType")
        }
        // verify required params are set
        if (noExpiration == null) {
            throw new RuntimeException("missing required params noExpiration")
        }
        // verify required params are set
        if (availableLimit == null) {
            throw new RuntimeException("missing required params availableLimit")
        }
        // verify required params are set
        if (availableLimitPerUser == null) {
            throw new RuntimeException("missing required params availableLimitPerUser")
        }
        // verify required params are set
        if (addedLimit == null) {
            throw new RuntimeException("missing required params addedLimit")
        }
        // verify required params are set
        if (viewLimit == null) {
            throw new RuntimeException("missing required params viewLimit")
        }
        // verify required params are set
        if (maxPrints == null) {
            throw new RuntimeException("missing required params maxPrints")
        }
        // verify required params are set
        if (ticketPrice == null) {
            throw new RuntimeException("missing required params ticketPrice")
        }
        // verify required params are set
        if (fullPrice == null) {
            throw new RuntimeException("missing required params fullPrice")
        }
        // verify required params are set
        if (discountPrice == null) {
            throw new RuntimeException("missing required params discountPrice")
        }
        // verify required params are set
        if (offerType == null) {
            throw new RuntimeException("missing required params offerType")
        }
        // verify required params are set
        if (specialOfferType == null) {
            throw new RuntimeException("missing required params specialOfferType")
        }
        // verify required params are set
        if (offerVisibility == null) {
            throw new RuntimeException("missing required params offerVisibility")
        }
        // verify required params are set
        if (active == null) {
            throw new RuntimeException("missing required params active")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (parentOfferId != null) {
            queryParams.put("parentOfferId", parentOfferId)
        }
        if (includeOfferLocations != null) {
            queryParams.put("includeOfferLocations", includeOfferLocations)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (offerLocations != null) {
            queryParams.put("offerLocations", offerLocations)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (subTitle != null) {
            queryParams.put("subTitle", subTitle)
        }
        if (details != null) {
            queryParams.put("details", details)
        }
        if (subDetails != null) {
            queryParams.put("subDetails", subDetails)
        }
        if (finePrint != null) {
            queryParams.put("finePrint", finePrint)
        }
        if (barcodeType != null) {
            queryParams.put("barcodeType", barcodeType)
        }
        if (barcodeEntry != null) {
            queryParams.put("barcodeEntry", barcodeEntry)
        }
        if (externalRedeemOptions != null) {
            queryParams.put("externalRedeemOptions", externalRedeemOptions)
        }
        if (externalUrl != null) {
            queryParams.put("externalUrl", externalUrl)
        }
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }
        if (ticketsRewardType != null) {
            queryParams.put("ticketsRewardType", ticketsRewardType)
        }
        if (ticketsReward != null) {
            queryParams.put("ticketsReward", ticketsReward)
        }
        if (activated != null) {
            queryParams.put("activated", activated)
        }
        if (expires != null) {
            queryParams.put("expires", expires)
        }
        if (noExpiration != null) {
            queryParams.put("noExpiration", noExpiration)
        }
        if (availableLimit != null) {
            queryParams.put("availableLimit", availableLimit)
        }
        if (availableLimitPerUser != null) {
            queryParams.put("availableLimitPerUser", availableLimitPerUser)
        }
        if (addedLimit != null) {
            queryParams.put("addedLimit", addedLimit)
        }
        if (viewLimit != null) {
            queryParams.put("viewLimit", viewLimit)
        }
        if (maxPrints != null) {
            queryParams.put("maxPrints", maxPrints)
        }
        if (ticketPriceType != null) {
            queryParams.put("ticketPriceType", ticketPriceType)
        }
        if (ticketPrice != null) {
            queryParams.put("ticketPrice", ticketPrice)
        }
        if (fullPrice != null) {
            queryParams.put("fullPrice", fullPrice)
        }
        if (discountPrice != null) {
            queryParams.put("discountPrice", discountPrice)
        }
        if (showRemaining != null) {
            queryParams.put("showRemaining", showRemaining)
        }
        if (showRedeemed != null) {
            queryParams.put("showRedeemed", showRedeemed)
        }
        if (replaced != null) {
            queryParams.put("replaced", replaced)
        }
        if (featured != null) {
            queryParams.put("featured", featured)
        }
        if (offerType != null) {
            queryParams.put("offerType", offerType)
        }
        if (specialOfferType != null) {
            queryParams.put("specialOfferType", specialOfferType)
        }
        if (offerVisibility != null) {
            queryParams.put("offerVisibility", offerVisibility)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (barcodeAssetId != null) {
            queryParams.put("barcodeAssetId", barcodeAssetId)
        }
        if (imageAssetId != null) {
            queryParams.put("imageAssetId", imageAssetId)
        }
        if (imageAssetId1 != null) {
            queryParams.put("imageAssetId1", imageAssetId1)
        }
        if (imageAssetId2 != null) {
            queryParams.put("imageAssetId2", imageAssetId2)
        }
        if (imageAssetId3 != null) {
            queryParams.put("imageAssetId3", imageAssetId3)
        }
        if (imageAssetId4 != null) {
            queryParams.put("imageAssetId4", imageAssetId4)
        }
        if (imageAssetId5 != null) {
            queryParams.put("imageAssetId5", imageAssetId5)
        }
        if (publisher != null) {
            queryParams.put("publisher", publisher)
        }
        if (redeemableStart != null) {
            queryParams.put("redeemableStart", redeemableStart)
        }
        if (redeemableEnd != null) {
            queryParams.put("redeemableEnd", redeemableEnd)
        }
        if (brand != null) {
            queryParams.put("brand", brand)
        }
        if (productType != null) {
            queryParams.put("productType", productType)
        }
        if (conditionType != null) {
            queryParams.put("conditionType", conditionType)
        }
        if (isbn != null) {
            queryParams.put("isbn", isbn)
        }
        if (asin != null) {
            queryParams.put("asin", asin)
        }
        if (catalogNumbers != null) {
            queryParams.put("catalogNumbers", catalogNumbers)
        }
        if (department != null) {
            queryParams.put("department", department)
        }
        if (features != null) {
            queryParams.put("features", features)
        }
        if (minimumPrice != null) {
            queryParams.put("minimumPrice", minimumPrice)
        }
        if (width != null) {
            queryParams.put("width", width)
        }
        if (height != null) {
            queryParams.put("height", height)
        }
        if (depth != null) {
            queryParams.put("depth", depth)
        }
        if (weight != null) {
            queryParams.put("weight", weight)
        }
        if (unit != null) {
            queryParams.put("unit", unit)
        }
        if (studio != null) {
            queryParams.put("studio", studio)
        }
        if (parentalRating != null) {
            queryParams.put("parentalRating", parentalRating)
        }
        if (publishDate != null) {
            queryParams.put("publishDate", publishDate)
        }
        if (availabilityDate != null) {
            queryParams.put("availabilityDate", availabilityDate)
        }
        if (sizeId != null) {
            queryParams.put("sizeId", sizeId)
        }
        if (listingId != null) {
            queryParams.put("listingId", listingId)
        }
        if (mediaType != null) {
            queryParams.put("mediaType", mediaType)
        }
        if (duration != null) {
            queryParams.put("duration", duration)
        }
        if (author != null) {
            queryParams.put("author", author)
        }
        if (releaseDate != null) {
            queryParams.put("releaseDate", releaseDate)
        }
        if (collectionIds != null) {
            queryParams.put("collectionIds", collectionIds)
        }
        if (rebootTimeHour != null) {
            queryParams.put("rebootTimeHour", rebootTimeHour)
        }
        if (rebootTimeMinute != null) {
            queryParams.put("rebootTimeMinute", rebootTimeMinute)
        }
        if (idleTimeoutInSecond != null) {
            queryParams.put("idleTimeoutInSecond", idleTimeoutInSecond)
        }
        if (serialNumber != null) {
            queryParams.put("serialNumber", serialNumber)
        }
        if (udid != null) {
            queryParams.put("udid", udid)
        }
        if (deviceType != null) {
            queryParams.put("deviceType", deviceType)
        }
        if (devicePower != null) {
            queryParams.put("devicePower", devicePower)
        }
        if (deviceInterference != null) {
            queryParams.put("deviceInterference", deviceInterference)
        }
        if (availability != null) {
            queryParams.put("availability", availability)
        }
        if (availabilitySummary != null) {
            queryParams.put("availabilitySummary", availabilitySummary)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RetailerOfferResponse.class )

    }

    def deleteOffer ( BigDecimal version, Long offerId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/offer/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (offerId == null) {
            throw new RuntimeException("missing required params offerId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def deleteOfferLocation ( BigDecimal version, Long offerLocationId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/offer/location/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (offerLocationId == null) {
            throw new RuntimeException("missing required params offerLocationId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getOffer ( BigDecimal version, Long offerId, Boolean includeOfferLocations, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/offer/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (offerId == null) {
            throw new RuntimeException("missing required params offerId")
        }
        // verify required params are set
        if (includeOfferLocations == null) {
            throw new RuntimeException("missing required params includeOfferLocations")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (includeOfferLocations != null) {
            queryParams.put("includeOfferLocations", includeOfferLocations)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RetailerOfferResponse.class )

    }

    def getOfferDetails ( BigDecimal version, String deviceId, Long accountId, Long offerId, Long offerLocationId, Double distance, Double latitude, Double longitude, Boolean includeOfferLocations, Boolean includeRetailerLocations, Boolean includeChildOffers, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/offer/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }
        if (distance != null) {
            queryParams.put("distance", distance)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (includeOfferLocations != null) {
            queryParams.put("includeOfferLocations", includeOfferLocations)
        }
        if (includeRetailerLocations != null) {
            queryParams.put("includeRetailerLocations", includeRetailerLocations)
        }
        if (includeChildOffers != null) {
            queryParams.put("includeChildOffers", includeChildOffers)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OfferResponse.class )

    }

    def getOfferListCounts ( BigDecimal version, Double latitude, Double longitude, BigDecimal searchRange, String distanceUnit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/offer/lists/count"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (latitude == null) {
            throw new RuntimeException("missing required params latitude")
        }
        // verify required params are set
        if (longitude == null) {
            throw new RuntimeException("missing required params longitude")
        }

        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (searchRange != null) {
            queryParams.put("searchRange", searchRange)
        }
        if (distanceUnit != null) {
            queryParams.put("distanceUnit", distanceUnit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ListCountResponse.class )

    }

    def getOfferLocation ( BigDecimal version, Long offerLocationId, String udid, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/offer/location/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }
        if (udid != null) {
            queryParams.put("udid", udid)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OfferShortResponse.class )

    }

    def getOfferLocationsForRetailers ( BigDecimal version, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Boolean includeRetailerLocation, String deviceId, Long accountId, String keyword, Long retailerId, Long retailerLocationId, String offerType, String specialOfferType, String barcodeType, String barcodeEntry, String isbn, String asin, String deviceStatus, Boolean needsNotificationSent, Long lastNotificationSent, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/offer/location/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (sortField == null) {
            throw new RuntimeException("missing required params sortField")
        }
        // verify required params are set
        if (descending == null) {
            throw new RuntimeException("missing required params descending")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }
        // verify required params are set
        if (activeOnly == null) {
            throw new RuntimeException("missing required params activeOnly")
        }
        // verify required params are set
        if (includeRetailerLocation == null) {
            throw new RuntimeException("missing required params includeRetailerLocation")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (offerType != null) {
            queryParams.put("offerType", offerType)
        }
        if (specialOfferType != null) {
            queryParams.put("specialOfferType", specialOfferType)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (includeRetailerLocation != null) {
            queryParams.put("includeRetailerLocation", includeRetailerLocation)
        }
        if (barcodeType != null) {
            queryParams.put("barcodeType", barcodeType)
        }
        if (barcodeEntry != null) {
            queryParams.put("barcodeEntry", barcodeEntry)
        }
        if (isbn != null) {
            queryParams.put("isbn", isbn)
        }
        if (asin != null) {
            queryParams.put("asin", asin)
        }
        if (deviceStatus != null) {
            queryParams.put("deviceStatus", deviceStatus)
        }
        if (needsNotificationSent != null) {
            queryParams.put("needsNotificationSent", needsNotificationSent)
        }
        if (lastNotificationSent != null) {
            queryParams.put("lastNotificationSent", lastNotificationSent)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    OfferShortResponse.class )

    }

    def getOffersForRetailers ( BigDecimal version, String offerVisibility, String sortField, Boolean descending, Integer start, Integer limit, Boolean availableOnly, Boolean activeOnly, Boolean includeCategories, Boolean includeFilters, Boolean includeOfferLocations, String deviceId, Long accountId, String categoryIds, String filterIds, String q, String keyword, Long retailerId, Long retailerLocationId, String couponType, String offerType, String offerTypes, String specialOfferType, Integer i, Integer l, String barcodeType, String barcodeEntry, String isbn, String asin, String deviceStatus, Boolean needsNotificationSent, Long lastNotificationSent, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/offer/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (offerVisibility == null) {
            throw new RuntimeException("missing required params offerVisibility")
        }
        // verify required params are set
        if (sortField == null) {
            throw new RuntimeException("missing required params sortField")
        }
        // verify required params are set
        if (descending == null) {
            throw new RuntimeException("missing required params descending")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }
        // verify required params are set
        if (availableOnly == null) {
            throw new RuntimeException("missing required params availableOnly")
        }
        // verify required params are set
        if (activeOnly == null) {
            throw new RuntimeException("missing required params activeOnly")
        }
        // verify required params are set
        if (includeCategories == null) {
            throw new RuntimeException("missing required params includeCategories")
        }
        // verify required params are set
        if (includeFilters == null) {
            throw new RuntimeException("missing required params includeFilters")
        }
        // verify required params are set
        if (includeOfferLocations == null) {
            throw new RuntimeException("missing required params includeOfferLocations")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (couponType != null) {
            queryParams.put("couponType", couponType)
        }
        if (offerType != null) {
            queryParams.put("offerType", offerType)
        }
        if (offerTypes != null) {
            queryParams.put("offerTypes", offerTypes)
        }
        if (specialOfferType != null) {
            queryParams.put("specialOfferType", specialOfferType)
        }
        if (offerVisibility != null) {
            queryParams.put("offerVisibility", offerVisibility)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (i != null) {
            queryParams.put("_i", i)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (l != null) {
            queryParams.put("_l", l)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (availableOnly != null) {
            queryParams.put("availableOnly", availableOnly)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (includeCategories != null) {
            queryParams.put("includeCategories", includeCategories)
        }
        if (includeFilters != null) {
            queryParams.put("includeFilters", includeFilters)
        }
        if (includeOfferLocations != null) {
            queryParams.put("includeOfferLocations", includeOfferLocations)
        }
        if (barcodeType != null) {
            queryParams.put("barcodeType", barcodeType)
        }
        if (barcodeEntry != null) {
            queryParams.put("barcodeEntry", barcodeEntry)
        }
        if (isbn != null) {
            queryParams.put("isbn", isbn)
        }
        if (asin != null) {
            queryParams.put("asin", asin)
        }
        if (deviceStatus != null) {
            queryParams.put("deviceStatus", deviceStatus)
        }
        if (needsNotificationSent != null) {
            queryParams.put("needsNotificationSent", needsNotificationSent)
        }
        if (lastNotificationSent != null) {
            queryParams.put("lastNotificationSent", lastNotificationSent)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    OfferResponse.class )

    }

    def redeemOfferTransaction ( BigDecimal version, Long offerTransactionId, Integer status, String deviceId, Long accountId, Long offerLocationId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/offer/transaction/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (offerTransactionId == null) {
            throw new RuntimeException("missing required params offerTransactionId")
        }
        // verify required params are set
        if (status == null) {
            throw new RuntimeException("missing required params status")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (offerTransactionId != null) {
            queryParams.put("offerTransactionId", offerTransactionId)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }
        if (status != null) {
            queryParams.put("status", status)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def searchOfferTransactionsForRetailers ( BigDecimal version, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, String deviceId, Long accountId, String q, String keyword, Long retailerId, Long retailerLocationId, Long offerId, Long offerLocationId, Boolean redeemed, Boolean reservationsOnly, String couponType, String offerType, String specialOfferType, String customerAccountIds, String categoryIds, Long redeemableStartDate, Long redeemableEndDate, Integer i, Integer l, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/offer/transaction/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (sortField == null) {
            throw new RuntimeException("missing required params sortField")
        }
        // verify required params are set
        if (descending == null) {
            throw new RuntimeException("missing required params descending")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }
        // verify required params are set
        if (activeOnly == null) {
            throw new RuntimeException("missing required params activeOnly")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }
        if (redeemed != null) {
            queryParams.put("redeemed", redeemed)
        }
        if (reservationsOnly != null) {
            queryParams.put("reservationsOnly", reservationsOnly)
        }
        if (couponType != null) {
            queryParams.put("couponType", couponType)
        }
        if (offerType != null) {
            queryParams.put("offerType", offerType)
        }
        if (specialOfferType != null) {
            queryParams.put("specialOfferType", specialOfferType)
        }
        if (customerAccountIds != null) {
            queryParams.put("customerAccountIds", customerAccountIds)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (redeemableStartDate != null) {
            queryParams.put("redeemableStartDate", redeemableStartDate)
        }
        if (redeemableEndDate != null) {
            queryParams.put("redeemableEndDate", redeemableEndDate)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (i != null) {
            queryParams.put("_i", i)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (l != null) {
            queryParams.put("_l", l)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    OfferTransactionResponse.class )

    }

    def searchOffersForConsumer ( BigDecimal version, Double latitude, Double longitude, String recommendationType, Long locationId, Integer start, Integer limit, Integer maxRecommendations, String distanceUnit, String appKey, String deviceId, Long accountId, Double searchRange, String tags, String supportedPostalCodes, String keyword, String categories, String filters, String offerTypes, String type, String sortField, String recommendOfferIds, String retailerLocationIds, Long offerId, Boolean includeMission, Boolean includeCategories, Boolean includeFilters, Boolean includeExpired, Boolean includeFavorite, Boolean closestOfferOnly, String searchExpression, String groupBy, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/offer/lists"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (latitude == null) {
            throw new RuntimeException("missing required params latitude")
        }
        // verify required params are set
        if (longitude == null) {
            throw new RuntimeException("missing required params longitude")
        }
        // verify required params are set
        if (recommendationType == null) {
            throw new RuntimeException("missing required params recommendationType")
        }
        // verify required params are set
        if (locationId == null) {
            throw new RuntimeException("missing required params locationId")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }
        // verify required params are set
        if (maxRecommendations == null) {
            throw new RuntimeException("missing required params maxRecommendations")
        }
        // verify required params are set
        if (distanceUnit == null) {
            throw new RuntimeException("missing required params distanceUnit")
        }

        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (searchRange != null) {
            queryParams.put("searchRange", searchRange)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (supportedPostalCodes != null) {
            queryParams.put("supportedPostalCodes", supportedPostalCodes)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (categories != null) {
            queryParams.put("categories", categories)
        }
        if (filters != null) {
            queryParams.put("filters", filters)
        }
        if (offerTypes != null) {
            queryParams.put("offerTypes", offerTypes)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (recommendOfferIds != null) {
            queryParams.put("recommendOfferIds", recommendOfferIds)
        }
        if (recommendationType != null) {
            queryParams.put("recommendationType", recommendationType)
        }
        if (locationId != null) {
            queryParams.put("locationId", locationId)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (includeMission != null) {
            queryParams.put("includeMission", includeMission)
        }
        if (includeCategories != null) {
            queryParams.put("includeCategories", includeCategories)
        }
        if (includeFilters != null) {
            queryParams.put("includeFilters", includeFilters)
        }
        if (includeExpired != null) {
            queryParams.put("includeExpired", includeExpired)
        }
        if (includeFavorite != null) {
            queryParams.put("includeFavorite", includeFavorite)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (maxRecommendations != null) {
            queryParams.put("maxRecommendations", maxRecommendations)
        }
        if (distanceUnit != null) {
            queryParams.put("distanceUnit", distanceUnit)
        }
        if (closestOfferOnly != null) {
            queryParams.put("closestOfferOnly", closestOfferOnly)
        }
        if (searchExpression != null) {
            queryParams.put("searchExpression", searchExpression)
        }
        if (groupBy != null) {
            queryParams.put("groupBy", groupBy)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OfferListResponse.class )

    }

    def topOfferTransactions ( BigDecimal version, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/offer/top"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OfferListResponse.class )

    }

    def updateOffer ( BigDecimal version, Long offerId, Boolean includeOfferLocations, String deviceId, Long accountId, Long parentOfferId, String retailerLocationIds, String offerLocations, String tags, String title, String subTitle, String details, String subDetails, String finePrint, String barcodeType, String barcodeEntry, String externalRedeemOptions, String externalUrl, String externalId, String ticketsRewardType, Long ticketsReward, Long activated, Long expires, Boolean noExpiration, Integer availableLimit, Integer availableLimitPerUser, Integer addedLimit, Integer viewLimit, Integer maxPrints, String ticketPriceType, Long ticketPrice, Double fullPrice, Double discountPrice, Boolean showRemaining, Boolean showRedeemed, Boolean replaced, Boolean featured, String offerType, String specialOfferType, String offerVisibility, String categoryIds, String filterIds, Boolean active, Long barcodeAssetId, Long imageAssetId, Long imageAssetId1, Long imageAssetId2, Long imageAssetId3, Long imageAssetId4, Long imageAssetId5, String publisher, Long redeemableStart, Long redeemableEnd, String brand, String productType, String conditionType, String isbn, String asin, String catalogNumbers, String department, String features, Double minimumPrice, Double width, Double height, Double depth, Double weight, String unit, String studio, String parentalRating, Long publishDate, Long availabilityDate, Long sizeId, Long listingId, String mediaType, Integer duration, String author, Long releaseDate, String collectionIds, Integer rebootTimeHour, Integer rebootTimeMinute, Integer idleTimeoutInSecond, String serialNumber, String udid, String deviceType, Double devicePower, Double deviceInterference, String availability, String availabilitySummary, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/offer/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (offerId == null) {
            throw new RuntimeException("missing required params offerId")
        }
        // verify required params are set
        if (includeOfferLocations == null) {
            throw new RuntimeException("missing required params includeOfferLocations")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (parentOfferId != null) {
            queryParams.put("parentOfferId", parentOfferId)
        }
        if (includeOfferLocations != null) {
            queryParams.put("includeOfferLocations", includeOfferLocations)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (offerLocations != null) {
            queryParams.put("offerLocations", offerLocations)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (subTitle != null) {
            queryParams.put("subTitle", subTitle)
        }
        if (details != null) {
            queryParams.put("details", details)
        }
        if (subDetails != null) {
            queryParams.put("subDetails", subDetails)
        }
        if (finePrint != null) {
            queryParams.put("finePrint", finePrint)
        }
        if (barcodeType != null) {
            queryParams.put("barcodeType", barcodeType)
        }
        if (barcodeEntry != null) {
            queryParams.put("barcodeEntry", barcodeEntry)
        }
        if (externalRedeemOptions != null) {
            queryParams.put("externalRedeemOptions", externalRedeemOptions)
        }
        if (externalUrl != null) {
            queryParams.put("externalUrl", externalUrl)
        }
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }
        if (ticketsRewardType != null) {
            queryParams.put("ticketsRewardType", ticketsRewardType)
        }
        if (ticketsReward != null) {
            queryParams.put("ticketsReward", ticketsReward)
        }
        if (activated != null) {
            queryParams.put("activated", activated)
        }
        if (expires != null) {
            queryParams.put("expires", expires)
        }
        if (noExpiration != null) {
            queryParams.put("noExpiration", noExpiration)
        }
        if (availableLimit != null) {
            queryParams.put("availableLimit", availableLimit)
        }
        if (availableLimitPerUser != null) {
            queryParams.put("availableLimitPerUser", availableLimitPerUser)
        }
        if (addedLimit != null) {
            queryParams.put("addedLimit", addedLimit)
        }
        if (viewLimit != null) {
            queryParams.put("viewLimit", viewLimit)
        }
        if (maxPrints != null) {
            queryParams.put("maxPrints", maxPrints)
        }
        if (ticketPriceType != null) {
            queryParams.put("ticketPriceType", ticketPriceType)
        }
        if (ticketPrice != null) {
            queryParams.put("ticketPrice", ticketPrice)
        }
        if (fullPrice != null) {
            queryParams.put("fullPrice", fullPrice)
        }
        if (discountPrice != null) {
            queryParams.put("discountPrice", discountPrice)
        }
        if (showRemaining != null) {
            queryParams.put("showRemaining", showRemaining)
        }
        if (showRedeemed != null) {
            queryParams.put("showRedeemed", showRedeemed)
        }
        if (replaced != null) {
            queryParams.put("replaced", replaced)
        }
        if (featured != null) {
            queryParams.put("featured", featured)
        }
        if (offerType != null) {
            queryParams.put("offerType", offerType)
        }
        if (specialOfferType != null) {
            queryParams.put("specialOfferType", specialOfferType)
        }
        if (offerVisibility != null) {
            queryParams.put("offerVisibility", offerVisibility)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (barcodeAssetId != null) {
            queryParams.put("barcodeAssetId", barcodeAssetId)
        }
        if (imageAssetId != null) {
            queryParams.put("imageAssetId", imageAssetId)
        }
        if (imageAssetId1 != null) {
            queryParams.put("imageAssetId1", imageAssetId1)
        }
        if (imageAssetId2 != null) {
            queryParams.put("imageAssetId2", imageAssetId2)
        }
        if (imageAssetId3 != null) {
            queryParams.put("imageAssetId3", imageAssetId3)
        }
        if (imageAssetId4 != null) {
            queryParams.put("imageAssetId4", imageAssetId4)
        }
        if (imageAssetId5 != null) {
            queryParams.put("imageAssetId5", imageAssetId5)
        }
        if (publisher != null) {
            queryParams.put("publisher", publisher)
        }
        if (redeemableStart != null) {
            queryParams.put("redeemableStart", redeemableStart)
        }
        if (redeemableEnd != null) {
            queryParams.put("redeemableEnd", redeemableEnd)
        }
        if (brand != null) {
            queryParams.put("brand", brand)
        }
        if (productType != null) {
            queryParams.put("productType", productType)
        }
        if (conditionType != null) {
            queryParams.put("conditionType", conditionType)
        }
        if (isbn != null) {
            queryParams.put("isbn", isbn)
        }
        if (asin != null) {
            queryParams.put("asin", asin)
        }
        if (catalogNumbers != null) {
            queryParams.put("catalogNumbers", catalogNumbers)
        }
        if (department != null) {
            queryParams.put("department", department)
        }
        if (features != null) {
            queryParams.put("features", features)
        }
        if (minimumPrice != null) {
            queryParams.put("minimumPrice", minimumPrice)
        }
        if (width != null) {
            queryParams.put("width", width)
        }
        if (height != null) {
            queryParams.put("height", height)
        }
        if (depth != null) {
            queryParams.put("depth", depth)
        }
        if (weight != null) {
            queryParams.put("weight", weight)
        }
        if (unit != null) {
            queryParams.put("unit", unit)
        }
        if (studio != null) {
            queryParams.put("studio", studio)
        }
        if (parentalRating != null) {
            queryParams.put("parentalRating", parentalRating)
        }
        if (publishDate != null) {
            queryParams.put("publishDate", publishDate)
        }
        if (availabilityDate != null) {
            queryParams.put("availabilityDate", availabilityDate)
        }
        if (sizeId != null) {
            queryParams.put("sizeId", sizeId)
        }
        if (listingId != null) {
            queryParams.put("listingId", listingId)
        }
        if (mediaType != null) {
            queryParams.put("mediaType", mediaType)
        }
        if (duration != null) {
            queryParams.put("duration", duration)
        }
        if (author != null) {
            queryParams.put("author", author)
        }
        if (releaseDate != null) {
            queryParams.put("releaseDate", releaseDate)
        }
        if (collectionIds != null) {
            queryParams.put("collectionIds", collectionIds)
        }
        if (rebootTimeHour != null) {
            queryParams.put("rebootTimeHour", rebootTimeHour)
        }
        if (rebootTimeMinute != null) {
            queryParams.put("rebootTimeMinute", rebootTimeMinute)
        }
        if (idleTimeoutInSecond != null) {
            queryParams.put("idleTimeoutInSecond", idleTimeoutInSecond)
        }
        if (serialNumber != null) {
            queryParams.put("serialNumber", serialNumber)
        }
        if (udid != null) {
            queryParams.put("udid", udid)
        }
        if (deviceType != null) {
            queryParams.put("deviceType", deviceType)
        }
        if (devicePower != null) {
            queryParams.put("devicePower", devicePower)
        }
        if (deviceInterference != null) {
            queryParams.put("deviceInterference", deviceInterference)
        }
        if (availability != null) {
            queryParams.put("availability", availability)
        }
        if (availabilitySummary != null) {
            queryParams.put("availabilitySummary", availabilitySummary)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RetailerOfferResponse.class )

    }

    def updateOfferStatus ( BigDecimal version, String offerIds, Boolean active, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/offer/status"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (offerIds == null) {
            throw new RuntimeException("missing required params offerIds")
        }
        // verify required params are set
        if (active == null) {
            throw new RuntimeException("missing required params active")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (offerIds != null) {
            queryParams.put("offerIds", offerIds)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
