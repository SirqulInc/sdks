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
import org.openapitools.client.api.ProfileResponse
import org.openapitools.client.api.SirqulResponse

object TwitterApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def authorizeTwitter(host: String, version: BigDecimal, appKey: String)(implicit appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/twitter/authorize".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def loginTwitter(host: String, version: BigDecimal, accessToken: String, accessTokenSecret: String, appKey: String, responseFilters: String, deviceId: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accessTokenQuery: QueryParam[String], accessTokenSecretQuery: QueryParam[String], appKeyQuery: QueryParam[String], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/twitter/login".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accessToken", Some(accessTokenQuery.toParamString(accessToken))), ("accessTokenSecret", Some(accessTokenSecretQuery.toParamString(accessTokenSecret))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

}

class HttpServiceTwitterApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def authorizeTwitter(version: BigDecimal, appKey: String)(implicit appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/twitter/authorize".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def loginTwitter(version: BigDecimal, accessToken: String, accessTokenSecret: String, appKey: String, responseFilters: String, deviceId: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accessTokenQuery: QueryParam[String], accessTokenSecretQuery: QueryParam[String], appKeyQuery: QueryParam[String], responseFiltersQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/twitter/login".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accessToken", Some(accessTokenQuery.toParamString(accessToken))), ("accessTokenSecret", Some(accessTokenSecretQuery.toParamString(accessTokenSecret))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

}
