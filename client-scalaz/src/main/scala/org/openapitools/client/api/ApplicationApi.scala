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

import org.openapitools.client.api.AccountListResponse
import org.openapitools.client.api.ApplicationResponse
import org.openapitools.client.api.ApplicationSettingsResponse
import org.openapitools.client.api.ApplicationShortResponse
import java.io.File
import org.openapitools.client.api.PlacementResponse
import org.openapitools.client.api.SirqulResponse

object ApplicationApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createApplication(host: String, appName: String, deviceId: String, accountId: Long, about: String, bundleId: String, appIconAssetId: Long, appLogoAssetId: Long, facebookAppId: String, facebookAppSecret: String, googleApiKey: String, updateEULADate: Boolean, eulaVersion: String, landingPageUrl: String, showInActivities: Boolean, activityDescription: String, inviteWelcomeText: String, invitePageUrl: String, urlScheme: String, platforms: String, downloadUrls: String, categoryIds: String, scoringType: String = GAME_LEVEL, hintCost: Integer = 11, maxScore: Integer = 125, ticketsPerPoint: Float = 0.037, hasGameData: Boolean = true, publicNotifications: Boolean, useMatchingAlgorithm: Boolean, globalTickets: Boolean = false, buildVersion: Float = 1, apiVersion: Float, placementName: String, placementDescription: String, placementSize: String, placementHeight: Integer, placementWidth: Integer, placementRefreshInterval: Integer, createObjectStore: Boolean = true, publicContentApproval: Boolean = false, productionMode: Boolean = false, minimumSessionLength: Integer, sessionGapLength: Integer, localAdsEnabled: Boolean = false, sqootApiKey: String, trilatProcessingType: String = FINGERPRINT, maxSampleSize: Integer, minRSSI: Double, modules: String = ALL, authorizedCount: Integer = 1, authorizedServers: String, defaultTimezone: String, smtpPass: String, metaData: String, placementMetaData: String, ipsFloor: Boolean = false, enableAPNSBadge: Boolean = true, includeInReport: Boolean = true, defaultAppFilterId: Long, enableWelcomeEmail: Boolean, appleAppId: String, appleTeamId: String, appleAuthKeyId: String, appleAuthKey: File, appleIssuerId: String, appStoreKeyId: String, appStoreKey: File, googlePrivateKeyFile: File, authorizeNetApiKey: String, authorizeNetTransactionKey: String, emailSender: String, smtpUser: String, smtpHost: String, vatomBusinessId: String, vatomRestClientId: String, vatomRestSecretKey: String, twilioAccountSID: String, twilioAuthToken: String, twilioSenderPhoneNumber: String, openAISecretKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appNameQuery: QueryParam[String], aboutQuery: QueryParam[String], bundleIdQuery: QueryParam[String], appIconAssetIdQuery: QueryParam[Long], appLogoAssetIdQuery: QueryParam[Long], facebookAppIdQuery: QueryParam[String], facebookAppSecretQuery: QueryParam[String], googleApiKeyQuery: QueryParam[String], updateEULADateQuery: QueryParam[Boolean], eulaVersionQuery: QueryParam[String], landingPageUrlQuery: QueryParam[String], showInActivitiesQuery: QueryParam[Boolean], activityDescriptionQuery: QueryParam[String], inviteWelcomeTextQuery: QueryParam[String], invitePageUrlQuery: QueryParam[String], urlSchemeQuery: QueryParam[String], platformsQuery: QueryParam[String], downloadUrlsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], scoringTypeQuery: QueryParam[String], hintCostQuery: QueryParam[Integer], maxScoreQuery: QueryParam[Integer], ticketsPerPointQuery: QueryParam[Float], hasGameDataQuery: QueryParam[Boolean], publicNotificationsQuery: QueryParam[Boolean], useMatchingAlgorithmQuery: QueryParam[Boolean], globalTicketsQuery: QueryParam[Boolean], buildVersionQuery: QueryParam[Float], apiVersionQuery: QueryParam[Float], placementNameQuery: QueryParam[String], placementDescriptionQuery: QueryParam[String], placementSizeQuery: QueryParam[String], placementHeightQuery: QueryParam[Integer], placementWidthQuery: QueryParam[Integer], placementRefreshIntervalQuery: QueryParam[Integer], createObjectStoreQuery: QueryParam[Boolean], publicContentApprovalQuery: QueryParam[Boolean], productionModeQuery: QueryParam[Boolean], minimumSessionLengthQuery: QueryParam[Integer], sessionGapLengthQuery: QueryParam[Integer], localAdsEnabledQuery: QueryParam[Boolean], sqootApiKeyQuery: QueryParam[String], trilatProcessingTypeQuery: QueryParam[String], maxSampleSizeQuery: QueryParam[Integer], minRSSIQuery: QueryParam[Double], modulesQuery: QueryParam[String], authorizedCountQuery: QueryParam[Integer], authorizedServersQuery: QueryParam[String], defaultTimezoneQuery: QueryParam[String], smtpPassQuery: QueryParam[String], metaDataQuery: QueryParam[String], placementMetaDataQuery: QueryParam[String], ipsFloorQuery: QueryParam[Boolean], enableAPNSBadgeQuery: QueryParam[Boolean], includeInReportQuery: QueryParam[Boolean], defaultAppFilterIdQuery: QueryParam[Long], enableWelcomeEmailQuery: QueryParam[Boolean], appleAppIdQuery: QueryParam[String], appleTeamIdQuery: QueryParam[String], appleAuthKeyIdQuery: QueryParam[String], appleAuthKeyQuery: QueryParam[File], appleIssuerIdQuery: QueryParam[String], appStoreKeyIdQuery: QueryParam[String], appStoreKeyQuery: QueryParam[File], googlePrivateKeyFileQuery: QueryParam[File], authorizeNetApiKeyQuery: QueryParam[String], authorizeNetTransactionKeyQuery: QueryParam[String], emailSenderQuery: QueryParam[String], smtpUserQuery: QueryParam[String], smtpHostQuery: QueryParam[String], vatomBusinessIdQuery: QueryParam[String], vatomRestClientIdQuery: QueryParam[String], vatomRestSecretKeyQuery: QueryParam[String], twilioAccountSIDQuery: QueryParam[String], twilioAuthTokenQuery: QueryParam[String], twilioSenderPhoneNumberQuery: QueryParam[String], openAISecretKeyQuery: QueryParam[String]): Task[ApplicationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationResponse] = jsonOf[ApplicationResponse]

    val path = "/application/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appName", Some(appNameQuery.toParamString(appName))), ("about", Some(aboutQuery.toParamString(about))), ("bundleId", Some(bundleIdQuery.toParamString(bundleId))), ("appIconAssetId", Some(appIconAssetIdQuery.toParamString(appIconAssetId))), ("appLogoAssetId", Some(appLogoAssetIdQuery.toParamString(appLogoAssetId))), ("facebookAppId", Some(facebookAppIdQuery.toParamString(facebookAppId))), ("facebookAppSecret", Some(facebookAppSecretQuery.toParamString(facebookAppSecret))), ("googleApiKey", Some(googleApiKeyQuery.toParamString(googleApiKey))), ("updateEULADate", Some(updateEULADateQuery.toParamString(updateEULADate))), ("eulaVersion", Some(eulaVersionQuery.toParamString(eulaVersion))), ("landingPageUrl", Some(landingPageUrlQuery.toParamString(landingPageUrl))), ("showInActivities", Some(showInActivitiesQuery.toParamString(showInActivities))), ("activityDescription", Some(activityDescriptionQuery.toParamString(activityDescription))), ("inviteWelcomeText", Some(inviteWelcomeTextQuery.toParamString(inviteWelcomeText))), ("invitePageUrl", Some(invitePageUrlQuery.toParamString(invitePageUrl))), ("urlScheme", Some(urlSchemeQuery.toParamString(urlScheme))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("downloadUrls", Some(downloadUrlsQuery.toParamString(downloadUrls))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("scoringType", Some(scoringTypeQuery.toParamString(scoringType))), ("hintCost", Some(hintCostQuery.toParamString(hintCost))), ("maxScore", Some(maxScoreQuery.toParamString(maxScore))), ("ticketsPerPoint", Some(ticketsPerPointQuery.toParamString(ticketsPerPoint))), ("hasGameData", Some(hasGameDataQuery.toParamString(hasGameData))), ("publicNotifications", Some(publicNotificationsQuery.toParamString(publicNotifications))), ("useMatchingAlgorithm", Some(useMatchingAlgorithmQuery.toParamString(useMatchingAlgorithm))), ("globalTickets", Some(globalTicketsQuery.toParamString(globalTickets))), ("buildVersion", Some(buildVersionQuery.toParamString(buildVersion))), ("apiVersion", Some(apiVersionQuery.toParamString(apiVersion))), ("placementName", Some(placementNameQuery.toParamString(placementName))), ("placementDescription", Some(placementDescriptionQuery.toParamString(placementDescription))), ("placementSize", Some(placementSizeQuery.toParamString(placementSize))), ("placementHeight", Some(placementHeightQuery.toParamString(placementHeight))), ("placementWidth", Some(placementWidthQuery.toParamString(placementWidth))), ("placementRefreshInterval", Some(placementRefreshIntervalQuery.toParamString(placementRefreshInterval))), ("createObjectStore", Some(createObjectStoreQuery.toParamString(createObjectStore))), ("publicContentApproval", Some(publicContentApprovalQuery.toParamString(publicContentApproval))), ("productionMode", Some(productionModeQuery.toParamString(productionMode))), ("minimumSessionLength", Some(minimumSessionLengthQuery.toParamString(minimumSessionLength))), ("sessionGapLength", Some(sessionGapLengthQuery.toParamString(sessionGapLength))), ("localAdsEnabled", Some(localAdsEnabledQuery.toParamString(localAdsEnabled))), ("sqootApiKey", Some(sqootApiKeyQuery.toParamString(sqootApiKey))), ("trilatProcessingType", Some(trilatProcessingTypeQuery.toParamString(trilatProcessingType))), ("maxSampleSize", Some(maxSampleSizeQuery.toParamString(maxSampleSize))), ("minRSSI", Some(minRSSIQuery.toParamString(minRSSI))), ("modules", Some(modulesQuery.toParamString(modules))), ("authorizedCount", Some(authorizedCountQuery.toParamString(authorizedCount))), ("authorizedServers", Some(authorizedServersQuery.toParamString(authorizedServers))), ("defaultTimezone", Some(defaultTimezoneQuery.toParamString(defaultTimezone))), ("smtpPass", Some(smtpPassQuery.toParamString(smtpPass))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("placementMetaData", Some(placementMetaDataQuery.toParamString(placementMetaData))), ("ipsFloor", Some(ipsFloorQuery.toParamString(ipsFloor))), ("enableAPNSBadge", Some(enableAPNSBadgeQuery.toParamString(enableAPNSBadge))), ("includeInReport", Some(includeInReportQuery.toParamString(includeInReport))), ("defaultAppFilterId", Some(defaultAppFilterIdQuery.toParamString(defaultAppFilterId))), ("enableWelcomeEmail", Some(enableWelcomeEmailQuery.toParamString(enableWelcomeEmail))), ("appleAppId", Some(appleAppIdQuery.toParamString(appleAppId))), ("appleTeamId", Some(appleTeamIdQuery.toParamString(appleTeamId))), ("appleAuthKeyId", Some(appleAuthKeyIdQuery.toParamString(appleAuthKeyId))), ("appleAuthKey", Some(appleAuthKeyQuery.toParamString(appleAuthKey))), ("appleIssuerId", Some(appleIssuerIdQuery.toParamString(appleIssuerId))), ("appStoreKeyId", Some(appStoreKeyIdQuery.toParamString(appStoreKeyId))), ("appStoreKey", Some(appStoreKeyQuery.toParamString(appStoreKey))), ("googlePrivateKeyFile", Some(googlePrivateKeyFileQuery.toParamString(googlePrivateKeyFile))), ("authorizeNetApiKey", Some(authorizeNetApiKeyQuery.toParamString(authorizeNetApiKey))), ("authorizeNetTransactionKey", Some(authorizeNetTransactionKeyQuery.toParamString(authorizeNetTransactionKey))), ("emailSender", Some(emailSenderQuery.toParamString(emailSender))), ("smtpUser", Some(smtpUserQuery.toParamString(smtpUser))), ("smtpHost", Some(smtpHostQuery.toParamString(smtpHost))), ("vatomBusinessId", Some(vatomBusinessIdQuery.toParamString(vatomBusinessId))), ("vatomRestClientId", Some(vatomRestClientIdQuery.toParamString(vatomRestClientId))), ("vatomRestSecretKey", Some(vatomRestSecretKeyQuery.toParamString(vatomRestSecretKey))), ("twilioAccountSID", Some(twilioAccountSIDQuery.toParamString(twilioAccountSID))), ("twilioAuthToken", Some(twilioAuthTokenQuery.toParamString(twilioAuthToken))), ("twilioSenderPhoneNumber", Some(twilioSenderPhoneNumberQuery.toParamString(twilioSenderPhoneNumber))), ("openAISecretKey", Some(openAISecretKeyQuery.toParamString(openAISecretKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationResponse](req)

    } yield resp
  }

  def createApplicationPlacement(host: String, appKey: String, size: String, deviceId: String, accountId: Long, name: String, description: String, height: Integer, width: Integer, refreshInterval: Integer, defaultImageId: Long, active: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], sizeQuery: QueryParam[String], heightQuery: QueryParam[Integer], widthQuery: QueryParam[Integer], refreshIntervalQuery: QueryParam[Integer], defaultImageIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean]): Task[PlacementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PlacementResponse] = jsonOf[PlacementResponse]

    val path = "/application/placement/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("size", Some(sizeQuery.toParamString(size))), ("height", Some(heightQuery.toParamString(height))), ("width", Some(widthQuery.toParamString(width))), ("refreshInterval", Some(refreshIntervalQuery.toParamString(refreshInterval))), ("defaultImageId", Some(defaultImageIdQuery.toParamString(defaultImageId))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PlacementResponse](req)

    } yield resp
  }

  def deleteApplication(host: String, accountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/application/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteApplicationPlacement(host: String, placementId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], placementIdQuery: QueryParam[Long]): Task[PlacementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PlacementResponse] = jsonOf[PlacementResponse]

    val path = "/application/placement/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("placementId", Some(placementIdQuery.toParamString(placementId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PlacementResponse](req)

    } yield resp
  }

  def getApplication(host: String, appKey: String, applicationId: Long)(implicit appKeyQuery: QueryParam[String], applicationIdQuery: QueryParam[Long]): Task[ApplicationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationResponse] = jsonOf[ApplicationResponse]

    val path = "/application/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("applicationId", Some(applicationIdQuery.toParamString(applicationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationResponse](req)

    } yield resp
  }

  def getApplicationPlacement(host: String, placementId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], placementIdQuery: QueryParam[Long]): Task[PlacementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PlacementResponse] = jsonOf[PlacementResponse]

    val path = "/application/placement/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("placementId", Some(placementIdQuery.toParamString(placementId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PlacementResponse](req)

    } yield resp
  }

  def getApplicationVersions(host: String): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/application/versions"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getUniqueUsersByApp(host: String, appKey: String, q: String, keyword: String, since: Long, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 20)(implicit appKeyQuery: QueryParam[String], qQuery: QueryParam[String], keywordQuery: QueryParam[String], sinceQuery: QueryParam[Long], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[AccountListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AccountListResponse] = jsonOf[AccountListResponse]

    val path = "/application/users"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("since", Some(sinceQuery.toParamString(since))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AccountListResponse](req)

    } yield resp
  }

  def listApplications(host: String, accountId: Long, q: String, keyword: String, platforms: String, deviceIds: String, deviceVersions: String, categoryIds: String, sortField: String = UPDATED, hasAds: Boolean, publicNotifications: Boolean, filterBillable: Boolean, filterContentAdmin: Boolean, descending: Boolean = true, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 20, applicationIds: String, hasObjectStore: Boolean = false, activeOnly: Boolean = true)(implicit accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], platformsQuery: QueryParam[String], deviceIdsQuery: QueryParam[String], deviceVersionsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], hasAdsQuery: QueryParam[Boolean], publicNotificationsQuery: QueryParam[Boolean], filterBillableQuery: QueryParam[Boolean], filterContentAdminQuery: QueryParam[Boolean], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], applicationIdsQuery: QueryParam[String], hasObjectStoreQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean]): Task[List[ApplicationShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ApplicationShortResponse]] = jsonOf[List[ApplicationShortResponse]]

    val path = "/application/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("deviceIds", Some(deviceIdsQuery.toParamString(deviceIds))), ("deviceVersions", Some(deviceVersionsQuery.toParamString(deviceVersions))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("hasAds", Some(hasAdsQuery.toParamString(hasAds))), ("publicNotifications", Some(publicNotificationsQuery.toParamString(publicNotifications))), ("filterBillable", Some(filterBillableQuery.toParamString(filterBillable))), ("filterContentAdmin", Some(filterContentAdminQuery.toParamString(filterContentAdmin))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))), ("hasObjectStore", Some(hasObjectStoreQuery.toParamString(hasObjectStore))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ApplicationShortResponse]](req)

    } yield resp
  }

  def searchApplicationPlacement(host: String, appKey: String, deviceId: String, accountId: Long, start: Integer = 0, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[PlacementResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PlacementResponse]] = jsonOf[List[PlacementResponse]]

    val path = "/application/placement/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PlacementResponse]](req)

    } yield resp
  }

  def searchApplicationSettings(host: String, deviceId: String, accountId: Long, connectionAccountId: Long, keyword: String, sortField: String = APPLICATION_TITLE, descending: Boolean = false, start: Integer = 0, limit: Integer = 20)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[ApplicationSettingsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationSettingsResponse] = jsonOf[ApplicationSettingsResponse]

    val path = "/application/settings/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationSettingsResponse](req)

    } yield resp
  }

  def searchApplications(host: String, deviceId: String, accountId: Long, latitude: Double, longitude: Double, q: String, keyword: String, qSearchFields: String = NAME,ABOUT,BILLABLE_ENTITY_NAME, sortField: String = APPLICATION_ID, descending: Boolean = false, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 100, hasAds: Boolean, publicNotifications: Boolean, activeOnly: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], qQuery: QueryParam[String], keywordQuery: QueryParam[String], qSearchFieldsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], hasAdsQuery: QueryParam[Boolean], publicNotificationsQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean]): Task[List[ApplicationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ApplicationResponse]] = jsonOf[List[ApplicationResponse]]

    val path = "/application/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("qSearchFields", Some(qSearchFieldsQuery.toParamString(qSearchFields))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("hasAds", Some(hasAdsQuery.toParamString(hasAds))), ("publicNotifications", Some(publicNotificationsQuery.toParamString(publicNotifications))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ApplicationResponse]](req)

    } yield resp
  }

  def updateApplication(host: String, appKey: String, appName: String, deviceId: String, accountId: Long, about: String, bundleId: String, appIconAssetId: Long, appLogoAssetId: Long, facebookAppId: String, facebookAppSecret: String, googleApiKey: String, updateEULADate: Boolean, eulaVersion: String, landingPageUrl: String, showInActivities: Boolean, activityDescription: String, inviteWelcomeText: String, invitePageUrl: String, urlScheme: String, platforms: String, downloadUrls: String, categoryIds: String, scoringType: String = GAME_LEVEL, hintCost: Integer = 11, maxScore: Integer = 125, ticketsPerPoint: Float = 0.037, hasGameData: Boolean = true, publicNotifications: Boolean, useMatchingAlgorithm: Boolean, globalTickets: Boolean = false, buildVersion: Float = 1, apiVersion: Float, placementName: String, placementDescription: String, placementSize: String, placementHeight: Integer, placementWidth: Integer, placementRefreshInterval: Integer, createObjectStore: Boolean = true, publicContentApproval: Boolean = false, productionMode: Boolean = false, minimumSessionLength: Integer, sessionGapLength: Integer, localAdsEnabled: Boolean = false, sqootApiKey: String, trilatProcessingType: String = FINGERPRINT, maxSampleSize: Integer, minRSSI: Double, modules: String = ALL, authorizedCount: Integer = 1, authorizedServers: String, defaultTimezone: String, smtpPass: String, metaData: String, placementMetaData: String, ipsFloor: Boolean = false, enableAPNSBadge: Boolean = true, includeInReport: Boolean = true, defaultAppFilterId: Long, enableWelcomeEmail: Boolean, appleAppId: String, appleTeamId: String, appleAuthKeyId: String, appleAuthKey: File, appleIssuerId: String, appStoreKeyId: String, appStoreKey: File, googlePrivateKeyFile: File, authorizeNetApiKey: String, authorizeNetTransactionKey: String, emailSender: String, smtpUser: String, smtpHost: String, vatomBusinessId: String, vatomRestClientId: String, vatomRestSecretKey: String, twilioAccountSID: String, twilioAuthToken: String, twilioSenderPhoneNumber: String, openAISecretKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], appNameQuery: QueryParam[String], aboutQuery: QueryParam[String], bundleIdQuery: QueryParam[String], appIconAssetIdQuery: QueryParam[Long], appLogoAssetIdQuery: QueryParam[Long], facebookAppIdQuery: QueryParam[String], facebookAppSecretQuery: QueryParam[String], googleApiKeyQuery: QueryParam[String], updateEULADateQuery: QueryParam[Boolean], eulaVersionQuery: QueryParam[String], landingPageUrlQuery: QueryParam[String], showInActivitiesQuery: QueryParam[Boolean], activityDescriptionQuery: QueryParam[String], inviteWelcomeTextQuery: QueryParam[String], invitePageUrlQuery: QueryParam[String], urlSchemeQuery: QueryParam[String], platformsQuery: QueryParam[String], downloadUrlsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], scoringTypeQuery: QueryParam[String], hintCostQuery: QueryParam[Integer], maxScoreQuery: QueryParam[Integer], ticketsPerPointQuery: QueryParam[Float], hasGameDataQuery: QueryParam[Boolean], publicNotificationsQuery: QueryParam[Boolean], useMatchingAlgorithmQuery: QueryParam[Boolean], globalTicketsQuery: QueryParam[Boolean], buildVersionQuery: QueryParam[Float], apiVersionQuery: QueryParam[Float], placementNameQuery: QueryParam[String], placementDescriptionQuery: QueryParam[String], placementSizeQuery: QueryParam[String], placementHeightQuery: QueryParam[Integer], placementWidthQuery: QueryParam[Integer], placementRefreshIntervalQuery: QueryParam[Integer], createObjectStoreQuery: QueryParam[Boolean], publicContentApprovalQuery: QueryParam[Boolean], productionModeQuery: QueryParam[Boolean], minimumSessionLengthQuery: QueryParam[Integer], sessionGapLengthQuery: QueryParam[Integer], localAdsEnabledQuery: QueryParam[Boolean], sqootApiKeyQuery: QueryParam[String], trilatProcessingTypeQuery: QueryParam[String], maxSampleSizeQuery: QueryParam[Integer], minRSSIQuery: QueryParam[Double], modulesQuery: QueryParam[String], authorizedCountQuery: QueryParam[Integer], authorizedServersQuery: QueryParam[String], defaultTimezoneQuery: QueryParam[String], smtpPassQuery: QueryParam[String], metaDataQuery: QueryParam[String], placementMetaDataQuery: QueryParam[String], ipsFloorQuery: QueryParam[Boolean], enableAPNSBadgeQuery: QueryParam[Boolean], includeInReportQuery: QueryParam[Boolean], defaultAppFilterIdQuery: QueryParam[Long], enableWelcomeEmailQuery: QueryParam[Boolean], appleAppIdQuery: QueryParam[String], appleTeamIdQuery: QueryParam[String], appleAuthKeyIdQuery: QueryParam[String], appleAuthKeyQuery: QueryParam[File], appleIssuerIdQuery: QueryParam[String], appStoreKeyIdQuery: QueryParam[String], appStoreKeyQuery: QueryParam[File], googlePrivateKeyFileQuery: QueryParam[File], authorizeNetApiKeyQuery: QueryParam[String], authorizeNetTransactionKeyQuery: QueryParam[String], emailSenderQuery: QueryParam[String], smtpUserQuery: QueryParam[String], smtpHostQuery: QueryParam[String], vatomBusinessIdQuery: QueryParam[String], vatomRestClientIdQuery: QueryParam[String], vatomRestSecretKeyQuery: QueryParam[String], twilioAccountSIDQuery: QueryParam[String], twilioAuthTokenQuery: QueryParam[String], twilioSenderPhoneNumberQuery: QueryParam[String], openAISecretKeyQuery: QueryParam[String]): Task[ApplicationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationResponse] = jsonOf[ApplicationResponse]

    val path = "/application/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appName", Some(appNameQuery.toParamString(appName))), ("about", Some(aboutQuery.toParamString(about))), ("bundleId", Some(bundleIdQuery.toParamString(bundleId))), ("appIconAssetId", Some(appIconAssetIdQuery.toParamString(appIconAssetId))), ("appLogoAssetId", Some(appLogoAssetIdQuery.toParamString(appLogoAssetId))), ("facebookAppId", Some(facebookAppIdQuery.toParamString(facebookAppId))), ("facebookAppSecret", Some(facebookAppSecretQuery.toParamString(facebookAppSecret))), ("googleApiKey", Some(googleApiKeyQuery.toParamString(googleApiKey))), ("updateEULADate", Some(updateEULADateQuery.toParamString(updateEULADate))), ("eulaVersion", Some(eulaVersionQuery.toParamString(eulaVersion))), ("landingPageUrl", Some(landingPageUrlQuery.toParamString(landingPageUrl))), ("showInActivities", Some(showInActivitiesQuery.toParamString(showInActivities))), ("activityDescription", Some(activityDescriptionQuery.toParamString(activityDescription))), ("inviteWelcomeText", Some(inviteWelcomeTextQuery.toParamString(inviteWelcomeText))), ("invitePageUrl", Some(invitePageUrlQuery.toParamString(invitePageUrl))), ("urlScheme", Some(urlSchemeQuery.toParamString(urlScheme))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("downloadUrls", Some(downloadUrlsQuery.toParamString(downloadUrls))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("scoringType", Some(scoringTypeQuery.toParamString(scoringType))), ("hintCost", Some(hintCostQuery.toParamString(hintCost))), ("maxScore", Some(maxScoreQuery.toParamString(maxScore))), ("ticketsPerPoint", Some(ticketsPerPointQuery.toParamString(ticketsPerPoint))), ("hasGameData", Some(hasGameDataQuery.toParamString(hasGameData))), ("publicNotifications", Some(publicNotificationsQuery.toParamString(publicNotifications))), ("useMatchingAlgorithm", Some(useMatchingAlgorithmQuery.toParamString(useMatchingAlgorithm))), ("globalTickets", Some(globalTicketsQuery.toParamString(globalTickets))), ("buildVersion", Some(buildVersionQuery.toParamString(buildVersion))), ("apiVersion", Some(apiVersionQuery.toParamString(apiVersion))), ("placementName", Some(placementNameQuery.toParamString(placementName))), ("placementDescription", Some(placementDescriptionQuery.toParamString(placementDescription))), ("placementSize", Some(placementSizeQuery.toParamString(placementSize))), ("placementHeight", Some(placementHeightQuery.toParamString(placementHeight))), ("placementWidth", Some(placementWidthQuery.toParamString(placementWidth))), ("placementRefreshInterval", Some(placementRefreshIntervalQuery.toParamString(placementRefreshInterval))), ("createObjectStore", Some(createObjectStoreQuery.toParamString(createObjectStore))), ("publicContentApproval", Some(publicContentApprovalQuery.toParamString(publicContentApproval))), ("productionMode", Some(productionModeQuery.toParamString(productionMode))), ("minimumSessionLength", Some(minimumSessionLengthQuery.toParamString(minimumSessionLength))), ("sessionGapLength", Some(sessionGapLengthQuery.toParamString(sessionGapLength))), ("localAdsEnabled", Some(localAdsEnabledQuery.toParamString(localAdsEnabled))), ("sqootApiKey", Some(sqootApiKeyQuery.toParamString(sqootApiKey))), ("trilatProcessingType", Some(trilatProcessingTypeQuery.toParamString(trilatProcessingType))), ("maxSampleSize", Some(maxSampleSizeQuery.toParamString(maxSampleSize))), ("minRSSI", Some(minRSSIQuery.toParamString(minRSSI))), ("modules", Some(modulesQuery.toParamString(modules))), ("authorizedCount", Some(authorizedCountQuery.toParamString(authorizedCount))), ("authorizedServers", Some(authorizedServersQuery.toParamString(authorizedServers))), ("defaultTimezone", Some(defaultTimezoneQuery.toParamString(defaultTimezone))), ("smtpPass", Some(smtpPassQuery.toParamString(smtpPass))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("placementMetaData", Some(placementMetaDataQuery.toParamString(placementMetaData))), ("ipsFloor", Some(ipsFloorQuery.toParamString(ipsFloor))), ("enableAPNSBadge", Some(enableAPNSBadgeQuery.toParamString(enableAPNSBadge))), ("includeInReport", Some(includeInReportQuery.toParamString(includeInReport))), ("defaultAppFilterId", Some(defaultAppFilterIdQuery.toParamString(defaultAppFilterId))), ("enableWelcomeEmail", Some(enableWelcomeEmailQuery.toParamString(enableWelcomeEmail))), ("appleAppId", Some(appleAppIdQuery.toParamString(appleAppId))), ("appleTeamId", Some(appleTeamIdQuery.toParamString(appleTeamId))), ("appleAuthKeyId", Some(appleAuthKeyIdQuery.toParamString(appleAuthKeyId))), ("appleAuthKey", Some(appleAuthKeyQuery.toParamString(appleAuthKey))), ("appleIssuerId", Some(appleIssuerIdQuery.toParamString(appleIssuerId))), ("appStoreKeyId", Some(appStoreKeyIdQuery.toParamString(appStoreKeyId))), ("appStoreKey", Some(appStoreKeyQuery.toParamString(appStoreKey))), ("googlePrivateKeyFile", Some(googlePrivateKeyFileQuery.toParamString(googlePrivateKeyFile))), ("authorizeNetApiKey", Some(authorizeNetApiKeyQuery.toParamString(authorizeNetApiKey))), ("authorizeNetTransactionKey", Some(authorizeNetTransactionKeyQuery.toParamString(authorizeNetTransactionKey))), ("emailSender", Some(emailSenderQuery.toParamString(emailSender))), ("smtpUser", Some(smtpUserQuery.toParamString(smtpUser))), ("smtpHost", Some(smtpHostQuery.toParamString(smtpHost))), ("vatomBusinessId", Some(vatomBusinessIdQuery.toParamString(vatomBusinessId))), ("vatomRestClientId", Some(vatomRestClientIdQuery.toParamString(vatomRestClientId))), ("vatomRestSecretKey", Some(vatomRestSecretKeyQuery.toParamString(vatomRestSecretKey))), ("twilioAccountSID", Some(twilioAccountSIDQuery.toParamString(twilioAccountSID))), ("twilioAuthToken", Some(twilioAuthTokenQuery.toParamString(twilioAuthToken))), ("twilioSenderPhoneNumber", Some(twilioSenderPhoneNumberQuery.toParamString(twilioSenderPhoneNumber))), ("openAISecretKey", Some(openAISecretKeyQuery.toParamString(openAISecretKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationResponse](req)

    } yield resp
  }

  def updateApplicationActive(host: String, accountId: Long, appKey: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/application/active"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateApplicationPlacement(host: String, placementId: Long, deviceId: String, accountId: Long, name: String, description: String, size: String, height: Integer, width: Integer, refreshInterval: Integer, defaultImageId: Long, active: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], placementIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], sizeQuery: QueryParam[String], heightQuery: QueryParam[Integer], widthQuery: QueryParam[Integer], refreshIntervalQuery: QueryParam[Integer], defaultImageIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean]): Task[PlacementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PlacementResponse] = jsonOf[PlacementResponse]

    val path = "/application/placement/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("placementId", Some(placementIdQuery.toParamString(placementId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("size", Some(sizeQuery.toParamString(size))), ("height", Some(heightQuery.toParamString(height))), ("width", Some(widthQuery.toParamString(width))), ("refreshInterval", Some(refreshIntervalQuery.toParamString(refreshInterval))), ("defaultImageId", Some(defaultImageIdQuery.toParamString(defaultImageId))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PlacementResponse](req)

    } yield resp
  }

  def uploadApplicationCertificate(host: String, appKey: String, deviceId: String, accountId: Long, certificate: File)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], certificateQuery: QueryParam[File]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/application/certificate/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("certificate", Some(certificateQuery.toParamString(certificate))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceApplicationApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createApplication(appName: String, deviceId: String, accountId: Long, about: String, bundleId: String, appIconAssetId: Long, appLogoAssetId: Long, facebookAppId: String, facebookAppSecret: String, googleApiKey: String, updateEULADate: Boolean, eulaVersion: String, landingPageUrl: String, showInActivities: Boolean, activityDescription: String, inviteWelcomeText: String, invitePageUrl: String, urlScheme: String, platforms: String, downloadUrls: String, categoryIds: String, scoringType: String = GAME_LEVEL, hintCost: Integer = 11, maxScore: Integer = 125, ticketsPerPoint: Float = 0.037, hasGameData: Boolean = true, publicNotifications: Boolean, useMatchingAlgorithm: Boolean, globalTickets: Boolean = false, buildVersion: Float = 1, apiVersion: Float, placementName: String, placementDescription: String, placementSize: String, placementHeight: Integer, placementWidth: Integer, placementRefreshInterval: Integer, createObjectStore: Boolean = true, publicContentApproval: Boolean = false, productionMode: Boolean = false, minimumSessionLength: Integer, sessionGapLength: Integer, localAdsEnabled: Boolean = false, sqootApiKey: String, trilatProcessingType: String = FINGERPRINT, maxSampleSize: Integer, minRSSI: Double, modules: String = ALL, authorizedCount: Integer = 1, authorizedServers: String, defaultTimezone: String, smtpPass: String, metaData: String, placementMetaData: String, ipsFloor: Boolean = false, enableAPNSBadge: Boolean = true, includeInReport: Boolean = true, defaultAppFilterId: Long, enableWelcomeEmail: Boolean, appleAppId: String, appleTeamId: String, appleAuthKeyId: String, appleAuthKey: File, appleIssuerId: String, appStoreKeyId: String, appStoreKey: File, googlePrivateKeyFile: File, authorizeNetApiKey: String, authorizeNetTransactionKey: String, emailSender: String, smtpUser: String, smtpHost: String, vatomBusinessId: String, vatomRestClientId: String, vatomRestSecretKey: String, twilioAccountSID: String, twilioAuthToken: String, twilioSenderPhoneNumber: String, openAISecretKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appNameQuery: QueryParam[String], aboutQuery: QueryParam[String], bundleIdQuery: QueryParam[String], appIconAssetIdQuery: QueryParam[Long], appLogoAssetIdQuery: QueryParam[Long], facebookAppIdQuery: QueryParam[String], facebookAppSecretQuery: QueryParam[String], googleApiKeyQuery: QueryParam[String], updateEULADateQuery: QueryParam[Boolean], eulaVersionQuery: QueryParam[String], landingPageUrlQuery: QueryParam[String], showInActivitiesQuery: QueryParam[Boolean], activityDescriptionQuery: QueryParam[String], inviteWelcomeTextQuery: QueryParam[String], invitePageUrlQuery: QueryParam[String], urlSchemeQuery: QueryParam[String], platformsQuery: QueryParam[String], downloadUrlsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], scoringTypeQuery: QueryParam[String], hintCostQuery: QueryParam[Integer], maxScoreQuery: QueryParam[Integer], ticketsPerPointQuery: QueryParam[Float], hasGameDataQuery: QueryParam[Boolean], publicNotificationsQuery: QueryParam[Boolean], useMatchingAlgorithmQuery: QueryParam[Boolean], globalTicketsQuery: QueryParam[Boolean], buildVersionQuery: QueryParam[Float], apiVersionQuery: QueryParam[Float], placementNameQuery: QueryParam[String], placementDescriptionQuery: QueryParam[String], placementSizeQuery: QueryParam[String], placementHeightQuery: QueryParam[Integer], placementWidthQuery: QueryParam[Integer], placementRefreshIntervalQuery: QueryParam[Integer], createObjectStoreQuery: QueryParam[Boolean], publicContentApprovalQuery: QueryParam[Boolean], productionModeQuery: QueryParam[Boolean], minimumSessionLengthQuery: QueryParam[Integer], sessionGapLengthQuery: QueryParam[Integer], localAdsEnabledQuery: QueryParam[Boolean], sqootApiKeyQuery: QueryParam[String], trilatProcessingTypeQuery: QueryParam[String], maxSampleSizeQuery: QueryParam[Integer], minRSSIQuery: QueryParam[Double], modulesQuery: QueryParam[String], authorizedCountQuery: QueryParam[Integer], authorizedServersQuery: QueryParam[String], defaultTimezoneQuery: QueryParam[String], smtpPassQuery: QueryParam[String], metaDataQuery: QueryParam[String], placementMetaDataQuery: QueryParam[String], ipsFloorQuery: QueryParam[Boolean], enableAPNSBadgeQuery: QueryParam[Boolean], includeInReportQuery: QueryParam[Boolean], defaultAppFilterIdQuery: QueryParam[Long], enableWelcomeEmailQuery: QueryParam[Boolean], appleAppIdQuery: QueryParam[String], appleTeamIdQuery: QueryParam[String], appleAuthKeyIdQuery: QueryParam[String], appleAuthKeyQuery: QueryParam[File], appleIssuerIdQuery: QueryParam[String], appStoreKeyIdQuery: QueryParam[String], appStoreKeyQuery: QueryParam[File], googlePrivateKeyFileQuery: QueryParam[File], authorizeNetApiKeyQuery: QueryParam[String], authorizeNetTransactionKeyQuery: QueryParam[String], emailSenderQuery: QueryParam[String], smtpUserQuery: QueryParam[String], smtpHostQuery: QueryParam[String], vatomBusinessIdQuery: QueryParam[String], vatomRestClientIdQuery: QueryParam[String], vatomRestSecretKeyQuery: QueryParam[String], twilioAccountSIDQuery: QueryParam[String], twilioAuthTokenQuery: QueryParam[String], twilioSenderPhoneNumberQuery: QueryParam[String], openAISecretKeyQuery: QueryParam[String]): Task[ApplicationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationResponse] = jsonOf[ApplicationResponse]

    val path = "/application/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appName", Some(appNameQuery.toParamString(appName))), ("about", Some(aboutQuery.toParamString(about))), ("bundleId", Some(bundleIdQuery.toParamString(bundleId))), ("appIconAssetId", Some(appIconAssetIdQuery.toParamString(appIconAssetId))), ("appLogoAssetId", Some(appLogoAssetIdQuery.toParamString(appLogoAssetId))), ("facebookAppId", Some(facebookAppIdQuery.toParamString(facebookAppId))), ("facebookAppSecret", Some(facebookAppSecretQuery.toParamString(facebookAppSecret))), ("googleApiKey", Some(googleApiKeyQuery.toParamString(googleApiKey))), ("updateEULADate", Some(updateEULADateQuery.toParamString(updateEULADate))), ("eulaVersion", Some(eulaVersionQuery.toParamString(eulaVersion))), ("landingPageUrl", Some(landingPageUrlQuery.toParamString(landingPageUrl))), ("showInActivities", Some(showInActivitiesQuery.toParamString(showInActivities))), ("activityDescription", Some(activityDescriptionQuery.toParamString(activityDescription))), ("inviteWelcomeText", Some(inviteWelcomeTextQuery.toParamString(inviteWelcomeText))), ("invitePageUrl", Some(invitePageUrlQuery.toParamString(invitePageUrl))), ("urlScheme", Some(urlSchemeQuery.toParamString(urlScheme))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("downloadUrls", Some(downloadUrlsQuery.toParamString(downloadUrls))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("scoringType", Some(scoringTypeQuery.toParamString(scoringType))), ("hintCost", Some(hintCostQuery.toParamString(hintCost))), ("maxScore", Some(maxScoreQuery.toParamString(maxScore))), ("ticketsPerPoint", Some(ticketsPerPointQuery.toParamString(ticketsPerPoint))), ("hasGameData", Some(hasGameDataQuery.toParamString(hasGameData))), ("publicNotifications", Some(publicNotificationsQuery.toParamString(publicNotifications))), ("useMatchingAlgorithm", Some(useMatchingAlgorithmQuery.toParamString(useMatchingAlgorithm))), ("globalTickets", Some(globalTicketsQuery.toParamString(globalTickets))), ("buildVersion", Some(buildVersionQuery.toParamString(buildVersion))), ("apiVersion", Some(apiVersionQuery.toParamString(apiVersion))), ("placementName", Some(placementNameQuery.toParamString(placementName))), ("placementDescription", Some(placementDescriptionQuery.toParamString(placementDescription))), ("placementSize", Some(placementSizeQuery.toParamString(placementSize))), ("placementHeight", Some(placementHeightQuery.toParamString(placementHeight))), ("placementWidth", Some(placementWidthQuery.toParamString(placementWidth))), ("placementRefreshInterval", Some(placementRefreshIntervalQuery.toParamString(placementRefreshInterval))), ("createObjectStore", Some(createObjectStoreQuery.toParamString(createObjectStore))), ("publicContentApproval", Some(publicContentApprovalQuery.toParamString(publicContentApproval))), ("productionMode", Some(productionModeQuery.toParamString(productionMode))), ("minimumSessionLength", Some(minimumSessionLengthQuery.toParamString(minimumSessionLength))), ("sessionGapLength", Some(sessionGapLengthQuery.toParamString(sessionGapLength))), ("localAdsEnabled", Some(localAdsEnabledQuery.toParamString(localAdsEnabled))), ("sqootApiKey", Some(sqootApiKeyQuery.toParamString(sqootApiKey))), ("trilatProcessingType", Some(trilatProcessingTypeQuery.toParamString(trilatProcessingType))), ("maxSampleSize", Some(maxSampleSizeQuery.toParamString(maxSampleSize))), ("minRSSI", Some(minRSSIQuery.toParamString(minRSSI))), ("modules", Some(modulesQuery.toParamString(modules))), ("authorizedCount", Some(authorizedCountQuery.toParamString(authorizedCount))), ("authorizedServers", Some(authorizedServersQuery.toParamString(authorizedServers))), ("defaultTimezone", Some(defaultTimezoneQuery.toParamString(defaultTimezone))), ("smtpPass", Some(smtpPassQuery.toParamString(smtpPass))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("placementMetaData", Some(placementMetaDataQuery.toParamString(placementMetaData))), ("ipsFloor", Some(ipsFloorQuery.toParamString(ipsFloor))), ("enableAPNSBadge", Some(enableAPNSBadgeQuery.toParamString(enableAPNSBadge))), ("includeInReport", Some(includeInReportQuery.toParamString(includeInReport))), ("defaultAppFilterId", Some(defaultAppFilterIdQuery.toParamString(defaultAppFilterId))), ("enableWelcomeEmail", Some(enableWelcomeEmailQuery.toParamString(enableWelcomeEmail))), ("appleAppId", Some(appleAppIdQuery.toParamString(appleAppId))), ("appleTeamId", Some(appleTeamIdQuery.toParamString(appleTeamId))), ("appleAuthKeyId", Some(appleAuthKeyIdQuery.toParamString(appleAuthKeyId))), ("appleAuthKey", Some(appleAuthKeyQuery.toParamString(appleAuthKey))), ("appleIssuerId", Some(appleIssuerIdQuery.toParamString(appleIssuerId))), ("appStoreKeyId", Some(appStoreKeyIdQuery.toParamString(appStoreKeyId))), ("appStoreKey", Some(appStoreKeyQuery.toParamString(appStoreKey))), ("googlePrivateKeyFile", Some(googlePrivateKeyFileQuery.toParamString(googlePrivateKeyFile))), ("authorizeNetApiKey", Some(authorizeNetApiKeyQuery.toParamString(authorizeNetApiKey))), ("authorizeNetTransactionKey", Some(authorizeNetTransactionKeyQuery.toParamString(authorizeNetTransactionKey))), ("emailSender", Some(emailSenderQuery.toParamString(emailSender))), ("smtpUser", Some(smtpUserQuery.toParamString(smtpUser))), ("smtpHost", Some(smtpHostQuery.toParamString(smtpHost))), ("vatomBusinessId", Some(vatomBusinessIdQuery.toParamString(vatomBusinessId))), ("vatomRestClientId", Some(vatomRestClientIdQuery.toParamString(vatomRestClientId))), ("vatomRestSecretKey", Some(vatomRestSecretKeyQuery.toParamString(vatomRestSecretKey))), ("twilioAccountSID", Some(twilioAccountSIDQuery.toParamString(twilioAccountSID))), ("twilioAuthToken", Some(twilioAuthTokenQuery.toParamString(twilioAuthToken))), ("twilioSenderPhoneNumber", Some(twilioSenderPhoneNumberQuery.toParamString(twilioSenderPhoneNumber))), ("openAISecretKey", Some(openAISecretKeyQuery.toParamString(openAISecretKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationResponse](req)

    } yield resp
  }

  def createApplicationPlacement(appKey: String, size: String, deviceId: String, accountId: Long, name: String, description: String, height: Integer, width: Integer, refreshInterval: Integer, defaultImageId: Long, active: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], sizeQuery: QueryParam[String], heightQuery: QueryParam[Integer], widthQuery: QueryParam[Integer], refreshIntervalQuery: QueryParam[Integer], defaultImageIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean]): Task[PlacementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PlacementResponse] = jsonOf[PlacementResponse]

    val path = "/application/placement/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("size", Some(sizeQuery.toParamString(size))), ("height", Some(heightQuery.toParamString(height))), ("width", Some(widthQuery.toParamString(width))), ("refreshInterval", Some(refreshIntervalQuery.toParamString(refreshInterval))), ("defaultImageId", Some(defaultImageIdQuery.toParamString(defaultImageId))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PlacementResponse](req)

    } yield resp
  }

  def deleteApplication(accountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/application/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteApplicationPlacement(placementId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], placementIdQuery: QueryParam[Long]): Task[PlacementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PlacementResponse] = jsonOf[PlacementResponse]

    val path = "/application/placement/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("placementId", Some(placementIdQuery.toParamString(placementId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PlacementResponse](req)

    } yield resp
  }

  def getApplication(appKey: String, applicationId: Long)(implicit appKeyQuery: QueryParam[String], applicationIdQuery: QueryParam[Long]): Task[ApplicationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationResponse] = jsonOf[ApplicationResponse]

    val path = "/application/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("applicationId", Some(applicationIdQuery.toParamString(applicationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationResponse](req)

    } yield resp
  }

  def getApplicationPlacement(placementId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], placementIdQuery: QueryParam[Long]): Task[PlacementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PlacementResponse] = jsonOf[PlacementResponse]

    val path = "/application/placement/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("placementId", Some(placementIdQuery.toParamString(placementId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PlacementResponse](req)

    } yield resp
  }

  def getApplicationVersions(): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/application/versions"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getUniqueUsersByApp(appKey: String, q: String, keyword: String, since: Long, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 20)(implicit appKeyQuery: QueryParam[String], qQuery: QueryParam[String], keywordQuery: QueryParam[String], sinceQuery: QueryParam[Long], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[AccountListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AccountListResponse] = jsonOf[AccountListResponse]

    val path = "/application/users"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("since", Some(sinceQuery.toParamString(since))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AccountListResponse](req)

    } yield resp
  }

  def listApplications(accountId: Long, q: String, keyword: String, platforms: String, deviceIds: String, deviceVersions: String, categoryIds: String, sortField: String = UPDATED, hasAds: Boolean, publicNotifications: Boolean, filterBillable: Boolean, filterContentAdmin: Boolean, descending: Boolean = true, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 20, applicationIds: String, hasObjectStore: Boolean = false, activeOnly: Boolean = true)(implicit accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], platformsQuery: QueryParam[String], deviceIdsQuery: QueryParam[String], deviceVersionsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], hasAdsQuery: QueryParam[Boolean], publicNotificationsQuery: QueryParam[Boolean], filterBillableQuery: QueryParam[Boolean], filterContentAdminQuery: QueryParam[Boolean], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], applicationIdsQuery: QueryParam[String], hasObjectStoreQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean]): Task[List[ApplicationShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ApplicationShortResponse]] = jsonOf[List[ApplicationShortResponse]]

    val path = "/application/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("deviceIds", Some(deviceIdsQuery.toParamString(deviceIds))), ("deviceVersions", Some(deviceVersionsQuery.toParamString(deviceVersions))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("hasAds", Some(hasAdsQuery.toParamString(hasAds))), ("publicNotifications", Some(publicNotificationsQuery.toParamString(publicNotifications))), ("filterBillable", Some(filterBillableQuery.toParamString(filterBillable))), ("filterContentAdmin", Some(filterContentAdminQuery.toParamString(filterContentAdmin))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))), ("hasObjectStore", Some(hasObjectStoreQuery.toParamString(hasObjectStore))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ApplicationShortResponse]](req)

    } yield resp
  }

  def searchApplicationPlacement(appKey: String, deviceId: String, accountId: Long, start: Integer = 0, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[PlacementResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PlacementResponse]] = jsonOf[List[PlacementResponse]]

    val path = "/application/placement/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PlacementResponse]](req)

    } yield resp
  }

  def searchApplicationSettings(deviceId: String, accountId: Long, connectionAccountId: Long, keyword: String, sortField: String = APPLICATION_TITLE, descending: Boolean = false, start: Integer = 0, limit: Integer = 20)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[ApplicationSettingsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationSettingsResponse] = jsonOf[ApplicationSettingsResponse]

    val path = "/application/settings/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationSettingsResponse](req)

    } yield resp
  }

  def searchApplications(deviceId: String, accountId: Long, latitude: Double, longitude: Double, q: String, keyword: String, qSearchFields: String = NAME,ABOUT,BILLABLE_ENTITY_NAME, sortField: String = APPLICATION_ID, descending: Boolean = false, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 100, hasAds: Boolean, publicNotifications: Boolean, activeOnly: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], qQuery: QueryParam[String], keywordQuery: QueryParam[String], qSearchFieldsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], hasAdsQuery: QueryParam[Boolean], publicNotificationsQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean]): Task[List[ApplicationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ApplicationResponse]] = jsonOf[List[ApplicationResponse]]

    val path = "/application/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("qSearchFields", Some(qSearchFieldsQuery.toParamString(qSearchFields))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("hasAds", Some(hasAdsQuery.toParamString(hasAds))), ("publicNotifications", Some(publicNotificationsQuery.toParamString(publicNotifications))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ApplicationResponse]](req)

    } yield resp
  }

  def updateApplication(appKey: String, appName: String, deviceId: String, accountId: Long, about: String, bundleId: String, appIconAssetId: Long, appLogoAssetId: Long, facebookAppId: String, facebookAppSecret: String, googleApiKey: String, updateEULADate: Boolean, eulaVersion: String, landingPageUrl: String, showInActivities: Boolean, activityDescription: String, inviteWelcomeText: String, invitePageUrl: String, urlScheme: String, platforms: String, downloadUrls: String, categoryIds: String, scoringType: String = GAME_LEVEL, hintCost: Integer = 11, maxScore: Integer = 125, ticketsPerPoint: Float = 0.037, hasGameData: Boolean = true, publicNotifications: Boolean, useMatchingAlgorithm: Boolean, globalTickets: Boolean = false, buildVersion: Float = 1, apiVersion: Float, placementName: String, placementDescription: String, placementSize: String, placementHeight: Integer, placementWidth: Integer, placementRefreshInterval: Integer, createObjectStore: Boolean = true, publicContentApproval: Boolean = false, productionMode: Boolean = false, minimumSessionLength: Integer, sessionGapLength: Integer, localAdsEnabled: Boolean = false, sqootApiKey: String, trilatProcessingType: String = FINGERPRINT, maxSampleSize: Integer, minRSSI: Double, modules: String = ALL, authorizedCount: Integer = 1, authorizedServers: String, defaultTimezone: String, smtpPass: String, metaData: String, placementMetaData: String, ipsFloor: Boolean = false, enableAPNSBadge: Boolean = true, includeInReport: Boolean = true, defaultAppFilterId: Long, enableWelcomeEmail: Boolean, appleAppId: String, appleTeamId: String, appleAuthKeyId: String, appleAuthKey: File, appleIssuerId: String, appStoreKeyId: String, appStoreKey: File, googlePrivateKeyFile: File, authorizeNetApiKey: String, authorizeNetTransactionKey: String, emailSender: String, smtpUser: String, smtpHost: String, vatomBusinessId: String, vatomRestClientId: String, vatomRestSecretKey: String, twilioAccountSID: String, twilioAuthToken: String, twilioSenderPhoneNumber: String, openAISecretKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], appNameQuery: QueryParam[String], aboutQuery: QueryParam[String], bundleIdQuery: QueryParam[String], appIconAssetIdQuery: QueryParam[Long], appLogoAssetIdQuery: QueryParam[Long], facebookAppIdQuery: QueryParam[String], facebookAppSecretQuery: QueryParam[String], googleApiKeyQuery: QueryParam[String], updateEULADateQuery: QueryParam[Boolean], eulaVersionQuery: QueryParam[String], landingPageUrlQuery: QueryParam[String], showInActivitiesQuery: QueryParam[Boolean], activityDescriptionQuery: QueryParam[String], inviteWelcomeTextQuery: QueryParam[String], invitePageUrlQuery: QueryParam[String], urlSchemeQuery: QueryParam[String], platformsQuery: QueryParam[String], downloadUrlsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], scoringTypeQuery: QueryParam[String], hintCostQuery: QueryParam[Integer], maxScoreQuery: QueryParam[Integer], ticketsPerPointQuery: QueryParam[Float], hasGameDataQuery: QueryParam[Boolean], publicNotificationsQuery: QueryParam[Boolean], useMatchingAlgorithmQuery: QueryParam[Boolean], globalTicketsQuery: QueryParam[Boolean], buildVersionQuery: QueryParam[Float], apiVersionQuery: QueryParam[Float], placementNameQuery: QueryParam[String], placementDescriptionQuery: QueryParam[String], placementSizeQuery: QueryParam[String], placementHeightQuery: QueryParam[Integer], placementWidthQuery: QueryParam[Integer], placementRefreshIntervalQuery: QueryParam[Integer], createObjectStoreQuery: QueryParam[Boolean], publicContentApprovalQuery: QueryParam[Boolean], productionModeQuery: QueryParam[Boolean], minimumSessionLengthQuery: QueryParam[Integer], sessionGapLengthQuery: QueryParam[Integer], localAdsEnabledQuery: QueryParam[Boolean], sqootApiKeyQuery: QueryParam[String], trilatProcessingTypeQuery: QueryParam[String], maxSampleSizeQuery: QueryParam[Integer], minRSSIQuery: QueryParam[Double], modulesQuery: QueryParam[String], authorizedCountQuery: QueryParam[Integer], authorizedServersQuery: QueryParam[String], defaultTimezoneQuery: QueryParam[String], smtpPassQuery: QueryParam[String], metaDataQuery: QueryParam[String], placementMetaDataQuery: QueryParam[String], ipsFloorQuery: QueryParam[Boolean], enableAPNSBadgeQuery: QueryParam[Boolean], includeInReportQuery: QueryParam[Boolean], defaultAppFilterIdQuery: QueryParam[Long], enableWelcomeEmailQuery: QueryParam[Boolean], appleAppIdQuery: QueryParam[String], appleTeamIdQuery: QueryParam[String], appleAuthKeyIdQuery: QueryParam[String], appleAuthKeyQuery: QueryParam[File], appleIssuerIdQuery: QueryParam[String], appStoreKeyIdQuery: QueryParam[String], appStoreKeyQuery: QueryParam[File], googlePrivateKeyFileQuery: QueryParam[File], authorizeNetApiKeyQuery: QueryParam[String], authorizeNetTransactionKeyQuery: QueryParam[String], emailSenderQuery: QueryParam[String], smtpUserQuery: QueryParam[String], smtpHostQuery: QueryParam[String], vatomBusinessIdQuery: QueryParam[String], vatomRestClientIdQuery: QueryParam[String], vatomRestSecretKeyQuery: QueryParam[String], twilioAccountSIDQuery: QueryParam[String], twilioAuthTokenQuery: QueryParam[String], twilioSenderPhoneNumberQuery: QueryParam[String], openAISecretKeyQuery: QueryParam[String]): Task[ApplicationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationResponse] = jsonOf[ApplicationResponse]

    val path = "/application/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appName", Some(appNameQuery.toParamString(appName))), ("about", Some(aboutQuery.toParamString(about))), ("bundleId", Some(bundleIdQuery.toParamString(bundleId))), ("appIconAssetId", Some(appIconAssetIdQuery.toParamString(appIconAssetId))), ("appLogoAssetId", Some(appLogoAssetIdQuery.toParamString(appLogoAssetId))), ("facebookAppId", Some(facebookAppIdQuery.toParamString(facebookAppId))), ("facebookAppSecret", Some(facebookAppSecretQuery.toParamString(facebookAppSecret))), ("googleApiKey", Some(googleApiKeyQuery.toParamString(googleApiKey))), ("updateEULADate", Some(updateEULADateQuery.toParamString(updateEULADate))), ("eulaVersion", Some(eulaVersionQuery.toParamString(eulaVersion))), ("landingPageUrl", Some(landingPageUrlQuery.toParamString(landingPageUrl))), ("showInActivities", Some(showInActivitiesQuery.toParamString(showInActivities))), ("activityDescription", Some(activityDescriptionQuery.toParamString(activityDescription))), ("inviteWelcomeText", Some(inviteWelcomeTextQuery.toParamString(inviteWelcomeText))), ("invitePageUrl", Some(invitePageUrlQuery.toParamString(invitePageUrl))), ("urlScheme", Some(urlSchemeQuery.toParamString(urlScheme))), ("platforms", Some(platformsQuery.toParamString(platforms))), ("downloadUrls", Some(downloadUrlsQuery.toParamString(downloadUrls))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("scoringType", Some(scoringTypeQuery.toParamString(scoringType))), ("hintCost", Some(hintCostQuery.toParamString(hintCost))), ("maxScore", Some(maxScoreQuery.toParamString(maxScore))), ("ticketsPerPoint", Some(ticketsPerPointQuery.toParamString(ticketsPerPoint))), ("hasGameData", Some(hasGameDataQuery.toParamString(hasGameData))), ("publicNotifications", Some(publicNotificationsQuery.toParamString(publicNotifications))), ("useMatchingAlgorithm", Some(useMatchingAlgorithmQuery.toParamString(useMatchingAlgorithm))), ("globalTickets", Some(globalTicketsQuery.toParamString(globalTickets))), ("buildVersion", Some(buildVersionQuery.toParamString(buildVersion))), ("apiVersion", Some(apiVersionQuery.toParamString(apiVersion))), ("placementName", Some(placementNameQuery.toParamString(placementName))), ("placementDescription", Some(placementDescriptionQuery.toParamString(placementDescription))), ("placementSize", Some(placementSizeQuery.toParamString(placementSize))), ("placementHeight", Some(placementHeightQuery.toParamString(placementHeight))), ("placementWidth", Some(placementWidthQuery.toParamString(placementWidth))), ("placementRefreshInterval", Some(placementRefreshIntervalQuery.toParamString(placementRefreshInterval))), ("createObjectStore", Some(createObjectStoreQuery.toParamString(createObjectStore))), ("publicContentApproval", Some(publicContentApprovalQuery.toParamString(publicContentApproval))), ("productionMode", Some(productionModeQuery.toParamString(productionMode))), ("minimumSessionLength", Some(minimumSessionLengthQuery.toParamString(minimumSessionLength))), ("sessionGapLength", Some(sessionGapLengthQuery.toParamString(sessionGapLength))), ("localAdsEnabled", Some(localAdsEnabledQuery.toParamString(localAdsEnabled))), ("sqootApiKey", Some(sqootApiKeyQuery.toParamString(sqootApiKey))), ("trilatProcessingType", Some(trilatProcessingTypeQuery.toParamString(trilatProcessingType))), ("maxSampleSize", Some(maxSampleSizeQuery.toParamString(maxSampleSize))), ("minRSSI", Some(minRSSIQuery.toParamString(minRSSI))), ("modules", Some(modulesQuery.toParamString(modules))), ("authorizedCount", Some(authorizedCountQuery.toParamString(authorizedCount))), ("authorizedServers", Some(authorizedServersQuery.toParamString(authorizedServers))), ("defaultTimezone", Some(defaultTimezoneQuery.toParamString(defaultTimezone))), ("smtpPass", Some(smtpPassQuery.toParamString(smtpPass))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("placementMetaData", Some(placementMetaDataQuery.toParamString(placementMetaData))), ("ipsFloor", Some(ipsFloorQuery.toParamString(ipsFloor))), ("enableAPNSBadge", Some(enableAPNSBadgeQuery.toParamString(enableAPNSBadge))), ("includeInReport", Some(includeInReportQuery.toParamString(includeInReport))), ("defaultAppFilterId", Some(defaultAppFilterIdQuery.toParamString(defaultAppFilterId))), ("enableWelcomeEmail", Some(enableWelcomeEmailQuery.toParamString(enableWelcomeEmail))), ("appleAppId", Some(appleAppIdQuery.toParamString(appleAppId))), ("appleTeamId", Some(appleTeamIdQuery.toParamString(appleTeamId))), ("appleAuthKeyId", Some(appleAuthKeyIdQuery.toParamString(appleAuthKeyId))), ("appleAuthKey", Some(appleAuthKeyQuery.toParamString(appleAuthKey))), ("appleIssuerId", Some(appleIssuerIdQuery.toParamString(appleIssuerId))), ("appStoreKeyId", Some(appStoreKeyIdQuery.toParamString(appStoreKeyId))), ("appStoreKey", Some(appStoreKeyQuery.toParamString(appStoreKey))), ("googlePrivateKeyFile", Some(googlePrivateKeyFileQuery.toParamString(googlePrivateKeyFile))), ("authorizeNetApiKey", Some(authorizeNetApiKeyQuery.toParamString(authorizeNetApiKey))), ("authorizeNetTransactionKey", Some(authorizeNetTransactionKeyQuery.toParamString(authorizeNetTransactionKey))), ("emailSender", Some(emailSenderQuery.toParamString(emailSender))), ("smtpUser", Some(smtpUserQuery.toParamString(smtpUser))), ("smtpHost", Some(smtpHostQuery.toParamString(smtpHost))), ("vatomBusinessId", Some(vatomBusinessIdQuery.toParamString(vatomBusinessId))), ("vatomRestClientId", Some(vatomRestClientIdQuery.toParamString(vatomRestClientId))), ("vatomRestSecretKey", Some(vatomRestSecretKeyQuery.toParamString(vatomRestSecretKey))), ("twilioAccountSID", Some(twilioAccountSIDQuery.toParamString(twilioAccountSID))), ("twilioAuthToken", Some(twilioAuthTokenQuery.toParamString(twilioAuthToken))), ("twilioSenderPhoneNumber", Some(twilioSenderPhoneNumberQuery.toParamString(twilioSenderPhoneNumber))), ("openAISecretKey", Some(openAISecretKeyQuery.toParamString(openAISecretKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationResponse](req)

    } yield resp
  }

  def updateApplicationActive(accountId: Long, appKey: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/application/active"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateApplicationPlacement(placementId: Long, deviceId: String, accountId: Long, name: String, description: String, size: String, height: Integer, width: Integer, refreshInterval: Integer, defaultImageId: Long, active: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], placementIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], sizeQuery: QueryParam[String], heightQuery: QueryParam[Integer], widthQuery: QueryParam[Integer], refreshIntervalQuery: QueryParam[Integer], defaultImageIdQuery: QueryParam[Long], activeQuery: QueryParam[Boolean]): Task[PlacementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PlacementResponse] = jsonOf[PlacementResponse]

    val path = "/application/placement/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("placementId", Some(placementIdQuery.toParamString(placementId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("size", Some(sizeQuery.toParamString(size))), ("height", Some(heightQuery.toParamString(height))), ("width", Some(widthQuery.toParamString(width))), ("refreshInterval", Some(refreshIntervalQuery.toParamString(refreshInterval))), ("defaultImageId", Some(defaultImageIdQuery.toParamString(defaultImageId))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PlacementResponse](req)

    } yield resp
  }

  def uploadApplicationCertificate(appKey: String, deviceId: String, accountId: Long, certificate: File)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], certificateQuery: QueryParam[File]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/application/certificate/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("certificate", Some(certificateQuery.toParamString(certificate))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
