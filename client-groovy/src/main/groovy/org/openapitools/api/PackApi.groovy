package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.PackResponse
import org.openapitools.model.SirqulResponse

class PackApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createPack ( Long accountId, String title, Long packOrder, Integer price, Boolean highest, Boolean allocateTickets, Long ticketCount, String description, String searchTags, Boolean active, String gameType, String appKey, String packType, String sequenceType, Long backgroundId, Long imageId, Long startDate, Long endDate, String authorOverride, String priceType, String gameLevelIds, Boolean inGame, String ticketType, Long points, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/pack/create"

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
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }
        // verify required params are set
        if (packOrder == null) {
            throw new RuntimeException("missing required params packOrder")
        }
        // verify required params are set
        if (price == null) {
            throw new RuntimeException("missing required params price")
        }
        // verify required params are set
        if (highest == null) {
            throw new RuntimeException("missing required params highest")
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
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (searchTags != null) {
            queryParams.put("searchTags", searchTags)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (packType != null) {
            queryParams.put("packType", packType)
        }
        if (packOrder != null) {
            queryParams.put("packOrder", packOrder)
        }
        if (sequenceType != null) {
            queryParams.put("sequenceType", sequenceType)
        }
        if (backgroundId != null) {
            queryParams.put("backgroundId", backgroundId)
        }
        if (imageId != null) {
            queryParams.put("imageId", imageId)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (authorOverride != null) {
            queryParams.put("authorOverride", authorOverride)
        }
        if (price != null) {
            queryParams.put("price", price)
        }
        if (priceType != null) {
            queryParams.put("priceType", priceType)
        }
        if (gameLevelIds != null) {
            queryParams.put("gameLevelIds", gameLevelIds)
        }
        if (inGame != null) {
            queryParams.put("inGame", inGame)
        }
        if (highest != null) {
            queryParams.put("highest", highest)
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
                    PackResponse.class )

    }

    def deletePack ( Long accountId, Long packId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/pack/delete"

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
        if (packId == null) {
            throw new RuntimeException("missing required params packId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (packId != null) {
            queryParams.put("packId", packId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getPack ( Long accountId, Long packId, Boolean includeGameData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/pack/get"

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
        if (packId == null) {
            throw new RuntimeException("missing required params packId")
        }
        // verify required params are set
        if (includeGameData == null) {
            throw new RuntimeException("missing required params includeGameData")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (packId != null) {
            queryParams.put("packId", packId)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PackResponse.class )

    }

    def searchPacks ( Long accountId, String sortField, Boolean descending, String keyword, String packType, Integer start, Integer limit, Boolean includeGameData, Boolean includeInactive, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/pack/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (packType != null) {
            queryParams.put("packType", packType)
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
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }
        if (includeInactive != null) {
            queryParams.put("includeInactive", includeInactive)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    PackResponse.class )

    }

    def updatePack ( Long accountId, Long packId, Boolean allocateTickets, Long ticketCount, String title, String description, String searchTags, Boolean active, String gameType, String appKey, String packType, Long packOrder, String sequenceType, Long backgroundId, Long imageId, Long startDate, Long endDate, String authorOverride, Integer price, String priceType, String gameLevelIds, Boolean inGame, Boolean highest, String ticketType, Long points, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/pack/update"

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
        if (packId == null) {
            throw new RuntimeException("missing required params packId")
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
        if (packId != null) {
            queryParams.put("packId", packId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (searchTags != null) {
            queryParams.put("searchTags", searchTags)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (packType != null) {
            queryParams.put("packType", packType)
        }
        if (packOrder != null) {
            queryParams.put("packOrder", packOrder)
        }
        if (sequenceType != null) {
            queryParams.put("sequenceType", sequenceType)
        }
        if (backgroundId != null) {
            queryParams.put("backgroundId", backgroundId)
        }
        if (imageId != null) {
            queryParams.put("imageId", imageId)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (authorOverride != null) {
            queryParams.put("authorOverride", authorOverride)
        }
        if (price != null) {
            queryParams.put("price", price)
        }
        if (priceType != null) {
            queryParams.put("priceType", priceType)
        }
        if (gameLevelIds != null) {
            queryParams.put("gameLevelIds", gameLevelIds)
        }
        if (inGame != null) {
            queryParams.put("inGame", inGame)
        }
        if (highest != null) {
            queryParams.put("highest", highest)
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
                    PackResponse.class )

    }

}
