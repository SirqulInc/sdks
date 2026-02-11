package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.BidResponse
import org.openapitools.model.SirqulResponse

class BidApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createBid ( String biddableType, Long biddableId, Double amountPerView, Double amountPerAction, Double budgetAmount, String budgetSchedule, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/bid/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (biddableType == null) {
            throw new RuntimeException("missing required params biddableType")
        }
        // verify required params are set
        if (biddableId == null) {
            throw new RuntimeException("missing required params biddableId")
        }
        // verify required params are set
        if (amountPerView == null) {
            throw new RuntimeException("missing required params amountPerView")
        }
        // verify required params are set
        if (amountPerAction == null) {
            throw new RuntimeException("missing required params amountPerAction")
        }
        // verify required params are set
        if (budgetAmount == null) {
            throw new RuntimeException("missing required params budgetAmount")
        }
        // verify required params are set
        if (budgetSchedule == null) {
            throw new RuntimeException("missing required params budgetSchedule")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (biddableType != null) {
            queryParams.put("biddableType", biddableType)
        }
        if (biddableId != null) {
            queryParams.put("biddableId", biddableId)
        }
        if (amountPerView != null) {
            queryParams.put("amountPerView", amountPerView)
        }
        if (amountPerAction != null) {
            queryParams.put("amountPerAction", amountPerAction)
        }
        if (budgetAmount != null) {
            queryParams.put("budgetAmount", budgetAmount)
        }
        if (budgetSchedule != null) {
            queryParams.put("budgetSchedule", budgetSchedule)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    BidResponse.class )

    }

    def deleteBid ( Long bidId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/bid/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (bidId == null) {
            throw new RuntimeException("missing required params bidId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (bidId != null) {
            queryParams.put("bidId", bidId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getBid ( Long bidId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/bid/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (bidId == null) {
            throw new RuntimeException("missing required params bidId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (bidId != null) {
            queryParams.put("bidId", bidId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    BidResponse.class )

    }

    def updateBid ( Long bidId, String deviceId, Long accountId, Double amountPerView, Double amountPerAction, Double budgetAmount, String budgetSchedule, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/bid/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (bidId == null) {
            throw new RuntimeException("missing required params bidId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (bidId != null) {
            queryParams.put("bidId", bidId)
        }
        if (amountPerView != null) {
            queryParams.put("amountPerView", amountPerView)
        }
        if (amountPerAction != null) {
            queryParams.put("amountPerAction", amountPerAction)
        }
        if (budgetAmount != null) {
            queryParams.put("budgetAmount", budgetAmount)
        }
        if (budgetSchedule != null) {
            queryParams.put("budgetSchedule", budgetSchedule)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    BidResponse.class )

    }

}
