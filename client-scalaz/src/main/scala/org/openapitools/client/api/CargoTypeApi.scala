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

import org.openapitools.client.api.CargoType

object CargoTypeApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createCargoType(host: String, body: CargoType): Task[CargoType] = {
    implicit val returnTypeDecoder: EntityDecoder[CargoType] = jsonOf[CargoType]

    val path = "/cargo/type"

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
      resp          <- client.expect[CargoType](req)

    } yield resp
  }

  def deleteCargoType(host: String, cargoTypeId: Long): Task[Unit] = {
    val path = "/cargo/type/{cargoTypeId}".replaceAll("\\{" + "cargoTypeId" + "\\}",escape(cargoTypeId.toString))

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

  def getCargoType(host: String, cargoTypeId: Long): Task[CargoType] = {
    implicit val returnTypeDecoder: EntityDecoder[CargoType] = jsonOf[CargoType]

    val path = "/cargo/type/{cargoTypeId}".replaceAll("\\{" + "cargoTypeId" + "\\}",escape(cargoTypeId.toString))

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
      resp          <- client.expect[CargoType](req)

    } yield resp
  }

  def searchCargoTypes(host: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, retailerId: Long, hubId: Long)(implicit retailerIdQuery: QueryParam[Long], hubIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[CargoType]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[CargoType]] = jsonOf[List[CargoType]]

    val path = "/cargo/type"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("hubId", Some(hubIdQuery.toParamString(hubId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[CargoType]](req)

    } yield resp
  }

  def updateCargoType(host: String, cargoTypeId: Long, body: CargoType): Task[CargoType] = {
    implicit val returnTypeDecoder: EntityDecoder[CargoType] = jsonOf[CargoType]

    val path = "/cargo/type/{cargoTypeId}".replaceAll("\\{" + "cargoTypeId" + "\\}",escape(cargoTypeId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[CargoType](req)

    } yield resp
  }

}

class HttpServiceCargoTypeApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createCargoType(body: CargoType): Task[CargoType] = {
    implicit val returnTypeDecoder: EntityDecoder[CargoType] = jsonOf[CargoType]

    val path = "/cargo/type"

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
      resp          <- client.expect[CargoType](req)

    } yield resp
  }

  def deleteCargoType(cargoTypeId: Long): Task[Unit] = {
    val path = "/cargo/type/{cargoTypeId}".replaceAll("\\{" + "cargoTypeId" + "\\}",escape(cargoTypeId.toString))

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

  def getCargoType(cargoTypeId: Long): Task[CargoType] = {
    implicit val returnTypeDecoder: EntityDecoder[CargoType] = jsonOf[CargoType]

    val path = "/cargo/type/{cargoTypeId}".replaceAll("\\{" + "cargoTypeId" + "\\}",escape(cargoTypeId.toString))

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
      resp          <- client.expect[CargoType](req)

    } yield resp
  }

  def searchCargoTypes(sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, retailerId: Long, hubId: Long)(implicit retailerIdQuery: QueryParam[Long], hubIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[CargoType]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[CargoType]] = jsonOf[List[CargoType]]

    val path = "/cargo/type"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("hubId", Some(hubIdQuery.toParamString(hubId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[CargoType]](req)

    } yield resp
  }

  def updateCargoType(cargoTypeId: Long, body: CargoType): Task[CargoType] = {
    implicit val returnTypeDecoder: EntityDecoder[CargoType] = jsonOf[CargoType]

    val path = "/cargo/type/{cargoTypeId}".replaceAll("\\{" + "cargoTypeId" + "\\}",escape(cargoTypeId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[CargoType](req)

    } yield resp
  }

}
