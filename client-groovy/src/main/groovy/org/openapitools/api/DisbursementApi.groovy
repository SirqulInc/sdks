package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.DisbursementResponse

class DisbursementApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def checkDisbursements ( Long disbursementId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/disbursement/check"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (disbursementId == null) {
            throw new RuntimeException("missing required params disbursementId")
        }

        if (disbursementId != null) {
            queryParams.put("disbursementId", disbursementId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    DisbursementResponse.class )

    }

    def createDisbursement ( Long accountId, Long receiverAccountId, Long originalSenderAccountId, BigDecimal amount, String provider, Long scheduledDate, String title, String comment, String externalId, String introspectionParams, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/disbursement/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (receiverAccountId == null) {
            throw new RuntimeException("missing required params receiverAccountId")
        }
        // verify required params are set
        if (originalSenderAccountId == null) {
            throw new RuntimeException("missing required params originalSenderAccountId")
        }
        // verify required params are set
        if (amount == null) {
            throw new RuntimeException("missing required params amount")
        }
        // verify required params are set
        if (provider == null) {
            throw new RuntimeException("missing required params provider")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (receiverAccountId != null) {
            queryParams.put("receiverAccountId", receiverAccountId)
        }
        if (originalSenderAccountId != null) {
            queryParams.put("originalSenderAccountId", originalSenderAccountId)
        }
        if (amount != null) {
            queryParams.put("amount", amount)
        }
        if (provider != null) {
            queryParams.put("provider", provider)
        }
        if (scheduledDate != null) {
            queryParams.put("scheduledDate", scheduledDate)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (comment != null) {
            queryParams.put("comment", comment)
        }
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }
        if (introspectionParams != null) {
            queryParams.put("introspectionParams", introspectionParams)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    DisbursementResponse.class )

    }

    def getDisbursement ( Long accountId, Long disbursementId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/disbursement/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (disbursementId == null) {
            throw new RuntimeException("missing required params disbursementId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (disbursementId != null) {
            queryParams.put("disbursementId", disbursementId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    DisbursementResponse.class )

    }

    def searchDisbursements ( Long accountId, Long receiverAccountId, String statuses, String providers, Long beforeDate, Long afterDate, Integer start, Integer limit, Boolean activeOnly, String externalId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/disbursement/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (receiverAccountId != null) {
            queryParams.put("receiverAccountId", receiverAccountId)
        }
        if (statuses != null) {
            queryParams.put("statuses", statuses)
        }
        if (providers != null) {
            queryParams.put("providers", providers)
        }
        if (beforeDate != null) {
            queryParams.put("beforeDate", beforeDate)
        }
        if (afterDate != null) {
            queryParams.put("afterDate", afterDate)
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
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    DisbursementResponse.class )

    }

    def updateDisbursement ( Long accountId, Long disbursementId, BigDecimal amount, String provider, Long scheduledDate, String title, String comment, String externalId, Boolean retry, String introspectionParams, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/disbursement/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (disbursementId == null) {
            throw new RuntimeException("missing required params disbursementId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (disbursementId != null) {
            queryParams.put("disbursementId", disbursementId)
        }
        if (amount != null) {
            queryParams.put("amount", amount)
        }
        if (provider != null) {
            queryParams.put("provider", provider)
        }
        if (scheduledDate != null) {
            queryParams.put("scheduledDate", scheduledDate)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (comment != null) {
            queryParams.put("comment", comment)
        }
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }
        if (retry != null) {
            queryParams.put("retry", retry)
        }
        if (introspectionParams != null) {
            queryParams.put("introspectionParams", introspectionParams)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    DisbursementResponse.class )

    }

}
