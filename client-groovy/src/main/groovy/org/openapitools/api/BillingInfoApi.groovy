package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.PaymentTypesResponse

class BillingInfoApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addPaymentMethod ( BigDecimal version, Long accountId, Long paymentMethodId, String accountName, String firstName, String lastName, String address, String city, String state, String postalCode, String country, String phone, String creditCardNumber, String expirationDate, String ccv, String accountNumber, String bankName, String routingNumber, Boolean defaultPaymentMethod, String paymentMethodNickname, String taxId, String providerCustomerProfileId, String providerPaymentProfileId, String metaData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/billing/update"

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
        if (paymentMethodId != null) {
            queryParams.put("paymentMethodId", paymentMethodId)
        }
        if (accountName != null) {
            queryParams.put("accountName", accountName)
        }
        if (firstName != null) {
            queryParams.put("firstName", firstName)
        }
        if (lastName != null) {
            queryParams.put("lastName", lastName)
        }
        if (address != null) {
            queryParams.put("address", address)
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
        if (country != null) {
            queryParams.put("country", country)
        }
        if (phone != null) {
            queryParams.put("phone", phone)
        }
        if (creditCardNumber != null) {
            queryParams.put("creditCardNumber", creditCardNumber)
        }
        if (expirationDate != null) {
            queryParams.put("expirationDate", expirationDate)
        }
        if (ccv != null) {
            queryParams.put("ccv", ccv)
        }
        if (accountNumber != null) {
            queryParams.put("accountNumber", accountNumber)
        }
        if (bankName != null) {
            queryParams.put("bankName", bankName)
        }
        if (routingNumber != null) {
            queryParams.put("routingNumber", routingNumber)
        }
        if (defaultPaymentMethod != null) {
            queryParams.put("defaultPaymentMethod", defaultPaymentMethod)
        }
        if (paymentMethodNickname != null) {
            queryParams.put("paymentMethodNickname", paymentMethodNickname)
        }
        if (taxId != null) {
            queryParams.put("taxId", taxId)
        }
        if (providerCustomerProfileId != null) {
            queryParams.put("providerCustomerProfileId", providerCustomerProfileId)
        }
        if (providerPaymentProfileId != null) {
            queryParams.put("providerPaymentProfileId", providerPaymentProfileId)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PaymentTypesResponse.class )

    }

    def createPaymentMethod ( BigDecimal version, Long accountId, String accountName, String firstName, String lastName, String address, String city, String state, String postalCode, String country, String phone, String creditCardNumber, String expirationDate, String ccv, String accountNumber, String bankName, String routingNumber, String paymentMethodNickname, String taxId, Boolean defaultPaymentMethod, String authToken, String provider, String providerCustomerProfileId, String providerPaymentProfileId, String metaData, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/billing/create"

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
        if (accountName != null) {
            queryParams.put("accountName", accountName)
        }
        if (firstName != null) {
            queryParams.put("firstName", firstName)
        }
        if (lastName != null) {
            queryParams.put("lastName", lastName)
        }
        if (address != null) {
            queryParams.put("address", address)
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
        if (country != null) {
            queryParams.put("country", country)
        }
        if (phone != null) {
            queryParams.put("phone", phone)
        }
        if (creditCardNumber != null) {
            queryParams.put("creditCardNumber", creditCardNumber)
        }
        if (expirationDate != null) {
            queryParams.put("expirationDate", expirationDate)
        }
        if (ccv != null) {
            queryParams.put("ccv", ccv)
        }
        if (accountNumber != null) {
            queryParams.put("accountNumber", accountNumber)
        }
        if (bankName != null) {
            queryParams.put("bankName", bankName)
        }
        if (routingNumber != null) {
            queryParams.put("routingNumber", routingNumber)
        }
        if (paymentMethodNickname != null) {
            queryParams.put("paymentMethodNickname", paymentMethodNickname)
        }
        if (taxId != null) {
            queryParams.put("taxId", taxId)
        }
        if (defaultPaymentMethod != null) {
            queryParams.put("defaultPaymentMethod", defaultPaymentMethod)
        }
        if (authToken != null) {
            queryParams.put("authToken", authToken)
        }
        if (provider != null) {
            queryParams.put("provider", provider)
        }
        if (providerCustomerProfileId != null) {
            queryParams.put("providerCustomerProfileId", providerCustomerProfileId)
        }
        if (providerPaymentProfileId != null) {
            queryParams.put("providerPaymentProfileId", providerPaymentProfileId)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PaymentTypesResponse.class )

    }

    def createSmartContract ( BigDecimal version, Long accountId, String tokenName, String tokenSymbol, Long paymentMethodId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/billing/crypto/transfer"

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
        if (tokenName == null) {
            throw new RuntimeException("missing required params tokenName")
        }
        // verify required params are set
        if (tokenSymbol == null) {
            throw new RuntimeException("missing required params tokenSymbol")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (paymentMethodId != null) {
            queryParams.put("paymentMethodId", paymentMethodId)
        }
        if (tokenName != null) {
            queryParams.put("tokenName", tokenName)
        }
        if (tokenSymbol != null) {
            queryParams.put("tokenSymbol", tokenSymbol)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PaymentTypesResponse.class )

    }

    def getCryptoBalance ( BigDecimal version, Long accountId, Long ownerAccountId, Long paymentMethodId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/billing/crypto/get"

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
        if (ownerAccountId != null) {
            queryParams.put("ownerAccountId", ownerAccountId)
        }
        if (paymentMethodId != null) {
            queryParams.put("paymentMethodId", paymentMethodId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PaymentTypesResponse.class )

    }

    def getPaymentMethod ( BigDecimal version, Long accountId, Long paymentMethodId, Boolean getCurrentBalance, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/billing/get"

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
        if (paymentMethodId != null) {
            queryParams.put("paymentMethodId", paymentMethodId)
        }
        if (getCurrentBalance != null) {
            queryParams.put("getCurrentBalance", getCurrentBalance)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PaymentTypesResponse.class )

    }

    def searchPaymentMethod ( BigDecimal version, Long accountId, String provider, String type, String keyword, String sortField, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/billing/search"

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
        if (provider != null) {
            queryParams.put("provider", provider)
        }
        if (type != null) {
            queryParams.put("type", type)
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
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PaymentTypesResponse.class )

    }

}
