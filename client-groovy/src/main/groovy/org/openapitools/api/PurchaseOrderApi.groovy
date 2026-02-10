package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.OrderResponse
import org.openapitools.model.SirqulResponse

class PurchaseOrderApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createOrder ( BigDecimal version, String appKey, String cart, String deviceId, Long accountId, String description, String currencyType, Long paymentMethodId, String externalOrderId, String externalPaymentId, String remoteRefType, Long externalDate, String promoCode, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/order/create"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (cart == null) {
            throw new RuntimeException("missing required params cart")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (currencyType != null) {
            queryParams.put("currencyType", currencyType)
        }
        if (cart != null) {
            queryParams.put("cart", cart)
        }
        if (paymentMethodId != null) {
            queryParams.put("paymentMethodId", paymentMethodId)
        }
        if (externalOrderId != null) {
            queryParams.put("externalOrderId", externalOrderId)
        }
        if (externalPaymentId != null) {
            queryParams.put("externalPaymentId", externalPaymentId)
        }
        if (remoteRefType != null) {
            queryParams.put("remoteRefType", remoteRefType)
        }
        if (externalDate != null) {
            queryParams.put("externalDate", externalDate)
        }
        if (promoCode != null) {
            queryParams.put("promoCode", promoCode)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrderResponse.class )

    }

    def deleteOrder ( BigDecimal version, Long orderId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/order/delete"

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
        if (orderId == null) {
            throw new RuntimeException("missing required params orderId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (orderId != null) {
            queryParams.put("orderId", orderId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getOrder ( BigDecimal version, String deviceId, Long accountId, Long orderId, String externalOrderId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/order/get"

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
        if (orderId != null) {
            queryParams.put("orderId", orderId)
        }
        if (externalOrderId != null) {
            queryParams.put("externalOrderId", externalOrderId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OrderResponse.class )

    }

    def previewOrder ( BigDecimal version, String appKey, String cart, String deviceId, Long accountId, String description, String currencyType, Long paymentMethodId, String externalOrderId, String externalPaymentId, String remoteRefType, Long externalDate, String promoCode, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/order/preview"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (cart == null) {
            throw new RuntimeException("missing required params cart")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (currencyType != null) {
            queryParams.put("currencyType", currencyType)
        }
        if (cart != null) {
            queryParams.put("cart", cart)
        }
        if (paymentMethodId != null) {
            queryParams.put("paymentMethodId", paymentMethodId)
        }
        if (externalOrderId != null) {
            queryParams.put("externalOrderId", externalOrderId)
        }
        if (externalPaymentId != null) {
            queryParams.put("externalPaymentId", externalPaymentId)
        }
        if (remoteRefType != null) {
            queryParams.put("remoteRefType", remoteRefType)
        }
        if (externalDate != null) {
            queryParams.put("externalDate", externalDate)
        }
        if (promoCode != null) {
            queryParams.put("promoCode", promoCode)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrderResponse.class )

    }

    def searchOrders ( BigDecimal version, String appKey, String deviceId, Long accountId, Integer start, Integer limit, Boolean descending, Boolean activeOnly, Boolean ignoreCustomerFilter, String orderItemTypes, String orderItemIds, String orderCustomTypes, String orderCustomIds, String sortField, String offerTypes, String specialOfferTypes, String categoryIds, String filterIds, String offerAudienceIds, String transactionAudienceIds, String offerIds, String offerLocationIds, String retailerIds, String retailerLocationIds, String statuses, String keyword, Long redeemableStartDate, Long redeemableEndDate, Long startedSince, Long startedBefore, Long endedSince, Long endedBefore, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/order/search"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (ignoreCustomerFilter != null) {
            queryParams.put("ignoreCustomerFilter", ignoreCustomerFilter)
        }
        if (orderItemTypes != null) {
            queryParams.put("orderItemTypes", orderItemTypes)
        }
        if (orderItemIds != null) {
            queryParams.put("orderItemIds", orderItemIds)
        }
        if (orderCustomTypes != null) {
            queryParams.put("orderCustomTypes", orderCustomTypes)
        }
        if (orderCustomIds != null) {
            queryParams.put("orderCustomIds", orderCustomIds)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (offerTypes != null) {
            queryParams.put("offerTypes", offerTypes)
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
        if (transactionAudienceIds != null) {
            queryParams.put("transactionAudienceIds", transactionAudienceIds)
        }
        if (offerIds != null) {
            queryParams.put("offerIds", offerIds)
        }
        if (offerLocationIds != null) {
            queryParams.put("offerLocationIds", offerLocationIds)
        }
        if (retailerIds != null) {
            queryParams.put("retailerIds", retailerIds)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (statuses != null) {
            queryParams.put("statuses", statuses)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (redeemableStartDate != null) {
            queryParams.put("redeemableStartDate", redeemableStartDate)
        }
        if (redeemableEndDate != null) {
            queryParams.put("redeemableEndDate", redeemableEndDate)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    OrderResponse.class )

    }

    def updateOrder ( BigDecimal version, Long orderId, String appKey, String cart, String deviceId, Long accountId, Long paymentTransactionId, String description, String currencyType, Long paymentMethodId, String externalPaymentId, Long externalDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/order/update"

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
        if (orderId == null) {
            throw new RuntimeException("missing required params orderId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (cart == null) {
            throw new RuntimeException("missing required params cart")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (orderId != null) {
            queryParams.put("orderId", orderId)
        }
        if (paymentTransactionId != null) {
            queryParams.put("paymentTransactionId", paymentTransactionId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (currencyType != null) {
            queryParams.put("currencyType", currencyType)
        }
        if (cart != null) {
            queryParams.put("cart", cart)
        }
        if (paymentMethodId != null) {
            queryParams.put("paymentMethodId", paymentMethodId)
        }
        if (externalPaymentId != null) {
            queryParams.put("externalPaymentId", externalPaymentId)
        }
        if (externalDate != null) {
            queryParams.put("externalDate", externalDate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OrderResponse.class )

    }

}
