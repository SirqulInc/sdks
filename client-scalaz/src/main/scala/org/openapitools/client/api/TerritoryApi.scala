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
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.TerritoryResponse

object TerritoryApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createTerritory(host: String, version: BigDecimal, accountId: Long, name: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TerritoryResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TerritoryResponse] = jsonOf[TerritoryResponse]

    val path = "/api/{version}/territory/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TerritoryResponse](req)

    } yield resp
  }

  def deleteTerritory(host: String, version: BigDecimal, accountId: Long, territoryId: Long)(implicit accountIdQuery: QueryParam[Long], territoryIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/territory/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("territoryId", Some(territoryIdQuery.toParamString(territoryId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getTerritory(host: String, version: BigDecimal, territoryId: Long)(implicit territoryIdQuery: QueryParam[Long]): Task[TerritoryResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TerritoryResponse] = jsonOf[TerritoryResponse]

    val path = "/api/{version}/territory/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("territoryId", Some(territoryIdQuery.toParamString(territoryId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TerritoryResponse](req)

    } yield resp
  }

  def searchTerritories(host: String, version: BigDecimal, sortField: String, descending: Boolean, keyword: String, start: Integer, limit: Integer)(implicit keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean]): Task[List[TerritoryResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[TerritoryResponse]] = jsonOf[List[TerritoryResponse]]

    val path = "/api/{version}/territory/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[TerritoryResponse]](req)

    } yield resp
  }

  def updateTerritory(host: String, version: BigDecimal, accountId: Long, territoryId: Long, name: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], territoryIdQuery: QueryParam[Long], nameQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TerritoryResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TerritoryResponse] = jsonOf[TerritoryResponse]

    val path = "/api/{version}/territory/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("territoryId", Some(territoryIdQuery.toParamString(territoryId))), ("name", Some(nameQuery.toParamString(name))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TerritoryResponse](req)

    } yield resp
  }

}

class HttpServiceTerritoryApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createTerritory(version: BigDecimal, accountId: Long, name: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TerritoryResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TerritoryResponse] = jsonOf[TerritoryResponse]

    val path = "/api/{version}/territory/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TerritoryResponse](req)

    } yield resp
  }

  def deleteTerritory(version: BigDecimal, accountId: Long, territoryId: Long)(implicit accountIdQuery: QueryParam[Long], territoryIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/territory/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("territoryId", Some(territoryIdQuery.toParamString(territoryId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getTerritory(version: BigDecimal, territoryId: Long)(implicit territoryIdQuery: QueryParam[Long]): Task[TerritoryResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TerritoryResponse] = jsonOf[TerritoryResponse]

    val path = "/api/{version}/territory/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("territoryId", Some(territoryIdQuery.toParamString(territoryId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TerritoryResponse](req)

    } yield resp
  }

  def searchTerritories(version: BigDecimal, sortField: String, descending: Boolean, keyword: String, start: Integer, limit: Integer)(implicit keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean]): Task[List[TerritoryResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[TerritoryResponse]] = jsonOf[List[TerritoryResponse]]

    val path = "/api/{version}/territory/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[TerritoryResponse]](req)

    } yield resp
  }

  def updateTerritory(version: BigDecimal, accountId: Long, territoryId: Long, name: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], territoryIdQuery: QueryParam[Long], nameQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TerritoryResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TerritoryResponse] = jsonOf[TerritoryResponse]

    val path = "/api/{version}/territory/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("territoryId", Some(territoryIdQuery.toParamString(territoryId))), ("name", Some(nameQuery.toParamString(name))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TerritoryResponse](req)

    } yield resp
  }

}
