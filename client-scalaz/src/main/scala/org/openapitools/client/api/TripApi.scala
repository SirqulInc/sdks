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
import org.openapitools.client.api.Trip

object TripApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createTrip(host: String, version: BigDecimal, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def delete(host: String, version: BigDecimal, id: Long): Task[Unit] = {
    val path = "/api/{version}/trip/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def driveTrip(host: String, version: BigDecimal, id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}/drive".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("recurrence", Some(recurrenceQuery.toParamString(recurrence))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def flexibleTrip(host: String, version: BigDecimal, id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}/flexible".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("recurrence", Some(recurrenceQuery.toParamString(recurrence))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def getTrip(host: String, version: BigDecimal, id: Long): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def getTripMatches(host: String, version: BigDecimal, id: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, matchedHasRoute: Boolean, matchedHasDriver: Boolean)(implicit matchedHasRouteQuery: QueryParam[Boolean], matchedHasDriverQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip/{id}/match".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("matchedHasRoute", Some(matchedHasRouteQuery.toParamString(matchedHasRoute))), ("matchedHasDriver", Some(matchedHasDriverQuery.toParamString(matchedHasDriver))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def processTripMatches(host: String, version: BigDecimal, startDate: Long, endDate: Long, tripId: Long)(implicit startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tripIdQuery: QueryParam[Long]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip/match/process".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tripId", Some(tripIdQuery.toParamString(tripId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def ride(host: String, version: BigDecimal, id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}/ride".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("recurrence", Some(recurrenceQuery.toParamString(recurrence))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def search(host: String, version: BigDecimal, accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, startDate: Long, endDate: Long, hasNotifications: Boolean)(implicit accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], hasNotificationsQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("hasNotifications", Some(hasNotificationsQuery.toParamString(hasNotifications))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def searchTrips(host: String, version: BigDecimal, accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, startDate: Long, endDate: Long, matchedHasRoute: Boolean, matchedHasDriver: Boolean)(implicit accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], matchedHasRouteQuery: QueryParam[Boolean], matchedHasDriverQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip/match".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("matchedHasRoute", Some(matchedHasRouteQuery.toParamString(matchedHasRoute))), ("matchedHasDriver", Some(matchedHasDriverQuery.toParamString(matchedHasDriver))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def updateLocations(host: String, version: BigDecimal, id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}/locations".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def updateRecurrenceLocations(host: String, version: BigDecimal, id: Long, body: Trip): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip/{id}/locations/recurrence".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def updateRecurrenceShipments(host: String, version: BigDecimal, id: Long, body: Trip): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip/{id}/shipments/recurrence".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def updateShipments(host: String, version: BigDecimal, id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}/shipments".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def updateTrip(host: String, version: BigDecimal, id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def updateTripNotifications(host: String, version: BigDecimal, id: Long, notifications: String)(implicit idQuery: QueryParam[Long], notificationsQuery: QueryParam[String]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/notifications".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("id", Some(idQuery.toParamString(id))), ("notifications", Some(notificationsQuery.toParamString(notifications))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Trip](req)

    } yield resp
  }

}

class HttpServiceTripApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createTrip(version: BigDecimal, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def delete(version: BigDecimal, id: Long): Task[Unit] = {
    val path = "/api/{version}/trip/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def driveTrip(version: BigDecimal, id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}/drive".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("recurrence", Some(recurrenceQuery.toParamString(recurrence))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def flexibleTrip(version: BigDecimal, id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}/flexible".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("recurrence", Some(recurrenceQuery.toParamString(recurrence))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def getTrip(version: BigDecimal, id: Long): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def getTripMatches(version: BigDecimal, id: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, matchedHasRoute: Boolean, matchedHasDriver: Boolean)(implicit matchedHasRouteQuery: QueryParam[Boolean], matchedHasDriverQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip/{id}/match".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("matchedHasRoute", Some(matchedHasRouteQuery.toParamString(matchedHasRoute))), ("matchedHasDriver", Some(matchedHasDriverQuery.toParamString(matchedHasDriver))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def processTripMatches(version: BigDecimal, startDate: Long, endDate: Long, tripId: Long)(implicit startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tripIdQuery: QueryParam[Long]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip/match/process".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tripId", Some(tripIdQuery.toParamString(tripId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def ride(version: BigDecimal, id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}/ride".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("recurrence", Some(recurrenceQuery.toParamString(recurrence))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def search(version: BigDecimal, accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, startDate: Long, endDate: Long, hasNotifications: Boolean)(implicit accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], hasNotificationsQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("hasNotifications", Some(hasNotificationsQuery.toParamString(hasNotifications))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def searchTrips(version: BigDecimal, accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, startDate: Long, endDate: Long, matchedHasRoute: Boolean, matchedHasDriver: Boolean)(implicit accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], matchedHasRouteQuery: QueryParam[Boolean], matchedHasDriverQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip/match".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("matchedHasRoute", Some(matchedHasRouteQuery.toParamString(matchedHasRoute))), ("matchedHasDriver", Some(matchedHasDriverQuery.toParamString(matchedHasDriver))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def updateLocations(version: BigDecimal, id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}/locations".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def updateRecurrenceLocations(version: BigDecimal, id: Long, body: Trip): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip/{id}/locations/recurrence".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def updateRecurrenceShipments(version: BigDecimal, id: Long, body: Trip): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/api/{version}/trip/{id}/shipments/recurrence".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[List[Trip]](req)

    } yield resp
  }

  def updateShipments(version: BigDecimal, id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}/shipments".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def updateTrip(version: BigDecimal, id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/{id}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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
      resp          <- client.expect[Trip](req)

    } yield resp
  }

  def updateTripNotifications(version: BigDecimal, id: Long, notifications: String)(implicit idQuery: QueryParam[Long], notificationsQuery: QueryParam[String]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/api/{version}/trip/notifications".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("id", Some(idQuery.toParamString(id))), ("notifications", Some(notificationsQuery.toParamString(notifications))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Trip](req)

    } yield resp
  }

}
