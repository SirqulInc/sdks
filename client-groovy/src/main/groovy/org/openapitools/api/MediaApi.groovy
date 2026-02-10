package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.MediaOfferResponse
import org.openapitools.model.SirqulResponse

class MediaApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createMedia ( BigDecimal version, Long accountId, String title, String barcodeType, Boolean noExpiration, Integer availableLimit, Integer availableLimitPerUser, Integer addedLimit, Integer viewLimit, Integer maxPrints, Long ticketPrice, Double fullPrice, Double discountPrice, String specialOfferType, String offerVisibility, Boolean active, String retailerLocationIds, String subTitle, String details, String subDetails, String finePrint, String barcodeEntry, String externalRedeemOptions, String externalUrl, String ticketsRewardType, Long ticketsReward, Long activated, Long expires, String ticketPriceType, Boolean showRemaining, Boolean showRedeemed, Boolean replaced, Boolean featured, String categoryIds, String filterIds, Long barcodeAssetId, Long imageAssetId, Long imageAssetId1, Long imageAssetId2, Long imageAssetId3, Long imageAssetId4, Long imageAssetId5, String publisher, Long redeemableStart, Long redeemableEnd, String conditionType, String isbn, String asin, String catalogNumbers, String parentalRating, Long availabilityDate, String mediaType, Integer duration, String author, Long releaseDate, String collectionIds, String availability, String availabilitySummary, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/media/create"

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
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
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
        if (parentalRating != null) {
            queryParams.put("parentalRating", parentalRating)
        }
        if (availabilityDate != null) {
            queryParams.put("availabilityDate", availabilityDate)
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
        if (availability != null) {
            queryParams.put("availability", availability)
        }
        if (availabilitySummary != null) {
            queryParams.put("availabilitySummary", availabilitySummary)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    MediaOfferResponse.class )

    }

    def deleteMedia ( BigDecimal version, Long accountId, Long mediaId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/media/delete"

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
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (mediaId == null) {
            throw new RuntimeException("missing required params mediaId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (mediaId != null) {
            queryParams.put("mediaId", mediaId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getMedia ( BigDecimal version, Long accountId, Long mediaId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/media/get"

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
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (mediaId == null) {
            throw new RuntimeException("missing required params mediaId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (mediaId != null) {
            queryParams.put("mediaId", mediaId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    MediaOfferResponse.class )

    }

    def searchMedia ( BigDecimal version, Long accountId, Boolean activeOnly, String sortField, Boolean descending, String keyword, String categoryIds, String filterIds, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/media/search"

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
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (activeOnly == null) {
            throw new RuntimeException("missing required params activeOnly")
        }
        // verify required params are set
        if (sortField == null) {
            throw new RuntimeException("missing required params sortField")
        }
        // verify required params are set
        if (descending == null) {
            throw new RuntimeException("missing required params descending")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    MediaOfferResponse.class )

    }

    def updateMedia ( BigDecimal version, Long accountId, Long mediaId, String retailerLocationIds, String offerLocations, String title, String subTitle, String details, String subDetails, String finePrint, String barcodeType, String barcodeEntry, String externalRedeemOptions, String externalUrl, String ticketsRewardType, Long ticketsReward, Long activated, Long expires, Boolean noExpiration, Integer availableLimit, Integer availableLimitPerUser, Integer addedLimit, Integer viewLimit, Integer maxPrints, String ticketPriceType, Long ticketPrice, Double fullPrice, Double discountPrice, Boolean showRemaining, Boolean showRedeemed, Boolean replaced, Boolean featured, String specialOfferType, String offerVisibility, String categoryIds, String filterIds, Boolean active, Long barcodeAssetId, Long imageAssetId, Long imageAssetId1, Long imageAssetId2, Long imageAssetId3, Long imageAssetId4, Long imageAssetId5, String publisher, Long redeemableStart, Long redeemableEnd, String conditionType, String isbn, String asin, String catalogNumbers, Long availabilityDate, String parentalRating, String mediaType, Integer duration, String author, Long releaseDate, String collectionIds, String availability, String availabilitySummary, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/media/update"

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
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (mediaId == null) {
            throw new RuntimeException("missing required params mediaId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (mediaId != null) {
            queryParams.put("mediaId", mediaId)
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
        if (availabilityDate != null) {
            queryParams.put("availabilityDate", availabilityDate)
        }
        if (parentalRating != null) {
            queryParams.put("parentalRating", parentalRating)
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
        if (availability != null) {
            queryParams.put("availability", availability)
        }
        if (availabilitySummary != null) {
            queryParams.put("availabilitySummary", availabilitySummary)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    MediaOfferResponse.class )

    }

}
