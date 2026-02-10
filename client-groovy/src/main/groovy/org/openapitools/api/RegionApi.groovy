package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.RegionResponse

class RegionApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createRegion ( BigDecimal version, Long accountId, String regionClass, String shortName, String fullName, String parentIds, String childrenIds, String postalCodeIds, String locations, Long retailerLocationId, String visibility, String categoryIds, String filterIds, Long start, Long end, String polygon, String metaData, Double latitude, Double longitude, Integer versionCode, Boolean root, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/region/create"

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
        if (regionClass == null) {
            throw new RuntimeException("missing required params regionClass")
        }
        // verify required params are set
        if (shortName == null) {
            throw new RuntimeException("missing required params shortName")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (regionClass != null) {
            queryParams.put("regionClass", regionClass)
        }
        if (shortName != null) {
            queryParams.put("shortName", shortName)
        }
        if (fullName != null) {
            queryParams.put("fullName", fullName)
        }
        if (parentIds != null) {
            queryParams.put("parentIds", parentIds)
        }
        if (childrenIds != null) {
            queryParams.put("childrenIds", childrenIds)
        }
        if (postalCodeIds != null) {
            queryParams.put("postalCodeIds", postalCodeIds)
        }
        if (locations != null) {
            queryParams.put("locations", locations)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (end != null) {
            queryParams.put("end", end)
        }
        if (polygon != null) {
            queryParams.put("polygon", polygon)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (versionCode != null) {
            queryParams.put("versionCode", versionCode)
        }
        if (root != null) {
            queryParams.put("root", root)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RegionResponse.class )

    }

    def deleteRegion ( BigDecimal version, Long accountId, Long regionId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/region/delete"

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
        if (regionId == null) {
            throw new RuntimeException("missing required params regionId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (regionId != null) {
            queryParams.put("regionId", regionId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RegionResponse.class )

    }

    def getRegion ( BigDecimal version, Long regionId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/region/get"

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
        if (regionId == null) {
            throw new RuntimeException("missing required params regionId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (regionId != null) {
            queryParams.put("regionId", regionId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RegionResponse.class )

    }

    def searchRegions ( BigDecimal version, Long accountId, String query, String keyword, Double latitude, Double longitude, Double range, String regionClass, String visibility, String searchMode, String sortField, Boolean descending, Boolean includeParent, Boolean includeChildren, Boolean includePostalCodes, String categoryIds, String filterIds, Integer versionCode, Boolean activeOnly, Boolean showDeleted, Long lastUpdatedSince, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/region/search"

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
        if (query != null) {
            queryParams.put("query", query)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (range != null) {
            queryParams.put("range", range)
        }
        if (regionClass != null) {
            queryParams.put("regionClass", regionClass)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (searchMode != null) {
            queryParams.put("searchMode", searchMode)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (includeParent != null) {
            queryParams.put("includeParent", includeParent)
        }
        if (includeChildren != null) {
            queryParams.put("includeChildren", includeChildren)
        }
        if (includePostalCodes != null) {
            queryParams.put("includePostalCodes", includePostalCodes)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (versionCode != null) {
            queryParams.put("versionCode", versionCode)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (showDeleted != null) {
            queryParams.put("showDeleted", showDeleted)
        }
        if (lastUpdatedSince != null) {
            queryParams.put("lastUpdatedSince", lastUpdatedSince)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    RegionResponse.class )

    }

    def updateRegion ( BigDecimal version, Long accountId, Long regionId, String regionClass, String shortName, String fullName, String parentIds, String childrenIds, String postalCodeIds, String locations, Long retailerLocationId, String visibility, String categoryIds, String filterIds, Long start, Long end, String polygon, String metaData, Double latitude, Double longitude, Integer versionCode, Boolean root, Boolean active, Boolean clearLists, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/region/update"

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
        if (regionId == null) {
            throw new RuntimeException("missing required params regionId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (regionId != null) {
            queryParams.put("regionId", regionId)
        }
        if (regionClass != null) {
            queryParams.put("regionClass", regionClass)
        }
        if (shortName != null) {
            queryParams.put("shortName", shortName)
        }
        if (fullName != null) {
            queryParams.put("fullName", fullName)
        }
        if (parentIds != null) {
            queryParams.put("parentIds", parentIds)
        }
        if (childrenIds != null) {
            queryParams.put("childrenIds", childrenIds)
        }
        if (postalCodeIds != null) {
            queryParams.put("postalCodeIds", postalCodeIds)
        }
        if (locations != null) {
            queryParams.put("locations", locations)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (end != null) {
            queryParams.put("end", end)
        }
        if (polygon != null) {
            queryParams.put("polygon", polygon)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (versionCode != null) {
            queryParams.put("versionCode", versionCode)
        }
        if (root != null) {
            queryParams.put("root", root)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (clearLists != null) {
            queryParams.put("clearLists", clearLists)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RegionResponse.class )

    }

}
