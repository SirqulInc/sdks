package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.ConsumerInviteResponse
import org.openapitools.model.InviteResponse
import org.openapitools.model.SirqulResponse

class InviteApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def acceptInvite ( BigDecimal version, String token, Long accountId, Long albumId, Long missionId, Long albumContestId, Long offerId, Long offerLocationId, Long retailerLocationId, String appKey, Boolean autoFriend, Boolean autoAttendEvent, Boolean autoFavoriteOffer, Boolean autoFavoriteOfferLocation, Boolean autoFavoriteRetailerLocation, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/invite/accept"

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
        if (token == null) {
            throw new RuntimeException("missing required params token")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (token != null) {
            queryParams.put("token", token)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (albumContestId != null) {
            queryParams.put("albumContestId", albumContestId)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (autoFriend != null) {
            queryParams.put("autoFriend", autoFriend)
        }
        if (autoAttendEvent != null) {
            queryParams.put("autoAttendEvent", autoAttendEvent)
        }
        if (autoFavoriteOffer != null) {
            queryParams.put("autoFavoriteOffer", autoFavoriteOffer)
        }
        if (autoFavoriteOfferLocation != null) {
            queryParams.put("autoFavoriteOfferLocation", autoFavoriteOfferLocation)
        }
        if (autoFavoriteRetailerLocation != null) {
            queryParams.put("autoFavoriteRetailerLocation", autoFavoriteRetailerLocation)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ConsumerInviteResponse.class )

    }

    def albumContestInvite ( BigDecimal version, String deviceId, Long accountId, Long appId, String appKey, Long albumContestId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/invite/albumContest"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appId != null) {
            queryParams.put("appId", appId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (albumContestId != null) {
            queryParams.put("albumContestId", albumContestId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InviteResponse.class )

    }

    def albumInvite ( BigDecimal version, String deviceId, Long accountId, Long appId, String appKey, Long albumId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/invite/album"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appId != null) {
            queryParams.put("appId", appId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InviteResponse.class )

    }

    def eventInvite ( BigDecimal version, Long accountId, String appKey, Long listingId, String receiverAccountIds, Long retailerLocationId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/invite/event"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (listingId == null) {
            throw new RuntimeException("missing required params listingId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (receiverAccountIds != null) {
            queryParams.put("receiverAccountIds", receiverAccountIds)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (listingId != null) {
            queryParams.put("listingId", listingId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InviteResponse.class )

    }

    def gameInvite ( BigDecimal version, String deviceId, Long accountId, Long appId, String appKey, Long gameLevelId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/invite/gameLevel"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appId != null) {
            queryParams.put("appId", appId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (gameLevelId != null) {
            queryParams.put("gameLevelId", gameLevelId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InviteResponse.class )

    }

    def getInvite ( BigDecimal version, Long accountId, String token, Long albumId, Long missionId, Long albumContestId, Long offerId, Long offerLocationId, Long retailerLocationId, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/invite/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (token != null) {
            queryParams.put("token", token)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (albumContestId != null) {
            queryParams.put("albumContestId", albumContestId)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SirqulResponse.class )

    }

    def missionInvite ( BigDecimal version, String deviceId, Long accountId, Long appId, String appKey, Long missionId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/invite/mission"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appId != null) {
            queryParams.put("appId", appId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InviteResponse.class )

    }

    def offerInvite ( BigDecimal version, Long accountId, String appKey, Long offerId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/invite/offer"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (offerId == null) {
            throw new RuntimeException("missing required params offerId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InviteResponse.class )

    }

    def offerLocationInvite ( BigDecimal version, Long accountId, String appKey, Long offerLocationId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/invite/offerLocation"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (offerLocationId == null) {
            throw new RuntimeException("missing required params offerLocationId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InviteResponse.class )

    }

    def retailerLocationInvite ( BigDecimal version, Long accountId, String appKey, Long retailerLocationId, Long albumId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/invite/retailerLocation"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (retailerLocationId == null) {
            throw new RuntimeException("missing required params retailerLocationId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    InviteResponse.class )

    }

}
