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

import java.io.File
import org.openapitools.client.api.PaymentRequest
import org.openapitools.client.api.ProfileResponse
import org.openapitools.client.api.SirqulResponse

object SecureAppApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createSecureApplication(host: String, accountId: Long, appKey: String, keyCert: File, trustStore: File, username: String, password: String, active: Boolean = true, biometricType: String = FACIAL, biometricPosition: String = UNKNOWN, biometricPosition2: String = UNKNOWN)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], activeQuery: QueryParam[Boolean], keyCertQuery: QueryParam[File], trustStoreQuery: QueryParam[File], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], biometricTypeQuery: QueryParam[String], biometricPositionQuery: QueryParam[String], biometricPosition2Query: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/secure/application/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("active", Some(activeQuery.toParamString(active))), ("keyCert", Some(keyCertQuery.toParamString(keyCert))), ("trustStore", Some(trustStoreQuery.toParamString(trustStore))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("biometricType", Some(biometricTypeQuery.toParamString(biometricType))), ("biometricPosition", Some(biometricPositionQuery.toParamString(biometricPosition))), ("biometricPosition2", Some(biometricPosition2Query.toParamString(biometricPosition2))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteSecureApplication(host: String, accountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/secure/application/delete"

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

  def loginSecure(host: String, appKey: String, biometricFile: File, deviceId: String, biometricFile2: File, ageRestriction: Integer = 0, returnProfile: Boolean = false, responseFilters: String = PROFILE, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], biometricFileQuery: QueryParam[File], biometricFile2Query: QueryParam[File], ageRestrictionQuery: QueryParam[Integer], returnProfileQuery: QueryParam[Boolean], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/secure/login"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("biometricFile", Some(biometricFileQuery.toParamString(biometricFile))), ("biometricFile2", Some(biometricFile2Query.toParamString(biometricFile2))), ("ageRestriction", Some(ageRestrictionQuery.toParamString(ageRestriction))), ("returnProfile", Some(returnProfileQuery.toParamString(returnProfile))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def purchaseSecure(host: String, body: PaymentRequest): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/secure/purchase"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def resetSecure(host: String, accountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/secure/application/reset"

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

  def updateSecureApplication(host: String, accountId: Long, appKey: String, active: Boolean, keyCert: File, trustStore: File, username: String, password: String, biometricType: String, biometricPosition: String, biometricPosition2: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], activeQuery: QueryParam[Boolean], keyCertQuery: QueryParam[File], trustStoreQuery: QueryParam[File], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], biometricTypeQuery: QueryParam[String], biometricPositionQuery: QueryParam[String], biometricPosition2Query: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/secure/application/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("active", Some(activeQuery.toParamString(active))), ("keyCert", Some(keyCertQuery.toParamString(keyCert))), ("trustStore", Some(trustStoreQuery.toParamString(trustStore))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("biometricType", Some(biometricTypeQuery.toParamString(biometricType))), ("biometricPosition", Some(biometricPositionQuery.toParamString(biometricPosition))), ("biometricPosition2", Some(biometricPosition2Query.toParamString(biometricPosition2))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceSecureAppApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createSecureApplication(accountId: Long, appKey: String, keyCert: File, trustStore: File, username: String, password: String, active: Boolean = true, biometricType: String = FACIAL, biometricPosition: String = UNKNOWN, biometricPosition2: String = UNKNOWN)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], activeQuery: QueryParam[Boolean], keyCertQuery: QueryParam[File], trustStoreQuery: QueryParam[File], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], biometricTypeQuery: QueryParam[String], biometricPositionQuery: QueryParam[String], biometricPosition2Query: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/secure/application/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("active", Some(activeQuery.toParamString(active))), ("keyCert", Some(keyCertQuery.toParamString(keyCert))), ("trustStore", Some(trustStoreQuery.toParamString(trustStore))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("biometricType", Some(biometricTypeQuery.toParamString(biometricType))), ("biometricPosition", Some(biometricPositionQuery.toParamString(biometricPosition))), ("biometricPosition2", Some(biometricPosition2Query.toParamString(biometricPosition2))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteSecureApplication(accountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/secure/application/delete"

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

  def loginSecure(appKey: String, biometricFile: File, deviceId: String, biometricFile2: File, ageRestriction: Integer = 0, returnProfile: Boolean = false, responseFilters: String = PROFILE, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], biometricFileQuery: QueryParam[File], biometricFile2Query: QueryParam[File], ageRestrictionQuery: QueryParam[Integer], returnProfileQuery: QueryParam[Boolean], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/secure/login"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("biometricFile", Some(biometricFileQuery.toParamString(biometricFile))), ("biometricFile2", Some(biometricFile2Query.toParamString(biometricFile2))), ("ageRestriction", Some(ageRestrictionQuery.toParamString(ageRestriction))), ("returnProfile", Some(returnProfileQuery.toParamString(returnProfile))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def purchaseSecure(body: PaymentRequest): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/secure/purchase"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def resetSecure(accountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/secure/application/reset"

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

  def updateSecureApplication(accountId: Long, appKey: String, active: Boolean, keyCert: File, trustStore: File, username: String, password: String, biometricType: String, biometricPosition: String, biometricPosition2: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], activeQuery: QueryParam[Boolean], keyCertQuery: QueryParam[File], trustStoreQuery: QueryParam[File], usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], biometricTypeQuery: QueryParam[String], biometricPositionQuery: QueryParam[String], biometricPosition2Query: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/secure/application/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("active", Some(activeQuery.toParamString(active))), ("keyCert", Some(keyCertQuery.toParamString(keyCert))), ("trustStore", Some(trustStoreQuery.toParamString(trustStore))), ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("biometricType", Some(biometricTypeQuery.toParamString(biometricType))), ("biometricPosition", Some(biometricPositionQuery.toParamString(biometricPosition))), ("biometricPosition2", Some(biometricPosition2Query.toParamString(biometricPosition2))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
