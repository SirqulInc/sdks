package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.QuestionResponse
import org.openapitools.model.SirqulResponse

class QuestionApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createQuestion ( Long accountId, String question, String answers, Boolean active, Boolean allocateTickets, Long ticketCount, String tags, String videoURL, Long assetId, String ticketType, Long points, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/game/question/create"

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
        if (question == null) {
            throw new RuntimeException("missing required params question")
        }
        // verify required params are set
        if (answers == null) {
            throw new RuntimeException("missing required params answers")
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
        if (question != null) {
            queryParams.put("question", question)
        }
        if (answers != null) {
            queryParams.put("answers", answers)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (videoURL != null) {
            queryParams.put("videoURL", videoURL)
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
                    QuestionResponse.class )

    }

    def deleteQuestion ( Long questionId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/game/question/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (questionId == null) {
            throw new RuntimeException("missing required params questionId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (questionId != null) {
            queryParams.put("questionId", questionId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getQuestion ( Long questionId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/game/question/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (questionId == null) {
            throw new RuntimeException("missing required params questionId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (questionId != null) {
            queryParams.put("questionId", questionId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    QuestionResponse.class )

    }

    def searchQuestions ( Long accountId, String sortField, Boolean descending, Boolean activeOnly, Integer start, Integer limit, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/game/question/search"

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
                    QuestionResponse.class )

    }

    def updateQuestion ( Long questionId, Long accountId, Long ticketCount, String question, String answers, String tags, String videoURL, Long assetId, Boolean active, Boolean allocateTickets, String ticketType, Long points, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/game/question/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (questionId == null) {
            throw new RuntimeException("missing required params questionId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (ticketCount == null) {
            throw new RuntimeException("missing required params ticketCount")
        }

        if (questionId != null) {
            queryParams.put("questionId", questionId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (question != null) {
            queryParams.put("question", question)
        }
        if (answers != null) {
            queryParams.put("answers", answers)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (videoURL != null) {
            queryParams.put("videoURL", videoURL)
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
                    QuestionResponse.class )

    }

}
