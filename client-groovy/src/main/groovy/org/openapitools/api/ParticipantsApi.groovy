package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.SirqulResponse

class ParticipantsApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def processAllParticipants ( BigDecimal version, Long accountId, String appKey, Boolean useShortNameAsID, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/participant/process/all"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (useShortNameAsID != null) {
            queryParams.put("useShortNameAsID", useShortNameAsID)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def processParticipants ( BigDecimal version, Long accountId, String league, String appKey, Boolean useShortNameAsID, File _file, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/participant/process"

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
        if (league == null) {
            throw new RuntimeException("missing required params league")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (league != null) {
            queryParams.put("league", league)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (useShortNameAsID != null) {
            queryParams.put("useShortNameAsID", useShortNameAsID)
        }
        if (_file != null) {
            queryParams.put("file", _file)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
