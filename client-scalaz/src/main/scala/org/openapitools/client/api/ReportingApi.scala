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
import org.openapitools.client.api.RegionLegSummary
import org.openapitools.client.api.ReportBatchResponse
import org.openapitools.client.api.ReportRegionLegSummaryBatchResponse
import org.openapitools.client.api.ReportResponse
import org.openapitools.client.api.SirqulResponse

object ReportingApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createBatch(host: String, version: BigDecimal, accountId: Long, status: String, previewLimit: Integer, appKey: String, endpoint: String, parameters: String, name: String, startDate: Long, endDate: Long, description: String, pageUrl: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], statusQuery: QueryParam[String], endpointQuery: QueryParam[String], parametersQuery: QueryParam[String], nameQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], descriptionQuery: QueryParam[String], previewLimitQuery: QueryParam[Integer], pageUrlQuery: QueryParam[String]): Task[ReportBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ReportBatchResponse] = jsonOf[ReportBatchResponse]

    val path = "/api/{version}/report/batch/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("status", Some(statusQuery.toParamString(status))), ("endpoint", Some(endpointQuery.toParamString(endpoint))), ("parameters", Some(parametersQuery.toParamString(parameters))), ("name", Some(nameQuery.toParamString(name))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("description", Some(descriptionQuery.toParamString(description))), ("previewLimit", Some(previewLimitQuery.toParamString(previewLimit))), ("pageUrl", Some(pageUrlQuery.toParamString(pageUrl))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ReportBatchResponse](req)

    } yield resp
  }

  def createRegionLegSummaryBatch(host: String, version: BigDecimal, body: List[RegionLegSummary]): Task[ReportRegionLegSummaryBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ReportRegionLegSummaryBatchResponse] = jsonOf[ReportRegionLegSummaryBatchResponse]

    val path = "/api/{version}/report/region/summary/batch".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[ReportRegionLegSummaryBatchResponse](req)

    } yield resp
  }

  def deleteBatch(host: String, version: BigDecimal, accountId: Long, batchId: Long)(implicit accountIdQuery: QueryParam[Long], batchIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/report/batch/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("batchId", Some(batchIdQuery.toParamString(batchId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getReportBatch(host: String, version: BigDecimal, accountId: Long, batchId: Long, allResults: Boolean)(implicit accountIdQuery: QueryParam[Long], batchIdQuery: QueryParam[Long], allResultsQuery: QueryParam[Boolean]): Task[ReportBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ReportBatchResponse] = jsonOf[ReportBatchResponse]

    val path = "/api/{version}/report/batch/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("batchId", Some(batchIdQuery.toParamString(batchId))), ("allResults", Some(allResultsQuery.toParamString(allResults))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ReportBatchResponse](req)

    } yield resp
  }

  def runReport(host: String, version: BigDecimal, desc: Boolean, accountId: Long, query: String, parameters: String, order: String, start: Long, limit: Long, responseFormat: String)(implicit accountIdQuery: QueryParam[Long], queryQuery: QueryParam[String], parametersQuery: QueryParam[String], orderQuery: QueryParam[String], descQuery: QueryParam[Boolean], startQuery: QueryParam[Long], limitQuery: QueryParam[Long], responseFormatQuery: QueryParam[String]): Task[ReportResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ReportResponse] = jsonOf[ReportResponse]

    val path = "/api/{version}/report/run".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("query", Some(queryQuery.toParamString(query))), ("parameters", Some(parametersQuery.toParamString(parameters))), ("order", Some(orderQuery.toParamString(order))), ("desc", Some(descQuery.toParamString(desc))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ReportResponse](req)

    } yield resp
  }

  def searchBatch(host: String, version: BigDecimal, accountId: Long, start: Integer, limit: Integer, names: String, appKey: String, status: String, globalAppSearch: Boolean, startDate: Long, endDate: Long)(implicit accountIdQuery: QueryParam[Long], namesQuery: QueryParam[String], appKeyQuery: QueryParam[String], statusQuery: QueryParam[String], globalAppSearchQuery: QueryParam[Boolean], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ReportBatchResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ReportBatchResponse]] = jsonOf[List[ReportBatchResponse]]

    val path = "/api/{version}/report/batch/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("names", Some(namesQuery.toParamString(names))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("status", Some(statusQuery.toParamString(status))), ("globalAppSearch", Some(globalAppSearchQuery.toParamString(globalAppSearch))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ReportBatchResponse]](req)

    } yield resp
  }

}

class HttpServiceReportingApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createBatch(version: BigDecimal, accountId: Long, status: String, previewLimit: Integer, appKey: String, endpoint: String, parameters: String, name: String, startDate: Long, endDate: Long, description: String, pageUrl: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], statusQuery: QueryParam[String], endpointQuery: QueryParam[String], parametersQuery: QueryParam[String], nameQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], descriptionQuery: QueryParam[String], previewLimitQuery: QueryParam[Integer], pageUrlQuery: QueryParam[String]): Task[ReportBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ReportBatchResponse] = jsonOf[ReportBatchResponse]

    val path = "/api/{version}/report/batch/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("status", Some(statusQuery.toParamString(status))), ("endpoint", Some(endpointQuery.toParamString(endpoint))), ("parameters", Some(parametersQuery.toParamString(parameters))), ("name", Some(nameQuery.toParamString(name))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("description", Some(descriptionQuery.toParamString(description))), ("previewLimit", Some(previewLimitQuery.toParamString(previewLimit))), ("pageUrl", Some(pageUrlQuery.toParamString(pageUrl))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ReportBatchResponse](req)

    } yield resp
  }

  def createRegionLegSummaryBatch(version: BigDecimal, body: List[RegionLegSummary]): Task[ReportRegionLegSummaryBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ReportRegionLegSummaryBatchResponse] = jsonOf[ReportRegionLegSummaryBatchResponse]

    val path = "/api/{version}/report/region/summary/batch".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[ReportRegionLegSummaryBatchResponse](req)

    } yield resp
  }

  def deleteBatch(version: BigDecimal, accountId: Long, batchId: Long)(implicit accountIdQuery: QueryParam[Long], batchIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/report/batch/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("batchId", Some(batchIdQuery.toParamString(batchId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getReportBatch(version: BigDecimal, accountId: Long, batchId: Long, allResults: Boolean)(implicit accountIdQuery: QueryParam[Long], batchIdQuery: QueryParam[Long], allResultsQuery: QueryParam[Boolean]): Task[ReportBatchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ReportBatchResponse] = jsonOf[ReportBatchResponse]

    val path = "/api/{version}/report/batch/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("batchId", Some(batchIdQuery.toParamString(batchId))), ("allResults", Some(allResultsQuery.toParamString(allResults))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ReportBatchResponse](req)

    } yield resp
  }

  def runReport(version: BigDecimal, desc: Boolean, accountId: Long, query: String, parameters: String, order: String, start: Long, limit: Long, responseFormat: String)(implicit accountIdQuery: QueryParam[Long], queryQuery: QueryParam[String], parametersQuery: QueryParam[String], orderQuery: QueryParam[String], descQuery: QueryParam[Boolean], startQuery: QueryParam[Long], limitQuery: QueryParam[Long], responseFormatQuery: QueryParam[String]): Task[ReportResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ReportResponse] = jsonOf[ReportResponse]

    val path = "/api/{version}/report/run".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("query", Some(queryQuery.toParamString(query))), ("parameters", Some(parametersQuery.toParamString(parameters))), ("order", Some(orderQuery.toParamString(order))), ("desc", Some(descQuery.toParamString(desc))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ReportResponse](req)

    } yield resp
  }

  def searchBatch(version: BigDecimal, accountId: Long, start: Integer, limit: Integer, names: String, appKey: String, status: String, globalAppSearch: Boolean, startDate: Long, endDate: Long)(implicit accountIdQuery: QueryParam[Long], namesQuery: QueryParam[String], appKeyQuery: QueryParam[String], statusQuery: QueryParam[String], globalAppSearchQuery: QueryParam[Boolean], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ReportBatchResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ReportBatchResponse]] = jsonOf[List[ReportBatchResponse]]

    val path = "/api/{version}/report/batch/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("names", Some(namesQuery.toParamString(names))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("status", Some(statusQuery.toParamString(status))), ("globalAppSearch", Some(globalAppSearchQuery.toParamString(globalAppSearch))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ReportBatchResponse]](req)

    } yield resp
  }

}
