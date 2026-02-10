package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AccountLoginResponse
import org.openapitools.model.AssetListResponse
import java.math.BigDecimal
import org.openapitools.model.ProfileInfoResponse
import org.openapitools.model.ProfileResponse
import org.openapitools.model.SirqulResponse
import org.openapitools.model.UserLocationSearchResponse
import org.openapitools.model.UserSettingsResponse

class AccountApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def accountLocationSearch ( BigDecimal version, String deviceId, Long accountId, String q, String keyword, String postalCode, Double latitude, Double longitude, String appKey, Double range, Long locationLastUpdated, String gender, Integer minAge, Integer maxAge, Integer companionshipIndex, Integer i, Integer start, Integer l, Integer limit, String searchMode, String sortField, Boolean descending, String roles, String tags, String experience, String categoryIds, String audienceIds, String audienceOperator, Boolean updateCurrentLocation, Boolean updatePreferredSettings, Boolean showExactLocations, Boolean showConnectionToSearcher, Long flagCountMinimum, Boolean verifiedUserOnly, Boolean contentAdminOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/search"

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
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (postalCode != null) {
            queryParams.put("postalCode", postalCode)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (range != null) {
            queryParams.put("range", range)
        }
        if (locationLastUpdated != null) {
            queryParams.put("locationLastUpdated", locationLastUpdated)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (minAge != null) {
            queryParams.put("minAge", minAge)
        }
        if (maxAge != null) {
            queryParams.put("maxAge", maxAge)
        }
        if (companionshipIndex != null) {
            queryParams.put("companionshipIndex", companionshipIndex)
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
        if (searchMode != null) {
            queryParams.put("searchMode", searchMode)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (roles != null) {
            queryParams.put("roles", roles)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (experience != null) {
            queryParams.put("experience", experience)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (audienceOperator != null) {
            queryParams.put("audienceOperator", audienceOperator)
        }
        if (updateCurrentLocation != null) {
            queryParams.put("updateCurrentLocation", updateCurrentLocation)
        }
        if (updatePreferredSettings != null) {
            queryParams.put("updatePreferredSettings", updatePreferredSettings)
        }
        if (showExactLocations != null) {
            queryParams.put("showExactLocations", showExactLocations)
        }
        if (showConnectionToSearcher != null) {
            queryParams.put("showConnectionToSearcher", showConnectionToSearcher)
        }
        if (flagCountMinimum != null) {
            queryParams.put("flagCountMinimum", flagCountMinimum)
        }
        if (verifiedUserOnly != null) {
            queryParams.put("verifiedUserOnly", verifiedUserOnly)
        }
        if (contentAdminOnly != null) {
            queryParams.put("contentAdminOnly", contentAdminOnly)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    UserLocationSearchResponse.class )

    }

    def blockAccount ( BigDecimal version, Long accountIdBeingBlocked, String deviceId, Long accountId, Boolean blockFlagValue, Boolean removeFromGroupsIfBlocked, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/block"

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
        if (accountIdBeingBlocked == null) {
            throw new RuntimeException("missing required params accountIdBeingBlocked")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (accountIdBeingBlocked != null) {
            queryParams.put("accountIdBeingBlocked", accountIdBeingBlocked)
        }
        if (blockFlagValue != null) {
            queryParams.put("blockFlagValue", blockFlagValue)
        }
        if (removeFromGroupsIfBlocked != null) {
            queryParams.put("removeFromGroupsIfBlocked", removeFromGroupsIfBlocked)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def createAccount ( BigDecimal version, String username, String password, String name, String prefixName, String firstName, String middleName, String lastName, String suffixName, String title, String deviceId, String deviceIdType, String emailAddress, Long assetId, String streetAddress, String zipcode, String gender, Long birthday, String homePhone, String cellPhone, String cellPhoneCarrier, String businessPhone, String role, String platforms, String tags, String aboutUs, String gameExperience, String categoryIds, String hometown, String height, Integer heightIndex, String ethnicity, String bodyType, String maritalStatus, String children, String religion, String education, Integer educationIndex, String smoke, String drink, String companionship, Integer companionshipIndex, Integer preferredMinAge, Integer preferredMaxAge, Integer preferredMinHeight, Integer preferredMaxHeight, String preferredGender, String preferredEducation, Integer preferredEducationIndex, String preferredBodyType, String preferredEthnicity, String preferredLocation, Double preferredLocationRange, Double latitude, Double longitude, Boolean acceptedTerms, String inviteToken, Long referralAccountId, Boolean sendValidation, String gameType, String appKey, String appVersion, String responseType, String audienceIdsToAdd, String appBlob, Boolean appEnablePush, Boolean appEnableSMS, Boolean appEnableEmail, String locationVisibility, Double homeLatitude, Double homeLongitude, String appNickname, Long personalAudienceId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/create"

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
        if (username == null) {
            throw new RuntimeException("missing required params username")
        }
        // verify required params are set
        if (password == null) {
            throw new RuntimeException("missing required params password")
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
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (deviceIdType != null) {
            queryParams.put("deviceIdType", deviceIdType)
        }
        if (username != null) {
            queryParams.put("username", username)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (emailAddress != null) {
            queryParams.put("emailAddress", emailAddress)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (streetAddress != null) {
            queryParams.put("streetAddress", streetAddress)
        }
        if (zipcode != null) {
            queryParams.put("zipcode", zipcode)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (birthday != null) {
            queryParams.put("birthday", birthday)
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
        if (role != null) {
            queryParams.put("role", role)
        }
        if (platforms != null) {
            queryParams.put("platforms", platforms)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (aboutUs != null) {
            queryParams.put("aboutUs", aboutUs)
        }
        if (gameExperience != null) {
            queryParams.put("gameExperience", gameExperience)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (hometown != null) {
            queryParams.put("hometown", hometown)
        }
        if (height != null) {
            queryParams.put("height", height)
        }
        if (heightIndex != null) {
            queryParams.put("heightIndex", heightIndex)
        }
        if (ethnicity != null) {
            queryParams.put("ethnicity", ethnicity)
        }
        if (bodyType != null) {
            queryParams.put("bodyType", bodyType)
        }
        if (maritalStatus != null) {
            queryParams.put("maritalStatus", maritalStatus)
        }
        if (children != null) {
            queryParams.put("children", children)
        }
        if (religion != null) {
            queryParams.put("religion", religion)
        }
        if (education != null) {
            queryParams.put("education", education)
        }
        if (educationIndex != null) {
            queryParams.put("educationIndex", educationIndex)
        }
        if (smoke != null) {
            queryParams.put("smoke", smoke)
        }
        if (drink != null) {
            queryParams.put("drink", drink)
        }
        if (companionship != null) {
            queryParams.put("companionship", companionship)
        }
        if (companionshipIndex != null) {
            queryParams.put("companionshipIndex", companionshipIndex)
        }
        if (preferredMinAge != null) {
            queryParams.put("preferredMinAge", preferredMinAge)
        }
        if (preferredMaxAge != null) {
            queryParams.put("preferredMaxAge", preferredMaxAge)
        }
        if (preferredMinHeight != null) {
            queryParams.put("preferredMinHeight", preferredMinHeight)
        }
        if (preferredMaxHeight != null) {
            queryParams.put("preferredMaxHeight", preferredMaxHeight)
        }
        if (preferredGender != null) {
            queryParams.put("preferredGender", preferredGender)
        }
        if (preferredEducation != null) {
            queryParams.put("preferredEducation", preferredEducation)
        }
        if (preferredEducationIndex != null) {
            queryParams.put("preferredEducationIndex", preferredEducationIndex)
        }
        if (preferredBodyType != null) {
            queryParams.put("preferredBodyType", preferredBodyType)
        }
        if (preferredEthnicity != null) {
            queryParams.put("preferredEthnicity", preferredEthnicity)
        }
        if (preferredLocation != null) {
            queryParams.put("preferredLocation", preferredLocation)
        }
        if (preferredLocationRange != null) {
            queryParams.put("preferredLocationRange", preferredLocationRange)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (acceptedTerms != null) {
            queryParams.put("acceptedTerms", acceptedTerms)
        }
        if (inviteToken != null) {
            queryParams.put("inviteToken", inviteToken)
        }
        if (referralAccountId != null) {
            queryParams.put("referralAccountId", referralAccountId)
        }
        if (sendValidation != null) {
            queryParams.put("sendValidation", sendValidation)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (responseType != null) {
            queryParams.put("responseType", responseType)
        }
        if (audienceIdsToAdd != null) {
            queryParams.put("audienceIdsToAdd", audienceIdsToAdd)
        }
        if (appBlob != null) {
            queryParams.put("appBlob", appBlob)
        }
        if (appEnablePush != null) {
            queryParams.put("appEnablePush", appEnablePush)
        }
        if (appEnableSMS != null) {
            queryParams.put("appEnableSMS", appEnableSMS)
        }
        if (appEnableEmail != null) {
            queryParams.put("appEnableEmail", appEnableEmail)
        }
        if (locationVisibility != null) {
            queryParams.put("locationVisibility", locationVisibility)
        }
        if (homeLatitude != null) {
            queryParams.put("homeLatitude", homeLatitude)
        }
        if (homeLongitude != null) {
            queryParams.put("homeLongitude", homeLongitude)
        }
        if (appNickname != null) {
            queryParams.put("appNickname", appNickname)
        }
        if (personalAudienceId != null) {
            queryParams.put("personalAudienceId", personalAudienceId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AccountLoginResponse.class )

    }

    def editAccount ( BigDecimal version, String deviceId, Long accountId, Long connectionAccountId, String role, Long assetId, String name, String prefixName, String firstName, String middleName, String lastName, String suffixName, String title, String gender, Integer age, Long birthday, String homePhone, String cellPhone, String cellPhoneCarrier, String businessPhone, String emailAddress, String streetAddress, String streetAddress2, String city, String state, String zipcode, String country, Boolean makeProfileInfoPublic, Boolean makeGameInfoPublic, Boolean makeFriendsInfoPublic, String hometown, String height, Integer heightIndex, String ethnicity, String bodyType, String maritalStatus, String children, String religion, String education, Integer educationIndex, String smoke, String drink, String companionship, Integer companionshipIndex, Integer preferredMinAge, Integer preferredMaxAge, Integer preferredMinHeight, Integer preferredMaxHeight, String preferredGender, String preferredEducation, Integer preferredEducationIndex, String preferredBodyType, String preferredEthnicity, String preferredLocation, Double preferredLocationRange, String platforms, String tags, String aboutUs, String matchToken, String gameExperience, String categories, String categoryIds, String responseFilters, Boolean showAsZipcode, Boolean showExactLocation, Boolean showOthersExactLocation, Boolean acceptedTerms, String locationVisibility, String appBlob, Boolean appEnablePush, Boolean appEnableSMS, Boolean appEnableEmail, String gameType, String appKey, Double latitude, Double longitude, Boolean returnProfile, String audienceIdsToAdd, String audienceIdsToRemove, Long referralAccountId, String appNickname, Long personalAudienceId, String nonGuestUsername, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/profile/update"

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
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (role != null) {
            queryParams.put("role", role)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
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
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (age != null) {
            queryParams.put("age", age)
        }
        if (birthday != null) {
            queryParams.put("birthday", birthday)
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
        if (makeProfileInfoPublic != null) {
            queryParams.put("makeProfileInfoPublic", makeProfileInfoPublic)
        }
        if (makeGameInfoPublic != null) {
            queryParams.put("makeGameInfoPublic", makeGameInfoPublic)
        }
        if (makeFriendsInfoPublic != null) {
            queryParams.put("makeFriendsInfoPublic", makeFriendsInfoPublic)
        }
        if (hometown != null) {
            queryParams.put("hometown", hometown)
        }
        if (height != null) {
            queryParams.put("height", height)
        }
        if (heightIndex != null) {
            queryParams.put("heightIndex", heightIndex)
        }
        if (ethnicity != null) {
            queryParams.put("ethnicity", ethnicity)
        }
        if (bodyType != null) {
            queryParams.put("bodyType", bodyType)
        }
        if (maritalStatus != null) {
            queryParams.put("maritalStatus", maritalStatus)
        }
        if (children != null) {
            queryParams.put("children", children)
        }
        if (religion != null) {
            queryParams.put("religion", religion)
        }
        if (education != null) {
            queryParams.put("education", education)
        }
        if (educationIndex != null) {
            queryParams.put("educationIndex", educationIndex)
        }
        if (smoke != null) {
            queryParams.put("smoke", smoke)
        }
        if (drink != null) {
            queryParams.put("drink", drink)
        }
        if (companionship != null) {
            queryParams.put("companionship", companionship)
        }
        if (companionshipIndex != null) {
            queryParams.put("companionshipIndex", companionshipIndex)
        }
        if (preferredMinAge != null) {
            queryParams.put("preferredMinAge", preferredMinAge)
        }
        if (preferredMaxAge != null) {
            queryParams.put("preferredMaxAge", preferredMaxAge)
        }
        if (preferredMinHeight != null) {
            queryParams.put("preferredMinHeight", preferredMinHeight)
        }
        if (preferredMaxHeight != null) {
            queryParams.put("preferredMaxHeight", preferredMaxHeight)
        }
        if (preferredGender != null) {
            queryParams.put("preferredGender", preferredGender)
        }
        if (preferredEducation != null) {
            queryParams.put("preferredEducation", preferredEducation)
        }
        if (preferredEducationIndex != null) {
            queryParams.put("preferredEducationIndex", preferredEducationIndex)
        }
        if (preferredBodyType != null) {
            queryParams.put("preferredBodyType", preferredBodyType)
        }
        if (preferredEthnicity != null) {
            queryParams.put("preferredEthnicity", preferredEthnicity)
        }
        if (preferredLocation != null) {
            queryParams.put("preferredLocation", preferredLocation)
        }
        if (preferredLocationRange != null) {
            queryParams.put("preferredLocationRange", preferredLocationRange)
        }
        if (platforms != null) {
            queryParams.put("platforms", platforms)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (aboutUs != null) {
            queryParams.put("aboutUs", aboutUs)
        }
        if (matchToken != null) {
            queryParams.put("matchToken", matchToken)
        }
        if (gameExperience != null) {
            queryParams.put("gameExperience", gameExperience)
        }
        if (categories != null) {
            queryParams.put("categories", categories)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (responseFilters != null) {
            queryParams.put("responseFilters", responseFilters)
        }
        if (showAsZipcode != null) {
            queryParams.put("showAsZipcode", showAsZipcode)
        }
        if (showExactLocation != null) {
            queryParams.put("showExactLocation", showExactLocation)
        }
        if (showOthersExactLocation != null) {
            queryParams.put("showOthersExactLocation", showOthersExactLocation)
        }
        if (acceptedTerms != null) {
            queryParams.put("acceptedTerms", acceptedTerms)
        }
        if (locationVisibility != null) {
            queryParams.put("locationVisibility", locationVisibility)
        }
        if (appBlob != null) {
            queryParams.put("appBlob", appBlob)
        }
        if (appEnablePush != null) {
            queryParams.put("appEnablePush", appEnablePush)
        }
        if (appEnableSMS != null) {
            queryParams.put("appEnableSMS", appEnableSMS)
        }
        if (appEnableEmail != null) {
            queryParams.put("appEnableEmail", appEnableEmail)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (returnProfile != null) {
            queryParams.put("returnProfile", returnProfile)
        }
        if (audienceIdsToAdd != null) {
            queryParams.put("audienceIdsToAdd", audienceIdsToAdd)
        }
        if (audienceIdsToRemove != null) {
            queryParams.put("audienceIdsToRemove", audienceIdsToRemove)
        }
        if (referralAccountId != null) {
            queryParams.put("referralAccountId", referralAccountId)
        }
        if (appNickname != null) {
            queryParams.put("appNickname", appNickname)
        }
        if (personalAudienceId != null) {
            queryParams.put("personalAudienceId", personalAudienceId)
        }
        if (nonGuestUsername != null) {
            queryParams.put("nonGuestUsername", nonGuestUsername)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileInfoResponse.class )

    }

    def editUsername ( BigDecimal version, String deviceId, Long accountId, String emailAddress, String username, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/username/update"

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
        if (emailAddress != null) {
            queryParams.put("emailAddress", emailAddress)
        }
        if (username != null) {
            queryParams.put("username", username)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getAccount ( BigDecimal version, Boolean returnNulls, String deviceId, Long accountId, String connectionAccountEmail, Long connectionAccountId, String responseFilters, String gameType, String appKey, String purchaseType, Boolean updateViewedDate, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/profile/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionAccountEmail != null) {
            queryParams.put("connectionAccountEmail", connectionAccountEmail)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (responseFilters != null) {
            queryParams.put("responseFilters", responseFilters)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (purchaseType != null) {
            queryParams.put("purchaseType", purchaseType)
        }
        if (updateViewedDate != null) {
            queryParams.put("updateViewedDate", updateViewedDate)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ProfileResponse.class )

    }

    def getProfileAssets ( BigDecimal version, Boolean returnNulls, String deviceId, Long accountId, Long ownerId, String mediaTypes, String mimeTypes, String sortField, Boolean descending, Double latitude, Double longitude, Integer i, Integer start, Integer l, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/profile/assets"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (ownerId != null) {
            queryParams.put("ownerId", ownerId)
        }
        if (mediaTypes != null) {
            queryParams.put("mediaTypes", mediaTypes)
        }
        if (mimeTypes != null) {
            queryParams.put("mimeTypes", mimeTypes)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AssetListResponse.class )

    }

    def getReferralList ( BigDecimal version, Long accountId, String appKey, String retrieveType, BigDecimal levelLimit, BigDecimal ancestorLevelLimit, BigDecimal childrenLevelLimit, BigDecimal ancestorListStart, BigDecimal ancestorListLimit, BigDecimal childrenListStart, BigDecimal childrenListLimit, Boolean childrenChildren, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/referral/list"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (retrieveType != null) {
            queryParams.put("retrieveType", retrieveType)
        }
        if (levelLimit != null) {
            queryParams.put("levelLimit", levelLimit)
        }
        if (ancestorLevelLimit != null) {
            queryParams.put("ancestorLevelLimit", ancestorLevelLimit)
        }
        if (childrenLevelLimit != null) {
            queryParams.put("childrenLevelLimit", childrenLevelLimit)
        }
        if (ancestorListStart != null) {
            queryParams.put("ancestorListStart", ancestorListStart)
        }
        if (ancestorListLimit != null) {
            queryParams.put("ancestorListLimit", ancestorListLimit)
        }
        if (childrenListStart != null) {
            queryParams.put("childrenListStart", childrenListStart)
        }
        if (childrenListLimit != null) {
            queryParams.put("childrenListLimit", childrenListLimit)
        }
        if (childrenChildren != null) {
            queryParams.put("childrenChildren", childrenChildren)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getSettings ( BigDecimal version, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/settings/get"

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
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    UserSettingsResponse.class )

    }

    def loginDelegate ( BigDecimal version, String accessToken, String appKey, String deviceId, String accessTokenSecret, Long delegatedAccountId, String delegatedUsername, String networkUID, Integer ageRestriction, String responseFilters, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/login/delegate"

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
        if (accessToken == null) {
            throw new RuntimeException("missing required params accessToken")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accessToken != null) {
            queryParams.put("accessToken", accessToken)
        }
        if (accessTokenSecret != null) {
            queryParams.put("accessTokenSecret", accessTokenSecret)
        }
        if (delegatedAccountId != null) {
            queryParams.put("delegatedAccountId", delegatedAccountId)
        }
        if (delegatedUsername != null) {
            queryParams.put("delegatedUsername", delegatedUsername)
        }
        if (networkUID != null) {
            queryParams.put("networkUID", networkUID)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (ageRestriction != null) {
            queryParams.put("ageRestriction", ageRestriction)
        }
        if (responseFilters != null) {
            queryParams.put("responseFilters", responseFilters)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

    def loginGeneral ( BigDecimal version, String accessToken, String networkUID, String appKey, String deviceId, String deviceIdType, String accessTokenSecret, Integer ageRestriction, String responseFilters, Double latitude, Double longitude, Boolean emailMatch, Long chosenAccountId, Long thirdPartyCredentialId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/login"

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
        if (accessToken == null) {
            throw new RuntimeException("missing required params accessToken")
        }
        // verify required params are set
        if (networkUID == null) {
            throw new RuntimeException("missing required params networkUID")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (deviceIdType != null) {
            queryParams.put("deviceIdType", deviceIdType)
        }
        if (accessToken != null) {
            queryParams.put("accessToken", accessToken)
        }
        if (accessTokenSecret != null) {
            queryParams.put("accessTokenSecret", accessTokenSecret)
        }
        if (networkUID != null) {
            queryParams.put("networkUID", networkUID)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (ageRestriction != null) {
            queryParams.put("ageRestriction", ageRestriction)
        }
        if (responseFilters != null) {
            queryParams.put("responseFilters", responseFilters)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (emailMatch != null) {
            queryParams.put("emailMatch", emailMatch)
        }
        if (chosenAccountId != null) {
            queryParams.put("chosenAccountId", chosenAccountId)
        }
        if (thirdPartyCredentialId != null) {
            queryParams.put("thirdPartyCredentialId", thirdPartyCredentialId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

    def loginUsername ( BigDecimal version, String username, String password, String deviceId, Double latitude, Double longitude, String app, String gameType, String appKey, Boolean returnProfile, String responseFilters, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/get"

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
        if (username == null) {
            throw new RuntimeException("missing required params username")
        }
        // verify required params are set
        if (password == null) {
            throw new RuntimeException("missing required params password")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (username != null) {
            queryParams.put("username", username)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (app != null) {
            queryParams.put("app", app)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (returnProfile != null) {
            queryParams.put("returnProfile", returnProfile)
        }
        if (responseFilters != null) {
            queryParams.put("responseFilters", responseFilters)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

    def logout ( BigDecimal version, String deviceId, String deviceIdType, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/logout"

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
        if (deviceIdType != null) {
            queryParams.put("deviceIdType", deviceIdType)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def mergeAccount ( BigDecimal version, Long mergeAccountId, String appKey, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/merge"

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
        if (mergeAccountId == null) {
            throw new RuntimeException("missing required params mergeAccountId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (mergeAccountId != null) {
            queryParams.put("mergeAccountId", mergeAccountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def passwordChange ( BigDecimal version, Long accountId, String oldPassword, String newPassword, String confirmPassword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/passwordchange"

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
        if (oldPassword == null) {
            throw new RuntimeException("missing required params oldPassword")
        }
        // verify required params are set
        if (newPassword == null) {
            throw new RuntimeException("missing required params newPassword")
        }
        // verify required params are set
        if (confirmPassword == null) {
            throw new RuntimeException("missing required params confirmPassword")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (oldPassword != null) {
            queryParams.put("oldPassword", oldPassword)
        }
        if (newPassword != null) {
            queryParams.put("newPassword", newPassword)
        }
        if (confirmPassword != null) {
            queryParams.put("confirmPassword", confirmPassword)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def passwordReset ( BigDecimal version, String token, String password, String confirm, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/passwordreset"

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
        if (password == null) {
            throw new RuntimeException("missing required params password")
        }
        // verify required params are set
        if (confirm == null) {
            throw new RuntimeException("missing required params confirm")
        }

        if (token != null) {
            queryParams.put("token", token)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (confirm != null) {
            queryParams.put("confirm", confirm)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def requestPasswordReset ( BigDecimal version, String email, String from, String domain, String subUrl, String referer, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/requestpasswordreset"

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
        if (email == null) {
            throw new RuntimeException("missing required params email")
        }

        if (email != null) {
            queryParams.put("email", email)
        }
        if (from != null) {
            queryParams.put("from", from)
        }
        if (domain != null) {
            queryParams.put("domain", domain)
        }
        if (subUrl != null) {
            queryParams.put("subUrl", subUrl)
        }
        if (referer != null) {
            queryParams.put("referer", referer)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def requestValidateAccount ( BigDecimal version, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/requestValidateAccount"

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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def searchAccounts ( BigDecimal version, Long accountId, String appKey, String keyword, Double latitude, Double longitude, Double radius, String gender, String gameExperience, Integer age, String categoryIds, Boolean returnNulls, String responseFilters, String purchaseType, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/profile/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
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
        if (radius != null) {
            queryParams.put("radius", radius)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (gameExperience != null) {
            queryParams.put("gameExperience", gameExperience)
        }
        if (age != null) {
            queryParams.put("age", age)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (responseFilters != null) {
            queryParams.put("responseFilters", responseFilters)
        }
        if (purchaseType != null) {
            queryParams.put("purchaseType", purchaseType)
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
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ProfileResponse.class )

    }

    def secureLogin ( BigDecimal version, String username, String password, String gameType, String deviceId, String charsetName, Double latitude, Double longitude, Boolean returnProfile, String responseFilters, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/login/validate"

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
        if (username == null) {
            throw new RuntimeException("missing required params username")
        }
        // verify required params are set
        if (password == null) {
            throw new RuntimeException("missing required params password")
        }
        // verify required params are set
        if (gameType == null) {
            throw new RuntimeException("missing required params gameType")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (username != null) {
            queryParams.put("username", username)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (charsetName != null) {
            queryParams.put("charsetName", charsetName)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (returnProfile != null) {
            queryParams.put("returnProfile", returnProfile)
        }
        if (responseFilters != null) {
            queryParams.put("responseFilters", responseFilters)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

    def secureSignup ( BigDecimal version, String deviceId, String username, String password, String name, String inviteToken, String prefixName, String firstName, String middleName, String lastName, String suffixName, String title, String deviceIdType, String emailAddress, Long assetId, String address, String zipcode, String gender, Long birthday, String homePhone, String cellPhone, String cellPhoneCarrier, String businessPhone, String role, String platforms, String tags, String aboutUs, String gameExperience, String categoryIds, String hometown, String height, Integer heightIndex, String ethnicity, String bodyType, String maritalStatus, String children, String religion, String education, Integer educationIndex, String smoke, String drink, String companionship, Integer companionshipIndex, Integer preferredMinAge, Integer preferredMaxAge, Integer preferredMinHeight, Integer preferredMaxHeight, String preferredGender, String preferredEducation, Integer preferredEducationIndex, String preferredBodyType, String preferredEthnicity, String preferredLocation, Double preferredLocationRange, Double latitude, Double longitude, Boolean acceptedTerms, String charsetName, String gameType, String appKey, String appVersion, String responseType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/create/validate"

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
        if (deviceId == null) {
            throw new RuntimeException("missing required params deviceId")
        }
        // verify required params are set
        if (username == null) {
            throw new RuntimeException("missing required params username")
        }
        // verify required params are set
        if (password == null) {
            throw new RuntimeException("missing required params password")
        }

        if (name != null) {
            queryParams.put("name", name)
        }
        if (inviteToken != null) {
            queryParams.put("inviteToken", inviteToken)
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
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (deviceIdType != null) {
            queryParams.put("deviceIdType", deviceIdType)
        }
        if (username != null) {
            queryParams.put("username", username)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (emailAddress != null) {
            queryParams.put("emailAddress", emailAddress)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (address != null) {
            queryParams.put("address", address)
        }
        if (zipcode != null) {
            queryParams.put("zipcode", zipcode)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (birthday != null) {
            queryParams.put("birthday", birthday)
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
        if (role != null) {
            queryParams.put("role", role)
        }
        if (platforms != null) {
            queryParams.put("platforms", platforms)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (aboutUs != null) {
            queryParams.put("aboutUs", aboutUs)
        }
        if (gameExperience != null) {
            queryParams.put("gameExperience", gameExperience)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (hometown != null) {
            queryParams.put("hometown", hometown)
        }
        if (height != null) {
            queryParams.put("height", height)
        }
        if (heightIndex != null) {
            queryParams.put("heightIndex", heightIndex)
        }
        if (ethnicity != null) {
            queryParams.put("ethnicity", ethnicity)
        }
        if (bodyType != null) {
            queryParams.put("bodyType", bodyType)
        }
        if (maritalStatus != null) {
            queryParams.put("maritalStatus", maritalStatus)
        }
        if (children != null) {
            queryParams.put("children", children)
        }
        if (religion != null) {
            queryParams.put("religion", religion)
        }
        if (education != null) {
            queryParams.put("education", education)
        }
        if (educationIndex != null) {
            queryParams.put("educationIndex", educationIndex)
        }
        if (smoke != null) {
            queryParams.put("smoke", smoke)
        }
        if (drink != null) {
            queryParams.put("drink", drink)
        }
        if (companionship != null) {
            queryParams.put("companionship", companionship)
        }
        if (companionshipIndex != null) {
            queryParams.put("companionshipIndex", companionshipIndex)
        }
        if (preferredMinAge != null) {
            queryParams.put("preferredMinAge", preferredMinAge)
        }
        if (preferredMaxAge != null) {
            queryParams.put("preferredMaxAge", preferredMaxAge)
        }
        if (preferredMinHeight != null) {
            queryParams.put("preferredMinHeight", preferredMinHeight)
        }
        if (preferredMaxHeight != null) {
            queryParams.put("preferredMaxHeight", preferredMaxHeight)
        }
        if (preferredGender != null) {
            queryParams.put("preferredGender", preferredGender)
        }
        if (preferredEducation != null) {
            queryParams.put("preferredEducation", preferredEducation)
        }
        if (preferredEducationIndex != null) {
            queryParams.put("preferredEducationIndex", preferredEducationIndex)
        }
        if (preferredBodyType != null) {
            queryParams.put("preferredBodyType", preferredBodyType)
        }
        if (preferredEthnicity != null) {
            queryParams.put("preferredEthnicity", preferredEthnicity)
        }
        if (preferredLocation != null) {
            queryParams.put("preferredLocation", preferredLocation)
        }
        if (preferredLocationRange != null) {
            queryParams.put("preferredLocationRange", preferredLocationRange)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (acceptedTerms != null) {
            queryParams.put("acceptedTerms", acceptedTerms)
        }
        if (charsetName != null) {
            queryParams.put("charsetName", charsetName)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (responseType != null) {
            queryParams.put("responseType", responseType)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileInfoResponse.class )

    }

    def setMatchToken ( BigDecimal version, String deviceId, Long accountId, String matchToken, String gameType, String appKey, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/consumer/profile/matchToken"

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
        if (matchToken != null) {
            queryParams.put("matchToken", matchToken)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def updateActveStatus ( BigDecimal version, Long accountId, Long connectionAccountId, Boolean active, String deviceId, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/active/update"

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
        if (connectionAccountId == null) {
            throw new RuntimeException("missing required params connectionAccountId")
        }
        // verify required params are set
        if (active == null) {
            throw new RuntimeException("missing required params active")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def updateLocation ( BigDecimal version, String deviceId, Long accountId, Double latitude, Double longitude, Long clientTime, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/location/update"

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
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (clientTime != null) {
            queryParams.put("clientTime", clientTime)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def updateSettings ( BigDecimal version, String deviceId, Long accountId, String blockedNotifications, String suggestionMethod, Integer suggestionCount, Integer suggestionTimeFrame, Boolean showOthersExactLocation, Boolean showAsZipcode, Boolean showExactLocation, String favoriteVisibility, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/settings/update"

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
        if (blockedNotifications != null) {
            queryParams.put("blockedNotifications", blockedNotifications)
        }
        if (suggestionMethod != null) {
            queryParams.put("suggestionMethod", suggestionMethod)
        }
        if (suggestionCount != null) {
            queryParams.put("suggestionCount", suggestionCount)
        }
        if (suggestionTimeFrame != null) {
            queryParams.put("suggestionTimeFrame", suggestionTimeFrame)
        }
        if (showOthersExactLocation != null) {
            queryParams.put("showOthersExactLocation", showOthersExactLocation)
        }
        if (showAsZipcode != null) {
            queryParams.put("showAsZipcode", showAsZipcode)
        }
        if (showExactLocation != null) {
            queryParams.put("showExactLocation", showExactLocation)
        }
        if (favoriteVisibility != null) {
            queryParams.put("favoriteVisibility", favoriteVisibility)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    UserSettingsResponse.class )

    }

    def validateAccountSignup ( BigDecimal version, String token, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/validateAccountSignup"

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

        if (token != null) {
            queryParams.put("token", token)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AccountLoginResponse.class )

    }

    def validatePasswordReset ( BigDecimal version, String token, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/validatepasswordreset"

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

        if (token != null) {
            queryParams.put("token", token)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
