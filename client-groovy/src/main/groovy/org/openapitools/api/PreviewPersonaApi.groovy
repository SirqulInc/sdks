package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.PreviewPersonaResponse
import org.openapitools.model.SirqulResponse

class PreviewPersonaApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createPersona ( BigDecimal version, Long accountId, String title, String previewAccounts, Long date, Integer age, String gender, String gameExperienceLevel, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/persona/create"

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
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (previewAccounts != null) {
            queryParams.put("previewAccounts", previewAccounts)
        }
        if (date != null) {
            queryParams.put("date", date)
        }
        if (age != null) {
            queryParams.put("age", age)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (gameExperienceLevel != null) {
            queryParams.put("gameExperienceLevel", gameExperienceLevel)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PreviewPersonaResponse.class )

    }

    def deletePersona ( BigDecimal version, Long accountId, Long personaId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/persona/delete"

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
        if (personaId == null) {
            throw new RuntimeException("missing required params personaId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (personaId != null) {
            queryParams.put("personaId", personaId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getPersonaList ( BigDecimal version, Long accountId, Long personaId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/persona/get"

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
        if (personaId == null) {
            throw new RuntimeException("missing required params personaId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (personaId != null) {
            queryParams.put("personaId", personaId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PreviewPersonaResponse.class )

    }

    def searchPersona ( BigDecimal version, Long accountId, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/persona/search"

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
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PreviewPersonaResponse.class )

    }

    def updatePersona ( BigDecimal version, Long accountId, Long personaId, String title, String previewAccounts, Boolean active, Long date, Integer age, String gender, String gameExperienceLevel, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/persona/update"

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
        if (personaId == null) {
            throw new RuntimeException("missing required params personaId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (personaId != null) {
            queryParams.put("personaId", personaId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (previewAccounts != null) {
            queryParams.put("previewAccounts", previewAccounts)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (date != null) {
            queryParams.put("date", date)
        }
        if (age != null) {
            queryParams.put("age", age)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (gameExperienceLevel != null) {
            queryParams.put("gameExperienceLevel", gameExperienceLevel)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PreviewPersonaResponse.class )

    }

}
