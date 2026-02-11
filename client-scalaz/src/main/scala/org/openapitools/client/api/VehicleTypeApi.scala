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

import org.openapitools.client.api.VehicleType

object VehicleTypeApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createVehicleType(host: String, vehicleType: String, body: VehicleType)(implicit vehicleTypeQuery: QueryParam[String]): Task[VehicleType] = {
    implicit val returnTypeDecoder: EntityDecoder[VehicleType] = jsonOf[VehicleType]

    val path = "/vehicle/type"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("vehicleType", Some(vehicleTypeQuery.toParamString(vehicleType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[VehicleType](req)

    } yield resp
  }

  def deleteVehicleType(host: String, vehicleTypeId: Long): Task[Unit] = {
    val path = "/vehicle/type/{vehicleTypeId}".replaceAll("\\{" + "vehicleTypeId" + "\\}",escape(vehicleTypeId.toString))

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

  def getVehicleType(host: String, vehicleTypeId: Long): Task[VehicleType] = {
    implicit val returnTypeDecoder: EntityDecoder[VehicleType] = jsonOf[VehicleType]

    val path = "/vehicle/type/{vehicleTypeId}".replaceAll("\\{" + "vehicleTypeId" + "\\}",escape(vehicleTypeId.toString))

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
      resp          <- client.expect[VehicleType](req)

    } yield resp
  }

  def searchVehicleTypes(host: String, sortField: String = id, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true, retailerId: Long, hubId: Long)(implicit retailerIdQuery: QueryParam[Long], hubIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[VehicleType]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[VehicleType]] = jsonOf[List[VehicleType]]

    val path = "/vehicle/type"

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
      resp          <- client.expect[List[VehicleType]](req)

    } yield resp
  }

  def updateVehicleType(host: String, vehicleTypeId: Long, vehicleType: String, body: VehicleType)(implicit vehicleTypeQuery: QueryParam[String]): Task[VehicleType] = {
    implicit val returnTypeDecoder: EntityDecoder[VehicleType] = jsonOf[VehicleType]

    val path = "/vehicle/type/{vehicleTypeId}".replaceAll("\\{" + "vehicleTypeId" + "\\}",escape(vehicleTypeId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("vehicleType", Some(vehicleTypeQuery.toParamString(vehicleType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[VehicleType](req)

    } yield resp
  }

}

class HttpServiceVehicleTypeApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createVehicleType(vehicleType: String, body: VehicleType)(implicit vehicleTypeQuery: QueryParam[String]): Task[VehicleType] = {
    implicit val returnTypeDecoder: EntityDecoder[VehicleType] = jsonOf[VehicleType]

    val path = "/vehicle/type"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("vehicleType", Some(vehicleTypeQuery.toParamString(vehicleType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[VehicleType](req)

    } yield resp
  }

  def deleteVehicleType(vehicleTypeId: Long): Task[Unit] = {
    val path = "/vehicle/type/{vehicleTypeId}".replaceAll("\\{" + "vehicleTypeId" + "\\}",escape(vehicleTypeId.toString))

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

  def getVehicleType(vehicleTypeId: Long): Task[VehicleType] = {
    implicit val returnTypeDecoder: EntityDecoder[VehicleType] = jsonOf[VehicleType]

    val path = "/vehicle/type/{vehicleTypeId}".replaceAll("\\{" + "vehicleTypeId" + "\\}",escape(vehicleTypeId.toString))

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
      resp          <- client.expect[VehicleType](req)

    } yield resp
  }

  def searchVehicleTypes(sortField: String = id, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true, retailerId: Long, hubId: Long)(implicit retailerIdQuery: QueryParam[Long], hubIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[VehicleType]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[VehicleType]] = jsonOf[List[VehicleType]]

    val path = "/vehicle/type"

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
      resp          <- client.expect[List[VehicleType]](req)

    } yield resp
  }

  def updateVehicleType(vehicleTypeId: Long, vehicleType: String, body: VehicleType)(implicit vehicleTypeQuery: QueryParam[String]): Task[VehicleType] = {
    implicit val returnTypeDecoder: EntityDecoder[VehicleType] = jsonOf[VehicleType]

    val path = "/vehicle/type/{vehicleTypeId}".replaceAll("\\{" + "vehicleTypeId" + "\\}",escape(vehicleTypeId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("vehicleType", Some(vehicleTypeQuery.toParamString(vehicleType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[VehicleType](req)

    } yield resp
  }

}
