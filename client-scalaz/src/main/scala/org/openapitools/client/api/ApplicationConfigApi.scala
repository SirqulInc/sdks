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

import org.openapitools.client.api.ApplicationConfigResponse
import org.openapitools.client.api.SirqulResponse

object ApplicationConfigApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createApplicationConfig(host: String, accountId: Long, appKey: String, configVersion: String, assetId: Long, retailerId: Long, retailerLocationId: Long, udid: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], configVersionQuery: QueryParam[String], assetIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], udidQuery: QueryParam[String]): Task[ApplicationConfigResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationConfigResponse] = jsonOf[ApplicationConfigResponse]

    val path = "/appconfig/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("configVersion", Some(configVersionQuery.toParamString(configVersion))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("udid", Some(udidQuery.toParamString(udid))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationConfigResponse](req)

    } yield resp
  }

  def deleteApplicationConfig(host: String, accountId: Long, configId: Long)(implicit accountIdQuery: QueryParam[Long], configIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/appconfig/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("configId", Some(configIdQuery.toParamString(configId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getApplicationConfig(host: String, accountId: Long, configId: Long)(implicit accountIdQuery: QueryParam[Long], configIdQuery: QueryParam[Long]): Task[ApplicationConfigResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationConfigResponse] = jsonOf[ApplicationConfigResponse]

    val path = "/appconfig/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("configId", Some(configIdQuery.toParamString(configId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationConfigResponse](req)

    } yield resp
  }

  def getApplicationConfigByConfigVersion(host: String, appKey: String, configVersion: String, retailerId: Long, retailerLocationId: Long, udid: String, allowOlderVersions: Boolean = false)(implicit appKeyQuery: QueryParam[String], configVersionQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], udidQuery: QueryParam[String], allowOlderVersionsQuery: QueryParam[Boolean]): Task[ApplicationConfigResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationConfigResponse] = jsonOf[ApplicationConfigResponse]

    val path = "/appconfig/getbyversion"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("configVersion", Some(configVersionQuery.toParamString(configVersion))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("udid", Some(udidQuery.toParamString(udid))), ("allowOlderVersions", Some(allowOlderVersionsQuery.toParamString(allowOlderVersions))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationConfigResponse](req)

    } yield resp
  }

  def searchApplicationConfig(host: String, accountId: Long, appKey: String, retailerId: Long, retailerLocationId: Long, udid: String, configVersion: String, sortField: String = CONFIG_VERSION_INDEX, descending: Boolean = true, start: Integer = 0, limit: Integer = 20)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], udidQuery: QueryParam[String], configVersionQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ApplicationConfigResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ApplicationConfigResponse]] = jsonOf[List[ApplicationConfigResponse]]

    val path = "/appconfig/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("udid", Some(udidQuery.toParamString(udid))), ("configVersion", Some(configVersionQuery.toParamString(configVersion))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ApplicationConfigResponse]](req)

    } yield resp
  }

  def updateApplicationConfig(host: String, accountId: Long, configId: Long, appKey: String, configVersion: String, assetId: Long, retailerId: Long, retailerLocationId: Long, udid: String)(implicit accountIdQuery: QueryParam[Long], configIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], configVersionQuery: QueryParam[String], assetIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], udidQuery: QueryParam[String]): Task[ApplicationConfigResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationConfigResponse] = jsonOf[ApplicationConfigResponse]

    val path = "/appconfig/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("configId", Some(configIdQuery.toParamString(configId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("configVersion", Some(configVersionQuery.toParamString(configVersion))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("udid", Some(udidQuery.toParamString(udid))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationConfigResponse](req)

    } yield resp
  }

}

class HttpServiceApplicationConfigApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createApplicationConfig(accountId: Long, appKey: String, configVersion: String, assetId: Long, retailerId: Long, retailerLocationId: Long, udid: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], configVersionQuery: QueryParam[String], assetIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], udidQuery: QueryParam[String]): Task[ApplicationConfigResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationConfigResponse] = jsonOf[ApplicationConfigResponse]

    val path = "/appconfig/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("configVersion", Some(configVersionQuery.toParamString(configVersion))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("udid", Some(udidQuery.toParamString(udid))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationConfigResponse](req)

    } yield resp
  }

  def deleteApplicationConfig(accountId: Long, configId: Long)(implicit accountIdQuery: QueryParam[Long], configIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/appconfig/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("configId", Some(configIdQuery.toParamString(configId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getApplicationConfig(accountId: Long, configId: Long)(implicit accountIdQuery: QueryParam[Long], configIdQuery: QueryParam[Long]): Task[ApplicationConfigResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationConfigResponse] = jsonOf[ApplicationConfigResponse]

    val path = "/appconfig/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("configId", Some(configIdQuery.toParamString(configId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationConfigResponse](req)

    } yield resp
  }

  def getApplicationConfigByConfigVersion(appKey: String, configVersion: String, retailerId: Long, retailerLocationId: Long, udid: String, allowOlderVersions: Boolean = false)(implicit appKeyQuery: QueryParam[String], configVersionQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], udidQuery: QueryParam[String], allowOlderVersionsQuery: QueryParam[Boolean]): Task[ApplicationConfigResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationConfigResponse] = jsonOf[ApplicationConfigResponse]

    val path = "/appconfig/getbyversion"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("configVersion", Some(configVersionQuery.toParamString(configVersion))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("udid", Some(udidQuery.toParamString(udid))), ("allowOlderVersions", Some(allowOlderVersionsQuery.toParamString(allowOlderVersions))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationConfigResponse](req)

    } yield resp
  }

  def searchApplicationConfig(accountId: Long, appKey: String, retailerId: Long, retailerLocationId: Long, udid: String, configVersion: String, sortField: String = CONFIG_VERSION_INDEX, descending: Boolean = true, start: Integer = 0, limit: Integer = 20)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], udidQuery: QueryParam[String], configVersionQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ApplicationConfigResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ApplicationConfigResponse]] = jsonOf[List[ApplicationConfigResponse]]

    val path = "/appconfig/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("udid", Some(udidQuery.toParamString(udid))), ("configVersion", Some(configVersionQuery.toParamString(configVersion))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ApplicationConfigResponse]](req)

    } yield resp
  }

  def updateApplicationConfig(accountId: Long, configId: Long, appKey: String, configVersion: String, assetId: Long, retailerId: Long, retailerLocationId: Long, udid: String)(implicit accountIdQuery: QueryParam[Long], configIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], configVersionQuery: QueryParam[String], assetIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], udidQuery: QueryParam[String]): Task[ApplicationConfigResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationConfigResponse] = jsonOf[ApplicationConfigResponse]

    val path = "/appconfig/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("configId", Some(configIdQuery.toParamString(configId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("configVersion", Some(configVersionQuery.toParamString(configVersion))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("udid", Some(udidQuery.toParamString(udid))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationConfigResponse](req)

    } yield resp
  }

}
