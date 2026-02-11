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

import org.openapitools.client.api.Vehicle

object VehicleApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createVehicle(host: String, vehicle: String, body: Vehicle)(implicit vehicleQuery: QueryParam[String]): Task[Vehicle] = {
    implicit val returnTypeDecoder: EntityDecoder[Vehicle] = jsonOf[Vehicle]

    val path = "/vehicle"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("vehicle", Some(vehicleQuery.toParamString(vehicle))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[Vehicle](req)

    } yield resp
  }

  def deleteVehicle(host: String, id: Long): Task[Unit] = {
    val path = "/vehicle/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getVehicle(host: String, id: Long): Task[Vehicle] = {
    implicit val returnTypeDecoder: EntityDecoder[Vehicle] = jsonOf[Vehicle]

    val path = "/vehicle/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Vehicle](req)

    } yield resp
  }

  def searchVehicle(host: String, hubId: Long, sortField: String = id, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true, keyword: String)(implicit hubIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Vehicle]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Vehicle]] = jsonOf[List[Vehicle]]

    val path = "/vehicle"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("hubId", Some(hubIdQuery.toParamString(hubId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Vehicle]](req)

    } yield resp
  }

  def updateVehicle(host: String, id: Long, vehicle: String, body: Vehicle)(implicit vehicleQuery: QueryParam[String]): Task[Vehicle] = {
    implicit val returnTypeDecoder: EntityDecoder[Vehicle] = jsonOf[Vehicle]

    val path = "/vehicle/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("vehicle", Some(vehicleQuery.toParamString(vehicle))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[Vehicle](req)

    } yield resp
  }

}

class HttpServiceVehicleApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createVehicle(vehicle: String, body: Vehicle)(implicit vehicleQuery: QueryParam[String]): Task[Vehicle] = {
    implicit val returnTypeDecoder: EntityDecoder[Vehicle] = jsonOf[Vehicle]

    val path = "/vehicle"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("vehicle", Some(vehicleQuery.toParamString(vehicle))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[Vehicle](req)

    } yield resp
  }

  def deleteVehicle(id: Long): Task[Unit] = {
    val path = "/vehicle/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getVehicle(id: Long): Task[Vehicle] = {
    implicit val returnTypeDecoder: EntityDecoder[Vehicle] = jsonOf[Vehicle]

    val path = "/vehicle/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Vehicle](req)

    } yield resp
  }

  def searchVehicle(hubId: Long, sortField: String = id, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true, keyword: String)(implicit hubIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Vehicle]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Vehicle]] = jsonOf[List[Vehicle]]

    val path = "/vehicle"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("hubId", Some(hubIdQuery.toParamString(hubId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Vehicle]](req)

    } yield resp
  }

  def updateVehicle(id: Long, vehicle: String, body: Vehicle)(implicit vehicleQuery: QueryParam[String]): Task[Vehicle] = {
    implicit val returnTypeDecoder: EntityDecoder[Vehicle] = jsonOf[Vehicle]

    val path = "/vehicle/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("vehicle", Some(vehicleQuery.toParamString(vehicle))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[Vehicle](req)

    } yield resp
  }

}
