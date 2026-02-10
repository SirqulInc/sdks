package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.ProfileResponse
import org.openapitools.model.SirqulResponse
import org.openapitools.model.ThirdPartyCredentialResponse
import org.openapitools.model.ThirdPartyNetworkResponse
import org.openapitools.model.ThirdPartyNetworkShortResponse

class ThirdPartyCredentialsApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createCredential ( BigDecimal version, String thirdPartyId, String thirdPartyToken, String networkUID, String appKey, Long accountId, String deviceId, String sessionId, String thirdPartyName, String emailAddress, Boolean signinOnlyMode, String responseFilters, Double latitude, Double longitude, String metaData, String thirdPartyRefreshToken, String audienceIdsToAdd, String audienceIdsToRemove, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/thirdparty/credential/create"

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
        if (thirdPartyId == null) {
            throw new RuntimeException("missing required params thirdPartyId")
        }
        // verify required params are set
        if (thirdPartyToken == null) {
            throw new RuntimeException("missing required params thirdPartyToken")
        }
        // verify required params are set
        if (networkUID == null) {
            throw new RuntimeException("missing required params networkUID")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (sessionId != null) {
            queryParams.put("sessionId", sessionId)
        }
        if (thirdPartyId != null) {
            queryParams.put("thirdPartyId", thirdPartyId)
        }
        if (thirdPartyName != null) {
            queryParams.put("thirdPartyName", thirdPartyName)
        }
        if (thirdPartyToken != null) {
            queryParams.put("thirdPartyToken", thirdPartyToken)
        }
        if (networkUID != null) {
            queryParams.put("networkUID", networkUID)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (emailAddress != null) {
            queryParams.put("emailAddress", emailAddress)
        }
        if (signinOnlyMode != null) {
            queryParams.put("signinOnlyMode", signinOnlyMode)
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
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (thirdPartyRefreshToken != null) {
            queryParams.put("thirdPartyRefreshToken", thirdPartyRefreshToken)
        }
        if (audienceIdsToAdd != null) {
            queryParams.put("audienceIdsToAdd", audienceIdsToAdd)
        }
        if (audienceIdsToRemove != null) {
            queryParams.put("audienceIdsToRemove", audienceIdsToRemove)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

    def createNetwork ( BigDecimal version, Long accountId, String name, Boolean enableIntrospection, String description, String introspectionMethod, String introspectionURL, String introspectionParams, String requiredRootField, Boolean enableMFA, Integer sizeMFA, Integer shelfLifeMFA, String oauthTokenURL, File oauthPrivateKey, File oauthPublicKey, String oauthClientId, String oauthSecretKey, String body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/thirdparty/network/create"

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
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (enableIntrospection == null) {
            throw new RuntimeException("missing required params enableIntrospection")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (enableIntrospection != null) {
            queryParams.put("enableIntrospection", enableIntrospection)
        }
        if (introspectionMethod != null) {
            queryParams.put("introspectionMethod", introspectionMethod)
        }
        if (introspectionURL != null) {
            queryParams.put("introspectionURL", introspectionURL)
        }
        if (introspectionParams != null) {
            queryParams.put("introspectionParams", introspectionParams)
        }
        if (requiredRootField != null) {
            queryParams.put("requiredRootField", requiredRootField)
        }
        if (enableMFA != null) {
            queryParams.put("enableMFA", enableMFA)
        }
        if (sizeMFA != null) {
            queryParams.put("sizeMFA", sizeMFA)
        }
        if (shelfLifeMFA != null) {
            queryParams.put("shelfLifeMFA", shelfLifeMFA)
        }
        if (oauthTokenURL != null) {
            queryParams.put("oauthTokenURL", oauthTokenURL)
        }
        if (oauthPrivateKey != null) {
            queryParams.put("oauthPrivateKey", oauthPrivateKey)
        }
        if (oauthPublicKey != null) {
            queryParams.put("oauthPublicKey", oauthPublicKey)
        }
        if (oauthClientId != null) {
            queryParams.put("oauthClientId", oauthClientId)
        }
        if (oauthSecretKey != null) {
            queryParams.put("oauthSecretKey", oauthSecretKey)
        }


        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ThirdPartyNetworkResponse.class )

    }

    def deleteCredential ( BigDecimal version, Long accountId, String networkUID, String thirdPartyId, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/thirdparty/credential/delete"

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
        if (networkUID == null) {
            throw new RuntimeException("missing required params networkUID")
        }
        // verify required params are set
        if (thirdPartyId == null) {
            throw new RuntimeException("missing required params thirdPartyId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (networkUID != null) {
            queryParams.put("networkUID", networkUID)
        }
        if (thirdPartyId != null) {
            queryParams.put("thirdPartyId", thirdPartyId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def deleteNetwork ( BigDecimal version, Long accountId, String networkUID, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/thirdparty/network/delete"

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
        if (networkUID == null) {
            throw new RuntimeException("missing required params networkUID")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (networkUID != null) {
            queryParams.put("networkUID", networkUID)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getCredential ( BigDecimal version, String networkUID, String appKey, Long accountId, String deviceId, String sessionId, Long thirdPartyCredentialId, String thirdPartyToken, String thirdPartySecret, Boolean createNewAccount, String responseFilters, Double latitude, Double longitude, String audienceIdsToAdd, String audienceIdsToRemove, Long referralAccountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/thirdparty/credential/get"

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
        if (networkUID == null) {
            throw new RuntimeException("missing required params networkUID")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (sessionId != null) {
            queryParams.put("sessionId", sessionId)
        }
        if (thirdPartyCredentialId != null) {
            queryParams.put("thirdPartyCredentialId", thirdPartyCredentialId)
        }
        if (thirdPartyToken != null) {
            queryParams.put("thirdPartyToken", thirdPartyToken)
        }
        if (thirdPartySecret != null) {
            queryParams.put("thirdPartySecret", thirdPartySecret)
        }
        if (createNewAccount != null) {
            queryParams.put("createNewAccount", createNewAccount)
        }
        if (networkUID != null) {
            queryParams.put("networkUID", networkUID)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
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
        if (audienceIdsToAdd != null) {
            queryParams.put("audienceIdsToAdd", audienceIdsToAdd)
        }
        if (audienceIdsToRemove != null) {
            queryParams.put("audienceIdsToRemove", audienceIdsToRemove)
        }
        if (referralAccountId != null) {
            queryParams.put("referralAccountId", referralAccountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

    def getNetwork ( BigDecimal version, Long accountId, String networkUID, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/thirdparty/network/get"

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
        if (networkUID == null) {
            throw new RuntimeException("missing required params networkUID")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (networkUID != null) {
            queryParams.put("networkUID", networkUID)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ThirdPartyNetworkResponse.class )

    }

    def searchCredentials ( BigDecimal version, Long accountId, String keyword, String networkUID, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/thirdparty/credential/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (networkUID != null) {
            queryParams.put("networkUID", networkUID)
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
                    ThirdPartyCredentialResponse.class )

    }

    def searchNetworks ( BigDecimal version, Long accountId, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, String keyword, Boolean filterBillable, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/thirdparty/network/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
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
        if (filterBillable != null) {
            queryParams.put("filterBillable", filterBillable)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ThirdPartyNetworkShortResponse.class )

    }

    def sendMFAChallenge ( BigDecimal version, String networkUID, String appKey, String thirdPartyToken, Long thirdPartyCredentialId, String deviceId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/thirdparty/credential/mfa/send"

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
        if (networkUID == null) {
            throw new RuntimeException("missing required params networkUID")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (thirdPartyToken != null) {
            queryParams.put("thirdPartyToken", thirdPartyToken)
        }
        if (thirdPartyCredentialId != null) {
            queryParams.put("thirdPartyCredentialId", thirdPartyCredentialId)
        }
        if (networkUID != null) {
            queryParams.put("networkUID", networkUID)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def updateCredential ( BigDecimal version, String networkUID, String thirdPartyId, String appKey, String deviceId, String thirdPartyName, String thirdPartyToken, String responseFilters, String metaData, String thirdPartyRefreshToken, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/thirdparty/credential/update"

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
        if (networkUID == null) {
            throw new RuntimeException("missing required params networkUID")
        }
        // verify required params are set
        if (thirdPartyId == null) {
            throw new RuntimeException("missing required params thirdPartyId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (networkUID != null) {
            queryParams.put("networkUID", networkUID)
        }
        if (thirdPartyId != null) {
            queryParams.put("thirdPartyId", thirdPartyId)
        }
        if (thirdPartyName != null) {
            queryParams.put("thirdPartyName", thirdPartyName)
        }
        if (thirdPartyToken != null) {
            queryParams.put("thirdPartyToken", thirdPartyToken)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (responseFilters != null) {
            queryParams.put("responseFilters", responseFilters)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (thirdPartyRefreshToken != null) {
            queryParams.put("thirdPartyRefreshToken", thirdPartyRefreshToken)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

    def updateNetwork ( BigDecimal version, Long accountId, String networkUID, String name, String description, Boolean enableIntrospection, String introspectionMethod, String introspectionURL, String introspectionParams, String requiredRootField, Boolean enableMFA, Integer sizeMFA, Integer shelfLifeMFA, String oauthTokenURL, File oauthPrivateKey, File oauthPublicKey, String oauthClientId, String oauthSecretKey, String body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/thirdparty/network/update"

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
        if (networkUID == null) {
            throw new RuntimeException("missing required params networkUID")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (networkUID != null) {
            queryParams.put("networkUID", networkUID)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (enableIntrospection != null) {
            queryParams.put("enableIntrospection", enableIntrospection)
        }
        if (introspectionMethod != null) {
            queryParams.put("introspectionMethod", introspectionMethod)
        }
        if (introspectionURL != null) {
            queryParams.put("introspectionURL", introspectionURL)
        }
        if (introspectionParams != null) {
            queryParams.put("introspectionParams", introspectionParams)
        }
        if (requiredRootField != null) {
            queryParams.put("requiredRootField", requiredRootField)
        }
        if (enableMFA != null) {
            queryParams.put("enableMFA", enableMFA)
        }
        if (sizeMFA != null) {
            queryParams.put("sizeMFA", sizeMFA)
        }
        if (shelfLifeMFA != null) {
            queryParams.put("shelfLifeMFA", shelfLifeMFA)
        }
        if (oauthTokenURL != null) {
            queryParams.put("oauthTokenURL", oauthTokenURL)
        }
        if (oauthPrivateKey != null) {
            queryParams.put("oauthPrivateKey", oauthPrivateKey)
        }
        if (oauthPublicKey != null) {
            queryParams.put("oauthPublicKey", oauthPublicKey)
        }
        if (oauthClientId != null) {
            queryParams.put("oauthClientId", oauthClientId)
        }
        if (oauthSecretKey != null) {
            queryParams.put("oauthSecretKey", oauthSecretKey)
        }


        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ThirdPartyNetworkResponse.class )

    }

}
