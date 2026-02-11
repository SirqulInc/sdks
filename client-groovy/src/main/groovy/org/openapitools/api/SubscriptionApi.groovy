package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ApplicationUsageResponse
import org.openapitools.model.SirqulResponse
import org.openapitools.model.SubscriptionPlanResponse
import org.openapitools.model.SubscriptionResponse

class SubscriptionApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createSubscription ( Long accountId, Long planId, String promoCode, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/subscription/create"

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
        if (planId != null) {
            queryParams.put("planId", planId)
        }
        if (promoCode != null) {
            queryParams.put("promoCode", promoCode)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SubscriptionResponse.class )

    }

    def deleteSubscription ( Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/subscription/delete"

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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getSubscription ( Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/subscription/get"

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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SubscriptionResponse.class )

    }

    def getSubscriptionPlan ( Long planId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/subscription/plan/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (planId == null) {
            throw new RuntimeException("missing required params planId")
        }

        if (planId != null) {
            queryParams.put("planId", planId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SubscriptionPlanResponse.class )

    }

    def getSubscriptionPlans ( Boolean visible, String role, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/subscription/plan/list"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (visible != null) {
            queryParams.put("visible", visible)
        }
        if (role != null) {
            queryParams.put("role", role)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    SubscriptionPlanResponse.class )

    }

    def getSubscriptionUsage ( Long accountId, Long applicationId, Long start, Long end, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/subscription/usage/get"

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
        if (applicationId != null) {
            queryParams.put("applicationId", applicationId)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (end != null) {
            queryParams.put("end", end)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ApplicationUsageResponse.class )

    }

    def updateSubscription ( Long accountId, Long planId, String promoCode, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/subscription/update"

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
        if (planId != null) {
            queryParams.put("planId", planId)
        }
        if (promoCode != null) {
            queryParams.put("promoCode", promoCode)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SubscriptionResponse.class )

    }

}
