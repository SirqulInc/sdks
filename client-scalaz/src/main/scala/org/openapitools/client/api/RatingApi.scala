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

import org.openapitools.client.api.RatingIndexResponse
import org.openapitools.client.api.RatingResponse
import org.openapitools.client.api.SirqulResponse

object RatingApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRating(host: String, ratableType: String, ratableId: Long, ratingValue: Integer, deviceId: String, accountId: Long, categoryId: Long, display: String, description: String, locationDescription: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ratableTypeQuery: QueryParam[String], ratableIdQuery: QueryParam[Long], ratingValueQuery: QueryParam[Integer], categoryIdQuery: QueryParam[Long], displayQuery: QueryParam[String], descriptionQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[RatingResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RatingResponse] = jsonOf[RatingResponse]

    val path = "/rating/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ratableType", Some(ratableTypeQuery.toParamString(ratableType))), ("ratableId", Some(ratableIdQuery.toParamString(ratableId))), ("ratingValue", Some(ratingValueQuery.toParamString(ratingValue))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("display", Some(displayQuery.toParamString(display))), ("description", Some(descriptionQuery.toParamString(description))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RatingResponse](req)

    } yield resp
  }

  def deleteRating(host: String, ratingId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ratingIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/rating/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ratingId", Some(ratingIdQuery.toParamString(ratingId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchLocationRatingIndexes(host: String, categoryIds: String, keyword: String, locationType: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, searchRange: Double, latitude: Double, longitude: Double, returnOverallRating: Boolean, distanceUnit: String, returnRetailer: Boolean, returnAssets: Boolean, returnOffers: Boolean, returnCategories: Boolean, returnFilters: Boolean)(implicit categoryIdsQuery: QueryParam[String], keywordQuery: QueryParam[String], locationTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], searchRangeQuery: QueryParam[Double], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnOverallRatingQuery: QueryParam[Boolean], distanceUnitQuery: QueryParam[String], returnRetailerQuery: QueryParam[Boolean], returnAssetsQuery: QueryParam[Boolean], returnOffersQuery: QueryParam[Boolean], returnCategoriesQuery: QueryParam[Boolean], returnFiltersQuery: QueryParam[Boolean]): Task[List[RatingIndexResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RatingIndexResponse]] = jsonOf[List[RatingIndexResponse]]

    val path = "/location/rating/index/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnOverallRating", Some(returnOverallRatingQuery.toParamString(returnOverallRating))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))), ("returnRetailer", Some(returnRetailerQuery.toParamString(returnRetailer))), ("returnAssets", Some(returnAssetsQuery.toParamString(returnAssets))), ("returnOffers", Some(returnOffersQuery.toParamString(returnOffers))), ("returnCategories", Some(returnCategoriesQuery.toParamString(returnCategories))), ("returnFilters", Some(returnFiltersQuery.toParamString(returnFilters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RatingIndexResponse]](req)

    } yield resp
  }

  def searchRatingIndexes(host: String, ratableType: String, ratableIds: String, categoryIds: String, secondaryType: String, keyword: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, latitude: Double, longitude: Double, returnRatable: Boolean, returnOverallRating: Boolean)(implicit ratableTypeQuery: QueryParam[String], ratableIdsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], secondaryTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnRatableQuery: QueryParam[Boolean], returnOverallRatingQuery: QueryParam[Boolean]): Task[List[RatingIndexResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RatingIndexResponse]] = jsonOf[List[RatingIndexResponse]]

    val path = "/rating/index/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("ratableType", Some(ratableTypeQuery.toParamString(ratableType))), ("ratableIds", Some(ratableIdsQuery.toParamString(ratableIds))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("secondaryType", Some(secondaryTypeQuery.toParamString(secondaryType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnRatable", Some(returnRatableQuery.toParamString(returnRatable))), ("returnOverallRating", Some(returnOverallRatingQuery.toParamString(returnOverallRating))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RatingIndexResponse]](req)

    } yield resp
  }

  def searchRatings(host: String, deviceId: String, accountId: Long, filterAccountId: Long, ratableType: String, ratableId: Long, categoryIds: String, keyword: String, sortField: String, descending: Boolean, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], filterAccountIdQuery: QueryParam[Long], ratableTypeQuery: QueryParam[String], ratableIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[RatingResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RatingResponse]] = jsonOf[List[RatingResponse]]

    val path = "/rating/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("filterAccountId", Some(filterAccountIdQuery.toParamString(filterAccountId))), ("ratableType", Some(ratableTypeQuery.toParamString(ratableType))), ("ratableId", Some(ratableIdQuery.toParamString(ratableId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RatingResponse]](req)

    } yield resp
  }

  def updateRating(host: String, ratingId: Long, deviceId: String, accountId: Long, ratingValue: Integer, categoryId: Long, display: String, description: String, locationDescription: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ratingIdQuery: QueryParam[Long], ratingValueQuery: QueryParam[Integer], categoryIdQuery: QueryParam[Long], displayQuery: QueryParam[String], descriptionQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[RatingResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RatingResponse] = jsonOf[RatingResponse]

    val path = "/rating/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ratingId", Some(ratingIdQuery.toParamString(ratingId))), ("ratingValue", Some(ratingValueQuery.toParamString(ratingValue))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("display", Some(displayQuery.toParamString(display))), ("description", Some(descriptionQuery.toParamString(description))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RatingResponse](req)

    } yield resp
  }

}

class HttpServiceRatingApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRating(ratableType: String, ratableId: Long, ratingValue: Integer, deviceId: String, accountId: Long, categoryId: Long, display: String, description: String, locationDescription: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ratableTypeQuery: QueryParam[String], ratableIdQuery: QueryParam[Long], ratingValueQuery: QueryParam[Integer], categoryIdQuery: QueryParam[Long], displayQuery: QueryParam[String], descriptionQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[RatingResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RatingResponse] = jsonOf[RatingResponse]

    val path = "/rating/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ratableType", Some(ratableTypeQuery.toParamString(ratableType))), ("ratableId", Some(ratableIdQuery.toParamString(ratableId))), ("ratingValue", Some(ratingValueQuery.toParamString(ratingValue))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("display", Some(displayQuery.toParamString(display))), ("description", Some(descriptionQuery.toParamString(description))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RatingResponse](req)

    } yield resp
  }

  def deleteRating(ratingId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ratingIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/rating/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ratingId", Some(ratingIdQuery.toParamString(ratingId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchLocationRatingIndexes(categoryIds: String, keyword: String, locationType: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, searchRange: Double, latitude: Double, longitude: Double, returnOverallRating: Boolean, distanceUnit: String, returnRetailer: Boolean, returnAssets: Boolean, returnOffers: Boolean, returnCategories: Boolean, returnFilters: Boolean)(implicit categoryIdsQuery: QueryParam[String], keywordQuery: QueryParam[String], locationTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], searchRangeQuery: QueryParam[Double], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnOverallRatingQuery: QueryParam[Boolean], distanceUnitQuery: QueryParam[String], returnRetailerQuery: QueryParam[Boolean], returnAssetsQuery: QueryParam[Boolean], returnOffersQuery: QueryParam[Boolean], returnCategoriesQuery: QueryParam[Boolean], returnFiltersQuery: QueryParam[Boolean]): Task[List[RatingIndexResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RatingIndexResponse]] = jsonOf[List[RatingIndexResponse]]

    val path = "/location/rating/index/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnOverallRating", Some(returnOverallRatingQuery.toParamString(returnOverallRating))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))), ("returnRetailer", Some(returnRetailerQuery.toParamString(returnRetailer))), ("returnAssets", Some(returnAssetsQuery.toParamString(returnAssets))), ("returnOffers", Some(returnOffersQuery.toParamString(returnOffers))), ("returnCategories", Some(returnCategoriesQuery.toParamString(returnCategories))), ("returnFilters", Some(returnFiltersQuery.toParamString(returnFilters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RatingIndexResponse]](req)

    } yield resp
  }

  def searchRatingIndexes(ratableType: String, ratableIds: String, categoryIds: String, secondaryType: String, keyword: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, latitude: Double, longitude: Double, returnRatable: Boolean, returnOverallRating: Boolean)(implicit ratableTypeQuery: QueryParam[String], ratableIdsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], secondaryTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnRatableQuery: QueryParam[Boolean], returnOverallRatingQuery: QueryParam[Boolean]): Task[List[RatingIndexResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RatingIndexResponse]] = jsonOf[List[RatingIndexResponse]]

    val path = "/rating/index/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("ratableType", Some(ratableTypeQuery.toParamString(ratableType))), ("ratableIds", Some(ratableIdsQuery.toParamString(ratableIds))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("secondaryType", Some(secondaryTypeQuery.toParamString(secondaryType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnRatable", Some(returnRatableQuery.toParamString(returnRatable))), ("returnOverallRating", Some(returnOverallRatingQuery.toParamString(returnOverallRating))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RatingIndexResponse]](req)

    } yield resp
  }

  def searchRatings(deviceId: String, accountId: Long, filterAccountId: Long, ratableType: String, ratableId: Long, categoryIds: String, keyword: String, sortField: String, descending: Boolean, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], filterAccountIdQuery: QueryParam[Long], ratableTypeQuery: QueryParam[String], ratableIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[RatingResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RatingResponse]] = jsonOf[List[RatingResponse]]

    val path = "/rating/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("filterAccountId", Some(filterAccountIdQuery.toParamString(filterAccountId))), ("ratableType", Some(ratableTypeQuery.toParamString(ratableType))), ("ratableId", Some(ratableIdQuery.toParamString(ratableId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RatingResponse]](req)

    } yield resp
  }

  def updateRating(ratingId: Long, deviceId: String, accountId: Long, ratingValue: Integer, categoryId: Long, display: String, description: String, locationDescription: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ratingIdQuery: QueryParam[Long], ratingValueQuery: QueryParam[Integer], categoryIdQuery: QueryParam[Long], displayQuery: QueryParam[String], descriptionQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[RatingResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RatingResponse] = jsonOf[RatingResponse]

    val path = "/rating/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ratingId", Some(ratingIdQuery.toParamString(ratingId))), ("ratingValue", Some(ratingValueQuery.toParamString(ratingValue))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("display", Some(displayQuery.toParamString(display))), ("description", Some(descriptionQuery.toParamString(description))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RatingResponse](req)

    } yield resp
  }

}
