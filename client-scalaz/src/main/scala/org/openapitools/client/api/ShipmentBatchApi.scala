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

import org.openapitools.client.api.ShipmentBatch
import org.openapitools.client.api.ShipmentImportStatus

object ShipmentBatchApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createShipmentBatch(host: String, body: ShipmentBatch): Task[ShipmentBatch] = {
    implicit val returnTypeDecoder: EntityDecoder[ShipmentBatch] = jsonOf[ShipmentBatch]

    val path = "/shipment/batch"

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
      resp          <- client.expect[ShipmentBatch](req)

    } yield resp
  }

  def deleteShipmentBatch(host: String, batchId: Long): Task[Unit] = {
    val path = "/shipment/batch/{batchId}".replaceAll("\\{" + "batchId" + "\\}",escape(batchId.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getShipmentBatch(host: String, batchId: Long): Task[ShipmentBatch] = {
    implicit val returnTypeDecoder: EntityDecoder[ShipmentBatch] = jsonOf[ShipmentBatch]

    val path = "/shipment/batch/{batchId}".replaceAll("\\{" + "batchId" + "\\}",escape(batchId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ShipmentBatch](req)

    } yield resp
  }

  def getShipmentBatchStatus(host: String, batchId: Long, accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, valid: Boolean, started: Boolean, completed: Boolean, hasShipment: Boolean, hasRoute: Boolean, keyword: String)(implicit accountIdQuery: QueryParam[Long], validQuery: QueryParam[Boolean], startedQuery: QueryParam[Boolean], completedQuery: QueryParam[Boolean], hasShipmentQuery: QueryParam[Boolean], hasRouteQuery: QueryParam[Boolean], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ShipmentImportStatus]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ShipmentImportStatus]] = jsonOf[List[ShipmentImportStatus]]

    val path = "/shipment/batch/{batchId}/status".replaceAll("\\{" + "batchId" + "\\}",escape(batchId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("valid", Some(validQuery.toParamString(valid))), ("started", Some(startedQuery.toParamString(started))), ("completed", Some(completedQuery.toParamString(completed))), ("hasShipment", Some(hasShipmentQuery.toParamString(hasShipment))), ("hasRoute", Some(hasRouteQuery.toParamString(hasRoute))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ShipmentImportStatus]](req)

    } yield resp
  }

  def searchShipmentBatch(host: String, hubId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer)(implicit hubIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ShipmentBatch]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ShipmentBatch]] = jsonOf[List[ShipmentBatch]]

    val path = "/shipment/batch"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("hubId", Some(hubIdQuery.toParamString(hubId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ShipmentBatch]](req)

    } yield resp
  }

}

class HttpServiceShipmentBatchApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createShipmentBatch(body: ShipmentBatch): Task[ShipmentBatch] = {
    implicit val returnTypeDecoder: EntityDecoder[ShipmentBatch] = jsonOf[ShipmentBatch]

    val path = "/shipment/batch"

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
      resp          <- client.expect[ShipmentBatch](req)

    } yield resp
  }

  def deleteShipmentBatch(batchId: Long): Task[Unit] = {
    val path = "/shipment/batch/{batchId}".replaceAll("\\{" + "batchId" + "\\}",escape(batchId.toString))

    val httpMethod = Method.DELETE
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def getShipmentBatch(batchId: Long): Task[ShipmentBatch] = {
    implicit val returnTypeDecoder: EntityDecoder[ShipmentBatch] = jsonOf[ShipmentBatch]

    val path = "/shipment/batch/{batchId}".replaceAll("\\{" + "batchId" + "\\}",escape(batchId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ShipmentBatch](req)

    } yield resp
  }

  def getShipmentBatchStatus(batchId: Long, accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, valid: Boolean, started: Boolean, completed: Boolean, hasShipment: Boolean, hasRoute: Boolean, keyword: String)(implicit accountIdQuery: QueryParam[Long], validQuery: QueryParam[Boolean], startedQuery: QueryParam[Boolean], completedQuery: QueryParam[Boolean], hasShipmentQuery: QueryParam[Boolean], hasRouteQuery: QueryParam[Boolean], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ShipmentImportStatus]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ShipmentImportStatus]] = jsonOf[List[ShipmentImportStatus]]

    val path = "/shipment/batch/{batchId}/status".replaceAll("\\{" + "batchId" + "\\}",escape(batchId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("valid", Some(validQuery.toParamString(valid))), ("started", Some(startedQuery.toParamString(started))), ("completed", Some(completedQuery.toParamString(completed))), ("hasShipment", Some(hasShipmentQuery.toParamString(hasShipment))), ("hasRoute", Some(hasRouteQuery.toParamString(hasRoute))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ShipmentImportStatus]](req)

    } yield resp
  }

  def searchShipmentBatch(hubId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer)(implicit hubIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ShipmentBatch]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ShipmentBatch]] = jsonOf[List[ShipmentBatch]]

    val path = "/shipment/batch"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("hubId", Some(hubIdQuery.toParamString(hubId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ShipmentBatch]](req)

    } yield resp
  }

}
