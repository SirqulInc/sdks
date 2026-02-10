package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.CountResponse
import org.openapitools.model.ProfileResponse
import org.openapitools.model.SirqulResponse
import org.openapitools.model.TicketListResponse
import org.openapitools.model.TicketOfferResponse

class TicketApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getTicketCount ( BigDecimal version, String deviceId, Long accountId, String gameType, String appKey, String ticketType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/ticket/count"

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
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (ticketType != null) {
            queryParams.put("ticketType", ticketType)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CountResponse.class )

    }

    def getTicketList ( BigDecimal version, String deviceId, Long accountId, String ticketObjectType, String actionType, String ticketIds, String objectIds, String receiptTokens, String gameType, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/ticket/getList"

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
        if (ticketObjectType != null) {
            queryParams.put("ticketObjectType", ticketObjectType)
        }
        if (actionType != null) {
            queryParams.put("actionType", actionType)
        }
        if (ticketIds != null) {
            queryParams.put("ticketIds", ticketIds)
        }
        if (objectIds != null) {
            queryParams.put("objectIds", objectIds)
        }
        if (receiptTokens != null) {
            queryParams.put("receiptTokens", receiptTokens)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    TicketListResponse.class )

    }

    def giftPurchase ( BigDecimal version, Long receiverAccountId, Long ticketId, String deviceId, Long accountId, Long assetId, String customMessage, String gameType, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/purchase/gift"

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
        if (receiverAccountId == null) {
            throw new RuntimeException("missing required params receiverAccountId")
        }
        // verify required params are set
        if (ticketId == null) {
            throw new RuntimeException("missing required params ticketId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (receiverAccountId != null) {
            queryParams.put("receiverAccountId", receiverAccountId)
        }
        if (ticketId != null) {
            queryParams.put("ticketId", ticketId)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (customMessage != null) {
            queryParams.put("customMessage", customMessage)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def saveTicket ( BigDecimal version, String actionType, String ticketObjectType, Boolean returnNulls, String deviceId, Long accountId, String gameType, String appKey, Long objectId, String purchaseCode, String receiptToken, String receiptData, Long count, String ticketType, String purchaseProvider, String purchaseType, Boolean returnProfileResponse, Boolean includeProfileResponse, String appVersion, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/ticket/save"

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
        if (actionType == null) {
            throw new RuntimeException("missing required params actionType")
        }
        // verify required params are set
        if (ticketObjectType == null) {
            throw new RuntimeException("missing required params ticketObjectType")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (actionType != null) {
            queryParams.put("actionType", actionType)
        }
        if (ticketObjectType != null) {
            queryParams.put("ticketObjectType", ticketObjectType)
        }
        if (objectId != null) {
            queryParams.put("objectId", objectId)
        }
        if (purchaseCode != null) {
            queryParams.put("purchaseCode", purchaseCode)
        }
        if (receiptToken != null) {
            queryParams.put("receiptToken", receiptToken)
        }
        if (receiptData != null) {
            queryParams.put("receiptData", receiptData)
        }
        if (count != null) {
            queryParams.put("count", count)
        }
        if (ticketType != null) {
            queryParams.put("ticketType", ticketType)
        }
        if (purchaseProvider != null) {
            queryParams.put("purchaseProvider", purchaseProvider)
        }
        if (purchaseType != null) {
            queryParams.put("purchaseType", purchaseType)
        }
        if (returnProfileResponse != null) {
            queryParams.put("returnProfileResponse", returnProfileResponse)
        }
        if (includeProfileResponse != null) {
            queryParams.put("includeProfileResponse", includeProfileResponse)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

    def saveTicketViaFileUpload ( BigDecimal version, String actionType, String ticketObjectType, File receiptData, Boolean returnNulls, String deviceId, Long accountId, String gameType, String appKey, Long objectId, String purchaseCode, String receiptToken, Long count, String ticketType, String purchaseProvider, String purchaseType, Boolean returnProfileResponse, Boolean includeProfileResponse, String appVersion, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/ticket/save/fileUpload"

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
        if (actionType == null) {
            throw new RuntimeException("missing required params actionType")
        }
        // verify required params are set
        if (ticketObjectType == null) {
            throw new RuntimeException("missing required params ticketObjectType")
        }
        // verify required params are set
        if (receiptData == null) {
            throw new RuntimeException("missing required params receiptData")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (actionType != null) {
            queryParams.put("actionType", actionType)
        }
        if (ticketObjectType != null) {
            queryParams.put("ticketObjectType", ticketObjectType)
        }
        if (objectId != null) {
            queryParams.put("objectId", objectId)
        }
        if (purchaseCode != null) {
            queryParams.put("purchaseCode", purchaseCode)
        }
        if (receiptToken != null) {
            queryParams.put("receiptToken", receiptToken)
        }
        if (receiptData != null) {
            queryParams.put("receiptData", receiptData)
        }
        if (count != null) {
            queryParams.put("count", count)
        }
        if (ticketType != null) {
            queryParams.put("ticketType", ticketType)
        }
        if (purchaseProvider != null) {
            queryParams.put("purchaseProvider", purchaseProvider)
        }
        if (purchaseType != null) {
            queryParams.put("purchaseType", purchaseType)
        }
        if (returnProfileResponse != null) {
            queryParams.put("returnProfileResponse", returnProfileResponse)
        }
        if (includeProfileResponse != null) {
            queryParams.put("includeProfileResponse", includeProfileResponse)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

    def ticketOffers ( BigDecimal version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/ticket/ticketoffers"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    TicketOfferResponse.class )

    }

}
