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

import org.openapitools.client.api.MissionResponse
import org.openapitools.client.api.SirqulResponse

object MissionInviteApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createMissionInvite(host: String, deviceId: String, accountId: Long, missionId: Long, joinCode: String, includeGameData: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], joinCodeQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/mission/invite/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("joinCode", Some(joinCodeQuery.toParamString(joinCode))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

  def deleteMissionInvite(host: String, deviceId: String, accountId: Long, missionId: Long, missionInviteId: Long, includeGameData: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], missionInviteIdQuery: QueryParam[Long], includeGameDataQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/mission/invite/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("missionInviteId", Some(missionInviteIdQuery.toParamString(missionInviteId))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getMissionInvite(host: String, deviceId: String, accountId: Long, missionId: Long, missionInviteId: Long, includeGameData: Boolean, includeScores: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], missionInviteIdQuery: QueryParam[Long], includeGameDataQuery: QueryParam[Boolean], includeScoresQuery: QueryParam[String]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/mission/invite/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("missionInviteId", Some(missionInviteIdQuery.toParamString(missionInviteId))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("includeScores", Some(includeScoresQuery.toParamString(includeScores))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

  def searchMissionInvites(host: String, deviceId: String, accountId: Long, appKey: String, appVersion: String, missionId: Long, status: String, lastUpdated: Long, start: Integer, limit: Integer, keyword: String, missionTypes: String, filterByBillable: Boolean, includeGameData: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], appVersionQuery: QueryParam[String], missionIdQuery: QueryParam[Long], statusQuery: QueryParam[String], lastUpdatedQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], keywordQuery: QueryParam[String], missionTypesQuery: QueryParam[String], filterByBillableQuery: QueryParam[Boolean], includeGameDataQuery: QueryParam[Boolean]): Task[List[MissionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MissionResponse]] = jsonOf[List[MissionResponse]]

    val path = "/mission/invite/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("status", Some(statusQuery.toParamString(status))), ("lastUpdated", Some(lastUpdatedQuery.toParamString(lastUpdated))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("missionTypes", Some(missionTypesQuery.toParamString(missionTypes))), ("filterByBillable", Some(filterByBillableQuery.toParamString(filterByBillable))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MissionResponse]](req)

    } yield resp
  }

  def updateMissionInvite(host: String, deviceId: String, accountId: Long, appKey: String, missionId: Long, missionInviteId: Long, packId: Long, gameLevelId: Long, status: String, permissionableType: String, permissionableId: Long, includeGameData: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], missionInviteIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], statusQuery: QueryParam[String], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], includeGameDataQuery: QueryParam[Boolean]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/mission/invite/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("missionInviteId", Some(missionInviteIdQuery.toParamString(missionInviteId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("status", Some(statusQuery.toParamString(status))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

}

class HttpServiceMissionInviteApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createMissionInvite(deviceId: String, accountId: Long, missionId: Long, joinCode: String, includeGameData: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], joinCodeQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/mission/invite/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("joinCode", Some(joinCodeQuery.toParamString(joinCode))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

  def deleteMissionInvite(deviceId: String, accountId: Long, missionId: Long, missionInviteId: Long, includeGameData: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], missionInviteIdQuery: QueryParam[Long], includeGameDataQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/mission/invite/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("missionInviteId", Some(missionInviteIdQuery.toParamString(missionInviteId))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getMissionInvite(deviceId: String, accountId: Long, missionId: Long, missionInviteId: Long, includeGameData: Boolean, includeScores: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], missionInviteIdQuery: QueryParam[Long], includeGameDataQuery: QueryParam[Boolean], includeScoresQuery: QueryParam[String]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/mission/invite/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("missionInviteId", Some(missionInviteIdQuery.toParamString(missionInviteId))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("includeScores", Some(includeScoresQuery.toParamString(includeScores))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

  def searchMissionInvites(deviceId: String, accountId: Long, appKey: String, appVersion: String, missionId: Long, status: String, lastUpdated: Long, start: Integer, limit: Integer, keyword: String, missionTypes: String, filterByBillable: Boolean, includeGameData: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], appVersionQuery: QueryParam[String], missionIdQuery: QueryParam[Long], statusQuery: QueryParam[String], lastUpdatedQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], keywordQuery: QueryParam[String], missionTypesQuery: QueryParam[String], filterByBillableQuery: QueryParam[Boolean], includeGameDataQuery: QueryParam[Boolean]): Task[List[MissionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MissionResponse]] = jsonOf[List[MissionResponse]]

    val path = "/mission/invite/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("status", Some(statusQuery.toParamString(status))), ("lastUpdated", Some(lastUpdatedQuery.toParamString(lastUpdated))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("missionTypes", Some(missionTypesQuery.toParamString(missionTypes))), ("filterByBillable", Some(filterByBillableQuery.toParamString(filterByBillable))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MissionResponse]](req)

    } yield resp
  }

  def updateMissionInvite(deviceId: String, accountId: Long, appKey: String, missionId: Long, missionInviteId: Long, packId: Long, gameLevelId: Long, status: String, permissionableType: String, permissionableId: Long, includeGameData: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], missionInviteIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], statusQuery: QueryParam[String], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], includeGameDataQuery: QueryParam[Boolean]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/mission/invite/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("missionInviteId", Some(missionInviteIdQuery.toParamString(missionInviteId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("status", Some(statusQuery.toParamString(status))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

}
