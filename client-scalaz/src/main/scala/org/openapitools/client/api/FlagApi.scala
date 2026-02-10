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
import org.openapitools.client.api.CountResponse
import org.openapitools.client.api.FlagResponse
import org.openapitools.client.api.SirqulResponse

object FlagApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createFlag(host: String, version: BigDecimal, flagableType: String, flagableId: Long, deviceId: String, accountId: Long, flagDescription: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], flagableTypeQuery: QueryParam[String], flagableIdQuery: QueryParam[Long], flagDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/flag/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("flagableType", Some(flagableTypeQuery.toParamString(flagableType))), ("flagableId", Some(flagableIdQuery.toParamString(flagableId))), ("flagDescription", Some(flagDescriptionQuery.toParamString(flagDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteFlag(host: String, version: BigDecimal, deviceId: String, accountId: Long, itemBeingFlaggedType: String, itemBeingFlaggedId: Long, flagableType: String, flagableId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], itemBeingFlaggedTypeQuery: QueryParam[String], itemBeingFlaggedIdQuery: QueryParam[Long], flagableTypeQuery: QueryParam[String], flagableIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/flag/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("itemBeingFlaggedType", Some(itemBeingFlaggedTypeQuery.toParamString(itemBeingFlaggedType))), ("itemBeingFlaggedId", Some(itemBeingFlaggedIdQuery.toParamString(itemBeingFlaggedId))), ("flagableType", Some(flagableTypeQuery.toParamString(flagableType))), ("flagableId", Some(flagableIdQuery.toParamString(flagableId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getFlag(host: String, version: BigDecimal, flagableType: String, flagableId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], flagableTypeQuery: QueryParam[String], flagableIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[FlagResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[FlagResponse] = jsonOf[FlagResponse]

    val path = "/api/{version}/flag/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("flagableType", Some(flagableTypeQuery.toParamString(flagableType))), ("flagableId", Some(flagableIdQuery.toParamString(flagableId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[FlagResponse](req)

    } yield resp
  }

  def getFlagThreshold(host: String, version: BigDecimal, itemBeingFlaggedType: String, appKey: String)(implicit itemBeingFlaggedTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[CountResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CountResponse] = jsonOf[CountResponse]

    val path = "/api/{version}/flag/threshold/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("itemBeingFlaggedType", Some(itemBeingFlaggedTypeQuery.toParamString(itemBeingFlaggedType))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CountResponse](req)

    } yield resp
  }

  def updateFlagThreshold(host: String, version: BigDecimal, itemBeingFlaggedType: String, threshold: Long, appKey: String, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], itemBeingFlaggedTypeQuery: QueryParam[String], thresholdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[CountResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CountResponse] = jsonOf[CountResponse]

    val path = "/api/{version}/flag/threshold/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("itemBeingFlaggedType", Some(itemBeingFlaggedTypeQuery.toParamString(itemBeingFlaggedType))), ("threshold", Some(thresholdQuery.toParamString(threshold))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CountResponse](req)

    } yield resp
  }

}

class HttpServiceFlagApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createFlag(version: BigDecimal, flagableType: String, flagableId: Long, deviceId: String, accountId: Long, flagDescription: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], flagableTypeQuery: QueryParam[String], flagableIdQuery: QueryParam[Long], flagDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/flag/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("flagableType", Some(flagableTypeQuery.toParamString(flagableType))), ("flagableId", Some(flagableIdQuery.toParamString(flagableId))), ("flagDescription", Some(flagDescriptionQuery.toParamString(flagDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteFlag(version: BigDecimal, deviceId: String, accountId: Long, itemBeingFlaggedType: String, itemBeingFlaggedId: Long, flagableType: String, flagableId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], itemBeingFlaggedTypeQuery: QueryParam[String], itemBeingFlaggedIdQuery: QueryParam[Long], flagableTypeQuery: QueryParam[String], flagableIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/flag/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("itemBeingFlaggedType", Some(itemBeingFlaggedTypeQuery.toParamString(itemBeingFlaggedType))), ("itemBeingFlaggedId", Some(itemBeingFlaggedIdQuery.toParamString(itemBeingFlaggedId))), ("flagableType", Some(flagableTypeQuery.toParamString(flagableType))), ("flagableId", Some(flagableIdQuery.toParamString(flagableId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getFlag(version: BigDecimal, flagableType: String, flagableId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], flagableTypeQuery: QueryParam[String], flagableIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[FlagResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[FlagResponse] = jsonOf[FlagResponse]

    val path = "/api/{version}/flag/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("flagableType", Some(flagableTypeQuery.toParamString(flagableType))), ("flagableId", Some(flagableIdQuery.toParamString(flagableId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[FlagResponse](req)

    } yield resp
  }

  def getFlagThreshold(version: BigDecimal, itemBeingFlaggedType: String, appKey: String)(implicit itemBeingFlaggedTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[CountResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CountResponse] = jsonOf[CountResponse]

    val path = "/api/{version}/flag/threshold/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("itemBeingFlaggedType", Some(itemBeingFlaggedTypeQuery.toParamString(itemBeingFlaggedType))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CountResponse](req)

    } yield resp
  }

  def updateFlagThreshold(version: BigDecimal, itemBeingFlaggedType: String, threshold: Long, appKey: String, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], itemBeingFlaggedTypeQuery: QueryParam[String], thresholdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[CountResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CountResponse] = jsonOf[CountResponse]

    val path = "/api/{version}/flag/threshold/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("itemBeingFlaggedType", Some(itemBeingFlaggedTypeQuery.toParamString(itemBeingFlaggedType))), ("threshold", Some(thresholdQuery.toParamString(threshold))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CountResponse](req)

    } yield resp
  }

}
