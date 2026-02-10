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
import org.openapitools.client.api.Direction
import org.openapitools.client.api.Route
import org.openapitools.client.api.Shipment
import org.openapitools.client.api.Stop

object RouteApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def approveRoute(host: String, version: BigDecimal, routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}/approve".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def copyRoute(host: String, version: BigDecimal, routeId: Long, body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}/copy".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def createRoute(host: String, version: BigDecimal, body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def createRouteDirections(host: String, version: BigDecimal, routeId: Long): Task[List[Direction]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Direction]] = jsonOf[List[Direction]]

    val path = "/api/{version}/route/{routeId}/directions".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Direction]](req)

    } yield resp
  }

  def createRoutePolyline(host: String, version: BigDecimal, routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}/polyline".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def deleteRoute(host: String, version: BigDecimal, routeId: Long): Task[Unit] = {
    val path = "/api/{version}/route/{routeId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def disapproveRoute(host: String, version: BigDecimal, routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}/disapprove".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def getRoute(host: String, version: BigDecimal, routeId: Long, showInheritedProperties: Boolean)(implicit showInheritedPropertiesQuery: QueryParam[Boolean]): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("showInheritedProperties", Some(showInheritedPropertiesQuery.toParamString(showInheritedProperties))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def getRouteDirections(host: String, version: BigDecimal, routeId: Long): Task[List[Direction]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Direction]] = jsonOf[List[Direction]]

    val path = "/api/{version}/route/{routeId}/directions".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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
      resp          <- client.expect[List[Direction]](req)

    } yield resp
  }

  def getRouteShipments(host: String, version: BigDecimal, routeId: Long): Task[List[Shipment]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Shipment]] = jsonOf[List[Shipment]]

    val path = "/api/{version}/route/{routeId}/shipments".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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
      resp          <- client.expect[List[Shipment]](req)

    } yield resp
  }

  def getRouteStop(host: String, version: BigDecimal, routeId: Long, stopId: Long): Task[Stop] = {
    implicit val returnTypeDecoder: EntityDecoder[Stop] = jsonOf[Stop]

    val path = "/api/{version}/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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
      resp          <- client.expect[Stop](req)

    } yield resp
  }

  def getRouteStops(host: String, version: BigDecimal, routeId: Long, confirmedOnly: Boolean)(implicit confirmedOnlyQuery: QueryParam[Boolean]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/api/{version}/route/{routeId}/stops".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("confirmedOnly", Some(confirmedOnlyQuery.toParamString(confirmedOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Stop]](req)

    } yield resp
  }

  def getShipmentsAtStop(host: String, version: BigDecimal, routeId: Long, stopId: Long): Task[List[Shipment]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Shipment]] = jsonOf[List[Shipment]]

    val path = "/api/{version}/route/{routeId}/stop/{stopId}/shipments".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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
      resp          <- client.expect[List[Shipment]](req)

    } yield resp
  }

  def optimizeRoute(host: String, version: BigDecimal, routeId: Long): Task[Unit] = {
    val path = "/api/{version}/route/{routeId}/optimize".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.POST
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

  def removeStop(host: String, version: BigDecimal, routeId: Long, stopId: Long): Task[Unit] = {
    val path = "/api/{version}/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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

  def reorderRouteStopsPatch(host: String, version: BigDecimal, routeId: Long, body: List[Stop]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/api/{version}/route/{routeId}/stops/reorder".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[List[Stop]](req)

    } yield resp
  }

  def reorderRouteStopsPost(host: String, version: BigDecimal, routeId: Long, body: List[Stop]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/api/{version}/route/{routeId}/stops/reorder".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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
      resp          <- client.expect[List[Stop]](req)

    } yield resp
  }

  def searchRoutes(host: String, version: BigDecimal, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, includesEmpty: Boolean, rootOnly: Boolean, showInheritedProperties: Boolean, hubId: Long, programId: Long, scheduledStart: Long, scheduledEnd: Long, updatedStart: Long, updatedEnd: Long, featured: Boolean, seatCount: Integer, approved: Boolean, started: Boolean, completed: Boolean, valid: Boolean, parentId: Long)(implicit hubIdQuery: QueryParam[Long], programIdQuery: QueryParam[Long], scheduledStartQuery: QueryParam[Long], scheduledEndQuery: QueryParam[Long], updatedStartQuery: QueryParam[Long], updatedEndQuery: QueryParam[Long], featuredQuery: QueryParam[Boolean], seatCountQuery: QueryParam[Integer], approvedQuery: QueryParam[Boolean], startedQuery: QueryParam[Boolean], completedQuery: QueryParam[Boolean], validQuery: QueryParam[Boolean], parentIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], includesEmptyQuery: QueryParam[Boolean], rootOnlyQuery: QueryParam[Boolean], showInheritedPropertiesQuery: QueryParam[Boolean]): Task[List[Route]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Route]] = jsonOf[List[Route]]

    val path = "/api/{version}/route".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("hubId", Some(hubIdQuery.toParamString(hubId))), ("programId", Some(programIdQuery.toParamString(programId))), ("scheduledStart", Some(scheduledStartQuery.toParamString(scheduledStart))), ("scheduledEnd", Some(scheduledEndQuery.toParamString(scheduledEnd))), ("updatedStart", Some(updatedStartQuery.toParamString(updatedStart))), ("updatedEnd", Some(updatedEndQuery.toParamString(updatedEnd))), ("featured", Some(featuredQuery.toParamString(featured))), ("seatCount", Some(seatCountQuery.toParamString(seatCount))), ("approved", Some(approvedQuery.toParamString(approved))), ("started", Some(startedQuery.toParamString(started))), ("completed", Some(completedQuery.toParamString(completed))), ("valid", Some(validQuery.toParamString(valid))), ("parentId", Some(parentIdQuery.toParamString(parentId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("includesEmpty", Some(includesEmptyQuery.toParamString(includesEmpty))), ("rootOnly", Some(rootOnlyQuery.toParamString(rootOnly))), ("showInheritedProperties", Some(showInheritedPropertiesQuery.toParamString(showInheritedProperties))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Route]](req)

    } yield resp
  }

  def setDriver(host: String, version: BigDecimal, id: Long, driverId: Long): Task[Unit] = {
    val path = "/api/{version}/route/{id}/driver/{driverId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString)).replaceAll("\\{" + "driverId" + "\\}",escape(driverId.toString))

    val httpMethod = Method.POST
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

  def updateRoute(host: String, version: BigDecimal, routeId: Long, body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def updateRouteStop(host: String, version: BigDecimal, routeId: Long, stopId: Long, body: Stop): Task[Unit] = {
    val path = "/api/{version}/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

}

class HttpServiceRouteApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def approveRoute(version: BigDecimal, routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}/approve".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def copyRoute(version: BigDecimal, routeId: Long, body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}/copy".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def createRoute(version: BigDecimal, body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def createRouteDirections(version: BigDecimal, routeId: Long): Task[List[Direction]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Direction]] = jsonOf[List[Direction]]

    val path = "/api/{version}/route/{routeId}/directions".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Direction]](req)

    } yield resp
  }

  def createRoutePolyline(version: BigDecimal, routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}/polyline".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.PUT
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def deleteRoute(version: BigDecimal, routeId: Long): Task[Unit] = {
    val path = "/api/{version}/route/{routeId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def disapproveRoute(version: BigDecimal, routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}/disapprove".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def getRoute(version: BigDecimal, routeId: Long, showInheritedProperties: Boolean)(implicit showInheritedPropertiesQuery: QueryParam[Boolean]): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("showInheritedProperties", Some(showInheritedPropertiesQuery.toParamString(showInheritedProperties))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def getRouteDirections(version: BigDecimal, routeId: Long): Task[List[Direction]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Direction]] = jsonOf[List[Direction]]

    val path = "/api/{version}/route/{routeId}/directions".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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
      resp          <- client.expect[List[Direction]](req)

    } yield resp
  }

  def getRouteShipments(version: BigDecimal, routeId: Long): Task[List[Shipment]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Shipment]] = jsonOf[List[Shipment]]

    val path = "/api/{version}/route/{routeId}/shipments".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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
      resp          <- client.expect[List[Shipment]](req)

    } yield resp
  }

  def getRouteStop(version: BigDecimal, routeId: Long, stopId: Long): Task[Stop] = {
    implicit val returnTypeDecoder: EntityDecoder[Stop] = jsonOf[Stop]

    val path = "/api/{version}/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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
      resp          <- client.expect[Stop](req)

    } yield resp
  }

  def getRouteStops(version: BigDecimal, routeId: Long, confirmedOnly: Boolean)(implicit confirmedOnlyQuery: QueryParam[Boolean]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/api/{version}/route/{routeId}/stops".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("confirmedOnly", Some(confirmedOnlyQuery.toParamString(confirmedOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Stop]](req)

    } yield resp
  }

  def getShipmentsAtStop(version: BigDecimal, routeId: Long, stopId: Long): Task[List[Shipment]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Shipment]] = jsonOf[List[Shipment]]

    val path = "/api/{version}/route/{routeId}/stop/{stopId}/shipments".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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
      resp          <- client.expect[List[Shipment]](req)

    } yield resp
  }

  def optimizeRoute(version: BigDecimal, routeId: Long): Task[Unit] = {
    val path = "/api/{version}/route/{routeId}/optimize".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.POST
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

  def removeStop(version: BigDecimal, routeId: Long, stopId: Long): Task[Unit] = {
    val path = "/api/{version}/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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

  def reorderRouteStopsPatch(version: BigDecimal, routeId: Long, body: List[Stop]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/api/{version}/route/{routeId}/stops/reorder".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

    val httpMethod = Method.PATCH
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[List[Stop]](req)

    } yield resp
  }

  def reorderRouteStopsPost(version: BigDecimal, routeId: Long, body: List[Stop]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/api/{version}/route/{routeId}/stops/reorder".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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
      resp          <- client.expect[List[Stop]](req)

    } yield resp
  }

  def searchRoutes(version: BigDecimal, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, includesEmpty: Boolean, rootOnly: Boolean, showInheritedProperties: Boolean, hubId: Long, programId: Long, scheduledStart: Long, scheduledEnd: Long, updatedStart: Long, updatedEnd: Long, featured: Boolean, seatCount: Integer, approved: Boolean, started: Boolean, completed: Boolean, valid: Boolean, parentId: Long)(implicit hubIdQuery: QueryParam[Long], programIdQuery: QueryParam[Long], scheduledStartQuery: QueryParam[Long], scheduledEndQuery: QueryParam[Long], updatedStartQuery: QueryParam[Long], updatedEndQuery: QueryParam[Long], featuredQuery: QueryParam[Boolean], seatCountQuery: QueryParam[Integer], approvedQuery: QueryParam[Boolean], startedQuery: QueryParam[Boolean], completedQuery: QueryParam[Boolean], validQuery: QueryParam[Boolean], parentIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], includesEmptyQuery: QueryParam[Boolean], rootOnlyQuery: QueryParam[Boolean], showInheritedPropertiesQuery: QueryParam[Boolean]): Task[List[Route]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Route]] = jsonOf[List[Route]]

    val path = "/api/{version}/route".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("hubId", Some(hubIdQuery.toParamString(hubId))), ("programId", Some(programIdQuery.toParamString(programId))), ("scheduledStart", Some(scheduledStartQuery.toParamString(scheduledStart))), ("scheduledEnd", Some(scheduledEndQuery.toParamString(scheduledEnd))), ("updatedStart", Some(updatedStartQuery.toParamString(updatedStart))), ("updatedEnd", Some(updatedEndQuery.toParamString(updatedEnd))), ("featured", Some(featuredQuery.toParamString(featured))), ("seatCount", Some(seatCountQuery.toParamString(seatCount))), ("approved", Some(approvedQuery.toParamString(approved))), ("started", Some(startedQuery.toParamString(started))), ("completed", Some(completedQuery.toParamString(completed))), ("valid", Some(validQuery.toParamString(valid))), ("parentId", Some(parentIdQuery.toParamString(parentId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("includesEmpty", Some(includesEmptyQuery.toParamString(includesEmpty))), ("rootOnly", Some(rootOnlyQuery.toParamString(rootOnly))), ("showInheritedProperties", Some(showInheritedPropertiesQuery.toParamString(showInheritedProperties))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Route]](req)

    } yield resp
  }

  def setDriver(version: BigDecimal, id: Long, driverId: Long): Task[Unit] = {
    val path = "/api/{version}/route/{id}/driver/{driverId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString)).replaceAll("\\{" + "driverId" + "\\}",escape(driverId.toString))

    val httpMethod = Method.POST
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

  def updateRoute(version: BigDecimal, routeId: Long, body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/api/{version}/route/{routeId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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
      resp          <- client.expect[Route](req)

    } yield resp
  }

  def updateRouteStop(version: BigDecimal, routeId: Long, stopId: Long, body: Stop): Task[Unit] = {
    val path = "/api/{version}/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

}
