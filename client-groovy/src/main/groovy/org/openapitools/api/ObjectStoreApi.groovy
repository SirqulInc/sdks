package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ObjectStoreResponse

class ObjectStoreApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addField ( Long accountId, String appKey, String objectName, String fieldName, String fieldType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/object/field/add"

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
        if (objectName == null) {
            throw new RuntimeException("missing required params objectName")
        }
        // verify required params are set
        if (fieldName == null) {
            throw new RuntimeException("missing required params fieldName")
        }
        // verify required params are set
        if (fieldType == null) {
            throw new RuntimeException("missing required params fieldType")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (objectName != null) {
            queryParams.put("objectName", objectName)
        }
        if (fieldName != null) {
            queryParams.put("fieldName", fieldName)
        }
        if (fieldType != null) {
            queryParams.put("fieldType", fieldType)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ObjectStoreResponse.class )

    }

    def createData ( String objectName, Long accountId, String body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/object/data/${objectName}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (objectName == null) {
            throw new RuntimeException("missing required params objectName")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }


        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ObjectStoreResponse.class )

    }

    def createObject ( Long accountId, String appKey, String objectName, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/object/create"

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
        if (objectName == null) {
            throw new RuntimeException("missing required params objectName")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (objectName != null) {
            queryParams.put("objectName", objectName)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ObjectStoreResponse.class )

    }

    def deleteData ( String objectName, String objectId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/object/data/${objectName}/${objectId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (objectName == null) {
            throw new RuntimeException("missing required params objectName")
        }
        // verify required params are set
        if (objectId == null) {
            throw new RuntimeException("missing required params objectId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    ObjectStoreResponse.class )

    }

    def deleteField ( Long accountId, String appKey, String objectName, String fieldName, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/object/field/delete"

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
        if (objectName == null) {
            throw new RuntimeException("missing required params objectName")
        }
        // verify required params are set
        if (fieldName == null) {
            throw new RuntimeException("missing required params fieldName")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (objectName != null) {
            queryParams.put("objectName", objectName)
        }
        if (fieldName != null) {
            queryParams.put("fieldName", fieldName)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ObjectStoreResponse.class )

    }

    def deleteObject ( Long accountId, String appKey, String objectName, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/object/delete"

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
        if (objectName == null) {
            throw new RuntimeException("missing required params objectName")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (objectName != null) {
            queryParams.put("objectName", objectName)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ObjectStoreResponse.class )

    }

    def getData ( String objectName, String objectId, Long accountId, String include, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/object/data/${objectName}/${objectId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (objectName == null) {
            throw new RuntimeException("missing required params objectName")
        }
        // verify required params are set
        if (objectId == null) {
            throw new RuntimeException("missing required params objectId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (include != null) {
            queryParams.put("include", include)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ObjectStoreResponse.class )

    }

    def getObject ( Long accountId, String appKey, String objectName, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/object/get"

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
        if (objectName == null) {
            throw new RuntimeException("missing required params objectName")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (objectName != null) {
            queryParams.put("objectName", objectName)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ObjectStoreResponse.class )

    }

    def searchData ( String objectName, Boolean count, Long start, Long limit, Long accountId, String criteria, String order, String include, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/object/data/${objectName}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (objectName == null) {
            throw new RuntimeException("missing required params objectName")
        }
        // verify required params are set
        if (count == null) {
            throw new RuntimeException("missing required params count")
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
        if (criteria != null) {
            queryParams.put("criteria", criteria)
        }
        if (count != null) {
            queryParams.put("count", count)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (order != null) {
            queryParams.put("order", order)
        }
        if (include != null) {
            queryParams.put("include", include)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ObjectStoreResponse.class )

    }

    def searchObject ( Long accountId, String appKey, Long start, Long limit, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/object/search"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ObjectStoreResponse.class )

    }

    def updateData ( String objectName, String objectId, Long accountId, String body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/object/data/${objectName}/${objectId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (objectName == null) {
            throw new RuntimeException("missing required params objectName")
        }
        // verify required params are set
        if (objectId == null) {
            throw new RuntimeException("missing required params objectId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }


        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    ObjectStoreResponse.class )

    }

}
