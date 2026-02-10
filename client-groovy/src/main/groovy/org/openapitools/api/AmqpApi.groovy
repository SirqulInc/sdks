package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.QueueResponse
import org.openapitools.model.SirqulResponse

class AmqpApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def consumerCreate ( BigDecimal version, String appKey, String name, String hostname, String username, String password, String dataMapping, String deviceId, Long accountId, Integer port, String virtualHost, String exchanger, String exchangerType, Integer workers, Boolean useSSL, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/queue/consumer/create"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (hostname == null) {
            throw new RuntimeException("missing required params hostname")
        }
        // verify required params are set
        if (username == null) {
            throw new RuntimeException("missing required params username")
        }
        // verify required params are set
        if (password == null) {
            throw new RuntimeException("missing required params password")
        }
        // verify required params are set
        if (dataMapping == null) {
            throw new RuntimeException("missing required params dataMapping")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (hostname != null) {
            queryParams.put("hostname", hostname)
        }
        if (port != null) {
            queryParams.put("port", port)
        }
        if (username != null) {
            queryParams.put("username", username)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (virtualHost != null) {
            queryParams.put("virtualHost", virtualHost)
        }
        if (exchanger != null) {
            queryParams.put("exchanger", exchanger)
        }
        if (exchangerType != null) {
            queryParams.put("exchangerType", exchangerType)
        }
        if (workers != null) {
            queryParams.put("workers", workers)
        }
        if (dataMapping != null) {
            queryParams.put("dataMapping", dataMapping)
        }
        if (useSSL != null) {
            queryParams.put("useSSL", useSSL)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    QueueResponse.class )

    }

    def consumerUpdate ( BigDecimal version, String appKey, Long queueId, String dataMapping, String deviceId, Long accountId, Boolean useSSL, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/queue/consumer/update"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (queueId == null) {
            throw new RuntimeException("missing required params queueId")
        }
        // verify required params are set
        if (dataMapping == null) {
            throw new RuntimeException("missing required params dataMapping")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (queueId != null) {
            queryParams.put("queueId", queueId)
        }
        if (dataMapping != null) {
            queryParams.put("dataMapping", dataMapping)
        }
        if (useSSL != null) {
            queryParams.put("useSSL", useSSL)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    QueueResponse.class )

    }

    def queueCreate ( BigDecimal version, String appKey, String name, String deviceId, Long accountId, Integer workers, String analyticTags, String hostname, Integer port, String username, String password, String virtualHost, Boolean useSSL, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/queue/create"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (workers != null) {
            queryParams.put("workers", workers)
        }
        if (analyticTags != null) {
            queryParams.put("analyticTags", analyticTags)
        }
        if (hostname != null) {
            queryParams.put("hostname", hostname)
        }
        if (port != null) {
            queryParams.put("port", port)
        }
        if (username != null) {
            queryParams.put("username", username)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (virtualHost != null) {
            queryParams.put("virtualHost", virtualHost)
        }
        if (useSSL != null) {
            queryParams.put("useSSL", useSSL)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    QueueResponse.class )

    }

    def queueDelete ( BigDecimal version, Long queueId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/queue/delete"

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
        if (queueId == null) {
            throw new RuntimeException("missing required params queueId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (queueId != null) {
            queryParams.put("queueId", queueId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def queueGet ( BigDecimal version, String deviceId, Long accountId, Long queueId, String appKey, String name, String hostname, String virtualHost, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/queue/get"

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
        if (queueId != null) {
            queryParams.put("queueId", queueId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (hostname != null) {
            queryParams.put("hostname", hostname)
        }
        if (virtualHost != null) {
            queryParams.put("virtualHost", virtualHost)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    QueueResponse.class )

    }

    def queuePublish ( BigDecimal version, String message, Long queueId, String appKey, String name, String hostname, String virtualHost, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/queue/publish"

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
        if (message == null) {
            throw new RuntimeException("missing required params message")
        }

        if (queueId != null) {
            queryParams.put("queueId", queueId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (hostname != null) {
            queryParams.put("hostname", hostname)
        }
        if (virtualHost != null) {
            queryParams.put("virtualHost", virtualHost)
        }
        if (message != null) {
            queryParams.put("message", message)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def queueSearch ( BigDecimal version, Long queueId, String deviceId, Long accountId, String name, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/queue/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (queueId != null) {
            queryParams.put("queueId", queueId)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    QueueResponse.class )

    }

    def queueUpdate ( BigDecimal version, Long queueId, String deviceId, Long accountId, String appKey, Integer workers, String analyticTags, String hostname, Integer port, String username, String password, String virtualHost, Boolean useSSL, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/queue/update"

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
        if (queueId == null) {
            throw new RuntimeException("missing required params queueId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (queueId != null) {
            queryParams.put("queueId", queueId)
        }
        if (workers != null) {
            queryParams.put("workers", workers)
        }
        if (analyticTags != null) {
            queryParams.put("analyticTags", analyticTags)
        }
        if (hostname != null) {
            queryParams.put("hostname", hostname)
        }
        if (port != null) {
            queryParams.put("port", port)
        }
        if (username != null) {
            queryParams.put("username", username)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (virtualHost != null) {
            queryParams.put("virtualHost", virtualHost)
        }
        if (useSSL != null) {
            queryParams.put("useSSL", useSSL)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    QueueResponse.class )

    }

}
