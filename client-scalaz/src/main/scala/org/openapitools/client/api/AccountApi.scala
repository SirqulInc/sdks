package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import java.io.File
import java.net.URLEncoder
import java.util.UUID

import org.http4s._
import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.http4s.client._
import org.http4s.client.blaze.PooledHttp1Client
import org.http4s.headers._

import org.joda.time.DateTime

import scalaz.concurrent.Task

import HelperCodecs._

import org.openapitools.client.api.AccountLoginResponse
import org.openapitools.client.api.AssetListResponse
import org.openapitools.client.api.BigDecimal
import org.openapitools.client.api.ProfileInfoResponse
import org.openapitools.client.api.ProfileResponse
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.UserLocationSearchResponse
import org.openapitools.client.api.UserSettingsResponse

object AccountApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def accountLocationSearch(host: String, deviceId: String, accountId: Long, q: String, keyword: String, postalCode: String, latitude: Double, longitude: Double, appKey: String, range: Double = 10, locationLastUpdated: Long, gender: String, minAge: Integer, maxAge: Integer, companionshipIndex: Integer, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 100, searchMode: String, sortField: String, descending: Boolean, roles: String, tags: String, experience: String, categoryIds: String, audienceIds: String, audienceOperator: String = AND, updateCurrentLocation: Boolean = false, updatePreferredSettings: Boolean = false, showExactLocations: Boolean = true, showConnectionToSearcher: Boolean = false, flagCountMinimum: Long, verifiedUserOnly: Boolean, contentAdminOnly: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], postalCodeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], appKeyQuery: QueryParam[String], rangeQuery: QueryParam[Double], locationLastUpdatedQuery: QueryParam[Long], genderQuery: QueryParam[String], minAgeQuery: QueryParam[Integer], maxAgeQuery: QueryParam[Integer], companionshipIndexQuery: QueryParam[Integer], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], searchModeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], rolesQuery: QueryParam[String], tagsQuery: QueryParam[String], experienceQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], audienceOperatorQuery: QueryParam[String], updateCurrentLocationQuery: QueryParam[Boolean], updatePreferredSettingsQuery: QueryParam[Boolean], showExactLocationsQuery: QueryParam[Boolean], showConnectionToSearcherQuery: QueryParam[Boolean], flagCountMinimumQuery: QueryParam[Long], verifiedUserOnlyQuery: QueryParam[Boolean], contentAdminOnlyQuery: QueryParam[Boolean]): Task[UserLocationSearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[UserLocationSearchResponse] = jsonOf[UserLocationSearchResponse]

    val path = "/account/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("range", Some(rangeQuery.toParamString(range))), ("locationLastUpdated", Some(locationLastUpdatedQuery.toParamString(locationLastUpdated))), ("gender", Some(genderQuery.toParamString(gender))), ("minAge", Some(minAgeQuery.toParamString(minAge))), ("maxAge", Some(maxAgeQuery.toParamString(maxAge))), ("companionshipIndex", Some(companionshipIndexQuery.toParamString(companionshipIndex))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("searchMode", Some(searchModeQuery.toParamString(searchMode))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("roles", Some(rolesQuery.toParamString(roles))), ("tags", Some(tagsQuery.toParamString(tags))), ("experience", Some(experienceQuery.toParamString(experience))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("audienceOperator", Some(audienceOperatorQuery.toParamString(audienceOperator))), ("updateCurrentLocation", Some(updateCurrentLocationQuery.toParamString(updateCurrentLocation))), ("updatePreferredSettings", Some(updatePreferredSettingsQuery.toParamString(updatePreferredSettings))), ("showExactLocations", Some(showExactLocationsQuery.toParamString(showExactLocations))), ("showConnectionToSearcher", Some(showConnectionToSearcherQuery.toParamString(showConnectionToSearcher))), ("flagCountMinimum", Some(flagCountMinimumQuery.toParamString(flagCountMinimum))), ("verifiedUserOnly", Some(verifiedUserOnlyQuery.toParamString(verifiedUserOnly))), ("contentAdminOnly", Some(contentAdminOnlyQuery.toParamString(contentAdminOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[UserLocationSearchResponse](req)

    } yield resp
  }

  def blockAccount(host: String, accountIdBeingBlocked: Long, deviceId: String, accountId: Long, blockFlagValue: Boolean = true, removeFromGroupsIfBlocked: Boolean = false, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], accountIdBeingBlockedQuery: QueryParam[Long], blockFlagValueQuery: QueryParam[Boolean], removeFromGroupsIfBlockedQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/block"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("accountIdBeingBlocked", Some(accountIdBeingBlockedQuery.toParamString(accountIdBeingBlocked))), ("blockFlagValue", Some(blockFlagValueQuery.toParamString(blockFlagValue))), ("removeFromGroupsIfBlocked", Some(removeFromGroupsIfBlockedQuery.toParamString(removeFromGroupsIfBlocked))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def createAccount(host: String, username: String, password: String, name: String, prefixName: String, firstName: String, middleName: String, lastName: String, suffixName: String, title: String, deviceId: String, deviceIdType: String, emailAddress: String, assetId: Long, streetAddress: String, zipcode: String, gender: String, birthday: Long, homePhone: String, cellPhone: String, cellPhoneCarrier: String, businessPhone: String, role: String, platforms: String, tags: String, aboutUs: String, gameExperience: String, categoryIds: String, hometown: String, height: String, heightIndex: Integer, ethnicity: String, bodyType: String, maritalStatus: String, children: String, religion: String, education: String, educationIndex: Integer, smoke: String, drink: String, companionship: String, companionshipIndex: Integer, preferredMinAge: Integer, preferredMaxAge: Integer, preferredMinHeight: Integer, preferredMaxHeight: Integer, preferredGender: String, preferredEducation: String, preferredEducationIndex: Integer, preferredBodyType: String, preferredEthnicity: String, preferredLocation: String, preferredLocationRange: Double, latitude: Double, longitude: Double, acceptedTerms: Boolean, inviteToken: String, referralAccountId: Long, sendValidation: Boolean, gameType: String, appKey: String, appVersion: String, responseType: String, audienceIdsToAdd: String, appBlob: String, appEnablePush: Boolean, appEnableSMS: Boolean, appEnableEmail: Boolean, locationVisibility: String, homeLatitude: Double, homeLongitude: Double, appNickname: String, personalAudienceId: Long)(implicit nameQuery: QueryParam[String], prefixNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], middleNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], suffixNameQuery: QueryParam[String], titleQuery: QueryParam[String], deviceIdQuery: QueryParam[String], deviceIdTypeQuery: QueryParam[String], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], emailAddressQuery: QueryParam[String], assetIdQuery: QueryParam[Long], streetAddressQuery: QueryParam[String], zipcodeQuery: QueryParam[String], genderQuery: QueryParam[String], birthdayQuery: QueryParam[Long], homePhoneQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], cellPhoneCarrierQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], roleQuery: QueryParam[String], platformsQuery: QueryParam[String], tagsQuery: QueryParam[String], aboutUsQuery: QueryParam[String], gameExperienceQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], hometownQuery: QueryParam[String], heightQuery: QueryParam[String], heightIndexQuery: QueryParam[Integer], ethnicityQuery: QueryParam[String], bodyTypeQuery: QueryParam[String], maritalStatusQuery: QueryParam[String], childrenQuery: QueryParam[String], religionQuery: QueryParam[String], educationQuery: QueryParam[String], educationIndexQuery: QueryParam[Integer], smokeQuery: QueryParam[String], drinkQuery: QueryParam[String], companionshipQuery: QueryParam[String], companionshipIndexQuery: QueryParam[Integer], preferredMinAgeQuery: QueryParam[Integer], preferredMaxAgeQuery: QueryParam[Integer], preferredMinHeightQuery: QueryParam[Integer], preferredMaxHeightQuery: QueryParam[Integer], preferredGenderQuery: QueryParam[String], preferredEducationQuery: QueryParam[String], preferredEducationIndexQuery: QueryParam[Integer], preferredBodyTypeQuery: QueryParam[String], preferredEthnicityQuery: QueryParam[String], preferredLocationQuery: QueryParam[String], preferredLocationRangeQuery: QueryParam[Double], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], acceptedTermsQuery: QueryParam[Boolean], inviteTokenQuery: QueryParam[String], referralAccountIdQuery: QueryParam[Long], sendValidationQuery: QueryParam[Boolean], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], appVersionQuery: QueryParam[String], responseTypeQuery: QueryParam[String], audienceIdsToAddQuery: QueryParam[String], appBlobQuery: QueryParam[String], appEnablePushQuery: QueryParam[Boolean], appEnableSMSQuery: QueryParam[Boolean], appEnableEmailQuery: QueryParam[Boolean], locationVisibilityQuery: QueryParam[String], homeLatitudeQuery: QueryParam[Double], homeLongitudeQuery: QueryParam[Double], appNicknameQuery: QueryParam[String], personalAudienceIdQuery: QueryParam[Long]): Task[AccountLoginResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AccountLoginResponse] = jsonOf[AccountLoginResponse]

    val path = "/account/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("name", Some(nameQuery.toParamString(name))), ("prefixName", Some(prefixNameQuery.toParamString(prefixName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("middleName", Some(middleNameQuery.toParamString(middleName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("suffixName", Some(suffixNameQuery.toParamString(suffixName))), ("title", Some(titleQuery.toParamString(title))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("deviceIdType", Some(deviceIdTypeQuery.toParamString(deviceIdType))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("gender", Some(genderQuery.toParamString(gender))), ("birthday", Some(birthdayQuery.toParamString(birthday))), ("homePhone", Some(homePhoneQuery.toParamString(homePhone))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("cellPhoneCarrier", Some(cellPhoneCarrierQuery.toParamString(cellPhoneCarrier))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("role", Some(roleQuery.toParamString(role))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("tags", Some(tagsQuery.toParamString(tags))), ("aboutUs", Some(aboutUsQuery.toParamString(aboutUs))), ("gameExperience", Some(gameExperienceQuery.toParamString(gameExperience))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("hometown", Some(hometownQuery.toParamString(hometown))), ("height", Some(heightQuery.toParamString(height))), ("heightIndex", Some(heightIndexQuery.toParamString(heightIndex))), ("ethnicity", Some(ethnicityQuery.toParamString(ethnicity))), ("bodyType", Some(bodyTypeQuery.toParamString(bodyType))), ("maritalStatus", Some(maritalStatusQuery.toParamString(maritalStatus))), ("children", Some(childrenQuery.toParamString(children))), ("religion", Some(religionQuery.toParamString(religion))), ("education", Some(educationQuery.toParamString(education))), ("educationIndex", Some(educationIndexQuery.toParamString(educationIndex))), ("smoke", Some(smokeQuery.toParamString(smoke))), ("drink", Some(drinkQuery.toParamString(drink))), ("companionship", Some(companionshipQuery.toParamString(companionship))), ("companionshipIndex", Some(companionshipIndexQuery.toParamString(companionshipIndex))), ("preferredMinAge", Some(preferredMinAgeQuery.toParamString(preferredMinAge))), ("preferredMaxAge", Some(preferredMaxAgeQuery.toParamString(preferredMaxAge))), ("preferredMinHeight", Some(preferredMinHeightQuery.toParamString(preferredMinHeight))), ("preferredMaxHeight", Some(preferredMaxHeightQuery.toParamString(preferredMaxHeight))), ("preferredGender", Some(preferredGenderQuery.toParamString(preferredGender))), ("preferredEducation", Some(preferredEducationQuery.toParamString(preferredEducation))), ("preferredEducationIndex", Some(preferredEducationIndexQuery.toParamString(preferredEducationIndex))), ("preferredBodyType", Some(preferredBodyTypeQuery.toParamString(preferredBodyType))), ("preferredEthnicity", Some(preferredEthnicityQuery.toParamString(preferredEthnicity))), ("preferredLocation", Some(preferredLocationQuery.toParamString(preferredLocation))), ("preferredLocationRange", Some(preferredLocationRangeQuery.toParamString(preferredLocationRange))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("acceptedTerms", Some(acceptedTermsQuery.toParamString(acceptedTerms))), ("inviteToken", Some(inviteTokenQuery.toParamString(inviteToken))), ("referralAccountId", Some(referralAccountIdQuery.toParamString(referralAccountId))), ("sendValidation", Some(sendValidationQuery.toParamString(sendValidation))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("responseType", Some(responseTypeQuery.toParamString(responseType))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("appBlob", Some(appBlobQuery.toParamString(appBlob))), ("appEnablePush", Some(appEnablePushQuery.toParamString(appEnablePush))), ("appEnableSMS", Some(appEnableSMSQuery.toParamString(appEnableSMS))), ("appEnableEmail", Some(appEnableEmailQuery.toParamString(appEnableEmail))), ("locationVisibility", Some(locationVisibilityQuery.toParamString(locationVisibility))), ("homeLatitude", Some(homeLatitudeQuery.toParamString(homeLatitude))), ("homeLongitude", Some(homeLongitudeQuery.toParamString(homeLongitude))), ("appNickname", Some(appNicknameQuery.toParamString(appNickname))), ("personalAudienceId", Some(personalAudienceIdQuery.toParamString(personalAudienceId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AccountLoginResponse](req)

    } yield resp
  }

  def editAccount(host: String, deviceId: String, accountId: Long, connectionAccountId: Long, role: String, assetId: Long, name: String, prefixName: String, firstName: String, middleName: String, lastName: String, suffixName: String, title: String, gender: String, age: Integer, birthday: Long, homePhone: String, cellPhone: String, cellPhoneCarrier: String, businessPhone: String, emailAddress: String, streetAddress: String, streetAddress2: String, city: String, state: String, zipcode: String, country: String, makeProfileInfoPublic: Boolean, makeGameInfoPublic: Boolean, makeFriendsInfoPublic: Boolean, hometown: String, height: String, heightIndex: Integer, ethnicity: String, bodyType: String, maritalStatus: String, children: String, religion: String, education: String, educationIndex: Integer, smoke: String, drink: String, companionship: String, companionshipIndex: Integer, preferredMinAge: Integer, preferredMaxAge: Integer, preferredMinHeight: Integer, preferredMaxHeight: Integer, preferredGender: String, preferredEducation: String, preferredEducationIndex: Integer, preferredBodyType: String, preferredEthnicity: String, preferredLocation: String, preferredLocationRange: Double, platforms: String, tags: String, aboutUs: String, matchToken: String, gameExperience: String, categories: String, categoryIds: String, responseFilters: String = PROFILE,PROFILE_CONTACT, showAsZipcode: Boolean, showExactLocation: Boolean, showOthersExactLocation: Boolean, acceptedTerms: Boolean, locationVisibility: String, appBlob: String, appEnablePush: Boolean, appEnableSMS: Boolean, appEnableEmail: Boolean, gameType: String, appKey: String, latitude: Double, longitude: Double, returnProfile: Boolean, audienceIdsToAdd: String, audienceIdsToRemove: String, referralAccountId: Long, appNickname: String, personalAudienceId: Long, nonGuestUsername: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], roleQuery: QueryParam[String], assetIdQuery: QueryParam[Long], nameQuery: QueryParam[String], prefixNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], middleNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], suffixNameQuery: QueryParam[String], titleQuery: QueryParam[String], genderQuery: QueryParam[String], ageQuery: QueryParam[Integer], birthdayQuery: QueryParam[Long], homePhoneQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], cellPhoneCarrierQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], emailAddressQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], zipcodeQuery: QueryParam[String], countryQuery: QueryParam[String], makeProfileInfoPublicQuery: QueryParam[Boolean], makeGameInfoPublicQuery: QueryParam[Boolean], makeFriendsInfoPublicQuery: QueryParam[Boolean], hometownQuery: QueryParam[String], heightQuery: QueryParam[String], heightIndexQuery: QueryParam[Integer], ethnicityQuery: QueryParam[String], bodyTypeQuery: QueryParam[String], maritalStatusQuery: QueryParam[String], childrenQuery: QueryParam[String], religionQuery: QueryParam[String], educationQuery: QueryParam[String], educationIndexQuery: QueryParam[Integer], smokeQuery: QueryParam[String], drinkQuery: QueryParam[String], companionshipQuery: QueryParam[String], companionshipIndexQuery: QueryParam[Integer], preferredMinAgeQuery: QueryParam[Integer], preferredMaxAgeQuery: QueryParam[Integer], preferredMinHeightQuery: QueryParam[Integer], preferredMaxHeightQuery: QueryParam[Integer], preferredGenderQuery: QueryParam[String], preferredEducationQuery: QueryParam[String], preferredEducationIndexQuery: QueryParam[Integer], preferredBodyTypeQuery: QueryParam[String], preferredEthnicityQuery: QueryParam[String], preferredLocationQuery: QueryParam[String], preferredLocationRangeQuery: QueryParam[Double], platformsQuery: QueryParam[String], tagsQuery: QueryParam[String], aboutUsQuery: QueryParam[String], matchTokenQuery: QueryParam[String], gameExperienceQuery: QueryParam[String], categoriesQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], responseFiltersQuery: QueryParam[String], showAsZipcodeQuery: QueryParam[Boolean], showExactLocationQuery: QueryParam[Boolean], showOthersExactLocationQuery: QueryParam[Boolean], acceptedTermsQuery: QueryParam[Boolean], locationVisibilityQuery: QueryParam[String], appBlobQuery: QueryParam[String], appEnablePushQuery: QueryParam[Boolean], appEnableSMSQuery: QueryParam[Boolean], appEnableEmailQuery: QueryParam[Boolean], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnProfileQuery: QueryParam[Boolean], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String], referralAccountIdQuery: QueryParam[Long], appNicknameQuery: QueryParam[String], personalAudienceIdQuery: QueryParam[Long], nonGuestUsernameQuery: QueryParam[String]): Task[ProfileInfoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileInfoResponse] = jsonOf[ProfileInfoResponse]

    val path = "/account/profile/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("role", Some(roleQuery.toParamString(role))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("name", Some(nameQuery.toParamString(name))), ("prefixName", Some(prefixNameQuery.toParamString(prefixName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("middleName", Some(middleNameQuery.toParamString(middleName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("suffixName", Some(suffixNameQuery.toParamString(suffixName))), ("title", Some(titleQuery.toParamString(title))), ("gender", Some(genderQuery.toParamString(gender))), ("age", Some(ageQuery.toParamString(age))), ("birthday", Some(birthdayQuery.toParamString(birthday))), ("homePhone", Some(homePhoneQuery.toParamString(homePhone))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("cellPhoneCarrier", Some(cellPhoneCarrierQuery.toParamString(cellPhoneCarrier))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("country", Some(countryQuery.toParamString(country))), ("makeProfileInfoPublic", Some(makeProfileInfoPublicQuery.toParamString(makeProfileInfoPublic))), ("makeGameInfoPublic", Some(makeGameInfoPublicQuery.toParamString(makeGameInfoPublic))), ("makeFriendsInfoPublic", Some(makeFriendsInfoPublicQuery.toParamString(makeFriendsInfoPublic))), ("hometown", Some(hometownQuery.toParamString(hometown))), ("height", Some(heightQuery.toParamString(height))), ("heightIndex", Some(heightIndexQuery.toParamString(heightIndex))), ("ethnicity", Some(ethnicityQuery.toParamString(ethnicity))), ("bodyType", Some(bodyTypeQuery.toParamString(bodyType))), ("maritalStatus", Some(maritalStatusQuery.toParamString(maritalStatus))), ("children", Some(childrenQuery.toParamString(children))), ("religion", Some(religionQuery.toParamString(religion))), ("education", Some(educationQuery.toParamString(education))), ("educationIndex", Some(educationIndexQuery.toParamString(educationIndex))), ("smoke", Some(smokeQuery.toParamString(smoke))), ("drink", Some(drinkQuery.toParamString(drink))), ("companionship", Some(companionshipQuery.toParamString(companionship))), ("companionshipIndex", Some(companionshipIndexQuery.toParamString(companionshipIndex))), ("preferredMinAge", Some(preferredMinAgeQuery.toParamString(preferredMinAge))), ("preferredMaxAge", Some(preferredMaxAgeQuery.toParamString(preferredMaxAge))), ("preferredMinHeight", Some(preferredMinHeightQuery.toParamString(preferredMinHeight))), ("preferredMaxHeight", Some(preferredMaxHeightQuery.toParamString(preferredMaxHeight))), ("preferredGender", Some(preferredGenderQuery.toParamString(preferredGender))), ("preferredEducation", Some(preferredEducationQuery.toParamString(preferredEducation))), ("preferredEducationIndex", Some(preferredEducationIndexQuery.toParamString(preferredEducationIndex))), ("preferredBodyType", Some(preferredBodyTypeQuery.toParamString(preferredBodyType))), ("preferredEthnicity", Some(preferredEthnicityQuery.toParamString(preferredEthnicity))), ("preferredLocation", Some(preferredLocationQuery.toParamString(preferredLocation))), ("preferredLocationRange", Some(preferredLocationRangeQuery.toParamString(preferredLocationRange))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("tags", Some(tagsQuery.toParamString(tags))), ("aboutUs", Some(aboutUsQuery.toParamString(aboutUs))), ("matchToken", Some(matchTokenQuery.toParamString(matchToken))), ("gameExperience", Some(gameExperienceQuery.toParamString(gameExperience))), ("categories", Some(categoriesQuery.toParamString(categories))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("showAsZipcode", Some(showAsZipcodeQuery.toParamString(showAsZipcode))), ("showExactLocation", Some(showExactLocationQuery.toParamString(showExactLocation))), ("showOthersExactLocation", Some(showOthersExactLocationQuery.toParamString(showOthersExactLocation))), ("acceptedTerms", Some(acceptedTermsQuery.toParamString(acceptedTerms))), ("locationVisibility", Some(locationVisibilityQuery.toParamString(locationVisibility))), ("appBlob", Some(appBlobQuery.toParamString(appBlob))), ("appEnablePush", Some(appEnablePushQuery.toParamString(appEnablePush))), ("appEnableSMS", Some(appEnableSMSQuery.toParamString(appEnableSMS))), ("appEnableEmail", Some(appEnableEmailQuery.toParamString(appEnableEmail))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnProfile", Some(returnProfileQuery.toParamString(returnProfile))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))), ("referralAccountId", Some(referralAccountIdQuery.toParamString(referralAccountId))), ("appNickname", Some(appNicknameQuery.toParamString(appNickname))), ("personalAudienceId", Some(personalAudienceIdQuery.toParamString(personalAudienceId))), ("nonGuestUsername", Some(nonGuestUsernameQuery.toParamString(nonGuestUsername))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileInfoResponse](req)

    } yield resp
  }

  def editUsername(host: String, deviceId: String, accountId: Long, emailAddress: String, username: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], emailAddressQuery: QueryParam[String], usernameQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/username/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("username", Some(usernameQuery.toParamString(username))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAccount(host: String, returnNulls: Boolean = false, deviceId: String, accountId: Long, connectionAccountEmail: String, connectionAccountId: Long = 0, responseFilters: String = PROFILE, gameType: String, appKey: String, purchaseType: String = SIRQUL, updateViewedDate: Boolean = false, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountEmailQuery: QueryParam[String], connectionAccountIdQuery: QueryParam[Long], responseFiltersQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String], updateViewedDateQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/account/profile/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountEmail", Some(connectionAccountEmailQuery.toParamString(connectionAccountEmail))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("updateViewedDate", Some(updateViewedDateQuery.toParamString(updateViewedDate))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def getProfileAssets(host: String, returnNulls: Boolean = false, deviceId: String, accountId: Long, ownerId: Long, mediaTypes: String, mimeTypes: String, sortField: String = CREATED, descending: Boolean = true, latitude: Double, longitude: Double, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 0)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ownerIdQuery: QueryParam[Long], mediaTypesQuery: QueryParam[String], mimeTypesQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[AssetListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssetListResponse] = jsonOf[AssetListResponse]

    val path = "/account/profile/assets"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("mediaTypes", Some(mediaTypesQuery.toParamString(mediaTypes))), ("mimeTypes", Some(mimeTypesQuery.toParamString(mimeTypes))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssetListResponse](req)

    } yield resp
  }

  def getReferralList(host: String, accountId: Long, appKey: String, retrieveType: String, levelLimit: BigDecimal, ancestorLevelLimit: BigDecimal, childrenLevelLimit: BigDecimal, ancestorListStart: BigDecimal, ancestorListLimit: BigDecimal, childrenListStart: BigDecimal, childrenListLimit: BigDecimal, childrenChildren: Boolean = true)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], retrieveTypeQuery: QueryParam[String], levelLimitQuery: QueryParam[BigDecimal], ancestorLevelLimitQuery: QueryParam[BigDecimal], childrenLevelLimitQuery: QueryParam[BigDecimal], ancestorListStartQuery: QueryParam[BigDecimal], ancestorListLimitQuery: QueryParam[BigDecimal], childrenListStartQuery: QueryParam[BigDecimal], childrenListLimitQuery: QueryParam[BigDecimal], childrenChildrenQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/account/referral/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("retrieveType", Some(retrieveTypeQuery.toParamString(retrieveType))), ("levelLimit", Some(levelLimitQuery.toParamString(levelLimit))), ("ancestorLevelLimit", Some(ancestorLevelLimitQuery.toParamString(ancestorLevelLimit))), ("childrenLevelLimit", Some(childrenLevelLimitQuery.toParamString(childrenLevelLimit))), ("ancestorListStart", Some(ancestorListStartQuery.toParamString(ancestorListStart))), ("ancestorListLimit", Some(ancestorListLimitQuery.toParamString(ancestorListLimit))), ("childrenListStart", Some(childrenListStartQuery.toParamString(childrenListStart))), ("childrenListLimit", Some(childrenListLimitQuery.toParamString(childrenListLimit))), ("childrenChildren", Some(childrenChildrenQuery.toParamString(childrenChildren))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getSettings(host: String, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[UserSettingsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[UserSettingsResponse] = jsonOf[UserSettingsResponse]

    val path = "/account/settings/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[UserSettingsResponse](req)

    } yield resp
  }

  def loginDelegate(host: String, accessToken: String, appKey: String, deviceId: String, accessTokenSecret: String, delegatedAccountId: Long, delegatedUsername: String, networkUID: String = USERNAME, ageRestriction: Integer = 0, responseFilters: String = PROFILE, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accessTokenQuery: QueryParam[String], accessTokenSecretQuery: QueryParam[String], delegatedAccountIdQuery: QueryParam[Long], delegatedUsernameQuery: QueryParam[String], networkUIDQuery: QueryParam[String], appKeyQuery: QueryParam[String], ageRestrictionQuery: QueryParam[Integer], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/account/login/delegate"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accessToken", Some(accessTokenQuery.toParamString(accessToken))), ("accessTokenSecret", Some(accessTokenSecretQuery.toParamString(accessTokenSecret))), ("delegatedAccountId", Some(delegatedAccountIdQuery.toParamString(delegatedAccountId))), ("delegatedUsername", Some(delegatedUsernameQuery.toParamString(delegatedUsername))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("ageRestriction", Some(ageRestrictionQuery.toParamString(ageRestriction))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def loginGeneral(host: String, accessToken: String, networkUID: String = USERNAME, appKey: String, deviceId: String, deviceIdType: String, accessTokenSecret: String, ageRestriction: Integer = 0, responseFilters: String = PROFILE, latitude: Double, longitude: Double, emailMatch: Boolean = false, chosenAccountId: Long = 0, thirdPartyCredentialId: Long = 0)(implicit deviceIdQuery: QueryParam[String], deviceIdTypeQuery: QueryParam[String], accessTokenQuery: QueryParam[String], accessTokenSecretQuery: QueryParam[String], networkUIDQuery: QueryParam[String], appKeyQuery: QueryParam[String], ageRestrictionQuery: QueryParam[Integer], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], emailMatchQuery: QueryParam[Boolean], chosenAccountIdQuery: QueryParam[Long], thirdPartyCredentialIdQuery: QueryParam[Long]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/account/login"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("deviceIdType", Some(deviceIdTypeQuery.toParamString(deviceIdType))), ("accessToken", Some(accessTokenQuery.toParamString(accessToken))), ("accessTokenSecret", Some(accessTokenSecretQuery.toParamString(accessTokenSecret))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("ageRestriction", Some(ageRestrictionQuery.toParamString(ageRestriction))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("emailMatch", Some(emailMatchQuery.toParamString(emailMatch))), ("chosenAccountId", Some(chosenAccountIdQuery.toParamString(chosenAccountId))), ("thirdPartyCredentialId", Some(thirdPartyCredentialIdQuery.toParamString(thirdPartyCredentialId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def loginUsername(host: String, username: String, password: String, deviceId: String, latitude: Double, longitude: Double, app: String, gameType: String, appKey: String, returnProfile: Boolean, responseFilters: String)(implicit deviceIdQuery: QueryParam[String], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], appQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], returnProfileQuery: QueryParam[Boolean], responseFiltersQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/account/get"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("app", Some(appQuery.toParamString(app))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnProfile", Some(returnProfileQuery.toParamString(returnProfile))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def logout(host: String, deviceId: String, deviceIdType: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], deviceIdTypeQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/logout"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("deviceIdType", Some(deviceIdTypeQuery.toParamString(deviceIdType))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def mergeAccount(host: String, mergeAccountId: Long, appKey: String, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], mergeAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/merge"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("mergeAccountId", Some(mergeAccountIdQuery.toParamString(mergeAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def passwordChange(host: String, accountId: Long, oldPassword: String, newPassword: String, confirmPassword: String)(implicit accountIdQuery: QueryParam[Long], oldPasswordQuery: QueryParam[String], newPasswordQuery: QueryParam[String], confirmPasswordQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/passwordchange"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("oldPassword", Some(oldPasswordQuery.toParamString(oldPassword))), ("newPassword", Some(newPasswordQuery.toParamString(newPassword))), ("confirmPassword", Some(confirmPasswordQuery.toParamString(confirmPassword))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def passwordReset(host: String, token: String, password: String, confirm: String)(implicit tokenQuery: QueryParam[String], passwordQuery: QueryParam[String], confirmQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/passwordreset"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("token", Some(tokenQuery.toParamString(token))), ("password", Some(passwordQuery.toParamString(password))), ("confirm", Some(confirmQuery.toParamString(confirm))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def requestPasswordReset(host: String, email: String, from: String = Sirqul, domain: String, subUrl: String, referer: String = http://dev.sirqul.com/resetpassword)(implicit emailQuery: QueryParam[String], fromQuery: QueryParam[String], domainQuery: QueryParam[String], subUrlQuery: QueryParam[String], refererQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/requestpasswordreset"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("email", Some(emailQuery.toParamString(email))), ("from", Some(fromQuery.toParamString(from))), ("domain", Some(domainQuery.toParamString(domain))), ("subUrl", Some(subUrlQuery.toParamString(subUrl))), ("referer", Some(refererQuery.toParamString(referer))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def requestValidateAccount(host: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/requestValidateAccount"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchAccounts(host: String, accountId: Long, appKey: String, keyword: String, latitude: Double, longitude: Double, radius: Double = 5, gender: String, gameExperience: String, age: Integer, categoryIds: String, returnNulls: Boolean = true, responseFilters: String = PROFILE, purchaseType: String = SIRQUL, sortField: String = id, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = false)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], radiusQuery: QueryParam[Double], genderQuery: QueryParam[String], gameExperienceQuery: QueryParam[String], ageQuery: QueryParam[Integer], categoryIdsQuery: QueryParam[String], returnNullsQuery: QueryParam[Boolean], responseFiltersQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[ProfileResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ProfileResponse]] = jsonOf[List[ProfileResponse]]

    val path = "/account/profile/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("radius", Some(radiusQuery.toParamString(radius))), ("gender", Some(genderQuery.toParamString(gender))), ("gameExperience", Some(gameExperienceQuery.toParamString(gameExperience))), ("age", Some(ageQuery.toParamString(age))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ProfileResponse]](req)

    } yield resp
  }

  def secureLogin(host: String, username: String, password: String, gameType: String, deviceId: String, charsetName: String = UTF-8, latitude: Double, longitude: Double, returnProfile: Boolean = false, responseFilters: String = PROFILE)(implicit deviceIdQuery: QueryParam[String], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], gameTypeQuery: QueryParam[String], charsetNameQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnProfileQuery: QueryParam[Boolean], responseFiltersQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/account/login/validate"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("charsetName", Some(charsetNameQuery.toParamString(charsetName))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnProfile", Some(returnProfileQuery.toParamString(returnProfile))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def secureSignup(host: String, deviceId: String, username: String, password: String, name: String, inviteToken: String, prefixName: String, firstName: String, middleName: String, lastName: String, suffixName: String, title: String, deviceIdType: String, emailAddress: String, assetId: Long, address: String, zipcode: String, gender: String, birthday: Long, homePhone: String, cellPhone: String, cellPhoneCarrier: String, businessPhone: String, role: String = MEMBER, platforms: String, tags: String, aboutUs: String, gameExperience: String, categoryIds: String, hometown: String, height: String, heightIndex: Integer, ethnicity: String, bodyType: String, maritalStatus: String, children: String, religion: String, education: String, educationIndex: Integer, smoke: String, drink: String, companionship: String, companionshipIndex: Integer, preferredMinAge: Integer, preferredMaxAge: Integer, preferredMinHeight: Integer, preferredMaxHeight: Integer, preferredGender: String, preferredEducation: String, preferredEducationIndex: Integer, preferredBodyType: String, preferredEthnicity: String, preferredLocation: String, preferredLocationRange: Double, latitude: Double, longitude: Double, acceptedTerms: Boolean = true, charsetName: String = UTF-8, gameType: String, appKey: String, appVersion: String, responseType: String)(implicit nameQuery: QueryParam[String], inviteTokenQuery: QueryParam[String], prefixNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], middleNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], suffixNameQuery: QueryParam[String], titleQuery: QueryParam[String], deviceIdQuery: QueryParam[String], deviceIdTypeQuery: QueryParam[String], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], emailAddressQuery: QueryParam[String], assetIdQuery: QueryParam[Long], addressQuery: QueryParam[String], zipcodeQuery: QueryParam[String], genderQuery: QueryParam[String], birthdayQuery: QueryParam[Long], homePhoneQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], cellPhoneCarrierQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], roleQuery: QueryParam[String], platformsQuery: QueryParam[String], tagsQuery: QueryParam[String], aboutUsQuery: QueryParam[String], gameExperienceQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], hometownQuery: QueryParam[String], heightQuery: QueryParam[String], heightIndexQuery: QueryParam[Integer], ethnicityQuery: QueryParam[String], bodyTypeQuery: QueryParam[String], maritalStatusQuery: QueryParam[String], childrenQuery: QueryParam[String], religionQuery: QueryParam[String], educationQuery: QueryParam[String], educationIndexQuery: QueryParam[Integer], smokeQuery: QueryParam[String], drinkQuery: QueryParam[String], companionshipQuery: QueryParam[String], companionshipIndexQuery: QueryParam[Integer], preferredMinAgeQuery: QueryParam[Integer], preferredMaxAgeQuery: QueryParam[Integer], preferredMinHeightQuery: QueryParam[Integer], preferredMaxHeightQuery: QueryParam[Integer], preferredGenderQuery: QueryParam[String], preferredEducationQuery: QueryParam[String], preferredEducationIndexQuery: QueryParam[Integer], preferredBodyTypeQuery: QueryParam[String], preferredEthnicityQuery: QueryParam[String], preferredLocationQuery: QueryParam[String], preferredLocationRangeQuery: QueryParam[Double], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], acceptedTermsQuery: QueryParam[Boolean], charsetNameQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], appVersionQuery: QueryParam[String], responseTypeQuery: QueryParam[String]): Task[ProfileInfoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileInfoResponse] = jsonOf[ProfileInfoResponse]

    val path = "/account/create/validate"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("name", Some(nameQuery.toParamString(name))), ("inviteToken", Some(inviteTokenQuery.toParamString(inviteToken))), ("prefixName", Some(prefixNameQuery.toParamString(prefixName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("middleName", Some(middleNameQuery.toParamString(middleName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("suffixName", Some(suffixNameQuery.toParamString(suffixName))), ("title", Some(titleQuery.toParamString(title))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("deviceIdType", Some(deviceIdTypeQuery.toParamString(deviceIdType))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("address", Some(addressQuery.toParamString(address))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("gender", Some(genderQuery.toParamString(gender))), ("birthday", Some(birthdayQuery.toParamString(birthday))), ("homePhone", Some(homePhoneQuery.toParamString(homePhone))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("cellPhoneCarrier", Some(cellPhoneCarrierQuery.toParamString(cellPhoneCarrier))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("role", Some(roleQuery.toParamString(role))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("tags", Some(tagsQuery.toParamString(tags))), ("aboutUs", Some(aboutUsQuery.toParamString(aboutUs))), ("gameExperience", Some(gameExperienceQuery.toParamString(gameExperience))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("hometown", Some(hometownQuery.toParamString(hometown))), ("height", Some(heightQuery.toParamString(height))), ("heightIndex", Some(heightIndexQuery.toParamString(heightIndex))), ("ethnicity", Some(ethnicityQuery.toParamString(ethnicity))), ("bodyType", Some(bodyTypeQuery.toParamString(bodyType))), ("maritalStatus", Some(maritalStatusQuery.toParamString(maritalStatus))), ("children", Some(childrenQuery.toParamString(children))), ("religion", Some(religionQuery.toParamString(religion))), ("education", Some(educationQuery.toParamString(education))), ("educationIndex", Some(educationIndexQuery.toParamString(educationIndex))), ("smoke", Some(smokeQuery.toParamString(smoke))), ("drink", Some(drinkQuery.toParamString(drink))), ("companionship", Some(companionshipQuery.toParamString(companionship))), ("companionshipIndex", Some(companionshipIndexQuery.toParamString(companionshipIndex))), ("preferredMinAge", Some(preferredMinAgeQuery.toParamString(preferredMinAge))), ("preferredMaxAge", Some(preferredMaxAgeQuery.toParamString(preferredMaxAge))), ("preferredMinHeight", Some(preferredMinHeightQuery.toParamString(preferredMinHeight))), ("preferredMaxHeight", Some(preferredMaxHeightQuery.toParamString(preferredMaxHeight))), ("preferredGender", Some(preferredGenderQuery.toParamString(preferredGender))), ("preferredEducation", Some(preferredEducationQuery.toParamString(preferredEducation))), ("preferredEducationIndex", Some(preferredEducationIndexQuery.toParamString(preferredEducationIndex))), ("preferredBodyType", Some(preferredBodyTypeQuery.toParamString(preferredBodyType))), ("preferredEthnicity", Some(preferredEthnicityQuery.toParamString(preferredEthnicity))), ("preferredLocation", Some(preferredLocationQuery.toParamString(preferredLocation))), ("preferredLocationRange", Some(preferredLocationRangeQuery.toParamString(preferredLocationRange))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("acceptedTerms", Some(acceptedTermsQuery.toParamString(acceptedTerms))), ("charsetName", Some(charsetNameQuery.toParamString(charsetName))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("responseType", Some(responseTypeQuery.toParamString(responseType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileInfoResponse](req)

    } yield resp
  }

  def setMatchToken(host: String, deviceId: String, accountId: Long, matchToken: String, gameType: String = BOOPY, appKey: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], matchTokenQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/profile/matchToken"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("matchToken", Some(matchTokenQuery.toParamString(matchToken))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateActveStatus(host: String, accountId: Long, connectionAccountId: Long, active: Boolean, deviceId: String, appKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/active/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateLocation(host: String, deviceId: String, accountId: Long, latitude: Double, longitude: Double, clientTime: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], clientTimeQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/location/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("clientTime", Some(clientTimeQuery.toParamString(clientTime))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateSettings(host: String, deviceId: String, accountId: Long, blockedNotifications: String, suggestionMethod: String, suggestionCount: Integer, suggestionTimeFrame: Integer, showOthersExactLocation: Boolean, showAsZipcode: Boolean, showExactLocation: Boolean, favoriteVisibility: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], blockedNotificationsQuery: QueryParam[String], suggestionMethodQuery: QueryParam[String], suggestionCountQuery: QueryParam[Integer], suggestionTimeFrameQuery: QueryParam[Integer], showOthersExactLocationQuery: QueryParam[Boolean], showAsZipcodeQuery: QueryParam[Boolean], showExactLocationQuery: QueryParam[Boolean], favoriteVisibilityQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[UserSettingsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[UserSettingsResponse] = jsonOf[UserSettingsResponse]

    val path = "/account/settings/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("blockedNotifications", Some(blockedNotificationsQuery.toParamString(blockedNotifications))), ("suggestionMethod", Some(suggestionMethodQuery.toParamString(suggestionMethod))), ("suggestionCount", Some(suggestionCountQuery.toParamString(suggestionCount))), ("suggestionTimeFrame", Some(suggestionTimeFrameQuery.toParamString(suggestionTimeFrame))), ("showOthersExactLocation", Some(showOthersExactLocationQuery.toParamString(showOthersExactLocation))), ("showAsZipcode", Some(showAsZipcodeQuery.toParamString(showAsZipcode))), ("showExactLocation", Some(showExactLocationQuery.toParamString(showExactLocation))), ("favoriteVisibility", Some(favoriteVisibilityQuery.toParamString(favoriteVisibility))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[UserSettingsResponse](req)

    } yield resp
  }

  def validateAccountSignup(host: String, token: String)(implicit tokenQuery: QueryParam[String]): Task[AccountLoginResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AccountLoginResponse] = jsonOf[AccountLoginResponse]

    val path = "/account/validateAccountSignup"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("token", Some(tokenQuery.toParamString(token))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AccountLoginResponse](req)

    } yield resp
  }

  def validatePasswordReset(host: String, token: String)(implicit tokenQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/validatepasswordreset"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("token", Some(tokenQuery.toParamString(token))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceAccountApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def accountLocationSearch(deviceId: String, accountId: Long, q: String, keyword: String, postalCode: String, latitude: Double, longitude: Double, appKey: String, range: Double = 10, locationLastUpdated: Long, gender: String, minAge: Integer, maxAge: Integer, companionshipIndex: Integer, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 100, searchMode: String, sortField: String, descending: Boolean, roles: String, tags: String, experience: String, categoryIds: String, audienceIds: String, audienceOperator: String = AND, updateCurrentLocation: Boolean = false, updatePreferredSettings: Boolean = false, showExactLocations: Boolean = true, showConnectionToSearcher: Boolean = false, flagCountMinimum: Long, verifiedUserOnly: Boolean, contentAdminOnly: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], postalCodeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], appKeyQuery: QueryParam[String], rangeQuery: QueryParam[Double], locationLastUpdatedQuery: QueryParam[Long], genderQuery: QueryParam[String], minAgeQuery: QueryParam[Integer], maxAgeQuery: QueryParam[Integer], companionshipIndexQuery: QueryParam[Integer], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], searchModeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], rolesQuery: QueryParam[String], tagsQuery: QueryParam[String], experienceQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], audienceOperatorQuery: QueryParam[String], updateCurrentLocationQuery: QueryParam[Boolean], updatePreferredSettingsQuery: QueryParam[Boolean], showExactLocationsQuery: QueryParam[Boolean], showConnectionToSearcherQuery: QueryParam[Boolean], flagCountMinimumQuery: QueryParam[Long], verifiedUserOnlyQuery: QueryParam[Boolean], contentAdminOnlyQuery: QueryParam[Boolean]): Task[UserLocationSearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[UserLocationSearchResponse] = jsonOf[UserLocationSearchResponse]

    val path = "/account/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("range", Some(rangeQuery.toParamString(range))), ("locationLastUpdated", Some(locationLastUpdatedQuery.toParamString(locationLastUpdated))), ("gender", Some(genderQuery.toParamString(gender))), ("minAge", Some(minAgeQuery.toParamString(minAge))), ("maxAge", Some(maxAgeQuery.toParamString(maxAge))), ("companionshipIndex", Some(companionshipIndexQuery.toParamString(companionshipIndex))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("searchMode", Some(searchModeQuery.toParamString(searchMode))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("roles", Some(rolesQuery.toParamString(roles))), ("tags", Some(tagsQuery.toParamString(tags))), ("experience", Some(experienceQuery.toParamString(experience))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("audienceOperator", Some(audienceOperatorQuery.toParamString(audienceOperator))), ("updateCurrentLocation", Some(updateCurrentLocationQuery.toParamString(updateCurrentLocation))), ("updatePreferredSettings", Some(updatePreferredSettingsQuery.toParamString(updatePreferredSettings))), ("showExactLocations", Some(showExactLocationsQuery.toParamString(showExactLocations))), ("showConnectionToSearcher", Some(showConnectionToSearcherQuery.toParamString(showConnectionToSearcher))), ("flagCountMinimum", Some(flagCountMinimumQuery.toParamString(flagCountMinimum))), ("verifiedUserOnly", Some(verifiedUserOnlyQuery.toParamString(verifiedUserOnly))), ("contentAdminOnly", Some(contentAdminOnlyQuery.toParamString(contentAdminOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[UserLocationSearchResponse](req)

    } yield resp
  }

  def blockAccount(accountIdBeingBlocked: Long, deviceId: String, accountId: Long, blockFlagValue: Boolean = true, removeFromGroupsIfBlocked: Boolean = false, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], accountIdBeingBlockedQuery: QueryParam[Long], blockFlagValueQuery: QueryParam[Boolean], removeFromGroupsIfBlockedQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/block"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("accountIdBeingBlocked", Some(accountIdBeingBlockedQuery.toParamString(accountIdBeingBlocked))), ("blockFlagValue", Some(blockFlagValueQuery.toParamString(blockFlagValue))), ("removeFromGroupsIfBlocked", Some(removeFromGroupsIfBlockedQuery.toParamString(removeFromGroupsIfBlocked))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def createAccount(username: String, password: String, name: String, prefixName: String, firstName: String, middleName: String, lastName: String, suffixName: String, title: String, deviceId: String, deviceIdType: String, emailAddress: String, assetId: Long, streetAddress: String, zipcode: String, gender: String, birthday: Long, homePhone: String, cellPhone: String, cellPhoneCarrier: String, businessPhone: String, role: String, platforms: String, tags: String, aboutUs: String, gameExperience: String, categoryIds: String, hometown: String, height: String, heightIndex: Integer, ethnicity: String, bodyType: String, maritalStatus: String, children: String, religion: String, education: String, educationIndex: Integer, smoke: String, drink: String, companionship: String, companionshipIndex: Integer, preferredMinAge: Integer, preferredMaxAge: Integer, preferredMinHeight: Integer, preferredMaxHeight: Integer, preferredGender: String, preferredEducation: String, preferredEducationIndex: Integer, preferredBodyType: String, preferredEthnicity: String, preferredLocation: String, preferredLocationRange: Double, latitude: Double, longitude: Double, acceptedTerms: Boolean, inviteToken: String, referralAccountId: Long, sendValidation: Boolean, gameType: String, appKey: String, appVersion: String, responseType: String, audienceIdsToAdd: String, appBlob: String, appEnablePush: Boolean, appEnableSMS: Boolean, appEnableEmail: Boolean, locationVisibility: String, homeLatitude: Double, homeLongitude: Double, appNickname: String, personalAudienceId: Long)(implicit nameQuery: QueryParam[String], prefixNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], middleNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], suffixNameQuery: QueryParam[String], titleQuery: QueryParam[String], deviceIdQuery: QueryParam[String], deviceIdTypeQuery: QueryParam[String], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], emailAddressQuery: QueryParam[String], assetIdQuery: QueryParam[Long], streetAddressQuery: QueryParam[String], zipcodeQuery: QueryParam[String], genderQuery: QueryParam[String], birthdayQuery: QueryParam[Long], homePhoneQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], cellPhoneCarrierQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], roleQuery: QueryParam[String], platformsQuery: QueryParam[String], tagsQuery: QueryParam[String], aboutUsQuery: QueryParam[String], gameExperienceQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], hometownQuery: QueryParam[String], heightQuery: QueryParam[String], heightIndexQuery: QueryParam[Integer], ethnicityQuery: QueryParam[String], bodyTypeQuery: QueryParam[String], maritalStatusQuery: QueryParam[String], childrenQuery: QueryParam[String], religionQuery: QueryParam[String], educationQuery: QueryParam[String], educationIndexQuery: QueryParam[Integer], smokeQuery: QueryParam[String], drinkQuery: QueryParam[String], companionshipQuery: QueryParam[String], companionshipIndexQuery: QueryParam[Integer], preferredMinAgeQuery: QueryParam[Integer], preferredMaxAgeQuery: QueryParam[Integer], preferredMinHeightQuery: QueryParam[Integer], preferredMaxHeightQuery: QueryParam[Integer], preferredGenderQuery: QueryParam[String], preferredEducationQuery: QueryParam[String], preferredEducationIndexQuery: QueryParam[Integer], preferredBodyTypeQuery: QueryParam[String], preferredEthnicityQuery: QueryParam[String], preferredLocationQuery: QueryParam[String], preferredLocationRangeQuery: QueryParam[Double], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], acceptedTermsQuery: QueryParam[Boolean], inviteTokenQuery: QueryParam[String], referralAccountIdQuery: QueryParam[Long], sendValidationQuery: QueryParam[Boolean], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], appVersionQuery: QueryParam[String], responseTypeQuery: QueryParam[String], audienceIdsToAddQuery: QueryParam[String], appBlobQuery: QueryParam[String], appEnablePushQuery: QueryParam[Boolean], appEnableSMSQuery: QueryParam[Boolean], appEnableEmailQuery: QueryParam[Boolean], locationVisibilityQuery: QueryParam[String], homeLatitudeQuery: QueryParam[Double], homeLongitudeQuery: QueryParam[Double], appNicknameQuery: QueryParam[String], personalAudienceIdQuery: QueryParam[Long]): Task[AccountLoginResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AccountLoginResponse] = jsonOf[AccountLoginResponse]

    val path = "/account/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("name", Some(nameQuery.toParamString(name))), ("prefixName", Some(prefixNameQuery.toParamString(prefixName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("middleName", Some(middleNameQuery.toParamString(middleName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("suffixName", Some(suffixNameQuery.toParamString(suffixName))), ("title", Some(titleQuery.toParamString(title))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("deviceIdType", Some(deviceIdTypeQuery.toParamString(deviceIdType))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("gender", Some(genderQuery.toParamString(gender))), ("birthday", Some(birthdayQuery.toParamString(birthday))), ("homePhone", Some(homePhoneQuery.toParamString(homePhone))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("cellPhoneCarrier", Some(cellPhoneCarrierQuery.toParamString(cellPhoneCarrier))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("role", Some(roleQuery.toParamString(role))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("tags", Some(tagsQuery.toParamString(tags))), ("aboutUs", Some(aboutUsQuery.toParamString(aboutUs))), ("gameExperience", Some(gameExperienceQuery.toParamString(gameExperience))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("hometown", Some(hometownQuery.toParamString(hometown))), ("height", Some(heightQuery.toParamString(height))), ("heightIndex", Some(heightIndexQuery.toParamString(heightIndex))), ("ethnicity", Some(ethnicityQuery.toParamString(ethnicity))), ("bodyType", Some(bodyTypeQuery.toParamString(bodyType))), ("maritalStatus", Some(maritalStatusQuery.toParamString(maritalStatus))), ("children", Some(childrenQuery.toParamString(children))), ("religion", Some(religionQuery.toParamString(religion))), ("education", Some(educationQuery.toParamString(education))), ("educationIndex", Some(educationIndexQuery.toParamString(educationIndex))), ("smoke", Some(smokeQuery.toParamString(smoke))), ("drink", Some(drinkQuery.toParamString(drink))), ("companionship", Some(companionshipQuery.toParamString(companionship))), ("companionshipIndex", Some(companionshipIndexQuery.toParamString(companionshipIndex))), ("preferredMinAge", Some(preferredMinAgeQuery.toParamString(preferredMinAge))), ("preferredMaxAge", Some(preferredMaxAgeQuery.toParamString(preferredMaxAge))), ("preferredMinHeight", Some(preferredMinHeightQuery.toParamString(preferredMinHeight))), ("preferredMaxHeight", Some(preferredMaxHeightQuery.toParamString(preferredMaxHeight))), ("preferredGender", Some(preferredGenderQuery.toParamString(preferredGender))), ("preferredEducation", Some(preferredEducationQuery.toParamString(preferredEducation))), ("preferredEducationIndex", Some(preferredEducationIndexQuery.toParamString(preferredEducationIndex))), ("preferredBodyType", Some(preferredBodyTypeQuery.toParamString(preferredBodyType))), ("preferredEthnicity", Some(preferredEthnicityQuery.toParamString(preferredEthnicity))), ("preferredLocation", Some(preferredLocationQuery.toParamString(preferredLocation))), ("preferredLocationRange", Some(preferredLocationRangeQuery.toParamString(preferredLocationRange))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("acceptedTerms", Some(acceptedTermsQuery.toParamString(acceptedTerms))), ("inviteToken", Some(inviteTokenQuery.toParamString(inviteToken))), ("referralAccountId", Some(referralAccountIdQuery.toParamString(referralAccountId))), ("sendValidation", Some(sendValidationQuery.toParamString(sendValidation))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("responseType", Some(responseTypeQuery.toParamString(responseType))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("appBlob", Some(appBlobQuery.toParamString(appBlob))), ("appEnablePush", Some(appEnablePushQuery.toParamString(appEnablePush))), ("appEnableSMS", Some(appEnableSMSQuery.toParamString(appEnableSMS))), ("appEnableEmail", Some(appEnableEmailQuery.toParamString(appEnableEmail))), ("locationVisibility", Some(locationVisibilityQuery.toParamString(locationVisibility))), ("homeLatitude", Some(homeLatitudeQuery.toParamString(homeLatitude))), ("homeLongitude", Some(homeLongitudeQuery.toParamString(homeLongitude))), ("appNickname", Some(appNicknameQuery.toParamString(appNickname))), ("personalAudienceId", Some(personalAudienceIdQuery.toParamString(personalAudienceId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AccountLoginResponse](req)

    } yield resp
  }

  def editAccount(deviceId: String, accountId: Long, connectionAccountId: Long, role: String, assetId: Long, name: String, prefixName: String, firstName: String, middleName: String, lastName: String, suffixName: String, title: String, gender: String, age: Integer, birthday: Long, homePhone: String, cellPhone: String, cellPhoneCarrier: String, businessPhone: String, emailAddress: String, streetAddress: String, streetAddress2: String, city: String, state: String, zipcode: String, country: String, makeProfileInfoPublic: Boolean, makeGameInfoPublic: Boolean, makeFriendsInfoPublic: Boolean, hometown: String, height: String, heightIndex: Integer, ethnicity: String, bodyType: String, maritalStatus: String, children: String, religion: String, education: String, educationIndex: Integer, smoke: String, drink: String, companionship: String, companionshipIndex: Integer, preferredMinAge: Integer, preferredMaxAge: Integer, preferredMinHeight: Integer, preferredMaxHeight: Integer, preferredGender: String, preferredEducation: String, preferredEducationIndex: Integer, preferredBodyType: String, preferredEthnicity: String, preferredLocation: String, preferredLocationRange: Double, platforms: String, tags: String, aboutUs: String, matchToken: String, gameExperience: String, categories: String, categoryIds: String, responseFilters: String = PROFILE,PROFILE_CONTACT, showAsZipcode: Boolean, showExactLocation: Boolean, showOthersExactLocation: Boolean, acceptedTerms: Boolean, locationVisibility: String, appBlob: String, appEnablePush: Boolean, appEnableSMS: Boolean, appEnableEmail: Boolean, gameType: String, appKey: String, latitude: Double, longitude: Double, returnProfile: Boolean, audienceIdsToAdd: String, audienceIdsToRemove: String, referralAccountId: Long, appNickname: String, personalAudienceId: Long, nonGuestUsername: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], roleQuery: QueryParam[String], assetIdQuery: QueryParam[Long], nameQuery: QueryParam[String], prefixNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], middleNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], suffixNameQuery: QueryParam[String], titleQuery: QueryParam[String], genderQuery: QueryParam[String], ageQuery: QueryParam[Integer], birthdayQuery: QueryParam[Long], homePhoneQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], cellPhoneCarrierQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], emailAddressQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], zipcodeQuery: QueryParam[String], countryQuery: QueryParam[String], makeProfileInfoPublicQuery: QueryParam[Boolean], makeGameInfoPublicQuery: QueryParam[Boolean], makeFriendsInfoPublicQuery: QueryParam[Boolean], hometownQuery: QueryParam[String], heightQuery: QueryParam[String], heightIndexQuery: QueryParam[Integer], ethnicityQuery: QueryParam[String], bodyTypeQuery: QueryParam[String], maritalStatusQuery: QueryParam[String], childrenQuery: QueryParam[String], religionQuery: QueryParam[String], educationQuery: QueryParam[String], educationIndexQuery: QueryParam[Integer], smokeQuery: QueryParam[String], drinkQuery: QueryParam[String], companionshipQuery: QueryParam[String], companionshipIndexQuery: QueryParam[Integer], preferredMinAgeQuery: QueryParam[Integer], preferredMaxAgeQuery: QueryParam[Integer], preferredMinHeightQuery: QueryParam[Integer], preferredMaxHeightQuery: QueryParam[Integer], preferredGenderQuery: QueryParam[String], preferredEducationQuery: QueryParam[String], preferredEducationIndexQuery: QueryParam[Integer], preferredBodyTypeQuery: QueryParam[String], preferredEthnicityQuery: QueryParam[String], preferredLocationQuery: QueryParam[String], preferredLocationRangeQuery: QueryParam[Double], platformsQuery: QueryParam[String], tagsQuery: QueryParam[String], aboutUsQuery: QueryParam[String], matchTokenQuery: QueryParam[String], gameExperienceQuery: QueryParam[String], categoriesQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], responseFiltersQuery: QueryParam[String], showAsZipcodeQuery: QueryParam[Boolean], showExactLocationQuery: QueryParam[Boolean], showOthersExactLocationQuery: QueryParam[Boolean], acceptedTermsQuery: QueryParam[Boolean], locationVisibilityQuery: QueryParam[String], appBlobQuery: QueryParam[String], appEnablePushQuery: QueryParam[Boolean], appEnableSMSQuery: QueryParam[Boolean], appEnableEmailQuery: QueryParam[Boolean], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnProfileQuery: QueryParam[Boolean], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String], referralAccountIdQuery: QueryParam[Long], appNicknameQuery: QueryParam[String], personalAudienceIdQuery: QueryParam[Long], nonGuestUsernameQuery: QueryParam[String]): Task[ProfileInfoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileInfoResponse] = jsonOf[ProfileInfoResponse]

    val path = "/account/profile/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("role", Some(roleQuery.toParamString(role))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("name", Some(nameQuery.toParamString(name))), ("prefixName", Some(prefixNameQuery.toParamString(prefixName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("middleName", Some(middleNameQuery.toParamString(middleName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("suffixName", Some(suffixNameQuery.toParamString(suffixName))), ("title", Some(titleQuery.toParamString(title))), ("gender", Some(genderQuery.toParamString(gender))), ("age", Some(ageQuery.toParamString(age))), ("birthday", Some(birthdayQuery.toParamString(birthday))), ("homePhone", Some(homePhoneQuery.toParamString(homePhone))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("cellPhoneCarrier", Some(cellPhoneCarrierQuery.toParamString(cellPhoneCarrier))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("country", Some(countryQuery.toParamString(country))), ("makeProfileInfoPublic", Some(makeProfileInfoPublicQuery.toParamString(makeProfileInfoPublic))), ("makeGameInfoPublic", Some(makeGameInfoPublicQuery.toParamString(makeGameInfoPublic))), ("makeFriendsInfoPublic", Some(makeFriendsInfoPublicQuery.toParamString(makeFriendsInfoPublic))), ("hometown", Some(hometownQuery.toParamString(hometown))), ("height", Some(heightQuery.toParamString(height))), ("heightIndex", Some(heightIndexQuery.toParamString(heightIndex))), ("ethnicity", Some(ethnicityQuery.toParamString(ethnicity))), ("bodyType", Some(bodyTypeQuery.toParamString(bodyType))), ("maritalStatus", Some(maritalStatusQuery.toParamString(maritalStatus))), ("children", Some(childrenQuery.toParamString(children))), ("religion", Some(religionQuery.toParamString(religion))), ("education", Some(educationQuery.toParamString(education))), ("educationIndex", Some(educationIndexQuery.toParamString(educationIndex))), ("smoke", Some(smokeQuery.toParamString(smoke))), ("drink", Some(drinkQuery.toParamString(drink))), ("companionship", Some(companionshipQuery.toParamString(companionship))), ("companionshipIndex", Some(companionshipIndexQuery.toParamString(companionshipIndex))), ("preferredMinAge", Some(preferredMinAgeQuery.toParamString(preferredMinAge))), ("preferredMaxAge", Some(preferredMaxAgeQuery.toParamString(preferredMaxAge))), ("preferredMinHeight", Some(preferredMinHeightQuery.toParamString(preferredMinHeight))), ("preferredMaxHeight", Some(preferredMaxHeightQuery.toParamString(preferredMaxHeight))), ("preferredGender", Some(preferredGenderQuery.toParamString(preferredGender))), ("preferredEducation", Some(preferredEducationQuery.toParamString(preferredEducation))), ("preferredEducationIndex", Some(preferredEducationIndexQuery.toParamString(preferredEducationIndex))), ("preferredBodyType", Some(preferredBodyTypeQuery.toParamString(preferredBodyType))), ("preferredEthnicity", Some(preferredEthnicityQuery.toParamString(preferredEthnicity))), ("preferredLocation", Some(preferredLocationQuery.toParamString(preferredLocation))), ("preferredLocationRange", Some(preferredLocationRangeQuery.toParamString(preferredLocationRange))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("tags", Some(tagsQuery.toParamString(tags))), ("aboutUs", Some(aboutUsQuery.toParamString(aboutUs))), ("matchToken", Some(matchTokenQuery.toParamString(matchToken))), ("gameExperience", Some(gameExperienceQuery.toParamString(gameExperience))), ("categories", Some(categoriesQuery.toParamString(categories))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("showAsZipcode", Some(showAsZipcodeQuery.toParamString(showAsZipcode))), ("showExactLocation", Some(showExactLocationQuery.toParamString(showExactLocation))), ("showOthersExactLocation", Some(showOthersExactLocationQuery.toParamString(showOthersExactLocation))), ("acceptedTerms", Some(acceptedTermsQuery.toParamString(acceptedTerms))), ("locationVisibility", Some(locationVisibilityQuery.toParamString(locationVisibility))), ("appBlob", Some(appBlobQuery.toParamString(appBlob))), ("appEnablePush", Some(appEnablePushQuery.toParamString(appEnablePush))), ("appEnableSMS", Some(appEnableSMSQuery.toParamString(appEnableSMS))), ("appEnableEmail", Some(appEnableEmailQuery.toParamString(appEnableEmail))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnProfile", Some(returnProfileQuery.toParamString(returnProfile))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))), ("referralAccountId", Some(referralAccountIdQuery.toParamString(referralAccountId))), ("appNickname", Some(appNicknameQuery.toParamString(appNickname))), ("personalAudienceId", Some(personalAudienceIdQuery.toParamString(personalAudienceId))), ("nonGuestUsername", Some(nonGuestUsernameQuery.toParamString(nonGuestUsername))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileInfoResponse](req)

    } yield resp
  }

  def editUsername(deviceId: String, accountId: Long, emailAddress: String, username: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], emailAddressQuery: QueryParam[String], usernameQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/username/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("username", Some(usernameQuery.toParamString(username))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAccount(returnNulls: Boolean = false, deviceId: String, accountId: Long, connectionAccountEmail: String, connectionAccountId: Long = 0, responseFilters: String = PROFILE, gameType: String, appKey: String, purchaseType: String = SIRQUL, updateViewedDate: Boolean = false, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountEmailQuery: QueryParam[String], connectionAccountIdQuery: QueryParam[Long], responseFiltersQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String], updateViewedDateQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/account/profile/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountEmail", Some(connectionAccountEmailQuery.toParamString(connectionAccountEmail))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("updateViewedDate", Some(updateViewedDateQuery.toParamString(updateViewedDate))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def getProfileAssets(returnNulls: Boolean = false, deviceId: String, accountId: Long, ownerId: Long, mediaTypes: String, mimeTypes: String, sortField: String = CREATED, descending: Boolean = true, latitude: Double, longitude: Double, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 0)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ownerIdQuery: QueryParam[Long], mediaTypesQuery: QueryParam[String], mimeTypesQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[AssetListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssetListResponse] = jsonOf[AssetListResponse]

    val path = "/account/profile/assets"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("mediaTypes", Some(mediaTypesQuery.toParamString(mediaTypes))), ("mimeTypes", Some(mimeTypesQuery.toParamString(mimeTypes))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssetListResponse](req)

    } yield resp
  }

  def getReferralList(accountId: Long, appKey: String, retrieveType: String, levelLimit: BigDecimal, ancestorLevelLimit: BigDecimal, childrenLevelLimit: BigDecimal, ancestorListStart: BigDecimal, ancestorListLimit: BigDecimal, childrenListStart: BigDecimal, childrenListLimit: BigDecimal, childrenChildren: Boolean = true)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], retrieveTypeQuery: QueryParam[String], levelLimitQuery: QueryParam[BigDecimal], ancestorLevelLimitQuery: QueryParam[BigDecimal], childrenLevelLimitQuery: QueryParam[BigDecimal], ancestorListStartQuery: QueryParam[BigDecimal], ancestorListLimitQuery: QueryParam[BigDecimal], childrenListStartQuery: QueryParam[BigDecimal], childrenListLimitQuery: QueryParam[BigDecimal], childrenChildrenQuery: QueryParam[Boolean]): Task[Unit] = {
    val path = "/account/referral/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("retrieveType", Some(retrieveTypeQuery.toParamString(retrieveType))), ("levelLimit", Some(levelLimitQuery.toParamString(levelLimit))), ("ancestorLevelLimit", Some(ancestorLevelLimitQuery.toParamString(ancestorLevelLimit))), ("childrenLevelLimit", Some(childrenLevelLimitQuery.toParamString(childrenLevelLimit))), ("ancestorListStart", Some(ancestorListStartQuery.toParamString(ancestorListStart))), ("ancestorListLimit", Some(ancestorListLimitQuery.toParamString(ancestorListLimit))), ("childrenListStart", Some(childrenListStartQuery.toParamString(childrenListStart))), ("childrenListLimit", Some(childrenListLimitQuery.toParamString(childrenListLimit))), ("childrenChildren", Some(childrenChildrenQuery.toParamString(childrenChildren))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getSettings(deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[UserSettingsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[UserSettingsResponse] = jsonOf[UserSettingsResponse]

    val path = "/account/settings/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[UserSettingsResponse](req)

    } yield resp
  }

  def loginDelegate(accessToken: String, appKey: String, deviceId: String, accessTokenSecret: String, delegatedAccountId: Long, delegatedUsername: String, networkUID: String = USERNAME, ageRestriction: Integer = 0, responseFilters: String = PROFILE, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accessTokenQuery: QueryParam[String], accessTokenSecretQuery: QueryParam[String], delegatedAccountIdQuery: QueryParam[Long], delegatedUsernameQuery: QueryParam[String], networkUIDQuery: QueryParam[String], appKeyQuery: QueryParam[String], ageRestrictionQuery: QueryParam[Integer], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/account/login/delegate"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accessToken", Some(accessTokenQuery.toParamString(accessToken))), ("accessTokenSecret", Some(accessTokenSecretQuery.toParamString(accessTokenSecret))), ("delegatedAccountId", Some(delegatedAccountIdQuery.toParamString(delegatedAccountId))), ("delegatedUsername", Some(delegatedUsernameQuery.toParamString(delegatedUsername))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("ageRestriction", Some(ageRestrictionQuery.toParamString(ageRestriction))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def loginGeneral(accessToken: String, networkUID: String = USERNAME, appKey: String, deviceId: String, deviceIdType: String, accessTokenSecret: String, ageRestriction: Integer = 0, responseFilters: String = PROFILE, latitude: Double, longitude: Double, emailMatch: Boolean = false, chosenAccountId: Long = 0, thirdPartyCredentialId: Long = 0)(implicit deviceIdQuery: QueryParam[String], deviceIdTypeQuery: QueryParam[String], accessTokenQuery: QueryParam[String], accessTokenSecretQuery: QueryParam[String], networkUIDQuery: QueryParam[String], appKeyQuery: QueryParam[String], ageRestrictionQuery: QueryParam[Integer], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], emailMatchQuery: QueryParam[Boolean], chosenAccountIdQuery: QueryParam[Long], thirdPartyCredentialIdQuery: QueryParam[Long]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/account/login"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("deviceIdType", Some(deviceIdTypeQuery.toParamString(deviceIdType))), ("accessToken", Some(accessTokenQuery.toParamString(accessToken))), ("accessTokenSecret", Some(accessTokenSecretQuery.toParamString(accessTokenSecret))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("ageRestriction", Some(ageRestrictionQuery.toParamString(ageRestriction))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("emailMatch", Some(emailMatchQuery.toParamString(emailMatch))), ("chosenAccountId", Some(chosenAccountIdQuery.toParamString(chosenAccountId))), ("thirdPartyCredentialId", Some(thirdPartyCredentialIdQuery.toParamString(thirdPartyCredentialId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def loginUsername(username: String, password: String, deviceId: String, latitude: Double, longitude: Double, app: String, gameType: String, appKey: String, returnProfile: Boolean, responseFilters: String)(implicit deviceIdQuery: QueryParam[String], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], appQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], returnProfileQuery: QueryParam[Boolean], responseFiltersQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/account/get"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("app", Some(appQuery.toParamString(app))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnProfile", Some(returnProfileQuery.toParamString(returnProfile))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def logout(deviceId: String, deviceIdType: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], deviceIdTypeQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/logout"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("deviceIdType", Some(deviceIdTypeQuery.toParamString(deviceIdType))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def mergeAccount(mergeAccountId: Long, appKey: String, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], mergeAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/merge"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("mergeAccountId", Some(mergeAccountIdQuery.toParamString(mergeAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def passwordChange(accountId: Long, oldPassword: String, newPassword: String, confirmPassword: String)(implicit accountIdQuery: QueryParam[Long], oldPasswordQuery: QueryParam[String], newPasswordQuery: QueryParam[String], confirmPasswordQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/passwordchange"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("oldPassword", Some(oldPasswordQuery.toParamString(oldPassword))), ("newPassword", Some(newPasswordQuery.toParamString(newPassword))), ("confirmPassword", Some(confirmPasswordQuery.toParamString(confirmPassword))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def passwordReset(token: String, password: String, confirm: String)(implicit tokenQuery: QueryParam[String], passwordQuery: QueryParam[String], confirmQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/passwordreset"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("token", Some(tokenQuery.toParamString(token))), ("password", Some(passwordQuery.toParamString(password))), ("confirm", Some(confirmQuery.toParamString(confirm))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def requestPasswordReset(email: String, from: String = Sirqul, domain: String, subUrl: String, referer: String = http://dev.sirqul.com/resetpassword)(implicit emailQuery: QueryParam[String], fromQuery: QueryParam[String], domainQuery: QueryParam[String], subUrlQuery: QueryParam[String], refererQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/requestpasswordreset"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("email", Some(emailQuery.toParamString(email))), ("from", Some(fromQuery.toParamString(from))), ("domain", Some(domainQuery.toParamString(domain))), ("subUrl", Some(subUrlQuery.toParamString(subUrl))), ("referer", Some(refererQuery.toParamString(referer))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def requestValidateAccount(accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/requestValidateAccount"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchAccounts(accountId: Long, appKey: String, keyword: String, latitude: Double, longitude: Double, radius: Double = 5, gender: String, gameExperience: String, age: Integer, categoryIds: String, returnNulls: Boolean = true, responseFilters: String = PROFILE, purchaseType: String = SIRQUL, sortField: String = id, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = false)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], radiusQuery: QueryParam[Double], genderQuery: QueryParam[String], gameExperienceQuery: QueryParam[String], ageQuery: QueryParam[Integer], categoryIdsQuery: QueryParam[String], returnNullsQuery: QueryParam[Boolean], responseFiltersQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[ProfileResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ProfileResponse]] = jsonOf[List[ProfileResponse]]

    val path = "/account/profile/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("radius", Some(radiusQuery.toParamString(radius))), ("gender", Some(genderQuery.toParamString(gender))), ("gameExperience", Some(gameExperienceQuery.toParamString(gameExperience))), ("age", Some(ageQuery.toParamString(age))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ProfileResponse]](req)

    } yield resp
  }

  def secureLogin(username: String, password: String, gameType: String, deviceId: String, charsetName: String = UTF-8, latitude: Double, longitude: Double, returnProfile: Boolean = false, responseFilters: String = PROFILE)(implicit deviceIdQuery: QueryParam[String], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], gameTypeQuery: QueryParam[String], charsetNameQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnProfileQuery: QueryParam[Boolean], responseFiltersQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/account/login/validate"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("charsetName", Some(charsetNameQuery.toParamString(charsetName))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnProfile", Some(returnProfileQuery.toParamString(returnProfile))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def secureSignup(deviceId: String, username: String, password: String, name: String, inviteToken: String, prefixName: String, firstName: String, middleName: String, lastName: String, suffixName: String, title: String, deviceIdType: String, emailAddress: String, assetId: Long, address: String, zipcode: String, gender: String, birthday: Long, homePhone: String, cellPhone: String, cellPhoneCarrier: String, businessPhone: String, role: String = MEMBER, platforms: String, tags: String, aboutUs: String, gameExperience: String, categoryIds: String, hometown: String, height: String, heightIndex: Integer, ethnicity: String, bodyType: String, maritalStatus: String, children: String, religion: String, education: String, educationIndex: Integer, smoke: String, drink: String, companionship: String, companionshipIndex: Integer, preferredMinAge: Integer, preferredMaxAge: Integer, preferredMinHeight: Integer, preferredMaxHeight: Integer, preferredGender: String, preferredEducation: String, preferredEducationIndex: Integer, preferredBodyType: String, preferredEthnicity: String, preferredLocation: String, preferredLocationRange: Double, latitude: Double, longitude: Double, acceptedTerms: Boolean = true, charsetName: String = UTF-8, gameType: String, appKey: String, appVersion: String, responseType: String)(implicit nameQuery: QueryParam[String], inviteTokenQuery: QueryParam[String], prefixNameQuery: QueryParam[String], firstNameQuery: QueryParam[String], middleNameQuery: QueryParam[String], lastNameQuery: QueryParam[String], suffixNameQuery: QueryParam[String], titleQuery: QueryParam[String], deviceIdQuery: QueryParam[String], deviceIdTypeQuery: QueryParam[String], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], emailAddressQuery: QueryParam[String], assetIdQuery: QueryParam[Long], addressQuery: QueryParam[String], zipcodeQuery: QueryParam[String], genderQuery: QueryParam[String], birthdayQuery: QueryParam[Long], homePhoneQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], cellPhoneCarrierQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], roleQuery: QueryParam[String], platformsQuery: QueryParam[String], tagsQuery: QueryParam[String], aboutUsQuery: QueryParam[String], gameExperienceQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], hometownQuery: QueryParam[String], heightQuery: QueryParam[String], heightIndexQuery: QueryParam[Integer], ethnicityQuery: QueryParam[String], bodyTypeQuery: QueryParam[String], maritalStatusQuery: QueryParam[String], childrenQuery: QueryParam[String], religionQuery: QueryParam[String], educationQuery: QueryParam[String], educationIndexQuery: QueryParam[Integer], smokeQuery: QueryParam[String], drinkQuery: QueryParam[String], companionshipQuery: QueryParam[String], companionshipIndexQuery: QueryParam[Integer], preferredMinAgeQuery: QueryParam[Integer], preferredMaxAgeQuery: QueryParam[Integer], preferredMinHeightQuery: QueryParam[Integer], preferredMaxHeightQuery: QueryParam[Integer], preferredGenderQuery: QueryParam[String], preferredEducationQuery: QueryParam[String], preferredEducationIndexQuery: QueryParam[Integer], preferredBodyTypeQuery: QueryParam[String], preferredEthnicityQuery: QueryParam[String], preferredLocationQuery: QueryParam[String], preferredLocationRangeQuery: QueryParam[Double], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], acceptedTermsQuery: QueryParam[Boolean], charsetNameQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], appVersionQuery: QueryParam[String], responseTypeQuery: QueryParam[String]): Task[ProfileInfoResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileInfoResponse] = jsonOf[ProfileInfoResponse]

    val path = "/account/create/validate"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("name", Some(nameQuery.toParamString(name))), ("inviteToken", Some(inviteTokenQuery.toParamString(inviteToken))), ("prefixName", Some(prefixNameQuery.toParamString(prefixName))), ("firstName", Some(firstNameQuery.toParamString(firstName))), ("middleName", Some(middleNameQuery.toParamString(middleName))), ("lastName", Some(lastNameQuery.toParamString(lastName))), ("suffixName", Some(suffixNameQuery.toParamString(suffixName))), ("title", Some(titleQuery.toParamString(title))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("deviceIdType", Some(deviceIdTypeQuery.toParamString(deviceIdType))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("address", Some(addressQuery.toParamString(address))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("gender", Some(genderQuery.toParamString(gender))), ("birthday", Some(birthdayQuery.toParamString(birthday))), ("homePhone", Some(homePhoneQuery.toParamString(homePhone))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("cellPhoneCarrier", Some(cellPhoneCarrierQuery.toParamString(cellPhoneCarrier))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("role", Some(roleQuery.toParamString(role))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("tags", Some(tagsQuery.toParamString(tags))), ("aboutUs", Some(aboutUsQuery.toParamString(aboutUs))), ("gameExperience", Some(gameExperienceQuery.toParamString(gameExperience))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("hometown", Some(hometownQuery.toParamString(hometown))), ("height", Some(heightQuery.toParamString(height))), ("heightIndex", Some(heightIndexQuery.toParamString(heightIndex))), ("ethnicity", Some(ethnicityQuery.toParamString(ethnicity))), ("bodyType", Some(bodyTypeQuery.toParamString(bodyType))), ("maritalStatus", Some(maritalStatusQuery.toParamString(maritalStatus))), ("children", Some(childrenQuery.toParamString(children))), ("religion", Some(religionQuery.toParamString(religion))), ("education", Some(educationQuery.toParamString(education))), ("educationIndex", Some(educationIndexQuery.toParamString(educationIndex))), ("smoke", Some(smokeQuery.toParamString(smoke))), ("drink", Some(drinkQuery.toParamString(drink))), ("companionship", Some(companionshipQuery.toParamString(companionship))), ("companionshipIndex", Some(companionshipIndexQuery.toParamString(companionshipIndex))), ("preferredMinAge", Some(preferredMinAgeQuery.toParamString(preferredMinAge))), ("preferredMaxAge", Some(preferredMaxAgeQuery.toParamString(preferredMaxAge))), ("preferredMinHeight", Some(preferredMinHeightQuery.toParamString(preferredMinHeight))), ("preferredMaxHeight", Some(preferredMaxHeightQuery.toParamString(preferredMaxHeight))), ("preferredGender", Some(preferredGenderQuery.toParamString(preferredGender))), ("preferredEducation", Some(preferredEducationQuery.toParamString(preferredEducation))), ("preferredEducationIndex", Some(preferredEducationIndexQuery.toParamString(preferredEducationIndex))), ("preferredBodyType", Some(preferredBodyTypeQuery.toParamString(preferredBodyType))), ("preferredEthnicity", Some(preferredEthnicityQuery.toParamString(preferredEthnicity))), ("preferredLocation", Some(preferredLocationQuery.toParamString(preferredLocation))), ("preferredLocationRange", Some(preferredLocationRangeQuery.toParamString(preferredLocationRange))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("acceptedTerms", Some(acceptedTermsQuery.toParamString(acceptedTerms))), ("charsetName", Some(charsetNameQuery.toParamString(charsetName))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("responseType", Some(responseTypeQuery.toParamString(responseType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileInfoResponse](req)

    } yield resp
  }

  def setMatchToken(deviceId: String, accountId: Long, matchToken: String, gameType: String = BOOPY, appKey: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], matchTokenQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/profile/matchToken"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("matchToken", Some(matchTokenQuery.toParamString(matchToken))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateActveStatus(accountId: Long, connectionAccountId: Long, active: Boolean, deviceId: String, appKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/active/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateLocation(deviceId: String, accountId: Long, latitude: Double, longitude: Double, clientTime: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], clientTimeQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/location/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("clientTime", Some(clientTimeQuery.toParamString(clientTime))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateSettings(deviceId: String, accountId: Long, blockedNotifications: String, suggestionMethod: String, suggestionCount: Integer, suggestionTimeFrame: Integer, showOthersExactLocation: Boolean, showAsZipcode: Boolean, showExactLocation: Boolean, favoriteVisibility: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], blockedNotificationsQuery: QueryParam[String], suggestionMethodQuery: QueryParam[String], suggestionCountQuery: QueryParam[Integer], suggestionTimeFrameQuery: QueryParam[Integer], showOthersExactLocationQuery: QueryParam[Boolean], showAsZipcodeQuery: QueryParam[Boolean], showExactLocationQuery: QueryParam[Boolean], favoriteVisibilityQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[UserSettingsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[UserSettingsResponse] = jsonOf[UserSettingsResponse]

    val path = "/account/settings/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("blockedNotifications", Some(blockedNotificationsQuery.toParamString(blockedNotifications))), ("suggestionMethod", Some(suggestionMethodQuery.toParamString(suggestionMethod))), ("suggestionCount", Some(suggestionCountQuery.toParamString(suggestionCount))), ("suggestionTimeFrame", Some(suggestionTimeFrameQuery.toParamString(suggestionTimeFrame))), ("showOthersExactLocation", Some(showOthersExactLocationQuery.toParamString(showOthersExactLocation))), ("showAsZipcode", Some(showAsZipcodeQuery.toParamString(showAsZipcode))), ("showExactLocation", Some(showExactLocationQuery.toParamString(showExactLocation))), ("favoriteVisibility", Some(favoriteVisibilityQuery.toParamString(favoriteVisibility))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[UserSettingsResponse](req)

    } yield resp
  }

  def validateAccountSignup(token: String)(implicit tokenQuery: QueryParam[String]): Task[AccountLoginResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AccountLoginResponse] = jsonOf[AccountLoginResponse]

    val path = "/account/validateAccountSignup"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("token", Some(tokenQuery.toParamString(token))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AccountLoginResponse](req)

    } yield resp
  }

  def validatePasswordReset(token: String)(implicit tokenQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/account/validatepasswordreset"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("token", Some(tokenQuery.toParamString(token))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
