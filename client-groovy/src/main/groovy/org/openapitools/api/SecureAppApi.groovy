package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.PaymentRequest
import org.openapitools.model.ProfileResponse
import org.openapitools.model.SirqulResponse

class SecureAppApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createSecureApplication ( Long accountId, String appKey, File keyCert, File trustStore, String username, String password, Boolean active, String biometricType, String biometricPosition, String biometricPosition2, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/secure/application/create"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (keyCert == null) {
            throw new RuntimeException("missing required params keyCert")
        }
        // verify required params are set
        if (trustStore == null) {
            throw new RuntimeException("missing required params trustStore")
        }
        // verify required params are set
        if (username == null) {
            throw new RuntimeException("missing required params username")
        }
        // verify required params are set
        if (password == null) {
            throw new RuntimeException("missing required params password")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (keyCert != null) {
            queryParams.put("keyCert", keyCert)
        }
        if (trustStore != null) {
            queryParams.put("trustStore", trustStore)
        }
        if (username != null) {
            queryParams.put("username", username)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (biometricType != null) {
            queryParams.put("biometricType", biometricType)
        }
        if (biometricPosition != null) {
            queryParams.put("biometricPosition", biometricPosition)
        }
        if (biometricPosition2 != null) {
            queryParams.put("biometricPosition2", biometricPosition2)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def deleteSecureApplication ( Long accountId, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/secure/application/delete"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def loginSecure ( String appKey, File biometricFile, String deviceId, File biometricFile2, Integer ageRestriction, Boolean returnProfile, String responseFilters, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/secure/login"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (biometricFile == null) {
            throw new RuntimeException("missing required params biometricFile")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (biometricFile != null) {
            queryParams.put("biometricFile", biometricFile)
        }
        if (biometricFile2 != null) {
            queryParams.put("biometricFile2", biometricFile2)
        }
        if (ageRestriction != null) {
            queryParams.put("ageRestriction", ageRestriction)
        }
        if (returnProfile != null) {
            queryParams.put("returnProfile", returnProfile)
        }
        if (responseFilters != null) {
            queryParams.put("responseFilters", responseFilters)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

    def purchaseSecure ( PaymentRequest body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/secure/purchase"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

    def resetSecure ( Long accountId, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/secure/application/reset"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def updateSecureApplication ( Long accountId, String appKey, Boolean active, File keyCert, File trustStore, String username, String password, String biometricType, String biometricPosition, String biometricPosition2, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/secure/application/update"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (keyCert != null) {
            queryParams.put("keyCert", keyCert)
        }
        if (trustStore != null) {
            queryParams.put("trustStore", trustStore)
        }
        if (username != null) {
            queryParams.put("username", username)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (biometricType != null) {
            queryParams.put("biometricType", biometricType)
        }
        if (biometricPosition != null) {
            queryParams.put("biometricPosition", biometricPosition)
        }
        if (biometricPosition2 != null) {
            queryParams.put("biometricPosition2", biometricPosition2)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
