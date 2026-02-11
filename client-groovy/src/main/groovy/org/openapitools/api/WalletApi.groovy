package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.OfferTransactionResponse
import org.openapitools.model.SirqulResponse

class WalletApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createOfferTransaction ( String deviceId, Long accountId, Long offerId, Long offerLocationId, String offerCart, String promoCode, String currencyType, Boolean usePoints, String metaData, String appKey, Integer status, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/wallet/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
        if (offerCart != null) {
            queryParams.put("offerCart", offerCart)
        }
        if (promoCode != null) {
            queryParams.put("promoCode", promoCode)
        }
        if (currencyType != null) {
            queryParams.put("currencyType", currencyType)
        }
        if (usePoints != null) {
            queryParams.put("usePoints", usePoints)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (status != null) {
            queryParams.put("status", status)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "array",
                    OfferTransactionResponse.class )

    }

    def deleteOfferTransaction ( Long transactionId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/wallet/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (transactionId == null) {
            throw new RuntimeException("missing required params transactionId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (transactionId != null) {
            queryParams.put("transactionId", transactionId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getOfferTransaction ( Long transactionId, String deviceId, Long accountId, Boolean includeMission, Double latitude, Double longitude, Boolean returnFullResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/wallet/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (transactionId == null) {
            throw new RuntimeException("missing required params transactionId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (transactionId != null) {
            queryParams.put("transactionId", transactionId)
        }
        if (includeMission != null) {
            queryParams.put("includeMission", includeMission)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (returnFullResponse != null) {
            queryParams.put("returnFullResponse", returnFullResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OfferTransactionResponse.class )

    }

    def previewOfferTransaction ( String deviceId, Long accountId, Long offerId, Long offerLocationId, String offerCart, String promoCode, String currencyType, Boolean usePoints, String metaData, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/wallet/preview"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
        if (offerCart != null) {
            queryParams.put("offerCart", offerCart)
        }
        if (promoCode != null) {
            queryParams.put("promoCode", promoCode)
        }
        if (currencyType != null) {
            queryParams.put("currencyType", currencyType)
        }
        if (usePoints != null) {
            queryParams.put("usePoints", usePoints)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "array",
                    OfferTransactionResponse.class )

    }

    def searchOfferTransactions ( String deviceId, Long accountId, String keyword, Long retailerId, String retailerIds, Long retailerLocationId, String retailerLocationIds, String excludeRetailerLocationIds, Long offerId, String offerIds, Long offerLocationId, String offerLocationIds, String offerType, String offerTypes, String specialOfferType, String specialOfferTypes, String categoryIds, String filterIds, String offerAudienceIds, String sortField, Boolean descending, Integer start, Integer limit, Double latitude, Double longitude, Long redeemableStartDate, Long redeemableEndDate, Boolean filterByParentOffer, Long startedSince, Long startedBefore, Long endedSince, Long endedBefore, Boolean redeemed, String statuses, Boolean reservationsOnly, Boolean activeOnly, Boolean returnFullResponse, Long recurringStartedSince, Long recurringStartedBefore, Long recurringExpirationSince, Long recurringExpirationBefore, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/wallet/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
        if (retailerIds != null) {
            queryParams.put("retailerIds", retailerIds)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (excludeRetailerLocationIds != null) {
            queryParams.put("excludeRetailerLocationIds", excludeRetailerLocationIds)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (offerIds != null) {
            queryParams.put("offerIds", offerIds)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }
        if (offerLocationIds != null) {
            queryParams.put("offerLocationIds", offerLocationIds)
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
        if (specialOfferTypes != null) {
            queryParams.put("specialOfferTypes", specialOfferTypes)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (offerAudienceIds != null) {
            queryParams.put("offerAudienceIds", offerAudienceIds)
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
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (redeemableStartDate != null) {
            queryParams.put("redeemableStartDate", redeemableStartDate)
        }
        if (redeemableEndDate != null) {
            queryParams.put("redeemableEndDate", redeemableEndDate)
        }
        if (filterByParentOffer != null) {
            queryParams.put("filterByParentOffer", filterByParentOffer)
        }
        if (startedSince != null) {
            queryParams.put("startedSince", startedSince)
        }
        if (startedBefore != null) {
            queryParams.put("startedBefore", startedBefore)
        }
        if (endedSince != null) {
            queryParams.put("endedSince", endedSince)
        }
        if (endedBefore != null) {
            queryParams.put("endedBefore", endedBefore)
        }
        if (redeemed != null) {
            queryParams.put("redeemed", redeemed)
        }
        if (statuses != null) {
            queryParams.put("statuses", statuses)
        }
        if (reservationsOnly != null) {
            queryParams.put("reservationsOnly", reservationsOnly)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (returnFullResponse != null) {
            queryParams.put("returnFullResponse", returnFullResponse)
        }
        if (recurringStartedSince != null) {
            queryParams.put("recurringStartedSince", recurringStartedSince)
        }
        if (recurringStartedBefore != null) {
            queryParams.put("recurringStartedBefore", recurringStartedBefore)
        }
        if (recurringExpirationSince != null) {
            queryParams.put("recurringExpirationSince", recurringExpirationSince)
        }
        if (recurringExpirationBefore != null) {
            queryParams.put("recurringExpirationBefore", recurringExpirationBefore)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    OfferTransactionResponse.class )

    }

    def updateOfferTransaction ( Long transactionId, Integer status, String deviceId, Long accountId, Long offerLocationId, String currencyType, Boolean usePoints, String appKey, Double latitude, Double longitude, String metaData, Boolean returnFullResponse, String exceptionMembershipOfferIds, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/wallet/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (transactionId == null) {
            throw new RuntimeException("missing required params transactionId")
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
        if (transactionId != null) {
            queryParams.put("transactionId", transactionId)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }
        if (currencyType != null) {
            queryParams.put("currencyType", currencyType)
        }
        if (usePoints != null) {
            queryParams.put("usePoints", usePoints)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (status != null) {
            queryParams.put("status", status)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (returnFullResponse != null) {
            queryParams.put("returnFullResponse", returnFullResponse)
        }
        if (exceptionMembershipOfferIds != null) {
            queryParams.put("exceptionMembershipOfferIds", exceptionMembershipOfferIds)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OfferTransactionResponse.class )

    }

}
