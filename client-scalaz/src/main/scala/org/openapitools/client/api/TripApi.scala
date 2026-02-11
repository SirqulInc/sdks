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

import org.openapitools.client.api.Trip

object TripApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createTrip(host: String, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip"

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

  def delete(host: String, id: Long): Task[Unit] = {
    val path = "/trip/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def driveTrip(host: String, id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}/drive".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def flexibleTrip(host: String, id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}/flexible".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getTrip(host: String, id: Long): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getTripMatches(host: String, id: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, matchedHasRoute: Boolean, matchedHasDriver: Boolean)(implicit matchedHasRouteQuery: QueryParam[Boolean], matchedHasDriverQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip/{id}/match".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def processTripMatches(host: String, startDate: Long, endDate: Long, tripId: Long)(implicit startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tripIdQuery: QueryParam[Long]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip/match/process"

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

  def ride(host: String, id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}/ride".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def search(host: String, accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, startDate: Long, endDate: Long, hasNotifications: Boolean)(implicit accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], hasNotificationsQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip"

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

  def searchTrips(host: String, accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, startDate: Long, endDate: Long, matchedHasRoute: Boolean, matchedHasDriver: Boolean)(implicit accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], matchedHasRouteQuery: QueryParam[Boolean], matchedHasDriverQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip/match"

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

  def updateLocations(host: String, id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}/locations".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateRecurrenceLocations(host: String, id: Long, body: Trip): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip/{id}/locations/recurrence".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateRecurrenceShipments(host: String, id: Long, body: Trip): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip/{id}/shipments/recurrence".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateShipments(host: String, id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}/shipments".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateTrip(host: String, id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateTripNotifications(host: String, id: Long, notifications: String)(implicit idQuery: QueryParam[Long], notificationsQuery: QueryParam[String]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/notifications"

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

  def createTrip(body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip"

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

  def delete(id: Long): Task[Unit] = {
    val path = "/trip/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def driveTrip(id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}/drive".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def flexibleTrip(id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}/flexible".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getTrip(id: Long): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def getTripMatches(id: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, matchedHasRoute: Boolean, matchedHasDriver: Boolean)(implicit matchedHasRouteQuery: QueryParam[Boolean], matchedHasDriverQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip/{id}/match".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def processTripMatches(startDate: Long, endDate: Long, tripId: Long)(implicit startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tripIdQuery: QueryParam[Long]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip/match/process"

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

  def ride(id: Long, recurrence: Boolean)(implicit recurrenceQuery: QueryParam[Boolean]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}/ride".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def search(accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, startDate: Long, endDate: Long, hasNotifications: Boolean)(implicit accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], hasNotificationsQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip"

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

  def searchTrips(accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, startDate: Long, endDate: Long, matchedHasRoute: Boolean, matchedHasDriver: Boolean)(implicit accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], matchedHasRouteQuery: QueryParam[Boolean], matchedHasDriverQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip/match"

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

  def updateLocations(id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}/locations".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateRecurrenceLocations(id: Long, body: Trip): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip/{id}/locations/recurrence".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateRecurrenceShipments(id: Long, body: Trip): Task[List[Trip]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Trip]] = jsonOf[List[Trip]]

    val path = "/trip/{id}/shipments/recurrence".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateShipments(id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}/shipments".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateTrip(id: Long, body: Trip): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/{id}".replaceAll("\\{" + "id" + "\\}",escape(id.toString))

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

  def updateTripNotifications(id: Long, notifications: String)(implicit idQuery: QueryParam[Long], notificationsQuery: QueryParam[String]): Task[Trip] = {
    implicit val returnTypeDecoder: EntityDecoder[Trip] = jsonOf[Trip]

    val path = "/trip/notifications"

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
