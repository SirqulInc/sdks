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
import org.openapitools.client.api.FilterResponse
import org.openapitools.client.api.FilterTreeResponse
import org.openapitools.client.api.SirqulResponse

object FilterApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createFilter(host: String, version: BigDecimal, accountId: Long, name: String, appKey: String, parentFilterId: Long, description: String, externalId: String, externalType: String, active: Boolean, metaData: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], parentFilterIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], externalIdQuery: QueryParam[String], externalTypeQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String]): Task[FilterTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[FilterTreeResponse] = jsonOf[FilterTreeResponse]

    val path = "/api/{version}/filter/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("parentFilterId", Some(parentFilterIdQuery.toParamString(parentFilterId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[FilterTreeResponse](req)

    } yield resp
  }

  def deleteFilter(host: String, version: BigDecimal, accountId: Long, filterId: Long)(implicit accountIdQuery: QueryParam[Long], filterIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/filter/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("filterId", Some(filterIdQuery.toParamString(filterId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getFilter(host: String, version: BigDecimal, filterId: Long)(implicit filterIdQuery: QueryParam[Long]): Task[FilterTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[FilterTreeResponse] = jsonOf[FilterTreeResponse]

    val path = "/api/{version}/filter/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("filterId", Some(filterIdQuery.toParamString(filterId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[FilterTreeResponse](req)

    } yield resp
  }

  def searchFilters(host: String, version: BigDecimal, accountId: Long, keyword: String, appKey: String, responseGroup: String, rootOnly: Boolean, sortField: String = DISPLAY, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], appKeyQuery: QueryParam[String], responseGroupQuery: QueryParam[String], rootOnlyQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[FilterResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[FilterResponse]] = jsonOf[List[FilterResponse]]

    val path = "/api/{version}/filter/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("responseGroup", Some(responseGroupQuery.toParamString(responseGroup))), ("rootOnly", Some(rootOnlyQuery.toParamString(rootOnly))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[FilterResponse]](req)

    } yield resp
  }

  def updateFilter(host: String, version: BigDecimal, accountId: Long, filterId: Long, parentFilterId: Long, name: String, description: String, externalId: String, externalType: String, active: Boolean, metaData: String)(implicit accountIdQuery: QueryParam[Long], filterIdQuery: QueryParam[Long], parentFilterIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], externalIdQuery: QueryParam[String], externalTypeQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String]): Task[FilterTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[FilterTreeResponse] = jsonOf[FilterTreeResponse]

    val path = "/api/{version}/filter/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("filterId", Some(filterIdQuery.toParamString(filterId))), ("parentFilterId", Some(parentFilterIdQuery.toParamString(parentFilterId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[FilterTreeResponse](req)

    } yield resp
  }

}

class HttpServiceFilterApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createFilter(version: BigDecimal, accountId: Long, name: String, appKey: String, parentFilterId: Long, description: String, externalId: String, externalType: String, active: Boolean, metaData: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], parentFilterIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], externalIdQuery: QueryParam[String], externalTypeQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String]): Task[FilterTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[FilterTreeResponse] = jsonOf[FilterTreeResponse]

    val path = "/api/{version}/filter/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("parentFilterId", Some(parentFilterIdQuery.toParamString(parentFilterId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[FilterTreeResponse](req)

    } yield resp
  }

  def deleteFilter(version: BigDecimal, accountId: Long, filterId: Long)(implicit accountIdQuery: QueryParam[Long], filterIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/filter/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("filterId", Some(filterIdQuery.toParamString(filterId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getFilter(version: BigDecimal, filterId: Long)(implicit filterIdQuery: QueryParam[Long]): Task[FilterTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[FilterTreeResponse] = jsonOf[FilterTreeResponse]

    val path = "/api/{version}/filter/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("filterId", Some(filterIdQuery.toParamString(filterId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[FilterTreeResponse](req)

    } yield resp
  }

  def searchFilters(version: BigDecimal, accountId: Long, keyword: String, appKey: String, responseGroup: String, rootOnly: Boolean, sortField: String = DISPLAY, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], appKeyQuery: QueryParam[String], responseGroupQuery: QueryParam[String], rootOnlyQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[FilterResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[FilterResponse]] = jsonOf[List[FilterResponse]]

    val path = "/api/{version}/filter/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("responseGroup", Some(responseGroupQuery.toParamString(responseGroup))), ("rootOnly", Some(rootOnlyQuery.toParamString(rootOnly))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[FilterResponse]](req)

    } yield resp
  }

  def updateFilter(version: BigDecimal, accountId: Long, filterId: Long, parentFilterId: Long, name: String, description: String, externalId: String, externalType: String, active: Boolean, metaData: String)(implicit accountIdQuery: QueryParam[Long], filterIdQuery: QueryParam[Long], parentFilterIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], externalIdQuery: QueryParam[String], externalTypeQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String]): Task[FilterTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[FilterTreeResponse] = jsonOf[FilterTreeResponse]

    val path = "/api/{version}/filter/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("filterId", Some(filterIdQuery.toParamString(filterId))), ("parentFilterId", Some(parentFilterIdQuery.toParamString(parentFilterId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[FilterTreeResponse](req)

    } yield resp
  }

}
