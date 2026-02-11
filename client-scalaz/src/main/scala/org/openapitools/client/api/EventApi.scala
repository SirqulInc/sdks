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

import org.openapitools.client.api.EventAttendanceResponse
import org.openapitools.client.api.OfferResponse
import org.openapitools.client.api.OfferShortResponse
import org.openapitools.client.api.SirqulResponse

object EventApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def attendEvent(host: String, deviceId: String, accountId: Long, appKey: String, listingId: Long, retailerLocationId: Long, offerLocationId: Long, transactionId: Long, status: Integer, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], listingIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], transactionIdQuery: QueryParam[Long], statusQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[OfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferResponse] = jsonOf[OfferResponse]

    val path = "/event/attend"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("transactionId", Some(transactionIdQuery.toParamString(transactionId))), ("status", Some(statusQuery.toParamString(status))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferResponse](req)

    } yield resp
  }

  def createEvent(host: String, accountId: Long, title: String, retailerLocationIds: String, subTitle: String, details: String, categoryIds: String, filterIds: String, active: Boolean, imageAssetId: Long, redeemableStart: Long, redeemableEnd: Long, metaData: String)(implicit accountIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], imageAssetIdQuery: QueryParam[Long], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long], metaDataQuery: QueryParam[String]): Task[OfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferResponse] = jsonOf[OfferResponse]

    val path = "/event/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferResponse](req)

    } yield resp
  }

  def deleteEvent(host: String, accountId: Long, eventId: Long)(implicit accountIdQuery: QueryParam[Long], eventIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/event/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("eventId", Some(eventIdQuery.toParamString(eventId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getEvent(host: String, accountId: Long, eventId: Long)(implicit accountIdQuery: QueryParam[Long], eventIdQuery: QueryParam[Long]): Task[OfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferResponse] = jsonOf[OfferResponse]

    val path = "/event/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("eventId", Some(eventIdQuery.toParamString(eventId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferResponse](req)

    } yield resp
  }

  def searchEventTransactions(host: String, deviceId: String, accountId: Long, appKey: String, keyword: String, retailerId: Long, retailerLocationId: Long, excludeRetailerLocationId: Long, listingId: Long, offerId: Long, offerLocationId: Long, customerAccountIds: String, affiliatedCategoryIds: String, startDate: Long, endDate: Long, statuses: String, sortField: String, descending: Boolean, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], excludeRetailerLocationIdQuery: QueryParam[Long], listingIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], customerAccountIdsQuery: QueryParam[String], affiliatedCategoryIdsQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], statusesQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[EventAttendanceResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[EventAttendanceResponse]] = jsonOf[List[EventAttendanceResponse]]

    val path = "/event/attendance/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("excludeRetailerLocationId", Some(excludeRetailerLocationIdQuery.toParamString(excludeRetailerLocationId))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("customerAccountIds", Some(customerAccountIdsQuery.toParamString(customerAccountIds))), ("affiliatedCategoryIds", Some(affiliatedCategoryIdsQuery.toParamString(affiliatedCategoryIds))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[EventAttendanceResponse]](req)

    } yield resp
  }

  def searchEvents(host: String, accountId: Long, keyword: String, activeOnly: Boolean, categoryIds: String, filterIds: String, offerAudienceIds: String, transactionAudienceIds: String, sortField: String, descending: Boolean, startDate: Long, endDate: Long, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], activeOnlyQuery: QueryParam[Boolean], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], offerAudienceIdsQuery: QueryParam[String], transactionAudienceIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[OfferShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferShortResponse]] = jsonOf[List[OfferShortResponse]]

    val path = "/event/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("offerAudienceIds", Some(offerAudienceIdsQuery.toParamString(offerAudienceIds))), ("transactionAudienceIds", Some(transactionAudienceIdsQuery.toParamString(transactionAudienceIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferShortResponse]](req)

    } yield resp
  }

  def updateEvent(host: String, accountId: Long, eventId: Long, retailerLocationIds: String, title: String, subTitle: String, details: String, categoryIds: String, filterIds: String, active: Boolean, imageAssetId: Long, redeemableStart: Long, redeemableEnd: Long)(implicit accountIdQuery: QueryParam[Long], eventIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], imageAssetIdQuery: QueryParam[Long], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long]): Task[OfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferResponse] = jsonOf[OfferResponse]

    val path = "/event/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("eventId", Some(eventIdQuery.toParamString(eventId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferResponse](req)

    } yield resp
  }

}

class HttpServiceEventApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def attendEvent(deviceId: String, accountId: Long, appKey: String, listingId: Long, retailerLocationId: Long, offerLocationId: Long, transactionId: Long, status: Integer, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], listingIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], transactionIdQuery: QueryParam[Long], statusQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[OfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferResponse] = jsonOf[OfferResponse]

    val path = "/event/attend"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("transactionId", Some(transactionIdQuery.toParamString(transactionId))), ("status", Some(statusQuery.toParamString(status))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferResponse](req)

    } yield resp
  }

  def createEvent(accountId: Long, title: String, retailerLocationIds: String, subTitle: String, details: String, categoryIds: String, filterIds: String, active: Boolean, imageAssetId: Long, redeemableStart: Long, redeemableEnd: Long, metaData: String)(implicit accountIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], imageAssetIdQuery: QueryParam[Long], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long], metaDataQuery: QueryParam[String]): Task[OfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferResponse] = jsonOf[OfferResponse]

    val path = "/event/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferResponse](req)

    } yield resp
  }

  def deleteEvent(accountId: Long, eventId: Long)(implicit accountIdQuery: QueryParam[Long], eventIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/event/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("eventId", Some(eventIdQuery.toParamString(eventId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getEvent(accountId: Long, eventId: Long)(implicit accountIdQuery: QueryParam[Long], eventIdQuery: QueryParam[Long]): Task[OfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferResponse] = jsonOf[OfferResponse]

    val path = "/event/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("eventId", Some(eventIdQuery.toParamString(eventId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferResponse](req)

    } yield resp
  }

  def searchEventTransactions(deviceId: String, accountId: Long, appKey: String, keyword: String, retailerId: Long, retailerLocationId: Long, excludeRetailerLocationId: Long, listingId: Long, offerId: Long, offerLocationId: Long, customerAccountIds: String, affiliatedCategoryIds: String, startDate: Long, endDate: Long, statuses: String, sortField: String, descending: Boolean, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], excludeRetailerLocationIdQuery: QueryParam[Long], listingIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], customerAccountIdsQuery: QueryParam[String], affiliatedCategoryIdsQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], statusesQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[EventAttendanceResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[EventAttendanceResponse]] = jsonOf[List[EventAttendanceResponse]]

    val path = "/event/attendance/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("excludeRetailerLocationId", Some(excludeRetailerLocationIdQuery.toParamString(excludeRetailerLocationId))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("customerAccountIds", Some(customerAccountIdsQuery.toParamString(customerAccountIds))), ("affiliatedCategoryIds", Some(affiliatedCategoryIdsQuery.toParamString(affiliatedCategoryIds))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[EventAttendanceResponse]](req)

    } yield resp
  }

  def searchEvents(accountId: Long, keyword: String, activeOnly: Boolean, categoryIds: String, filterIds: String, offerAudienceIds: String, transactionAudienceIds: String, sortField: String, descending: Boolean, startDate: Long, endDate: Long, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], activeOnlyQuery: QueryParam[Boolean], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], offerAudienceIdsQuery: QueryParam[String], transactionAudienceIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[OfferShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferShortResponse]] = jsonOf[List[OfferShortResponse]]

    val path = "/event/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("offerAudienceIds", Some(offerAudienceIdsQuery.toParamString(offerAudienceIds))), ("transactionAudienceIds", Some(transactionAudienceIdsQuery.toParamString(transactionAudienceIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferShortResponse]](req)

    } yield resp
  }

  def updateEvent(accountId: Long, eventId: Long, retailerLocationIds: String, title: String, subTitle: String, details: String, categoryIds: String, filterIds: String, active: Boolean, imageAssetId: Long, redeemableStart: Long, redeemableEnd: Long)(implicit accountIdQuery: QueryParam[Long], eventIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], imageAssetIdQuery: QueryParam[Long], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long]): Task[OfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferResponse] = jsonOf[OfferResponse]

    val path = "/event/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("eventId", Some(eventIdQuery.toParamString(eventId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferResponse](req)

    } yield resp
  }

}
