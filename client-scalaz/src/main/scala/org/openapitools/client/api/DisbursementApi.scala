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
import org.openapitools.client.api.DisbursementResponse

object DisbursementApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def checkDisbursements(host: String, version: BigDecimal, disbursementId: Long)(implicit disbursementIdQuery: QueryParam[Long]): Task[DisbursementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[DisbursementResponse] = jsonOf[DisbursementResponse]

    val path = "/api/{version}/disbursement/check".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("disbursementId", Some(disbursementIdQuery.toParamString(disbursementId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[DisbursementResponse](req)

    } yield resp
  }

  def createDisbursement(host: String, version: BigDecimal, accountId: Long, receiverAccountId: Long, originalSenderAccountId: Long, amount: BigDecimal, provider: String, scheduledDate: Long, title: String, comment: String, externalId: String, introspectionParams: String)(implicit accountIdQuery: QueryParam[Long], receiverAccountIdQuery: QueryParam[Long], originalSenderAccountIdQuery: QueryParam[Long], amountQuery: QueryParam[BigDecimal], providerQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], titleQuery: QueryParam[String], commentQuery: QueryParam[String], externalIdQuery: QueryParam[String], introspectionParamsQuery: QueryParam[String]): Task[DisbursementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[DisbursementResponse] = jsonOf[DisbursementResponse]

    val path = "/api/{version}/disbursement/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("receiverAccountId", Some(receiverAccountIdQuery.toParamString(receiverAccountId))), ("originalSenderAccountId", Some(originalSenderAccountIdQuery.toParamString(originalSenderAccountId))), ("amount", Some(amountQuery.toParamString(amount))), ("provider", Some(providerQuery.toParamString(provider))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("title", Some(titleQuery.toParamString(title))), ("comment", Some(commentQuery.toParamString(comment))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("introspectionParams", Some(introspectionParamsQuery.toParamString(introspectionParams))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[DisbursementResponse](req)

    } yield resp
  }

  def getDisbursement(host: String, version: BigDecimal, accountId: Long, disbursementId: Long)(implicit accountIdQuery: QueryParam[Long], disbursementIdQuery: QueryParam[Long]): Task[DisbursementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[DisbursementResponse] = jsonOf[DisbursementResponse]

    val path = "/api/{version}/disbursement/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("disbursementId", Some(disbursementIdQuery.toParamString(disbursementId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[DisbursementResponse](req)

    } yield resp
  }

  def searchDisbursements(host: String, version: BigDecimal, accountId: Long, receiverAccountId: Long, statuses: String, providers: String, beforeDate: Long, afterDate: Long, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = false, externalId: String)(implicit accountIdQuery: QueryParam[Long], receiverAccountIdQuery: QueryParam[Long], statusesQuery: QueryParam[String], providersQuery: QueryParam[String], beforeDateQuery: QueryParam[Long], afterDateQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], externalIdQuery: QueryParam[String]): Task[List[DisbursementResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[DisbursementResponse]] = jsonOf[List[DisbursementResponse]]

    val path = "/api/{version}/disbursement/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("receiverAccountId", Some(receiverAccountIdQuery.toParamString(receiverAccountId))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("providers", Some(providersQuery.toParamString(providers))), ("beforeDate", Some(beforeDateQuery.toParamString(beforeDate))), ("afterDate", Some(afterDateQuery.toParamString(afterDate))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("externalId", Some(externalIdQuery.toParamString(externalId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[DisbursementResponse]](req)

    } yield resp
  }

  def updateDisbursement(host: String, version: BigDecimal, accountId: Long, disbursementId: Long, amount: BigDecimal, provider: String, scheduledDate: Long, title: String, comment: String, externalId: String, retry: Boolean, introspectionParams: String)(implicit accountIdQuery: QueryParam[Long], disbursementIdQuery: QueryParam[Long], amountQuery: QueryParam[BigDecimal], providerQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], titleQuery: QueryParam[String], commentQuery: QueryParam[String], externalIdQuery: QueryParam[String], retryQuery: QueryParam[Boolean], introspectionParamsQuery: QueryParam[String]): Task[DisbursementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[DisbursementResponse] = jsonOf[DisbursementResponse]

    val path = "/api/{version}/disbursement/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("disbursementId", Some(disbursementIdQuery.toParamString(disbursementId))), ("amount", Some(amountQuery.toParamString(amount))), ("provider", Some(providerQuery.toParamString(provider))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("title", Some(titleQuery.toParamString(title))), ("comment", Some(commentQuery.toParamString(comment))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("retry", Some(retryQuery.toParamString(retry))), ("introspectionParams", Some(introspectionParamsQuery.toParamString(introspectionParams))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[DisbursementResponse](req)

    } yield resp
  }

}

class HttpServiceDisbursementApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def checkDisbursements(version: BigDecimal, disbursementId: Long)(implicit disbursementIdQuery: QueryParam[Long]): Task[DisbursementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[DisbursementResponse] = jsonOf[DisbursementResponse]

    val path = "/api/{version}/disbursement/check".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("disbursementId", Some(disbursementIdQuery.toParamString(disbursementId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[DisbursementResponse](req)

    } yield resp
  }

  def createDisbursement(version: BigDecimal, accountId: Long, receiverAccountId: Long, originalSenderAccountId: Long, amount: BigDecimal, provider: String, scheduledDate: Long, title: String, comment: String, externalId: String, introspectionParams: String)(implicit accountIdQuery: QueryParam[Long], receiverAccountIdQuery: QueryParam[Long], originalSenderAccountIdQuery: QueryParam[Long], amountQuery: QueryParam[BigDecimal], providerQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], titleQuery: QueryParam[String], commentQuery: QueryParam[String], externalIdQuery: QueryParam[String], introspectionParamsQuery: QueryParam[String]): Task[DisbursementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[DisbursementResponse] = jsonOf[DisbursementResponse]

    val path = "/api/{version}/disbursement/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("receiverAccountId", Some(receiverAccountIdQuery.toParamString(receiverAccountId))), ("originalSenderAccountId", Some(originalSenderAccountIdQuery.toParamString(originalSenderAccountId))), ("amount", Some(amountQuery.toParamString(amount))), ("provider", Some(providerQuery.toParamString(provider))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("title", Some(titleQuery.toParamString(title))), ("comment", Some(commentQuery.toParamString(comment))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("introspectionParams", Some(introspectionParamsQuery.toParamString(introspectionParams))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[DisbursementResponse](req)

    } yield resp
  }

  def getDisbursement(version: BigDecimal, accountId: Long, disbursementId: Long)(implicit accountIdQuery: QueryParam[Long], disbursementIdQuery: QueryParam[Long]): Task[DisbursementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[DisbursementResponse] = jsonOf[DisbursementResponse]

    val path = "/api/{version}/disbursement/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("disbursementId", Some(disbursementIdQuery.toParamString(disbursementId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[DisbursementResponse](req)

    } yield resp
  }

  def searchDisbursements(version: BigDecimal, accountId: Long, receiverAccountId: Long, statuses: String, providers: String, beforeDate: Long, afterDate: Long, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = false, externalId: String)(implicit accountIdQuery: QueryParam[Long], receiverAccountIdQuery: QueryParam[Long], statusesQuery: QueryParam[String], providersQuery: QueryParam[String], beforeDateQuery: QueryParam[Long], afterDateQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], externalIdQuery: QueryParam[String]): Task[List[DisbursementResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[DisbursementResponse]] = jsonOf[List[DisbursementResponse]]

    val path = "/api/{version}/disbursement/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("receiverAccountId", Some(receiverAccountIdQuery.toParamString(receiverAccountId))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("providers", Some(providersQuery.toParamString(providers))), ("beforeDate", Some(beforeDateQuery.toParamString(beforeDate))), ("afterDate", Some(afterDateQuery.toParamString(afterDate))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("externalId", Some(externalIdQuery.toParamString(externalId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[DisbursementResponse]](req)

    } yield resp
  }

  def updateDisbursement(version: BigDecimal, accountId: Long, disbursementId: Long, amount: BigDecimal, provider: String, scheduledDate: Long, title: String, comment: String, externalId: String, retry: Boolean, introspectionParams: String)(implicit accountIdQuery: QueryParam[Long], disbursementIdQuery: QueryParam[Long], amountQuery: QueryParam[BigDecimal], providerQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], titleQuery: QueryParam[String], commentQuery: QueryParam[String], externalIdQuery: QueryParam[String], retryQuery: QueryParam[Boolean], introspectionParamsQuery: QueryParam[String]): Task[DisbursementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[DisbursementResponse] = jsonOf[DisbursementResponse]

    val path = "/api/{version}/disbursement/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("disbursementId", Some(disbursementIdQuery.toParamString(disbursementId))), ("amount", Some(amountQuery.toParamString(amount))), ("provider", Some(providerQuery.toParamString(provider))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("title", Some(titleQuery.toParamString(title))), ("comment", Some(commentQuery.toParamString(comment))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("retry", Some(retryQuery.toParamString(retry))), ("introspectionParams", Some(introspectionParamsQuery.toParamString(introspectionParams))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[DisbursementResponse](req)

    } yield resp
  }

}
