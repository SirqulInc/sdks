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
import org.openapitools.client.api.BillableEntityResponse
import org.openapitools.client.api.SirqulResponse

object BillableEntityApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createBillableEntity(host: String, version: BigDecimal, deviceId: String, accountId: Long, name: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, businessPhone: String, businessPhoneExt: String, authorizeNetApiKey: String, authorizeNetTransactionKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], authorizeNetApiKeyQuery: QueryParam[String], authorizeNetTransactionKeyQuery: QueryParam[String]): Task[BillableEntityResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BillableEntityResponse] = jsonOf[BillableEntityResponse]

    val path = "/api/{version}/billable/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("authorizeNetApiKey", Some(authorizeNetApiKeyQuery.toParamString(authorizeNetApiKey))), ("authorizeNetTransactionKey", Some(authorizeNetTransactionKeyQuery.toParamString(authorizeNetTransactionKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BillableEntityResponse](req)

    } yield resp
  }

  def deleteBillableEntity(host: String, version: BigDecimal, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/billable/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getBillableEntity(host: String, version: BigDecimal, deviceId: String, accountId: Long, includeCounts: Boolean = false, includePayments: Boolean = true)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], includeCountsQuery: QueryParam[Boolean], includePaymentsQuery: QueryParam[Boolean]): Task[BillableEntityResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BillableEntityResponse] = jsonOf[BillableEntityResponse]

    val path = "/api/{version}/billable/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("includeCounts", Some(includeCountsQuery.toParamString(includeCounts))), ("includePayments", Some(includePaymentsQuery.toParamString(includePayments))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BillableEntityResponse](req)

    } yield resp
  }

  def updateBillableEntity(host: String, version: BigDecimal, deviceId: String, accountId: Long, name: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, businessPhone: String, businessPhoneExt: String, authorizeNetApiKey: String, authorizeNetTransactionKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], authorizeNetApiKeyQuery: QueryParam[String], authorizeNetTransactionKeyQuery: QueryParam[String]): Task[BillableEntityResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BillableEntityResponse] = jsonOf[BillableEntityResponse]

    val path = "/api/{version}/billable/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("authorizeNetApiKey", Some(authorizeNetApiKeyQuery.toParamString(authorizeNetApiKey))), ("authorizeNetTransactionKey", Some(authorizeNetTransactionKeyQuery.toParamString(authorizeNetTransactionKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BillableEntityResponse](req)

    } yield resp
  }

}

class HttpServiceBillableEntityApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createBillableEntity(version: BigDecimal, deviceId: String, accountId: Long, name: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, businessPhone: String, businessPhoneExt: String, authorizeNetApiKey: String, authorizeNetTransactionKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], authorizeNetApiKeyQuery: QueryParam[String], authorizeNetTransactionKeyQuery: QueryParam[String]): Task[BillableEntityResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BillableEntityResponse] = jsonOf[BillableEntityResponse]

    val path = "/api/{version}/billable/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("authorizeNetApiKey", Some(authorizeNetApiKeyQuery.toParamString(authorizeNetApiKey))), ("authorizeNetTransactionKey", Some(authorizeNetTransactionKeyQuery.toParamString(authorizeNetTransactionKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BillableEntityResponse](req)

    } yield resp
  }

  def deleteBillableEntity(version: BigDecimal, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/billable/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getBillableEntity(version: BigDecimal, deviceId: String, accountId: Long, includeCounts: Boolean = false, includePayments: Boolean = true)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], includeCountsQuery: QueryParam[Boolean], includePaymentsQuery: QueryParam[Boolean]): Task[BillableEntityResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BillableEntityResponse] = jsonOf[BillableEntityResponse]

    val path = "/api/{version}/billable/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("includeCounts", Some(includeCountsQuery.toParamString(includeCounts))), ("includePayments", Some(includePaymentsQuery.toParamString(includePayments))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BillableEntityResponse](req)

    } yield resp
  }

  def updateBillableEntity(version: BigDecimal, deviceId: String, accountId: Long, name: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, businessPhone: String, businessPhoneExt: String, authorizeNetApiKey: String, authorizeNetTransactionKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], authorizeNetApiKeyQuery: QueryParam[String], authorizeNetTransactionKeyQuery: QueryParam[String]): Task[BillableEntityResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BillableEntityResponse] = jsonOf[BillableEntityResponse]

    val path = "/api/{version}/billable/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("authorizeNetApiKey", Some(authorizeNetApiKeyQuery.toParamString(authorizeNetApiKey))), ("authorizeNetTransactionKey", Some(authorizeNetTransactionKeyQuery.toParamString(authorizeNetTransactionKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BillableEntityResponse](req)

    } yield resp
  }

}
