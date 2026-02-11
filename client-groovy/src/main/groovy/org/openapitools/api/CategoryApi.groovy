package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CategoryResponse
import org.openapitools.model.CategoryTreeResponse
import org.openapitools.model.SirqulResponse

class CategoryApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def categoryDistanceSearch ( Long accountId, String keyword, String appKey, String categoryIds, String parentCategoryIds, Boolean rootOnly, String sortField, String responseGroup, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Boolean returnExternal, Boolean exactMatch, String type, String externalType, Integer minOfferCount, Double latitude, Double longitude, Double range, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/category/distancesearch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (parentCategoryIds != null) {
            queryParams.put("parentCategoryIds", parentCategoryIds)
        }
        if (rootOnly != null) {
            queryParams.put("rootOnly", rootOnly)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (responseGroup != null) {
            queryParams.put("responseGroup", responseGroup)
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
        if (returnExternal != null) {
            queryParams.put("returnExternal", returnExternal)
        }
        if (exactMatch != null) {
            queryParams.put("exactMatch", exactMatch)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (externalType != null) {
            queryParams.put("externalType", externalType)
        }
        if (minOfferCount != null) {
            queryParams.put("minOfferCount", minOfferCount)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CategoryResponse.class )

    }

    def createCategory ( Long accountId, String name, String appKey, Long parentCategoryId, String description, String type, Long assetId, String externalId, String externalType, String externalCategorySlug, String sqootSlug, Boolean active, String metaData, String searchTags, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/category/create"

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
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (parentCategoryId != null) {
            queryParams.put("parentCategoryId", parentCategoryId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }
        if (externalType != null) {
            queryParams.put("externalType", externalType)
        }
        if (externalCategorySlug != null) {
            queryParams.put("externalCategorySlug", externalCategorySlug)
        }
        if (sqootSlug != null) {
            queryParams.put("sqootSlug", sqootSlug)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (searchTags != null) {
            queryParams.put("searchTags", searchTags)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    CategoryTreeResponse.class )

    }

    def deleteCategory ( Long accountId, Long categoryId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/category/delete"

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
        if (categoryId == null) {
            throw new RuntimeException("missing required params categoryId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (categoryId != null) {
            queryParams.put("categoryId", categoryId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def duplicateCategory ( Long accountId, Long categoryId, String appKey, Long parentCategoryId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/category/duplicate"

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
        if (categoryId == null) {
            throw new RuntimeException("missing required params categoryId")
        }

        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (categoryId != null) {
            queryParams.put("categoryId", categoryId)
        }
        if (parentCategoryId != null) {
            queryParams.put("parentCategoryId", parentCategoryId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    CategoryTreeResponse.class )

    }

    def getCategory ( Long categoryId, Boolean returnExternal, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/category/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (categoryId == null) {
            throw new RuntimeException("missing required params categoryId")
        }

        if (categoryId != null) {
            queryParams.put("categoryId", categoryId)
        }
        if (returnExternal != null) {
            queryParams.put("returnExternal", returnExternal)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CategoryTreeResponse.class )

    }

    def searchCategories ( Long accountId, String keyword, String appKey, String categoryId, String categoryIds, String parentCategoryIds, Boolean rootOnly, String sortField, String responseGroup, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Boolean returnExternal, Boolean exactMatch, String type, String externalType, Boolean excludeExternalType, Integer minOfferCount, Integer searchDepth, String searchMode, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/category/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (categoryId != null) {
            queryParams.put("categoryId", categoryId)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (parentCategoryIds != null) {
            queryParams.put("parentCategoryIds", parentCategoryIds)
        }
        if (rootOnly != null) {
            queryParams.put("rootOnly", rootOnly)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (responseGroup != null) {
            queryParams.put("responseGroup", responseGroup)
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
        if (returnExternal != null) {
            queryParams.put("returnExternal", returnExternal)
        }
        if (exactMatch != null) {
            queryParams.put("exactMatch", exactMatch)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (externalType != null) {
            queryParams.put("externalType", externalType)
        }
        if (excludeExternalType != null) {
            queryParams.put("excludeExternalType", excludeExternalType)
        }
        if (minOfferCount != null) {
            queryParams.put("minOfferCount", minOfferCount)
        }
        if (searchDepth != null) {
            queryParams.put("searchDepth", searchDepth)
        }
        if (searchMode != null) {
            queryParams.put("searchMode", searchMode)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CategoryResponse.class )

    }

    def updateCategory ( Long accountId, Long categoryId, Long parentCategoryId, String name, String description, String type, Long assetId, String externalId, String externalType, String externalCategorySlug, String sqootSlug, Boolean active, String metaData, String searchTags, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/category/update"

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
        if (categoryId == null) {
            throw new RuntimeException("missing required params categoryId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (categoryId != null) {
            queryParams.put("categoryId", categoryId)
        }
        if (parentCategoryId != null) {
            queryParams.put("parentCategoryId", parentCategoryId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }
        if (externalType != null) {
            queryParams.put("externalType", externalType)
        }
        if (externalCategorySlug != null) {
            queryParams.put("externalCategorySlug", externalCategorySlug)
        }
        if (sqootSlug != null) {
            queryParams.put("sqootSlug", sqootSlug)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (searchTags != null) {
            queryParams.put("searchTags", searchTags)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    CategoryTreeResponse.class )

    }

}
