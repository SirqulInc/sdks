package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.EmployeeResponse
import org.openapitools.model.SirqulResponse

class EmployeeApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def assignEmployee ( BigDecimal version, Long accountId, Long managerAccountId, Long employeeAccountId, String role, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/employee/assign"

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
        if (managerAccountId == null) {
            throw new RuntimeException("missing required params managerAccountId")
        }
        // verify required params are set
        if (employeeAccountId == null) {
            throw new RuntimeException("missing required params employeeAccountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (managerAccountId != null) {
            queryParams.put("managerAccountId", managerAccountId)
        }
        if (employeeAccountId != null) {
            queryParams.put("employeeAccountId", employeeAccountId)
        }
        if (role != null) {
            queryParams.put("role", role)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    EmployeeResponse.class )

    }

    def assignToLocationEmployee ( BigDecimal version, Long accountId, Long retailerLocationId, Long employeeAccountId, Boolean assign, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/employee/assignToLocation"

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
        if (retailerLocationId == null) {
            throw new RuntimeException("missing required params retailerLocationId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (employeeAccountId != null) {
            queryParams.put("employeeAccountId", employeeAccountId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (assign != null) {
            queryParams.put("assign", assign)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def createEmployee ( BigDecimal version, Long accountId, Long managerAccountId, String username, String password, String name, String prefixName, String firstName, String middleName, String lastName, String suffixName, String title, String aboutUs, Long assetId, String gender, String homePhone, String cellPhone, String cellPhoneCarrier, String businessPhone, String emailAddress, String streetAddress, String streetAddress2, String city, String state, String zipcode, String country, String role, String retailerLocationIds, String settingsAppKey, String appBlob, String assignedDeviceId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/employee/create"

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
        if (managerAccountId == null) {
            throw new RuntimeException("missing required params managerAccountId")
        }
        // verify required params are set
        if (username == null) {
            throw new RuntimeException("missing required params username")
        }
        // verify required params are set
        if (password == null) {
            throw new RuntimeException("missing required params password")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (managerAccountId != null) {
            queryParams.put("managerAccountId", managerAccountId)
        }
        if (username != null) {
            queryParams.put("username", username)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (prefixName != null) {
            queryParams.put("prefixName", prefixName)
        }
        if (firstName != null) {
            queryParams.put("firstName", firstName)
        }
        if (middleName != null) {
            queryParams.put("middleName", middleName)
        }
        if (lastName != null) {
            queryParams.put("lastName", lastName)
        }
        if (suffixName != null) {
            queryParams.put("suffixName", suffixName)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (aboutUs != null) {
            queryParams.put("aboutUs", aboutUs)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (homePhone != null) {
            queryParams.put("homePhone", homePhone)
        }
        if (cellPhone != null) {
            queryParams.put("cellPhone", cellPhone)
        }
        if (cellPhoneCarrier != null) {
            queryParams.put("cellPhoneCarrier", cellPhoneCarrier)
        }
        if (businessPhone != null) {
            queryParams.put("businessPhone", businessPhone)
        }
        if (emailAddress != null) {
            queryParams.put("emailAddress", emailAddress)
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
        if (zipcode != null) {
            queryParams.put("zipcode", zipcode)
        }
        if (country != null) {
            queryParams.put("country", country)
        }
        if (role != null) {
            queryParams.put("role", role)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (settingsAppKey != null) {
            queryParams.put("settingsAppKey", settingsAppKey)
        }
        if (appBlob != null) {
            queryParams.put("appBlob", appBlob)
        }
        if (assignedDeviceId != null) {
            queryParams.put("assignedDeviceId", assignedDeviceId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    EmployeeResponse.class )

    }

    def deleteEmployee ( BigDecimal version, Long accountId, Long employeeAccountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/employee/delete"

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
        if (employeeAccountId == null) {
            throw new RuntimeException("missing required params employeeAccountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (employeeAccountId != null) {
            queryParams.put("employeeAccountId", employeeAccountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getEmployee ( BigDecimal version, Long accountId, Long employeeAccountId, String settingsAppKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/employee/get"

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
        if (employeeAccountId == null) {
            throw new RuntimeException("missing required params employeeAccountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (employeeAccountId != null) {
            queryParams.put("employeeAccountId", employeeAccountId)
        }
        if (settingsAppKey != null) {
            queryParams.put("settingsAppKey", settingsAppKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    EmployeeResponse.class )

    }

    def searchEmployees ( BigDecimal version, Long accountId, String role, Long retailerId, Long retailerLocationId, String q, String keyword, String sortField, Boolean descending, Integer i, Integer start, Integer l, Integer limit, Boolean activeOnly, Boolean managedOnly, String settingsAppKey, String categoryIds, String query, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/employee/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (role != null) {
            queryParams.put("role", role)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (q != null) {
            queryParams.put("q", q)
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
        if (i != null) {
            queryParams.put("_i", i)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (l != null) {
            queryParams.put("_l", l)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (managedOnly != null) {
            queryParams.put("managedOnly", managedOnly)
        }
        if (settingsAppKey != null) {
            queryParams.put("settingsAppKey", settingsAppKey)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (query != null) {
            queryParams.put("query", query)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "array",
                    EmployeeResponse.class )

    }

    def unassignEmployee ( BigDecimal version, Long accountId, Long employeeAccountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/employee/unassign"

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
        if (employeeAccountId == null) {
            throw new RuntimeException("missing required params employeeAccountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (employeeAccountId != null) {
            queryParams.put("employeeAccountId", employeeAccountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    EmployeeResponse.class )

    }

    def updateEmployee ( BigDecimal version, Long accountId, Long employeeAccountId, Long managerAccountId, String name, String prefixName, String firstName, String middleName, String lastName, String suffixName, String title, Long assetId, String gender, String homePhone, String cellPhone, String cellPhoneCarrier, String businessPhone, String emailAddress, String streetAddress, String streetAddress2, String city, String state, String zipcode, String country, String role, Boolean active, String password, String retailerLocationIds, String settingsAppKey, String appBlob, String assignedDeviceId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/employee/update"

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
        if (employeeAccountId == null) {
            throw new RuntimeException("missing required params employeeAccountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (employeeAccountId != null) {
            queryParams.put("employeeAccountId", employeeAccountId)
        }
        if (managerAccountId != null) {
            queryParams.put("managerAccountId", managerAccountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (prefixName != null) {
            queryParams.put("prefixName", prefixName)
        }
        if (firstName != null) {
            queryParams.put("firstName", firstName)
        }
        if (middleName != null) {
            queryParams.put("middleName", middleName)
        }
        if (lastName != null) {
            queryParams.put("lastName", lastName)
        }
        if (suffixName != null) {
            queryParams.put("suffixName", suffixName)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (homePhone != null) {
            queryParams.put("homePhone", homePhone)
        }
        if (cellPhone != null) {
            queryParams.put("cellPhone", cellPhone)
        }
        if (cellPhoneCarrier != null) {
            queryParams.put("cellPhoneCarrier", cellPhoneCarrier)
        }
        if (businessPhone != null) {
            queryParams.put("businessPhone", businessPhone)
        }
        if (emailAddress != null) {
            queryParams.put("emailAddress", emailAddress)
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
        if (zipcode != null) {
            queryParams.put("zipcode", zipcode)
        }
        if (country != null) {
            queryParams.put("country", country)
        }
        if (role != null) {
            queryParams.put("role", role)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (settingsAppKey != null) {
            queryParams.put("settingsAppKey", settingsAppKey)
        }
        if (appBlob != null) {
            queryParams.put("appBlob", appBlob)
        }
        if (assignedDeviceId != null) {
            queryParams.put("assignedDeviceId", assignedDeviceId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    EmployeeResponse.class )

    }

}
