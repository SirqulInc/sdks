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
import org.openapitools.client.api.CsvImportResponse
import java.io.File
import org.openapitools.client.api.SirqulResponse

object CSVImportApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getStatusCSV(host: String, version: BigDecimal, accountId: Long, batchId: Long, responseGroup: String, start: Long, limit: Long)(implicit accountIdQuery: QueryParam[Long], batchIdQuery: QueryParam[Long], responseGroupQuery: QueryParam[String], startQuery: QueryParam[Long], limitQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/csvimport/batch/status/details".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("batchId", Some(batchIdQuery.toParamString(batchId))), ("responseGroup", Some(responseGroupQuery.toParamString(responseGroup))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def listStatusCSV(host: String, version: BigDecimal, accountId: Long, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[CsvImportResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CsvImportResponse] = jsonOf[CsvImportResponse]

    val path = "/api/{version}/csvimport/batch/list".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CsvImportResponse](req)

    } yield resp
  }

  def statusCSV(host: String, version: BigDecimal, accountId: Long, batchId: Long)(implicit accountIdQuery: QueryParam[Long], batchIdQuery: QueryParam[Long]): Task[CsvImportResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CsvImportResponse] = jsonOf[CsvImportResponse]

    val path = "/api/{version}/csvimport/batch/status".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("batchId", Some(batchIdQuery.toParamString(batchId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CsvImportResponse](req)

    } yield resp
  }

  def uploadCSV(host: String, version: BigDecimal, accountId: Long, uploadType: String, importFile: File, fileFormat: String, appKey: String)(implicit accountIdQuery: QueryParam[Long], uploadTypeQuery: QueryParam[String], importFileQuery: QueryParam[File], appKeyQuery: QueryParam[String], fileFormatQuery: QueryParam[String]): Task[CsvImportResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CsvImportResponse] = jsonOf[CsvImportResponse]

    val path = "/api/{version}/csvimport/upload".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("uploadType", Some(uploadTypeQuery.toParamString(uploadType))), ("importFile", Some(importFileQuery.toParamString(importFile))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("fileFormat", Some(fileFormatQuery.toParamString(fileFormat))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CsvImportResponse](req)

    } yield resp
  }

}

class HttpServiceCSVImportApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getStatusCSV(version: BigDecimal, accountId: Long, batchId: Long, responseGroup: String, start: Long, limit: Long)(implicit accountIdQuery: QueryParam[Long], batchIdQuery: QueryParam[Long], responseGroupQuery: QueryParam[String], startQuery: QueryParam[Long], limitQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/csvimport/batch/status/details".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("batchId", Some(batchIdQuery.toParamString(batchId))), ("responseGroup", Some(responseGroupQuery.toParamString(responseGroup))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def listStatusCSV(version: BigDecimal, accountId: Long, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[CsvImportResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CsvImportResponse] = jsonOf[CsvImportResponse]

    val path = "/api/{version}/csvimport/batch/list".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CsvImportResponse](req)

    } yield resp
  }

  def statusCSV(version: BigDecimal, accountId: Long, batchId: Long)(implicit accountIdQuery: QueryParam[Long], batchIdQuery: QueryParam[Long]): Task[CsvImportResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CsvImportResponse] = jsonOf[CsvImportResponse]

    val path = "/api/{version}/csvimport/batch/status".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("batchId", Some(batchIdQuery.toParamString(batchId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CsvImportResponse](req)

    } yield resp
  }

  def uploadCSV(version: BigDecimal, accountId: Long, uploadType: String, importFile: File, fileFormat: String, appKey: String)(implicit accountIdQuery: QueryParam[Long], uploadTypeQuery: QueryParam[String], importFileQuery: QueryParam[File], appKeyQuery: QueryParam[String], fileFormatQuery: QueryParam[String]): Task[CsvImportResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CsvImportResponse] = jsonOf[CsvImportResponse]

    val path = "/api/{version}/csvimport/upload".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("uploadType", Some(uploadTypeQuery.toParamString(uploadType))), ("importFile", Some(importFileQuery.toParamString(importFile))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("fileFormat", Some(fileFormatQuery.toParamString(fileFormat))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CsvImportResponse](req)

    } yield resp
  }

}
