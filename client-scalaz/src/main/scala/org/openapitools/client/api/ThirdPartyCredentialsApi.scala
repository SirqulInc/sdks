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

import org.openapitools.client.api.BigDecimal
import java.io.File
import org.openapitools.client.api.ProfileResponse
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.ThirdPartyCredentialResponse
import org.openapitools.client.api.ThirdPartyNetworkResponse
import org.openapitools.client.api.ThirdPartyNetworkShortResponse

object ThirdPartyCredentialsApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createCredential(host: String, version: BigDecimal, thirdPartyId: String, thirdPartyToken: String, networkUID: String, appKey: String, accountId: Long, deviceId: String, sessionId: String, thirdPartyName: String, emailAddress: String, signinOnlyMode: Boolean = false, responseFilters: String, latitude: Double, longitude: Double, metaData: String, thirdPartyRefreshToken: String, audienceIdsToAdd: String, audienceIdsToRemove: String)(implicit accountIdQuery: QueryParam[Long], deviceIdQuery: QueryParam[String], sessionIdQuery: QueryParam[String], thirdPartyIdQuery: QueryParam[String], thirdPartyNameQuery: QueryParam[String], thirdPartyTokenQuery: QueryParam[String], networkUIDQuery: QueryParam[String], appKeyQuery: QueryParam[String], emailAddressQuery: QueryParam[String], signinOnlyModeQuery: QueryParam[Boolean], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], thirdPartyRefreshTokenQuery: QueryParam[String], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/thirdparty/credential/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("sessionId", Some(sessionIdQuery.toParamString(sessionId))), ("thirdPartyId", Some(thirdPartyIdQuery.toParamString(thirdPartyId))), ("thirdPartyName", Some(thirdPartyNameQuery.toParamString(thirdPartyName))), ("thirdPartyToken", Some(thirdPartyTokenQuery.toParamString(thirdPartyToken))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("signinOnlyMode", Some(signinOnlyModeQuery.toParamString(signinOnlyMode))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("thirdPartyRefreshToken", Some(thirdPartyRefreshTokenQuery.toParamString(thirdPartyRefreshToken))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def createNetwork(host: String, version: BigDecimal, accountId: Long, name: String, enableIntrospection: Boolean, description: String, introspectionMethod: String, introspectionURL: String, introspectionParams: String, requiredRootField: String, enableMFA: Boolean, sizeMFA: Integer, shelfLifeMFA: Integer, oauthTokenURL: String, oauthPrivateKey: File, oauthPublicKey: File, oauthClientId: String, oauthSecretKey: String, body: String)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], enableIntrospectionQuery: QueryParam[Boolean], introspectionMethodQuery: QueryParam[String], introspectionURLQuery: QueryParam[String], introspectionParamsQuery: QueryParam[String], requiredRootFieldQuery: QueryParam[String], enableMFAQuery: QueryParam[Boolean], sizeMFAQuery: QueryParam[Integer], shelfLifeMFAQuery: QueryParam[Integer], oauthTokenURLQuery: QueryParam[String], oauthPrivateKeyQuery: QueryParam[File], oauthPublicKeyQuery: QueryParam[File], oauthClientIdQuery: QueryParam[String], oauthSecretKeyQuery: QueryParam[String]): Task[ThirdPartyNetworkResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ThirdPartyNetworkResponse] = jsonOf[ThirdPartyNetworkResponse]

    val path = "/api/{version}/thirdparty/network/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("enableIntrospection", Some(enableIntrospectionQuery.toParamString(enableIntrospection))), ("introspectionMethod", Some(introspectionMethodQuery.toParamString(introspectionMethod))), ("introspectionURL", Some(introspectionURLQuery.toParamString(introspectionURL))), ("introspectionParams", Some(introspectionParamsQuery.toParamString(introspectionParams))), ("requiredRootField", Some(requiredRootFieldQuery.toParamString(requiredRootField))), ("enableMFA", Some(enableMFAQuery.toParamString(enableMFA))), ("sizeMFA", Some(sizeMFAQuery.toParamString(sizeMFA))), ("shelfLifeMFA", Some(shelfLifeMFAQuery.toParamString(shelfLifeMFA))), ("oauthTokenURL", Some(oauthTokenURLQuery.toParamString(oauthTokenURL))), ("oauthPrivateKey", Some(oauthPrivateKeyQuery.toParamString(oauthPrivateKey))), ("oauthPublicKey", Some(oauthPublicKeyQuery.toParamString(oauthPublicKey))), ("oauthClientId", Some(oauthClientIdQuery.toParamString(oauthClientId))), ("oauthSecretKey", Some(oauthSecretKeyQuery.toParamString(oauthSecretKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ThirdPartyNetworkResponse](req)

    } yield resp
  }

  def deleteCredential(host: String, version: BigDecimal, accountId: Long, networkUID: String, thirdPartyId: String, appKey: String)(implicit accountIdQuery: QueryParam[Long], networkUIDQuery: QueryParam[String], thirdPartyIdQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/thirdparty/credential/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("thirdPartyId", Some(thirdPartyIdQuery.toParamString(thirdPartyId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteNetwork(host: String, version: BigDecimal, accountId: Long, networkUID: String)(implicit accountIdQuery: QueryParam[Long], networkUIDQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/thirdparty/network/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getCredential(host: String, version: BigDecimal, networkUID: String, appKey: String, accountId: Long, deviceId: String, sessionId: String, thirdPartyCredentialId: Long, thirdPartyToken: String, thirdPartySecret: String, createNewAccount: Boolean = false, responseFilters: String, latitude: Double, longitude: Double, audienceIdsToAdd: String, audienceIdsToRemove: String, referralAccountId: Long)(implicit accountIdQuery: QueryParam[Long], deviceIdQuery: QueryParam[String], sessionIdQuery: QueryParam[String], thirdPartyCredentialIdQuery: QueryParam[Long], thirdPartyTokenQuery: QueryParam[String], thirdPartySecretQuery: QueryParam[String], createNewAccountQuery: QueryParam[Boolean], networkUIDQuery: QueryParam[String], appKeyQuery: QueryParam[String], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String], referralAccountIdQuery: QueryParam[Long]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/thirdparty/credential/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("sessionId", Some(sessionIdQuery.toParamString(sessionId))), ("thirdPartyCredentialId", Some(thirdPartyCredentialIdQuery.toParamString(thirdPartyCredentialId))), ("thirdPartyToken", Some(thirdPartyTokenQuery.toParamString(thirdPartyToken))), ("thirdPartySecret", Some(thirdPartySecretQuery.toParamString(thirdPartySecret))), ("createNewAccount", Some(createNewAccountQuery.toParamString(createNewAccount))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))), ("referralAccountId", Some(referralAccountIdQuery.toParamString(referralAccountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def getNetwork(host: String, version: BigDecimal, accountId: Long, networkUID: String)(implicit accountIdQuery: QueryParam[Long], networkUIDQuery: QueryParam[String]): Task[ThirdPartyNetworkResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ThirdPartyNetworkResponse] = jsonOf[ThirdPartyNetworkResponse]

    val path = "/api/{version}/thirdparty/network/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ThirdPartyNetworkResponse](req)

    } yield resp
  }

  def searchCredentials(host: String, version: BigDecimal, accountId: Long, keyword: String, networkUID: String, descending: Boolean, start: Integer = 0, limit: Integer = 20)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], networkUIDQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ThirdPartyCredentialResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ThirdPartyCredentialResponse]] = jsonOf[List[ThirdPartyCredentialResponse]]

    val path = "/api/{version}/thirdparty/credential/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ThirdPartyCredentialResponse]](req)

    } yield resp
  }

  def searchNetworks(host: String, version: BigDecimal, accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, keyword: String, filterBillable: Boolean)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], filterBillableQuery: QueryParam[Boolean]): Task[List[ThirdPartyNetworkShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ThirdPartyNetworkShortResponse]] = jsonOf[List[ThirdPartyNetworkShortResponse]]

    val path = "/api/{version}/thirdparty/network/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("filterBillable", Some(filterBillableQuery.toParamString(filterBillable))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ThirdPartyNetworkShortResponse]](req)

    } yield resp
  }

  def sendMFAChallenge(host: String, version: BigDecimal, networkUID: String, appKey: String, thirdPartyToken: String, thirdPartyCredentialId: Long, deviceId: String)(implicit thirdPartyTokenQuery: QueryParam[String], thirdPartyCredentialIdQuery: QueryParam[Long], networkUIDQuery: QueryParam[String], appKeyQuery: QueryParam[String], deviceIdQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/thirdparty/credential/mfa/send".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("thirdPartyToken", Some(thirdPartyTokenQuery.toParamString(thirdPartyToken))), ("thirdPartyCredentialId", Some(thirdPartyCredentialIdQuery.toParamString(thirdPartyCredentialId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateCredential(host: String, version: BigDecimal, networkUID: String, thirdPartyId: String, appKey: String, deviceId: String, thirdPartyName: String, thirdPartyToken: String, responseFilters: String, metaData: String, thirdPartyRefreshToken: String)(implicit deviceIdQuery: QueryParam[String], networkUIDQuery: QueryParam[String], thirdPartyIdQuery: QueryParam[String], thirdPartyNameQuery: QueryParam[String], thirdPartyTokenQuery: QueryParam[String], appKeyQuery: QueryParam[String], responseFiltersQuery: QueryParam[String], metaDataQuery: QueryParam[String], thirdPartyRefreshTokenQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/thirdparty/credential/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("thirdPartyId", Some(thirdPartyIdQuery.toParamString(thirdPartyId))), ("thirdPartyName", Some(thirdPartyNameQuery.toParamString(thirdPartyName))), ("thirdPartyToken", Some(thirdPartyTokenQuery.toParamString(thirdPartyToken))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("thirdPartyRefreshToken", Some(thirdPartyRefreshTokenQuery.toParamString(thirdPartyRefreshToken))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def updateNetwork(host: String, version: BigDecimal, accountId: Long, networkUID: String, name: String, description: String, enableIntrospection: Boolean, introspectionMethod: String, introspectionURL: String, introspectionParams: String, requiredRootField: String, enableMFA: Boolean, sizeMFA: Integer, shelfLifeMFA: Integer, oauthTokenURL: String, oauthPrivateKey: File, oauthPublicKey: File, oauthClientId: String, oauthSecretKey: String, body: String)(implicit accountIdQuery: QueryParam[Long], networkUIDQuery: QueryParam[String], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], enableIntrospectionQuery: QueryParam[Boolean], introspectionMethodQuery: QueryParam[String], introspectionURLQuery: QueryParam[String], introspectionParamsQuery: QueryParam[String], requiredRootFieldQuery: QueryParam[String], enableMFAQuery: QueryParam[Boolean], sizeMFAQuery: QueryParam[Integer], shelfLifeMFAQuery: QueryParam[Integer], oauthTokenURLQuery: QueryParam[String], oauthPrivateKeyQuery: QueryParam[File], oauthPublicKeyQuery: QueryParam[File], oauthClientIdQuery: QueryParam[String], oauthSecretKeyQuery: QueryParam[String]): Task[ThirdPartyNetworkResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ThirdPartyNetworkResponse] = jsonOf[ThirdPartyNetworkResponse]

    val path = "/api/{version}/thirdparty/network/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("enableIntrospection", Some(enableIntrospectionQuery.toParamString(enableIntrospection))), ("introspectionMethod", Some(introspectionMethodQuery.toParamString(introspectionMethod))), ("introspectionURL", Some(introspectionURLQuery.toParamString(introspectionURL))), ("introspectionParams", Some(introspectionParamsQuery.toParamString(introspectionParams))), ("requiredRootField", Some(requiredRootFieldQuery.toParamString(requiredRootField))), ("enableMFA", Some(enableMFAQuery.toParamString(enableMFA))), ("sizeMFA", Some(sizeMFAQuery.toParamString(sizeMFA))), ("shelfLifeMFA", Some(shelfLifeMFAQuery.toParamString(shelfLifeMFA))), ("oauthTokenURL", Some(oauthTokenURLQuery.toParamString(oauthTokenURL))), ("oauthPrivateKey", Some(oauthPrivateKeyQuery.toParamString(oauthPrivateKey))), ("oauthPublicKey", Some(oauthPublicKeyQuery.toParamString(oauthPublicKey))), ("oauthClientId", Some(oauthClientIdQuery.toParamString(oauthClientId))), ("oauthSecretKey", Some(oauthSecretKeyQuery.toParamString(oauthSecretKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ThirdPartyNetworkResponse](req)

    } yield resp
  }

}

class HttpServiceThirdPartyCredentialsApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createCredential(version: BigDecimal, thirdPartyId: String, thirdPartyToken: String, networkUID: String, appKey: String, accountId: Long, deviceId: String, sessionId: String, thirdPartyName: String, emailAddress: String, signinOnlyMode: Boolean = false, responseFilters: String, latitude: Double, longitude: Double, metaData: String, thirdPartyRefreshToken: String, audienceIdsToAdd: String, audienceIdsToRemove: String)(implicit accountIdQuery: QueryParam[Long], deviceIdQuery: QueryParam[String], sessionIdQuery: QueryParam[String], thirdPartyIdQuery: QueryParam[String], thirdPartyNameQuery: QueryParam[String], thirdPartyTokenQuery: QueryParam[String], networkUIDQuery: QueryParam[String], appKeyQuery: QueryParam[String], emailAddressQuery: QueryParam[String], signinOnlyModeQuery: QueryParam[Boolean], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], thirdPartyRefreshTokenQuery: QueryParam[String], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/thirdparty/credential/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("sessionId", Some(sessionIdQuery.toParamString(sessionId))), ("thirdPartyId", Some(thirdPartyIdQuery.toParamString(thirdPartyId))), ("thirdPartyName", Some(thirdPartyNameQuery.toParamString(thirdPartyName))), ("thirdPartyToken", Some(thirdPartyTokenQuery.toParamString(thirdPartyToken))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("emailAddress", Some(emailAddressQuery.toParamString(emailAddress))), ("signinOnlyMode", Some(signinOnlyModeQuery.toParamString(signinOnlyMode))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("thirdPartyRefreshToken", Some(thirdPartyRefreshTokenQuery.toParamString(thirdPartyRefreshToken))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def createNetwork(version: BigDecimal, accountId: Long, name: String, enableIntrospection: Boolean, description: String, introspectionMethod: String, introspectionURL: String, introspectionParams: String, requiredRootField: String, enableMFA: Boolean, sizeMFA: Integer, shelfLifeMFA: Integer, oauthTokenURL: String, oauthPrivateKey: File, oauthPublicKey: File, oauthClientId: String, oauthSecretKey: String, body: String)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], enableIntrospectionQuery: QueryParam[Boolean], introspectionMethodQuery: QueryParam[String], introspectionURLQuery: QueryParam[String], introspectionParamsQuery: QueryParam[String], requiredRootFieldQuery: QueryParam[String], enableMFAQuery: QueryParam[Boolean], sizeMFAQuery: QueryParam[Integer], shelfLifeMFAQuery: QueryParam[Integer], oauthTokenURLQuery: QueryParam[String], oauthPrivateKeyQuery: QueryParam[File], oauthPublicKeyQuery: QueryParam[File], oauthClientIdQuery: QueryParam[String], oauthSecretKeyQuery: QueryParam[String]): Task[ThirdPartyNetworkResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ThirdPartyNetworkResponse] = jsonOf[ThirdPartyNetworkResponse]

    val path = "/api/{version}/thirdparty/network/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("enableIntrospection", Some(enableIntrospectionQuery.toParamString(enableIntrospection))), ("introspectionMethod", Some(introspectionMethodQuery.toParamString(introspectionMethod))), ("introspectionURL", Some(introspectionURLQuery.toParamString(introspectionURL))), ("introspectionParams", Some(introspectionParamsQuery.toParamString(introspectionParams))), ("requiredRootField", Some(requiredRootFieldQuery.toParamString(requiredRootField))), ("enableMFA", Some(enableMFAQuery.toParamString(enableMFA))), ("sizeMFA", Some(sizeMFAQuery.toParamString(sizeMFA))), ("shelfLifeMFA", Some(shelfLifeMFAQuery.toParamString(shelfLifeMFA))), ("oauthTokenURL", Some(oauthTokenURLQuery.toParamString(oauthTokenURL))), ("oauthPrivateKey", Some(oauthPrivateKeyQuery.toParamString(oauthPrivateKey))), ("oauthPublicKey", Some(oauthPublicKeyQuery.toParamString(oauthPublicKey))), ("oauthClientId", Some(oauthClientIdQuery.toParamString(oauthClientId))), ("oauthSecretKey", Some(oauthSecretKeyQuery.toParamString(oauthSecretKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ThirdPartyNetworkResponse](req)

    } yield resp
  }

  def deleteCredential(version: BigDecimal, accountId: Long, networkUID: String, thirdPartyId: String, appKey: String)(implicit accountIdQuery: QueryParam[Long], networkUIDQuery: QueryParam[String], thirdPartyIdQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/thirdparty/credential/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("thirdPartyId", Some(thirdPartyIdQuery.toParamString(thirdPartyId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteNetwork(version: BigDecimal, accountId: Long, networkUID: String)(implicit accountIdQuery: QueryParam[Long], networkUIDQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/thirdparty/network/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getCredential(version: BigDecimal, networkUID: String, appKey: String, accountId: Long, deviceId: String, sessionId: String, thirdPartyCredentialId: Long, thirdPartyToken: String, thirdPartySecret: String, createNewAccount: Boolean = false, responseFilters: String, latitude: Double, longitude: Double, audienceIdsToAdd: String, audienceIdsToRemove: String, referralAccountId: Long)(implicit accountIdQuery: QueryParam[Long], deviceIdQuery: QueryParam[String], sessionIdQuery: QueryParam[String], thirdPartyCredentialIdQuery: QueryParam[Long], thirdPartyTokenQuery: QueryParam[String], thirdPartySecretQuery: QueryParam[String], createNewAccountQuery: QueryParam[Boolean], networkUIDQuery: QueryParam[String], appKeyQuery: QueryParam[String], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String], referralAccountIdQuery: QueryParam[Long]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/thirdparty/credential/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("sessionId", Some(sessionIdQuery.toParamString(sessionId))), ("thirdPartyCredentialId", Some(thirdPartyCredentialIdQuery.toParamString(thirdPartyCredentialId))), ("thirdPartyToken", Some(thirdPartyTokenQuery.toParamString(thirdPartyToken))), ("thirdPartySecret", Some(thirdPartySecretQuery.toParamString(thirdPartySecret))), ("createNewAccount", Some(createNewAccountQuery.toParamString(createNewAccount))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))), ("referralAccountId", Some(referralAccountIdQuery.toParamString(referralAccountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def getNetwork(version: BigDecimal, accountId: Long, networkUID: String)(implicit accountIdQuery: QueryParam[Long], networkUIDQuery: QueryParam[String]): Task[ThirdPartyNetworkResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ThirdPartyNetworkResponse] = jsonOf[ThirdPartyNetworkResponse]

    val path = "/api/{version}/thirdparty/network/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ThirdPartyNetworkResponse](req)

    } yield resp
  }

  def searchCredentials(version: BigDecimal, accountId: Long, keyword: String, networkUID: String, descending: Boolean, start: Integer = 0, limit: Integer = 20)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], networkUIDQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ThirdPartyCredentialResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ThirdPartyCredentialResponse]] = jsonOf[List[ThirdPartyCredentialResponse]]

    val path = "/api/{version}/thirdparty/credential/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ThirdPartyCredentialResponse]](req)

    } yield resp
  }

  def searchNetworks(version: BigDecimal, accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, keyword: String, filterBillable: Boolean)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], filterBillableQuery: QueryParam[Boolean]): Task[List[ThirdPartyNetworkShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ThirdPartyNetworkShortResponse]] = jsonOf[List[ThirdPartyNetworkShortResponse]]

    val path = "/api/{version}/thirdparty/network/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("filterBillable", Some(filterBillableQuery.toParamString(filterBillable))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ThirdPartyNetworkShortResponse]](req)

    } yield resp
  }

  def sendMFAChallenge(version: BigDecimal, networkUID: String, appKey: String, thirdPartyToken: String, thirdPartyCredentialId: Long, deviceId: String)(implicit thirdPartyTokenQuery: QueryParam[String], thirdPartyCredentialIdQuery: QueryParam[Long], networkUIDQuery: QueryParam[String], appKeyQuery: QueryParam[String], deviceIdQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/thirdparty/credential/mfa/send".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("thirdPartyToken", Some(thirdPartyTokenQuery.toParamString(thirdPartyToken))), ("thirdPartyCredentialId", Some(thirdPartyCredentialIdQuery.toParamString(thirdPartyCredentialId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateCredential(version: BigDecimal, networkUID: String, thirdPartyId: String, appKey: String, deviceId: String, thirdPartyName: String, thirdPartyToken: String, responseFilters: String, metaData: String, thirdPartyRefreshToken: String)(implicit deviceIdQuery: QueryParam[String], networkUIDQuery: QueryParam[String], thirdPartyIdQuery: QueryParam[String], thirdPartyNameQuery: QueryParam[String], thirdPartyTokenQuery: QueryParam[String], appKeyQuery: QueryParam[String], responseFiltersQuery: QueryParam[String], metaDataQuery: QueryParam[String], thirdPartyRefreshTokenQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/thirdparty/credential/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("thirdPartyId", Some(thirdPartyIdQuery.toParamString(thirdPartyId))), ("thirdPartyName", Some(thirdPartyNameQuery.toParamString(thirdPartyName))), ("thirdPartyToken", Some(thirdPartyTokenQuery.toParamString(thirdPartyToken))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("thirdPartyRefreshToken", Some(thirdPartyRefreshTokenQuery.toParamString(thirdPartyRefreshToken))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def updateNetwork(version: BigDecimal, accountId: Long, networkUID: String, name: String, description: String, enableIntrospection: Boolean, introspectionMethod: String, introspectionURL: String, introspectionParams: String, requiredRootField: String, enableMFA: Boolean, sizeMFA: Integer, shelfLifeMFA: Integer, oauthTokenURL: String, oauthPrivateKey: File, oauthPublicKey: File, oauthClientId: String, oauthSecretKey: String, body: String)(implicit accountIdQuery: QueryParam[Long], networkUIDQuery: QueryParam[String], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], enableIntrospectionQuery: QueryParam[Boolean], introspectionMethodQuery: QueryParam[String], introspectionURLQuery: QueryParam[String], introspectionParamsQuery: QueryParam[String], requiredRootFieldQuery: QueryParam[String], enableMFAQuery: QueryParam[Boolean], sizeMFAQuery: QueryParam[Integer], shelfLifeMFAQuery: QueryParam[Integer], oauthTokenURLQuery: QueryParam[String], oauthPrivateKeyQuery: QueryParam[File], oauthPublicKeyQuery: QueryParam[File], oauthClientIdQuery: QueryParam[String], oauthSecretKeyQuery: QueryParam[String]): Task[ThirdPartyNetworkResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ThirdPartyNetworkResponse] = jsonOf[ThirdPartyNetworkResponse]

    val path = "/api/{version}/thirdparty/network/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("networkUID", Some(networkUIDQuery.toParamString(networkUID))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("enableIntrospection", Some(enableIntrospectionQuery.toParamString(enableIntrospection))), ("introspectionMethod", Some(introspectionMethodQuery.toParamString(introspectionMethod))), ("introspectionURL", Some(introspectionURLQuery.toParamString(introspectionURL))), ("introspectionParams", Some(introspectionParamsQuery.toParamString(introspectionParams))), ("requiredRootField", Some(requiredRootFieldQuery.toParamString(requiredRootField))), ("enableMFA", Some(enableMFAQuery.toParamString(enableMFA))), ("sizeMFA", Some(sizeMFAQuery.toParamString(sizeMFA))), ("shelfLifeMFA", Some(shelfLifeMFAQuery.toParamString(shelfLifeMFA))), ("oauthTokenURL", Some(oauthTokenURLQuery.toParamString(oauthTokenURL))), ("oauthPrivateKey", Some(oauthPrivateKeyQuery.toParamString(oauthPrivateKey))), ("oauthPublicKey", Some(oauthPublicKeyQuery.toParamString(oauthPublicKey))), ("oauthClientId", Some(oauthClientIdQuery.toParamString(oauthClientId))), ("oauthSecretKey", Some(oauthSecretKeyQuery.toParamString(oauthSecretKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ThirdPartyNetworkResponse](req)

    } yield resp
  }

}
