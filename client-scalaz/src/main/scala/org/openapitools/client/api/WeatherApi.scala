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
import org.openapitools.client.api.WeatherResponse

object WeatherApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def searchWeather(host: String, version: BigDecimal, regionId: Long, latitude: Double, longitude: Double, timezoneOffset: Long = -6)(implicit regionIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], timezoneOffsetQuery: QueryParam[Long]): Task[WeatherResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WeatherResponse] = jsonOf[WeatherResponse]

    val path = "/api/{version}/weather/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("regionId", Some(regionIdQuery.toParamString(regionId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("timezoneOffset", Some(timezoneOffsetQuery.toParamString(timezoneOffset))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WeatherResponse](req)

    } yield resp
  }

}

class HttpServiceWeatherApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def searchWeather(version: BigDecimal, regionId: Long, latitude: Double, longitude: Double, timezoneOffset: Long = -6)(implicit regionIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], timezoneOffsetQuery: QueryParam[Long]): Task[WeatherResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WeatherResponse] = jsonOf[WeatherResponse]

    val path = "/api/{version}/weather/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("regionId", Some(regionIdQuery.toParamString(regionId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("timezoneOffset", Some(timezoneOffsetQuery.toParamString(timezoneOffset))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WeatherResponse](req)

    } yield resp
  }

}
