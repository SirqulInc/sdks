package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.SirqulResponse
import org.openapitools.model.WordzWordResponse

class WordApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createWord ( BigDecimal version, Long accountId, String word, String definition, Boolean active, Boolean allocateTickets, Long ticketCount, Long assetId, String ticketType, Long points, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/game/word/create"

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
        if (word == null) {
            throw new RuntimeException("missing required params word")
        }
        // verify required params are set
        if (definition == null) {
            throw new RuntimeException("missing required params definition")
        }
        // verify required params are set
        if (active == null) {
            throw new RuntimeException("missing required params active")
        }
        // verify required params are set
        if (allocateTickets == null) {
            throw new RuntimeException("missing required params allocateTickets")
        }
        // verify required params are set
        if (ticketCount == null) {
            throw new RuntimeException("missing required params ticketCount")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (word != null) {
            queryParams.put("word", word)
        }
        if (definition != null) {
            queryParams.put("definition", definition)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (allocateTickets != null) {
            queryParams.put("allocateTickets", allocateTickets)
        }
        if (ticketCount != null) {
            queryParams.put("ticketCount", ticketCount)
        }
        if (ticketType != null) {
            queryParams.put("ticketType", ticketType)
        }
        if (points != null) {
            queryParams.put("points", points)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    WordzWordResponse.class )

    }

    def deleteWord ( BigDecimal version, Long wordId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/game/word/delete"

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
        if (wordId == null) {
            throw new RuntimeException("missing required params wordId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (wordId != null) {
            queryParams.put("wordId", wordId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    SirqulResponse.class )

    }

    def getWord ( BigDecimal version, Long wordId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/game/word/get"

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
        if (wordId == null) {
            throw new RuntimeException("missing required params wordId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (wordId != null) {
            queryParams.put("wordId", wordId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    WordzWordResponse.class )

    }

    def getWords ( BigDecimal version, Long accountId, String sortField, Boolean descending, Boolean activeOnly, Integer start, Integer limit, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/game/word/search"

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
        if (activeOnly == null) {
            throw new RuntimeException("missing required params activeOnly")
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
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    WordzWordResponse.class )

    }

    def updateWord ( BigDecimal version, Long wordId, Long accountId, Long ticketCount, String wordText, String definition, Long assetId, Boolean active, Boolean allocateTickets, String ticketType, Long points, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/game/word/update"

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
        if (wordId == null) {
            throw new RuntimeException("missing required params wordId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (ticketCount == null) {
            throw new RuntimeException("missing required params ticketCount")
        }

        if (wordId != null) {
            queryParams.put("wordId", wordId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (wordText != null) {
            queryParams.put("wordText", wordText)
        }
        if (definition != null) {
            queryParams.put("definition", definition)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (allocateTickets != null) {
            queryParams.put("allocateTickets", allocateTickets)
        }
        if (ticketCount != null) {
            queryParams.put("ticketCount", ticketCount)
        }
        if (ticketType != null) {
            queryParams.put("ticketType", ticketType)
        }
        if (points != null) {
            queryParams.put("points", points)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    WordzWordResponse.class )

    }

}
