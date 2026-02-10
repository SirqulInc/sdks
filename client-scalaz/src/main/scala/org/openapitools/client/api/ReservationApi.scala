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

import org.openapitools.client.api.AvailabilityResponse
import org.openapitools.client.api.BigDecimal
import org.openapitools.client.api.ReservationResponse
import org.openapitools.client.api.TimeSlotResponse

object ReservationApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createReservation(host: String, version: BigDecimal, deviceId: String, accountId: Long, startDate: Long, endDate: Long, offerId: Long, offerLocationId: Long, appKey: String, metaData: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], metaDataQuery: QueryParam[String]): Task[Unit] = {
    val path = "/api/{version}/reservation/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deleteReservation(host: String, version: BigDecimal, reservationId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], reservationIdQuery: QueryParam[Long]): Task[Unit] = {
    val path = "/api/{version}/reservation/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("reservationId", Some(reservationIdQuery.toParamString(reservationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def reservableAvailability(host: String, version: BigDecimal, reservableId: Long, reservableType: String, deviceId: String, accountId: Long, availability: String, availabilitySummary: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], reservableIdQuery: QueryParam[Long], reservableTypeQuery: QueryParam[String], availabilityQuery: QueryParam[String], availabilitySummaryQuery: QueryParam[String]): Task[List[AvailabilityResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AvailabilityResponse]] = jsonOf[List[AvailabilityResponse]]

    val path = "/api/{version}/reservable/availability/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("reservableId", Some(reservableIdQuery.toParamString(reservableId))), ("reservableType", Some(reservableTypeQuery.toParamString(reservableType))), ("availability", Some(availabilityQuery.toParamString(availability))), ("availabilitySummary", Some(availabilitySummaryQuery.toParamString(availabilitySummary))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AvailabilityResponse]](req)

    } yield resp
  }

  def searchAvailability(host: String, version: BigDecimal, reservableId: Long, reservableType: String, deviceId: String, accountId: Long, startDate: Long, endDate: Long, start: Integer = 0, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], reservableIdQuery: QueryParam[Long], reservableTypeQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[AvailabilityResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AvailabilityResponse]] = jsonOf[List[AvailabilityResponse]]

    val path = "/api/{version}/reservable/availability/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("reservableId", Some(reservableIdQuery.toParamString(reservableId))), ("reservableType", Some(reservableTypeQuery.toParamString(reservableType))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AvailabilityResponse]](req)

    } yield resp
  }

  def searchReservations(host: String, version: BigDecimal, deviceId: String, appKey: String, accountId: Long, filterAccountId: Long, reservableId: Long, reservableType: String, keyword: String, startDate: Long, endDate: Long, start: Integer = 0, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], accountIdQuery: QueryParam[Long], filterAccountIdQuery: QueryParam[Long], reservableIdQuery: QueryParam[Long], reservableTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ReservationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ReservationResponse]] = jsonOf[List[ReservationResponse]]

    val path = "/api/{version}/reservation/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("filterAccountId", Some(filterAccountIdQuery.toParamString(filterAccountId))), ("reservableId", Some(reservableIdQuery.toParamString(reservableId))), ("reservableType", Some(reservableTypeQuery.toParamString(reservableType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ReservationResponse]](req)

    } yield resp
  }

  def searchSchedule(host: String, version: BigDecimal, reservableId: Long, reservableType: String, startDate: Long, endDate: Long, deviceId: String, accountId: Long, timeBucketMins: Integer = 30)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], reservableIdQuery: QueryParam[Long], reservableTypeQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], timeBucketMinsQuery: QueryParam[Integer]): Task[List[TimeSlotResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[TimeSlotResponse]] = jsonOf[List[TimeSlotResponse]]

    val path = "/api/{version}/reservable/schedule/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("reservableId", Some(reservableIdQuery.toParamString(reservableId))), ("reservableType", Some(reservableTypeQuery.toParamString(reservableType))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("timeBucketMins", Some(timeBucketMinsQuery.toParamString(timeBucketMins))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[TimeSlotResponse]](req)

    } yield resp
  }

}

class HttpServiceReservationApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createReservation(version: BigDecimal, deviceId: String, accountId: Long, startDate: Long, endDate: Long, offerId: Long, offerLocationId: Long, appKey: String, metaData: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], metaDataQuery: QueryParam[String]): Task[Unit] = {
    val path = "/api/{version}/reservation/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def deleteReservation(version: BigDecimal, reservationId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], reservationIdQuery: QueryParam[Long]): Task[Unit] = {
    val path = "/api/{version}/reservation/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("reservationId", Some(reservationIdQuery.toParamString(reservationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.fetch[Unit](req)(_ => Task.now(()))

    } yield resp
  }

  def reservableAvailability(version: BigDecimal, reservableId: Long, reservableType: String, deviceId: String, accountId: Long, availability: String, availabilitySummary: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], reservableIdQuery: QueryParam[Long], reservableTypeQuery: QueryParam[String], availabilityQuery: QueryParam[String], availabilitySummaryQuery: QueryParam[String]): Task[List[AvailabilityResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AvailabilityResponse]] = jsonOf[List[AvailabilityResponse]]

    val path = "/api/{version}/reservable/availability/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("reservableId", Some(reservableIdQuery.toParamString(reservableId))), ("reservableType", Some(reservableTypeQuery.toParamString(reservableType))), ("availability", Some(availabilityQuery.toParamString(availability))), ("availabilitySummary", Some(availabilitySummaryQuery.toParamString(availabilitySummary))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AvailabilityResponse]](req)

    } yield resp
  }

  def searchAvailability(version: BigDecimal, reservableId: Long, reservableType: String, deviceId: String, accountId: Long, startDate: Long, endDate: Long, start: Integer = 0, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], reservableIdQuery: QueryParam[Long], reservableTypeQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[AvailabilityResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AvailabilityResponse]] = jsonOf[List[AvailabilityResponse]]

    val path = "/api/{version}/reservable/availability/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("reservableId", Some(reservableIdQuery.toParamString(reservableId))), ("reservableType", Some(reservableTypeQuery.toParamString(reservableType))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AvailabilityResponse]](req)

    } yield resp
  }

  def searchReservations(version: BigDecimal, deviceId: String, appKey: String, accountId: Long, filterAccountId: Long, reservableId: Long, reservableType: String, keyword: String, startDate: Long, endDate: Long, start: Integer = 0, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], appKeyQuery: QueryParam[String], accountIdQuery: QueryParam[Long], filterAccountIdQuery: QueryParam[Long], reservableIdQuery: QueryParam[Long], reservableTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ReservationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ReservationResponse]] = jsonOf[List[ReservationResponse]]

    val path = "/api/{version}/reservation/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("filterAccountId", Some(filterAccountIdQuery.toParamString(filterAccountId))), ("reservableId", Some(reservableIdQuery.toParamString(reservableId))), ("reservableType", Some(reservableTypeQuery.toParamString(reservableType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ReservationResponse]](req)

    } yield resp
  }

  def searchSchedule(version: BigDecimal, reservableId: Long, reservableType: String, startDate: Long, endDate: Long, deviceId: String, accountId: Long, timeBucketMins: Integer = 30)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], reservableIdQuery: QueryParam[Long], reservableTypeQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], timeBucketMinsQuery: QueryParam[Integer]): Task[List[TimeSlotResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[TimeSlotResponse]] = jsonOf[List[TimeSlotResponse]]

    val path = "/api/{version}/reservable/schedule/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("reservableId", Some(reservableIdQuery.toParamString(reservableId))), ("reservableType", Some(reservableTypeQuery.toParamString(reservableType))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("timeBucketMins", Some(timeBucketMinsQuery.toParamString(timeBucketMins))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[TimeSlotResponse]](req)

    } yield resp
  }

}
