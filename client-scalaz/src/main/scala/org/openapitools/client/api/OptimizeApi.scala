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
import org.openapitools.client.api.ImportStatuses
import org.openapitools.client.api.Orders
import org.openapitools.client.api.ShipmentOrder

object OptimizeApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getOptimizationResult(host: String, version: BigDecimal, batchID: String, start: Integer, limit: Integer)(implicit startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[Map[String, ShipmentOrder]] = {
    implicit val returnTypeDecoder: EntityDecoder[Map[String, ShipmentOrder]] = jsonOf[Map[String, ShipmentOrder]]

    val path = "/api/{version}/optimize/result/{batchID}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "batchID" + "\\}",escape(batchID.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Map[String, ShipmentOrder]](req)

    } yield resp
  }

  def requestOptimization(host: String, version: BigDecimal, body: Orders): Task[ImportStatuses] = {
    implicit val returnTypeDecoder: EntityDecoder[ImportStatuses] = jsonOf[ImportStatuses]

    val path = "/api/{version}/optimize/request".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[ImportStatuses](req)

    } yield resp
  }

}

class HttpServiceOptimizeApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getOptimizationResult(version: BigDecimal, batchID: String, start: Integer, limit: Integer)(implicit startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[Map[String, ShipmentOrder]] = {
    implicit val returnTypeDecoder: EntityDecoder[Map[String, ShipmentOrder]] = jsonOf[Map[String, ShipmentOrder]]

    val path = "/api/{version}/optimize/result/{batchID}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "batchID" + "\\}",escape(batchID.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Map[String, ShipmentOrder]](req)

    } yield resp
  }

  def requestOptimization(version: BigDecimal, body: Orders): Task[ImportStatuses] = {
    implicit val returnTypeDecoder: EntityDecoder[ImportStatuses] = jsonOf[ImportStatuses]

    val path = "/api/{version}/optimize/request".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[ImportStatuses](req)

    } yield resp
  }

}
