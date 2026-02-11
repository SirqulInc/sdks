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

import org.openapitools.client.api.AccountResponse
import org.openapitools.client.api.SearchResponse
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.WrappedResponse

object FavoriteApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addFavorite(host: String, favoritableId: Long, favoritableType: String, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], favoritableIdQuery: QueryParam[Long], favoritableTypeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[WrappedResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WrappedResponse] = jsonOf[WrappedResponse]

    val path = "/favorite/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("favoritableId", Some(favoritableIdQuery.toParamString(favoritableId))), ("favoritableType", Some(favoritableTypeQuery.toParamString(favoritableType))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WrappedResponse](req)

    } yield resp
  }

  def deleteFavorite(host: String, deviceId: String, accountId: Long, favoriteId: Long, favoritableId: Long, favoritableType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], favoriteIdQuery: QueryParam[Long], favoritableIdQuery: QueryParam[Long], favoritableTypeQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/favorite/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("favoriteId", Some(favoriteIdQuery.toParamString(favoriteId))), ("favoritableId", Some(favoritableIdQuery.toParamString(favoritableId))), ("favoritableType", Some(favoritableTypeQuery.toParamString(favoritableType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getFavorite(host: String, favoriteId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], favoriteIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[WrappedResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WrappedResponse] = jsonOf[WrappedResponse]

    val path = "/favorite/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("favoriteId", Some(favoriteIdQuery.toParamString(favoriteId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WrappedResponse](req)

    } yield resp
  }

  def searchFavorites(host: String, favoritableType: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, returnFullResponse: Boolean, deviceId: String, accountId: Long, connectionAccountId: Long, secondaryType: String, keyword: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], favoritableTypeQuery: QueryParam[String], secondaryTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], returnFullResponseQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SearchResponse] = jsonOf[SearchResponse]

    val path = "/favorite/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("favoritableType", Some(favoritableTypeQuery.toParamString(favoritableType))), ("secondaryType", Some(secondaryTypeQuery.toParamString(secondaryType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SearchResponse](req)

    } yield resp
  }

  def whoHasFavorited(host: String, favoritableId: Long, favoritableType: String, start: Integer, limit: Integer, deviceId: String, accountId: Long, latitude: Double, longitude: Double, keyword: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], favoritableIdQuery: QueryParam[Long], favoritableTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[AccountResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AccountResponse]] = jsonOf[List[AccountResponse]]

    val path = "/favorite/whois"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("favoritableId", Some(favoritableIdQuery.toParamString(favoritableId))), ("favoritableType", Some(favoritableTypeQuery.toParamString(favoritableType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AccountResponse]](req)

    } yield resp
  }

}

class HttpServiceFavoriteApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addFavorite(favoritableId: Long, favoritableType: String, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], favoritableIdQuery: QueryParam[Long], favoritableTypeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[WrappedResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WrappedResponse] = jsonOf[WrappedResponse]

    val path = "/favorite/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("favoritableId", Some(favoritableIdQuery.toParamString(favoritableId))), ("favoritableType", Some(favoritableTypeQuery.toParamString(favoritableType))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WrappedResponse](req)

    } yield resp
  }

  def deleteFavorite(deviceId: String, accountId: Long, favoriteId: Long, favoritableId: Long, favoritableType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], favoriteIdQuery: QueryParam[Long], favoritableIdQuery: QueryParam[Long], favoritableTypeQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/favorite/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("favoriteId", Some(favoriteIdQuery.toParamString(favoriteId))), ("favoritableId", Some(favoritableIdQuery.toParamString(favoritableId))), ("favoritableType", Some(favoritableTypeQuery.toParamString(favoritableType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getFavorite(favoriteId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], favoriteIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[WrappedResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WrappedResponse] = jsonOf[WrappedResponse]

    val path = "/favorite/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("favoriteId", Some(favoriteIdQuery.toParamString(favoriteId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WrappedResponse](req)

    } yield resp
  }

  def searchFavorites(favoritableType: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, returnFullResponse: Boolean, deviceId: String, accountId: Long, connectionAccountId: Long, secondaryType: String, keyword: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], favoritableTypeQuery: QueryParam[String], secondaryTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], returnFullResponseQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SearchResponse] = jsonOf[SearchResponse]

    val path = "/favorite/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("favoritableType", Some(favoritableTypeQuery.toParamString(favoritableType))), ("secondaryType", Some(secondaryTypeQuery.toParamString(secondaryType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SearchResponse](req)

    } yield resp
  }

  def whoHasFavorited(favoritableId: Long, favoritableType: String, start: Integer, limit: Integer, deviceId: String, accountId: Long, latitude: Double, longitude: Double, keyword: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], favoritableIdQuery: QueryParam[Long], favoritableTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[AccountResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AccountResponse]] = jsonOf[List[AccountResponse]]

    val path = "/favorite/whois"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("favoritableId", Some(favoritableIdQuery.toParamString(favoritableId))), ("favoritableType", Some(favoritableTypeQuery.toParamString(favoritableType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AccountResponse]](req)

    } yield resp
  }

}
