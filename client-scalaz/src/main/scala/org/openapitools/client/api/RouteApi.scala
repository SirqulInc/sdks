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

import org.openapitools.client.api.Direction
import org.openapitools.client.api.Route
import org.openapitools.client.api.Shipment
import org.openapitools.client.api.Stop

object RouteApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def approveRoute(host: String, routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}/approve".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def copyRoute(host: String, routeId: Long, body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}/copy".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def createRoute(host: String, body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route"

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

  def createRouteDirections(host: String, routeId: Long): Task[List[Direction]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Direction]] = jsonOf[List[Direction]]

    val path = "/route/{routeId}/directions".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def createRoutePolyline(host: String, routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}/polyline".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def deleteRoute(host: String, routeId: Long): Task[Unit] = {
    val path = "/route/{routeId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def disapproveRoute(host: String, routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}/disapprove".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def getRoute(host: String, routeId: Long, showInheritedProperties: Boolean)(implicit showInheritedPropertiesQuery: QueryParam[Boolean]): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def getRouteDirections(host: String, routeId: Long): Task[List[Direction]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Direction]] = jsonOf[List[Direction]]

    val path = "/route/{routeId}/directions".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def getRouteShipments(host: String, routeId: Long): Task[List[Shipment]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Shipment]] = jsonOf[List[Shipment]]

    val path = "/route/{routeId}/shipments".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def getRouteStop(host: String, routeId: Long, stopId: Long): Task[Stop] = {
    implicit val returnTypeDecoder: EntityDecoder[Stop] = jsonOf[Stop]

    val path = "/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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

  def getRouteStops(host: String, routeId: Long, confirmedOnly: Boolean)(implicit confirmedOnlyQuery: QueryParam[Boolean]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/route/{routeId}/stops".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def getShipmentsAtStop(host: String, routeId: Long, stopId: Long): Task[List[Shipment]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Shipment]] = jsonOf[List[Shipment]]

    val path = "/route/{routeId}/stop/{stopId}/shipments".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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

  def optimizeRoute(host: String, routeId: Long): Task[Unit] = {
    val path = "/route/{routeId}/optimize".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def removeStop(host: String, routeId: Long, stopId: Long): Task[Unit] = {
    val path = "/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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

  def reorderRouteStopsPatch(host: String, routeId: Long, body: List[Stop]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/route/{routeId}/stops/reorder".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def reorderRouteStopsPost(host: String, routeId: Long, body: List[Stop]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/route/{routeId}/stops/reorder".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def searchRoutes(host: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, includesEmpty: Boolean, rootOnly: Boolean, showInheritedProperties: Boolean, hubId: Long, programId: Long, scheduledStart: Long, scheduledEnd: Long, updatedStart: Long, updatedEnd: Long, featured: Boolean, seatCount: Integer, approved: Boolean, started: Boolean, completed: Boolean, valid: Boolean, parentId: Long)(implicit hubIdQuery: QueryParam[Long], programIdQuery: QueryParam[Long], scheduledStartQuery: QueryParam[Long], scheduledEndQuery: QueryParam[Long], updatedStartQuery: QueryParam[Long], updatedEndQuery: QueryParam[Long], featuredQuery: QueryParam[Boolean], seatCountQuery: QueryParam[Integer], approvedQuery: QueryParam[Boolean], startedQuery: QueryParam[Boolean], completedQuery: QueryParam[Boolean], validQuery: QueryParam[Boolean], parentIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], includesEmptyQuery: QueryParam[Boolean], rootOnlyQuery: QueryParam[Boolean], showInheritedPropertiesQuery: QueryParam[Boolean]): Task[List[Route]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Route]] = jsonOf[List[Route]]

    val path = "/route"

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

  def setDriver(host: String, id: Long, driverId: Long): Task[Unit] = {
    val path = "/route/{id}/driver/{driverId}".replaceAll("\\{" + "id" + "\\}",escape(id.toString)).replaceAll("\\{" + "driverId" + "\\}",escape(driverId.toString))

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

  def updateRoute(host: String, routeId: Long, body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def updateRouteStop(host: String, routeId: Long, stopId: Long, body: Stop): Task[Unit] = {
    val path = "/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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

  def approveRoute(routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}/approve".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def copyRoute(routeId: Long, body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}/copy".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def createRoute(body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route"

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

  def createRouteDirections(routeId: Long): Task[List[Direction]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Direction]] = jsonOf[List[Direction]]

    val path = "/route/{routeId}/directions".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def createRoutePolyline(routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}/polyline".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def deleteRoute(routeId: Long): Task[Unit] = {
    val path = "/route/{routeId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def disapproveRoute(routeId: Long): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}/disapprove".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def getRoute(routeId: Long, showInheritedProperties: Boolean)(implicit showInheritedPropertiesQuery: QueryParam[Boolean]): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def getRouteDirections(routeId: Long): Task[List[Direction]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Direction]] = jsonOf[List[Direction]]

    val path = "/route/{routeId}/directions".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def getRouteShipments(routeId: Long): Task[List[Shipment]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Shipment]] = jsonOf[List[Shipment]]

    val path = "/route/{routeId}/shipments".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def getRouteStop(routeId: Long, stopId: Long): Task[Stop] = {
    implicit val returnTypeDecoder: EntityDecoder[Stop] = jsonOf[Stop]

    val path = "/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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

  def getRouteStops(routeId: Long, confirmedOnly: Boolean)(implicit confirmedOnlyQuery: QueryParam[Boolean]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/route/{routeId}/stops".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def getShipmentsAtStop(routeId: Long, stopId: Long): Task[List[Shipment]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Shipment]] = jsonOf[List[Shipment]]

    val path = "/route/{routeId}/stop/{stopId}/shipments".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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

  def optimizeRoute(routeId: Long): Task[Unit] = {
    val path = "/route/{routeId}/optimize".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def removeStop(routeId: Long, stopId: Long): Task[Unit] = {
    val path = "/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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

  def reorderRouteStopsPatch(routeId: Long, body: List[Stop]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/route/{routeId}/stops/reorder".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def reorderRouteStopsPost(routeId: Long, body: List[Stop]): Task[List[Stop]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Stop]] = jsonOf[List[Stop]]

    val path = "/route/{routeId}/stops/reorder".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def searchRoutes(sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, includesEmpty: Boolean, rootOnly: Boolean, showInheritedProperties: Boolean, hubId: Long, programId: Long, scheduledStart: Long, scheduledEnd: Long, updatedStart: Long, updatedEnd: Long, featured: Boolean, seatCount: Integer, approved: Boolean, started: Boolean, completed: Boolean, valid: Boolean, parentId: Long)(implicit hubIdQuery: QueryParam[Long], programIdQuery: QueryParam[Long], scheduledStartQuery: QueryParam[Long], scheduledEndQuery: QueryParam[Long], updatedStartQuery: QueryParam[Long], updatedEndQuery: QueryParam[Long], featuredQuery: QueryParam[Boolean], seatCountQuery: QueryParam[Integer], approvedQuery: QueryParam[Boolean], startedQuery: QueryParam[Boolean], completedQuery: QueryParam[Boolean], validQuery: QueryParam[Boolean], parentIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], includesEmptyQuery: QueryParam[Boolean], rootOnlyQuery: QueryParam[Boolean], showInheritedPropertiesQuery: QueryParam[Boolean]): Task[List[Route]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Route]] = jsonOf[List[Route]]

    val path = "/route"

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

  def setDriver(id: Long, driverId: Long): Task[Unit] = {
    val path = "/route/{id}/driver/{driverId}".replaceAll("\\{" + "id" + "\\}",escape(id.toString)).replaceAll("\\{" + "driverId" + "\\}",escape(driverId.toString))

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

  def updateRoute(routeId: Long, body: Route): Task[Route] = {
    implicit val returnTypeDecoder: EntityDecoder[Route] = jsonOf[Route]

    val path = "/route/{routeId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString))

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

  def updateRouteStop(routeId: Long, stopId: Long, body: Stop): Task[Unit] = {
    val path = "/route/{routeId}/stop/{stopId}".replaceAll("\\{" + "routeId" + "\\}",escape(routeId.toString)).replaceAll("\\{" + "stopId" + "\\}",escape(stopId.toString))

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
