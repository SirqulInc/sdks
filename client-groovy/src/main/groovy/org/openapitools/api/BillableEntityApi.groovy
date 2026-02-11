package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.BillableEntityResponse
import org.openapitools.model.SirqulResponse

class BillableEntityApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createBillableEntity ( String deviceId, Long accountId, String name, String streetAddress, String streetAddress2, String city, String state, String postalCode, String businessPhone, String businessPhoneExt, String authorizeNetApiKey, String authorizeNetTransactionKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billable/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (streetAddress != null) {
            queryParams.put("streetAddress", streetAddress)
        }
        if (streetAddress2 != null) {
            queryParams.put("streetAddress2", streetAddress2)
        }
        if (city != null) {
            queryParams.put("city", city)
        }
        if (state != null) {
            queryParams.put("state", state)
        }
        if (postalCode != null) {
            queryParams.put("postalCode", postalCode)
        }
        if (businessPhone != null) {
            queryParams.put("businessPhone", businessPhone)
        }
        if (businessPhoneExt != null) {
            queryParams.put("businessPhoneExt", businessPhoneExt)
        }
        if (authorizeNetApiKey != null) {
            queryParams.put("authorizeNetApiKey", authorizeNetApiKey)
        }
        if (authorizeNetTransactionKey != null) {
            queryParams.put("authorizeNetTransactionKey", authorizeNetTransactionKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    BillableEntityResponse.class )

    }

    def deleteBillableEntity ( String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billable/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getBillableEntity ( String deviceId, Long accountId, Boolean includeCounts, Boolean includePayments, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billable/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (includeCounts != null) {
            queryParams.put("includeCounts", includeCounts)
        }
        if (includePayments != null) {
            queryParams.put("includePayments", includePayments)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    BillableEntityResponse.class )

    }

    def updateBillableEntity ( String deviceId, Long accountId, String name, String streetAddress, String streetAddress2, String city, String state, String postalCode, String businessPhone, String businessPhoneExt, String authorizeNetApiKey, String authorizeNetTransactionKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/billable/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (streetAddress != null) {
            queryParams.put("streetAddress", streetAddress)
        }
        if (streetAddress2 != null) {
            queryParams.put("streetAddress2", streetAddress2)
        }
        if (city != null) {
            queryParams.put("city", city)
        }
        if (state != null) {
            queryParams.put("state", state)
        }
        if (postalCode != null) {
            queryParams.put("postalCode", postalCode)
        }
        if (businessPhone != null) {
            queryParams.put("businessPhone", businessPhone)
        }
        if (businessPhoneExt != null) {
            queryParams.put("businessPhoneExt", businessPhoneExt)
        }
        if (authorizeNetApiKey != null) {
            queryParams.put("authorizeNetApiKey", authorizeNetApiKey)
        }
        if (authorizeNetTransactionKey != null) {
            queryParams.put("authorizeNetTransactionKey", authorizeNetTransactionKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    BillableEntityResponse.class )

    }

}
