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
import org.openapitools.client.api.GameResponse
import org.openapitools.client.api.SirqulResponse

object GameApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createGame(host: String, version: BigDecimal, accountId: Long, appKey: String, title: String, description: String, metaData: String, packIds: String, includeGameData: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String], packIdsQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean]): Task[GameResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameResponse] = jsonOf[GameResponse]

    val path = "/api/{version}/game/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("packIds", Some(packIdsQuery.toParamString(packIds))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameResponse](req)

    } yield resp
  }

  def deleteGame(host: String, version: BigDecimal, accountId: Long, gameId: Long)(implicit accountIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/game/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameId", Some(gameIdQuery.toParamString(gameId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getGame(host: String, version: BigDecimal, accountId: Long, gameId: Long, includeGameData: Boolean)(implicit accountIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], includeGameDataQuery: QueryParam[Boolean]): Task[GameResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameResponse] = jsonOf[GameResponse]

    val path = "/api/{version}/game/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameResponse](req)

    } yield resp
  }

  def searchGames(host: String, version: BigDecimal, accountId: Long, appKey: String, start: Integer, limit: Integer, keyword: String, appVersion: String, includeGameData: Boolean, includeInactive: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], appVersionQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean], includeInactiveQuery: QueryParam[Boolean]): Task[GameResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameResponse] = jsonOf[GameResponse]

    val path = "/api/{version}/game/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameResponse](req)

    } yield resp
  }

  def updateGame(host: String, version: BigDecimal, accountId: Long, gameId: Long, appKey: String, title: String, description: String, metaData: String, packIds: String, includeGameData: Boolean)(implicit accountIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String], packIdsQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean]): Task[GameResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameResponse] = jsonOf[GameResponse]

    val path = "/api/{version}/game/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("packIds", Some(packIdsQuery.toParamString(packIds))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameResponse](req)

    } yield resp
  }

}

class HttpServiceGameApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createGame(version: BigDecimal, accountId: Long, appKey: String, title: String, description: String, metaData: String, packIds: String, includeGameData: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String], packIdsQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean]): Task[GameResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameResponse] = jsonOf[GameResponse]

    val path = "/api/{version}/game/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("packIds", Some(packIdsQuery.toParamString(packIds))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameResponse](req)

    } yield resp
  }

  def deleteGame(version: BigDecimal, accountId: Long, gameId: Long)(implicit accountIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/game/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameId", Some(gameIdQuery.toParamString(gameId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getGame(version: BigDecimal, accountId: Long, gameId: Long, includeGameData: Boolean)(implicit accountIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], includeGameDataQuery: QueryParam[Boolean]): Task[GameResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameResponse] = jsonOf[GameResponse]

    val path = "/api/{version}/game/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameResponse](req)

    } yield resp
  }

  def searchGames(version: BigDecimal, accountId: Long, appKey: String, start: Integer, limit: Integer, keyword: String, appVersion: String, includeGameData: Boolean, includeInactive: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], appVersionQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean], includeInactiveQuery: QueryParam[Boolean]): Task[GameResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameResponse] = jsonOf[GameResponse]

    val path = "/api/{version}/game/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameResponse](req)

    } yield resp
  }

  def updateGame(version: BigDecimal, accountId: Long, gameId: Long, appKey: String, title: String, description: String, metaData: String, packIds: String, includeGameData: Boolean)(implicit accountIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String], packIdsQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean]): Task[GameResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameResponse] = jsonOf[GameResponse]

    val path = "/api/{version}/game/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("packIds", Some(packIdsQuery.toParamString(packIds))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameResponse](req)

    } yield resp
  }

}
