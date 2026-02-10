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

import org.openapitools.client.api.AlbumContestListResponse
import org.openapitools.client.api.AlbumContestResponse
import org.openapitools.client.api.BigDecimal
import org.openapitools.client.api.SirqulResponse

object ContestApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addOrUpdateAlbumContest(host: String, version: BigDecimal, publicRead: Boolean, publicWrite: Boolean, publicDelete: Boolean, publicAdd: Boolean, visibility: String, includeFriendGroup: Boolean, deviceId: String, accountId: Long, gameType: String, appKey: String, contestType: String, albumContestId: Long, title: String, description: String, albumId1: Long, removeAlbum1: Boolean, albumId2: Long, removeAlbum2: Boolean, startDate: Long, endDate: Long, locationDescription: String, connectionIdsToAdd: String, connectionGroupIdsToAdd: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], contestTypeQuery: QueryParam[String], albumContestIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], albumId1Query: QueryParam[Long], removeAlbum1Query: QueryParam[Boolean], albumId2Query: QueryParam[Long], removeAlbum2Query: QueryParam[Boolean], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], publicReadQuery: QueryParam[Boolean], publicWriteQuery: QueryParam[Boolean], publicDeleteQuery: QueryParam[Boolean], publicAddQuery: QueryParam[Boolean], locationDescriptionQuery: QueryParam[String], visibilityQuery: QueryParam[String], connectionIdsToAddQuery: QueryParam[String], connectionGroupIdsToAddQuery: QueryParam[String], includeFriendGroupQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[AlbumContestResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumContestResponse] = jsonOf[AlbumContestResponse]

    val path = "/api/{version}/consumer/album/contest".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("contestType", Some(contestTypeQuery.toParamString(contestType))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("albumId1", Some(albumId1Query.toParamString(albumId1))), ("removeAlbum1", Some(removeAlbum1Query.toParamString(removeAlbum1))), ("albumId2", Some(albumId2Query.toParamString(albumId2))), ("removeAlbum2", Some(removeAlbum2Query.toParamString(removeAlbum2))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("publicRead", Some(publicReadQuery.toParamString(publicRead))), ("publicWrite", Some(publicWriteQuery.toParamString(publicWrite))), ("publicDelete", Some(publicDeleteQuery.toParamString(publicDelete))), ("publicAdd", Some(publicAddQuery.toParamString(publicAdd))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("connectionIdsToAdd", Some(connectionIdsToAddQuery.toParamString(connectionIdsToAdd))), ("connectionGroupIdsToAdd", Some(connectionGroupIdsToAddQuery.toParamString(connectionGroupIdsToAdd))), ("includeFriendGroup", Some(includeFriendGroupQuery.toParamString(includeFriendGroup))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumContestResponse](req)

    } yield resp
  }

  def approveAlbumContest(host: String, version: BigDecimal, albumContestId: Long, approvalStatus: String, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], approvalStatusQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/consumer/album/contest/approve".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteContest(host: String, version: BigDecimal, albumContestId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/consumer/album/contest/remove".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAlbumContest(host: String, version: BigDecimal, albumContestId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[AlbumContestResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumContestResponse] = jsonOf[AlbumContestResponse]

    val path = "/api/{version}/consumer/album/contest/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumContestResponse](req)

    } yield resp
  }

  def getAlbumContests(host: String, version: BigDecimal, filter: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, deviceId: String, accountId: Long, gameType: String, appKey: String, appType: String, contestType: String, ownerId: Long, q: String, keyword: String, i: Integer, l: Integer, dateCreated: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], appTypeQuery: QueryParam[String], contestTypeQuery: QueryParam[String], ownerIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], filterQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], dateCreatedQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[AlbumContestListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumContestListResponse] = jsonOf[AlbumContestListResponse]

    val path = "/api/{version}/consumer/album/contest/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appType", Some(appTypeQuery.toParamString(appType))), ("contestType", Some(contestTypeQuery.toParamString(contestType))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("filter", Some(filterQuery.toParamString(filter))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("dateCreated", Some(dateCreatedQuery.toParamString(dateCreated))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumContestListResponse](req)

    } yield resp
  }

  def voteOnAlbumContest(host: String, version: BigDecimal, albumContestId: Long, albumId: Long, deviceId: String, accountId: Long, contestType: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], contestTypeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[AlbumContestResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumContestResponse] = jsonOf[AlbumContestResponse]

    val path = "/api/{version}/consumer/album/contest/vote".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("contestType", Some(contestTypeQuery.toParamString(contestType))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumContestResponse](req)

    } yield resp
  }

}

class HttpServiceContestApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addOrUpdateAlbumContest(version: BigDecimal, publicRead: Boolean, publicWrite: Boolean, publicDelete: Boolean, publicAdd: Boolean, visibility: String, includeFriendGroup: Boolean, deviceId: String, accountId: Long, gameType: String, appKey: String, contestType: String, albumContestId: Long, title: String, description: String, albumId1: Long, removeAlbum1: Boolean, albumId2: Long, removeAlbum2: Boolean, startDate: Long, endDate: Long, locationDescription: String, connectionIdsToAdd: String, connectionGroupIdsToAdd: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], contestTypeQuery: QueryParam[String], albumContestIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], albumId1Query: QueryParam[Long], removeAlbum1Query: QueryParam[Boolean], albumId2Query: QueryParam[Long], removeAlbum2Query: QueryParam[Boolean], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], publicReadQuery: QueryParam[Boolean], publicWriteQuery: QueryParam[Boolean], publicDeleteQuery: QueryParam[Boolean], publicAddQuery: QueryParam[Boolean], locationDescriptionQuery: QueryParam[String], visibilityQuery: QueryParam[String], connectionIdsToAddQuery: QueryParam[String], connectionGroupIdsToAddQuery: QueryParam[String], includeFriendGroupQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[AlbumContestResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumContestResponse] = jsonOf[AlbumContestResponse]

    val path = "/api/{version}/consumer/album/contest".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("contestType", Some(contestTypeQuery.toParamString(contestType))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("albumId1", Some(albumId1Query.toParamString(albumId1))), ("removeAlbum1", Some(removeAlbum1Query.toParamString(removeAlbum1))), ("albumId2", Some(albumId2Query.toParamString(albumId2))), ("removeAlbum2", Some(removeAlbum2Query.toParamString(removeAlbum2))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("publicRead", Some(publicReadQuery.toParamString(publicRead))), ("publicWrite", Some(publicWriteQuery.toParamString(publicWrite))), ("publicDelete", Some(publicDeleteQuery.toParamString(publicDelete))), ("publicAdd", Some(publicAddQuery.toParamString(publicAdd))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("connectionIdsToAdd", Some(connectionIdsToAddQuery.toParamString(connectionIdsToAdd))), ("connectionGroupIdsToAdd", Some(connectionGroupIdsToAddQuery.toParamString(connectionGroupIdsToAdd))), ("includeFriendGroup", Some(includeFriendGroupQuery.toParamString(includeFriendGroup))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumContestResponse](req)

    } yield resp
  }

  def approveAlbumContest(version: BigDecimal, albumContestId: Long, approvalStatus: String, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], approvalStatusQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/consumer/album/contest/approve".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteContest(version: BigDecimal, albumContestId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/consumer/album/contest/remove".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAlbumContest(version: BigDecimal, albumContestId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[AlbumContestResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumContestResponse] = jsonOf[AlbumContestResponse]

    val path = "/api/{version}/consumer/album/contest/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumContestResponse](req)

    } yield resp
  }

  def getAlbumContests(version: BigDecimal, filter: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, deviceId: String, accountId: Long, gameType: String, appKey: String, appType: String, contestType: String, ownerId: Long, q: String, keyword: String, i: Integer, l: Integer, dateCreated: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], appTypeQuery: QueryParam[String], contestTypeQuery: QueryParam[String], ownerIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], filterQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], dateCreatedQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[AlbumContestListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumContestListResponse] = jsonOf[AlbumContestListResponse]

    val path = "/api/{version}/consumer/album/contest/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appType", Some(appTypeQuery.toParamString(appType))), ("contestType", Some(contestTypeQuery.toParamString(contestType))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("filter", Some(filterQuery.toParamString(filter))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("dateCreated", Some(dateCreatedQuery.toParamString(dateCreated))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumContestListResponse](req)

    } yield resp
  }

  def voteOnAlbumContest(version: BigDecimal, albumContestId: Long, albumId: Long, deviceId: String, accountId: Long, contestType: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumContestIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], contestTypeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[AlbumContestResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumContestResponse] = jsonOf[AlbumContestResponse]

    val path = "/api/{version}/consumer/album/contest/vote".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumContestId", Some(albumContestIdQuery.toParamString(albumContestId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("contestType", Some(contestTypeQuery.toParamString(contestType))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumContestResponse](req)

    } yield resp
  }

}
