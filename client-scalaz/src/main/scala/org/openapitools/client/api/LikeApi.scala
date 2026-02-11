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

import org.openapitools.client.api.LikableResponse
import org.openapitools.client.api.SearchResponse

object LikeApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def registerLike(host: String, likableType: String, likableId: Long, deviceId: String, accountId: Long, permissionableType: String, permissionableId: Long, like: Boolean, app: String, gameType: String, appKey: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], likableTypeQuery: QueryParam[String], likableIdQuery: QueryParam[Long], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], likeQuery: QueryParam[Boolean], appQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[LikableResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LikableResponse] = jsonOf[LikableResponse]

    val path = "/like"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("likableType", Some(likableTypeQuery.toParamString(likableType))), ("likableId", Some(likableIdQuery.toParamString(likableId))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("like", Some(likeQuery.toParamString(like))), ("app", Some(appQuery.toParamString(app))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LikableResponse](req)

    } yield resp
  }

  def removeLike(host: String, likableType: String, likableId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], likableTypeQuery: QueryParam[String], likableIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[LikableResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LikableResponse] = jsonOf[LikableResponse]

    val path = "/like/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("likableType", Some(likableTypeQuery.toParamString(likableType))), ("likableId", Some(likableIdQuery.toParamString(likableId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LikableResponse](req)

    } yield resp
  }

  def searchLikes(host: String, likableType: String, likableId: Long, deviceId: String, accountId: Long, connectionAccountIds: String, sortField: String = ID, descending: Boolean = true, updatedSince: Long, updatedBefore: Long, start: Integer = 0, limit: Integer = 20)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdsQuery: QueryParam[String], likableTypeQuery: QueryParam[String], likableIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], updatedSinceQuery: QueryParam[Long], updatedBeforeQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[SearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SearchResponse] = jsonOf[SearchResponse]

    val path = "/like/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("likableType", Some(likableTypeQuery.toParamString(likableType))), ("likableId", Some(likableIdQuery.toParamString(likableId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("updatedSince", Some(updatedSinceQuery.toParamString(updatedSince))), ("updatedBefore", Some(updatedBeforeQuery.toParamString(updatedBefore))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SearchResponse](req)

    } yield resp
  }

}

class HttpServiceLikeApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def registerLike(likableType: String, likableId: Long, deviceId: String, accountId: Long, permissionableType: String, permissionableId: Long, like: Boolean, app: String, gameType: String, appKey: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], likableTypeQuery: QueryParam[String], likableIdQuery: QueryParam[Long], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], likeQuery: QueryParam[Boolean], appQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[LikableResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LikableResponse] = jsonOf[LikableResponse]

    val path = "/like"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("likableType", Some(likableTypeQuery.toParamString(likableType))), ("likableId", Some(likableIdQuery.toParamString(likableId))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("like", Some(likeQuery.toParamString(like))), ("app", Some(appQuery.toParamString(app))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LikableResponse](req)

    } yield resp
  }

  def removeLike(likableType: String, likableId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], likableTypeQuery: QueryParam[String], likableIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[LikableResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LikableResponse] = jsonOf[LikableResponse]

    val path = "/like/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("likableType", Some(likableTypeQuery.toParamString(likableType))), ("likableId", Some(likableIdQuery.toParamString(likableId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LikableResponse](req)

    } yield resp
  }

  def searchLikes(likableType: String, likableId: Long, deviceId: String, accountId: Long, connectionAccountIds: String, sortField: String = ID, descending: Boolean = true, updatedSince: Long, updatedBefore: Long, start: Integer = 0, limit: Integer = 20)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdsQuery: QueryParam[String], likableTypeQuery: QueryParam[String], likableIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], updatedSinceQuery: QueryParam[Long], updatedBeforeQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[SearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SearchResponse] = jsonOf[SearchResponse]

    val path = "/like/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("likableType", Some(likableTypeQuery.toParamString(likableType))), ("likableId", Some(likableIdQuery.toParamString(likableId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("updatedSince", Some(updatedSinceQuery.toParamString(updatedSince))), ("updatedBefore", Some(updatedBeforeQuery.toParamString(updatedBefore))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SearchResponse](req)

    } yield resp
  }

}
