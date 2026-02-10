package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.PurchaseItemFullResponse
import org.openapitools.model.PurchaseItemResponse
import org.openapitools.model.SirqulResponse

class PurchaseItemApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createPurchaseItem ( BigDecimal version, String appKey, String name, String purchaseType, String deviceId, Long accountId, String description, Integer tickets, Float price, String purchaseCode, String secretKey, Integer purchaseLimit, String serviceAction, Long coverAssetId, Long promoAssetId, Boolean giftable, Boolean assetable, Boolean allocateTickets, String ticketType, Long points, Long offerLocationId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/purchase/create"

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
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (purchaseType == null) {
            throw new RuntimeException("missing required params purchaseType")
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
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (tickets != null) {
            queryParams.put("tickets", tickets)
        }
        if (price != null) {
            queryParams.put("price", price)
        }
        if (purchaseType != null) {
            queryParams.put("purchaseType", purchaseType)
        }
        if (purchaseCode != null) {
            queryParams.put("purchaseCode", purchaseCode)
        }
        if (secretKey != null) {
            queryParams.put("secretKey", secretKey)
        }
        if (purchaseLimit != null) {
            queryParams.put("purchaseLimit", purchaseLimit)
        }
        if (serviceAction != null) {
            queryParams.put("serviceAction", serviceAction)
        }
        if (coverAssetId != null) {
            queryParams.put("coverAssetId", coverAssetId)
        }
        if (promoAssetId != null) {
            queryParams.put("promoAssetId", promoAssetId)
        }
        if (giftable != null) {
            queryParams.put("giftable", giftable)
        }
        if (assetable != null) {
            queryParams.put("assetable", assetable)
        }
        if (allocateTickets != null) {
            queryParams.put("allocateTickets", allocateTickets)
        }
        if (ticketType != null) {
            queryParams.put("ticketType", ticketType)
        }
        if (points != null) {
            queryParams.put("points", points)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PurchaseItemFullResponse.class )

    }

    def deletePurchaseItem ( BigDecimal version, Long purchaseItemId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/purchase/delete"

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
        if (purchaseItemId == null) {
            throw new RuntimeException("missing required params purchaseItemId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (purchaseItemId != null) {
            queryParams.put("purchaseItemId", purchaseItemId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getPurchaseItem ( BigDecimal version, Long purchaseItemId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/purchase/get"

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
        if (purchaseItemId == null) {
            throw new RuntimeException("missing required params purchaseItemId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (purchaseItemId != null) {
            queryParams.put("purchaseItemId", purchaseItemId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PurchaseItemFullResponse.class )

    }

    def searchPurchaseItems ( BigDecimal version, String deviceId, Long accountId, String appKey, Boolean filterByBillable, String purchaseType, String serviceAction, String keyword, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/purchase/search"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (filterByBillable != null) {
            queryParams.put("filterByBillable", filterByBillable)
        }
        if (purchaseType != null) {
            queryParams.put("purchaseType", purchaseType)
        }
        if (serviceAction != null) {
            queryParams.put("serviceAction", serviceAction)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    PurchaseItemResponse.class )

    }

    def updatePurchaseItem ( BigDecimal version, Long purchaseItemId, String deviceId, Long accountId, String name, String description, Integer tickets, Float price, String purchaseType, String purchaseCode, String secretKey, Integer purchaseLimit, String serviceAction, Long coverAssetId, Long promoAssetId, Boolean giftable, Boolean assetable, Boolean active, Boolean allocateTickets, String ticketType, Long points, Long offerLocationId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/purchase/update"

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
        if (purchaseItemId == null) {
            throw new RuntimeException("missing required params purchaseItemId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (purchaseItemId != null) {
            queryParams.put("purchaseItemId", purchaseItemId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (tickets != null) {
            queryParams.put("tickets", tickets)
        }
        if (price != null) {
            queryParams.put("price", price)
        }
        if (purchaseType != null) {
            queryParams.put("purchaseType", purchaseType)
        }
        if (purchaseCode != null) {
            queryParams.put("purchaseCode", purchaseCode)
        }
        if (secretKey != null) {
            queryParams.put("secretKey", secretKey)
        }
        if (purchaseLimit != null) {
            queryParams.put("purchaseLimit", purchaseLimit)
        }
        if (serviceAction != null) {
            queryParams.put("serviceAction", serviceAction)
        }
        if (coverAssetId != null) {
            queryParams.put("coverAssetId", coverAssetId)
        }
        if (promoAssetId != null) {
            queryParams.put("promoAssetId", promoAssetId)
        }
        if (giftable != null) {
            queryParams.put("giftable", giftable)
        }
        if (assetable != null) {
            queryParams.put("assetable", assetable)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (allocateTickets != null) {
            queryParams.put("allocateTickets", allocateTickets)
        }
        if (ticketType != null) {
            queryParams.put("ticketType", ticketType)
        }
        if (points != null) {
            queryParams.put("points", points)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PurchaseItemFullResponse.class )

    }

}
