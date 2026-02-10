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
import org.openapitools.client.api.OfferTransactionStatusResponse
import org.openapitools.client.api.SirqulResponse

object OfferStatusApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createOfferTransactionStatus(host: String, version: BigDecimal, name: String, code: Integer, deviceId: String, accountId: Long, latitude: Double, longitude: Double, description: String, role: String = ANY, active: Boolean = true, applicationIds: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], codeQuery: QueryParam[Integer], roleQuery: QueryParam[String], activeQuery: QueryParam[Boolean], applicationIdsQuery: QueryParam[String]): Task[OfferTransactionStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferTransactionStatusResponse] = jsonOf[OfferTransactionStatusResponse]

    val path = "/api/{version}/offer/status/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("code", Some(codeQuery.toParamString(code))), ("role", Some(roleQuery.toParamString(role))), ("active", Some(activeQuery.toParamString(active))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferTransactionStatusResponse](req)

    } yield resp
  }

  def deleteOfferTransactionStatus(host: String, version: BigDecimal, statusId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], statusIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/offer/status/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("statusId", Some(statusIdQuery.toParamString(statusId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getOfferTransactionStatus(host: String, version: BigDecimal, statusId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], statusIdQuery: QueryParam[Long]): Task[OfferTransactionStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferTransactionStatusResponse] = jsonOf[OfferTransactionStatusResponse]

    val path = "/api/{version}/offer/status/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("statusId", Some(statusIdQuery.toParamString(statusId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferTransactionStatusResponse](req)

    } yield resp
  }

  def searchOfferTransactionStatuses(host: String, version: BigDecimal, deviceId: String, accountId: Long, latitude: Double, longitude: Double, keyword: String, role: String, appKey: String, sortField: String = CODE, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, includeInactive: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], keywordQuery: QueryParam[String], roleQuery: QueryParam[String], appKeyQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], includeInactiveQuery: QueryParam[Boolean]): Task[List[OfferTransactionStatusResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferTransactionStatusResponse]] = jsonOf[List[OfferTransactionStatusResponse]]

    val path = "/api/{version}/offer/status/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("role", Some(roleQuery.toParamString(role))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferTransactionStatusResponse]](req)

    } yield resp
  }

  def updateOfferTransactionStatus(host: String, version: BigDecimal, deviceId: String, accountId: Long, latitude: Double, longitude: Double, statusId: Long, name: String, description: String, code: Integer, role: String, active: Boolean, applicationIds: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], statusIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], codeQuery: QueryParam[Integer], roleQuery: QueryParam[String], activeQuery: QueryParam[Boolean], applicationIdsQuery: QueryParam[String]): Task[OfferTransactionStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferTransactionStatusResponse] = jsonOf[OfferTransactionStatusResponse]

    val path = "/api/{version}/offer/status/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("statusId", Some(statusIdQuery.toParamString(statusId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("code", Some(codeQuery.toParamString(code))), ("role", Some(roleQuery.toParamString(role))), ("active", Some(activeQuery.toParamString(active))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferTransactionStatusResponse](req)

    } yield resp
  }

}

class HttpServiceOfferStatusApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createOfferTransactionStatus(version: BigDecimal, name: String, code: Integer, deviceId: String, accountId: Long, latitude: Double, longitude: Double, description: String, role: String = ANY, active: Boolean = true, applicationIds: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], codeQuery: QueryParam[Integer], roleQuery: QueryParam[String], activeQuery: QueryParam[Boolean], applicationIdsQuery: QueryParam[String]): Task[OfferTransactionStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferTransactionStatusResponse] = jsonOf[OfferTransactionStatusResponse]

    val path = "/api/{version}/offer/status/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("code", Some(codeQuery.toParamString(code))), ("role", Some(roleQuery.toParamString(role))), ("active", Some(activeQuery.toParamString(active))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferTransactionStatusResponse](req)

    } yield resp
  }

  def deleteOfferTransactionStatus(version: BigDecimal, statusId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], statusIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/offer/status/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("statusId", Some(statusIdQuery.toParamString(statusId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getOfferTransactionStatus(version: BigDecimal, statusId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], statusIdQuery: QueryParam[Long]): Task[OfferTransactionStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferTransactionStatusResponse] = jsonOf[OfferTransactionStatusResponse]

    val path = "/api/{version}/offer/status/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("statusId", Some(statusIdQuery.toParamString(statusId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferTransactionStatusResponse](req)

    } yield resp
  }

  def searchOfferTransactionStatuses(version: BigDecimal, deviceId: String, accountId: Long, latitude: Double, longitude: Double, keyword: String, role: String, appKey: String, sortField: String = CODE, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, includeInactive: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], keywordQuery: QueryParam[String], roleQuery: QueryParam[String], appKeyQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], includeInactiveQuery: QueryParam[Boolean]): Task[List[OfferTransactionStatusResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferTransactionStatusResponse]] = jsonOf[List[OfferTransactionStatusResponse]]

    val path = "/api/{version}/offer/status/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("role", Some(roleQuery.toParamString(role))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferTransactionStatusResponse]](req)

    } yield resp
  }

  def updateOfferTransactionStatus(version: BigDecimal, deviceId: String, accountId: Long, latitude: Double, longitude: Double, statusId: Long, name: String, description: String, code: Integer, role: String, active: Boolean, applicationIds: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], statusIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], codeQuery: QueryParam[Integer], roleQuery: QueryParam[String], activeQuery: QueryParam[Boolean], applicationIdsQuery: QueryParam[String]): Task[OfferTransactionStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferTransactionStatusResponse] = jsonOf[OfferTransactionStatusResponse]

    val path = "/api/{version}/offer/status/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("statusId", Some(statusIdQuery.toParamString(statusId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("code", Some(codeQuery.toParamString(code))), ("role", Some(roleQuery.toParamString(role))), ("active", Some(activeQuery.toParamString(active))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferTransactionStatusResponse](req)

    } yield resp
  }

}
