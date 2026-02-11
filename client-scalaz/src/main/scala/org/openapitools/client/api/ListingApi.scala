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

import org.openapitools.client.api.ListingFullResponse
import org.openapitools.client.api.ListingGroupResponse
import org.openapitools.client.api.ListingResponse
import org.openapitools.client.api.SirqulResponse

object ListingApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createListing(host: String, accountId: Long, name: String, filterIds: String, description: String, start: Long, end: Long, locationName: String, locationDescription: String, isPrivate: Boolean = false, externalId: String, externalId2: String, externalGroupId: String, active: Boolean, metaData: String)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], filterIdsQuery: QueryParam[String], descriptionQuery: QueryParam[String], startQuery: QueryParam[Long], endQuery: QueryParam[Long], locationNameQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], isPrivateQuery: QueryParam[Boolean], externalIdQuery: QueryParam[String], externalId2Query: QueryParam[String], externalGroupIdQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String]): Task[ListingFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ListingFullResponse] = jsonOf[ListingFullResponse]

    val path = "/listing/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("description", Some(descriptionQuery.toParamString(description))), ("start", Some(startQuery.toParamString(start))), ("end", Some(endQuery.toParamString(end))), ("locationName", Some(locationNameQuery.toParamString(locationName))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("isPrivate", Some(isPrivateQuery.toParamString(isPrivate))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalId2", Some(externalId2Query.toParamString(externalId2))), ("externalGroupId", Some(externalGroupIdQuery.toParamString(externalGroupId))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ListingFullResponse](req)

    } yield resp
  }

  def deleteListing(host: String, accountId: Long, listingId: Long)(implicit accountIdQuery: QueryParam[Long], listingIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/listing/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("listingId", Some(listingIdQuery.toParamString(listingId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getListing(host: String, listingId: Long)(implicit listingIdQuery: QueryParam[Long]): Task[ListingFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ListingFullResponse] = jsonOf[ListingFullResponse]

    val path = "/listing/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("listingId", Some(listingIdQuery.toParamString(listingId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ListingFullResponse](req)

    } yield resp
  }

  def searchListing(host: String, accountId: Long, keyword: String, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = false, latitude: Double, longitude: Double, startDate: Long, endDate: Long, categoryIds: String, filterIds: String, useListingOrderIds: Boolean = true, externalId: String, externalId2: String, externalGroupId: String)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], useListingOrderIdsQuery: QueryParam[Boolean], externalIdQuery: QueryParam[String], externalId2Query: QueryParam[String], externalGroupIdQuery: QueryParam[String]): Task[List[ListingResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ListingResponse]] = jsonOf[List[ListingResponse]]

    val path = "/listing/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("useListingOrderIds", Some(useListingOrderIdsQuery.toParamString(useListingOrderIds))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalId2", Some(externalId2Query.toParamString(externalId2))), ("externalGroupId", Some(externalGroupIdQuery.toParamString(externalGroupId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ListingResponse]](req)

    } yield resp
  }

  def summaryListing(host: String, accountId: Long, startDate: Long, categoryIds: String, daysToInclude: Integer = 15, useListingOrderIds: Boolean = true)(implicit accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], daysToIncludeQuery: QueryParam[Integer], useListingOrderIdsQuery: QueryParam[Boolean]): Task[List[ListingGroupResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ListingGroupResponse]] = jsonOf[List[ListingGroupResponse]]

    val path = "/listing/summary"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("daysToInclude", Some(daysToIncludeQuery.toParamString(daysToInclude))), ("useListingOrderIds", Some(useListingOrderIdsQuery.toParamString(useListingOrderIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ListingGroupResponse]](req)

    } yield resp
  }

  def updateListing(host: String, accountId: Long, listingId: Long, filterIds: String, name: String, description: String, start: Long, end: Long, locationName: String, locationDescription: String, isPrivate: Boolean, externalId: String, externalId2: String, externalGroupId: String, active: Boolean, metaData: String)(implicit accountIdQuery: QueryParam[Long], listingIdQuery: QueryParam[Long], filterIdsQuery: QueryParam[String], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], startQuery: QueryParam[Long], endQuery: QueryParam[Long], locationNameQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], isPrivateQuery: QueryParam[Boolean], externalIdQuery: QueryParam[String], externalId2Query: QueryParam[String], externalGroupIdQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String]): Task[ListingFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ListingFullResponse] = jsonOf[ListingFullResponse]

    val path = "/listing/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("start", Some(startQuery.toParamString(start))), ("end", Some(endQuery.toParamString(end))), ("locationName", Some(locationNameQuery.toParamString(locationName))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("isPrivate", Some(isPrivateQuery.toParamString(isPrivate))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalId2", Some(externalId2Query.toParamString(externalId2))), ("externalGroupId", Some(externalGroupIdQuery.toParamString(externalGroupId))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ListingFullResponse](req)

    } yield resp
  }

}

class HttpServiceListingApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createListing(accountId: Long, name: String, filterIds: String, description: String, start: Long, end: Long, locationName: String, locationDescription: String, isPrivate: Boolean = false, externalId: String, externalId2: String, externalGroupId: String, active: Boolean, metaData: String)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], filterIdsQuery: QueryParam[String], descriptionQuery: QueryParam[String], startQuery: QueryParam[Long], endQuery: QueryParam[Long], locationNameQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], isPrivateQuery: QueryParam[Boolean], externalIdQuery: QueryParam[String], externalId2Query: QueryParam[String], externalGroupIdQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String]): Task[ListingFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ListingFullResponse] = jsonOf[ListingFullResponse]

    val path = "/listing/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("description", Some(descriptionQuery.toParamString(description))), ("start", Some(startQuery.toParamString(start))), ("end", Some(endQuery.toParamString(end))), ("locationName", Some(locationNameQuery.toParamString(locationName))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("isPrivate", Some(isPrivateQuery.toParamString(isPrivate))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalId2", Some(externalId2Query.toParamString(externalId2))), ("externalGroupId", Some(externalGroupIdQuery.toParamString(externalGroupId))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ListingFullResponse](req)

    } yield resp
  }

  def deleteListing(accountId: Long, listingId: Long)(implicit accountIdQuery: QueryParam[Long], listingIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/listing/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("listingId", Some(listingIdQuery.toParamString(listingId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getListing(listingId: Long)(implicit listingIdQuery: QueryParam[Long]): Task[ListingFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ListingFullResponse] = jsonOf[ListingFullResponse]

    val path = "/listing/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("listingId", Some(listingIdQuery.toParamString(listingId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ListingFullResponse](req)

    } yield resp
  }

  def searchListing(accountId: Long, keyword: String, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = false, latitude: Double, longitude: Double, startDate: Long, endDate: Long, categoryIds: String, filterIds: String, useListingOrderIds: Boolean = true, externalId: String, externalId2: String, externalGroupId: String)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], useListingOrderIdsQuery: QueryParam[Boolean], externalIdQuery: QueryParam[String], externalId2Query: QueryParam[String], externalGroupIdQuery: QueryParam[String]): Task[List[ListingResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ListingResponse]] = jsonOf[List[ListingResponse]]

    val path = "/listing/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("useListingOrderIds", Some(useListingOrderIdsQuery.toParamString(useListingOrderIds))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalId2", Some(externalId2Query.toParamString(externalId2))), ("externalGroupId", Some(externalGroupIdQuery.toParamString(externalGroupId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ListingResponse]](req)

    } yield resp
  }

  def summaryListing(accountId: Long, startDate: Long, categoryIds: String, daysToInclude: Integer = 15, useListingOrderIds: Boolean = true)(implicit accountIdQuery: QueryParam[Long], startDateQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], daysToIncludeQuery: QueryParam[Integer], useListingOrderIdsQuery: QueryParam[Boolean]): Task[List[ListingGroupResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ListingGroupResponse]] = jsonOf[List[ListingGroupResponse]]

    val path = "/listing/summary"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("daysToInclude", Some(daysToIncludeQuery.toParamString(daysToInclude))), ("useListingOrderIds", Some(useListingOrderIdsQuery.toParamString(useListingOrderIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ListingGroupResponse]](req)

    } yield resp
  }

  def updateListing(accountId: Long, listingId: Long, filterIds: String, name: String, description: String, start: Long, end: Long, locationName: String, locationDescription: String, isPrivate: Boolean, externalId: String, externalId2: String, externalGroupId: String, active: Boolean, metaData: String)(implicit accountIdQuery: QueryParam[Long], listingIdQuery: QueryParam[Long], filterIdsQuery: QueryParam[String], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], startQuery: QueryParam[Long], endQuery: QueryParam[Long], locationNameQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], isPrivateQuery: QueryParam[Boolean], externalIdQuery: QueryParam[String], externalId2Query: QueryParam[String], externalGroupIdQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String]): Task[ListingFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ListingFullResponse] = jsonOf[ListingFullResponse]

    val path = "/listing/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("start", Some(startQuery.toParamString(start))), ("end", Some(endQuery.toParamString(end))), ("locationName", Some(locationNameQuery.toParamString(locationName))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("isPrivate", Some(isPrivateQuery.toParamString(isPrivate))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalId2", Some(externalId2Query.toParamString(externalId2))), ("externalGroupId", Some(externalGroupIdQuery.toParamString(externalGroupId))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ListingFullResponse](req)

    } yield resp
  }

}
