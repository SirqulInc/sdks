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

import org.openapitools.client.api.AppResponse
import org.openapitools.client.api.BigDecimal
import org.openapitools.client.api.SirqulResponse

object AppDataApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getAppData(host: String, version: BigDecimal, start: Integer, limit: Integer, deviceId: String, accountId: Long, gameType: String, includeGameData: Boolean, q: String, keyword: String, sortField: String, descending: Boolean, i: Integer, l: Integer, gameObjectCount: Boolean, filter: String, dateCreated: Long, ownerId: Long, missionIds: String, gameIds: String, packIds: String, gameLevelIds: String, appVersion: String, includeHigherVersionPacks: Boolean, includeHigherVersionLevels: Boolean, responseGroups: String, purchaseType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean], qQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], gameObjectCountQuery: QueryParam[Boolean], filterQuery: QueryParam[String], dateCreatedQuery: QueryParam[Long], ownerIdQuery: QueryParam[Long], missionIdsQuery: QueryParam[String], gameIdsQuery: QueryParam[String], packIdsQuery: QueryParam[String], gameLevelIdsQuery: QueryParam[String], appVersionQuery: QueryParam[String], includeHigherVersionPacksQuery: QueryParam[Boolean], includeHigherVersionLevelsQuery: QueryParam[Boolean], responseGroupsQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String]): Task[AppResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AppResponse] = jsonOf[AppResponse]

    val path = "/api/{version}/app/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("gameObjectCount", Some(gameObjectCountQuery.toParamString(gameObjectCount))), ("filter", Some(filterQuery.toParamString(filter))), ("dateCreated", Some(dateCreatedQuery.toParamString(dateCreated))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("missionIds", Some(missionIdsQuery.toParamString(missionIds))), ("gameIds", Some(gameIdsQuery.toParamString(gameIds))), ("packIds", Some(packIdsQuery.toParamString(packIds))), ("gameLevelIds", Some(gameLevelIdsQuery.toParamString(gameLevelIds))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("includeHigherVersionPacks", Some(includeHigherVersionPacksQuery.toParamString(includeHigherVersionPacks))), ("includeHigherVersionLevels", Some(includeHigherVersionLevelsQuery.toParamString(includeHigherVersionLevels))), ("responseGroups", Some(responseGroupsQuery.toParamString(responseGroups))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AppResponse](req)

    } yield resp
  }

  def postAppData(host: String, version: BigDecimal, gameType: String, start: Integer, limit: Integer, data: String, deviceId: String, accountId: Long, includeGameData: Boolean, q: String, keyword: String, sortField: String, descending: Boolean, i: Integer, l: Integer, gameObjectCount: Boolean, filter: String, dateCreated: Long, ownerId: Long, missionIds: String, gameIds: String, packIds: String, gameLevelIds: String, appVersion: String, includeHigherVersionPacks: Boolean, includeHigherVersionLevels: Boolean, responseGroups: String, purchaseType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean], qQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], gameObjectCountQuery: QueryParam[Boolean], filterQuery: QueryParam[String], dateCreatedQuery: QueryParam[Long], ownerIdQuery: QueryParam[Long], missionIdsQuery: QueryParam[String], gameIdsQuery: QueryParam[String], packIdsQuery: QueryParam[String], gameLevelIdsQuery: QueryParam[String], appVersionQuery: QueryParam[String], includeHigherVersionPacksQuery: QueryParam[Boolean], includeHigherVersionLevelsQuery: QueryParam[Boolean], responseGroupsQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String], dataQuery: QueryParam[String]): Task[AppResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AppResponse] = jsonOf[AppResponse]

    val path = "/api/{version}/app/post".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("gameObjectCount", Some(gameObjectCountQuery.toParamString(gameObjectCount))), ("filter", Some(filterQuery.toParamString(filter))), ("dateCreated", Some(dateCreatedQuery.toParamString(dateCreated))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("missionIds", Some(missionIdsQuery.toParamString(missionIds))), ("gameIds", Some(gameIdsQuery.toParamString(gameIds))), ("packIds", Some(packIdsQuery.toParamString(packIds))), ("gameLevelIds", Some(gameLevelIdsQuery.toParamString(gameLevelIds))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("includeHigherVersionPacks", Some(includeHigherVersionPacksQuery.toParamString(includeHigherVersionPacks))), ("includeHigherVersionLevels", Some(includeHigherVersionLevelsQuery.toParamString(includeHigherVersionLevels))), ("responseGroups", Some(responseGroupsQuery.toParamString(responseGroups))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("data", Some(dataQuery.toParamString(data))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AppResponse](req)

    } yield resp
  }

  def regenAppData(host: String, version: BigDecimal, accountId: Long, appKey: String, buildVersion: String, apiVersion: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], buildVersionQuery: QueryParam[String], apiVersionQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/app/regen".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("buildVersion", Some(buildVersionQuery.toParamString(buildVersion))), ("apiVersion", Some(apiVersionQuery.toParamString(apiVersion))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceAppDataApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getAppData(version: BigDecimal, start: Integer, limit: Integer, deviceId: String, accountId: Long, gameType: String, includeGameData: Boolean, q: String, keyword: String, sortField: String, descending: Boolean, i: Integer, l: Integer, gameObjectCount: Boolean, filter: String, dateCreated: Long, ownerId: Long, missionIds: String, gameIds: String, packIds: String, gameLevelIds: String, appVersion: String, includeHigherVersionPacks: Boolean, includeHigherVersionLevels: Boolean, responseGroups: String, purchaseType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean], qQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], gameObjectCountQuery: QueryParam[Boolean], filterQuery: QueryParam[String], dateCreatedQuery: QueryParam[Long], ownerIdQuery: QueryParam[Long], missionIdsQuery: QueryParam[String], gameIdsQuery: QueryParam[String], packIdsQuery: QueryParam[String], gameLevelIdsQuery: QueryParam[String], appVersionQuery: QueryParam[String], includeHigherVersionPacksQuery: QueryParam[Boolean], includeHigherVersionLevelsQuery: QueryParam[Boolean], responseGroupsQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String]): Task[AppResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AppResponse] = jsonOf[AppResponse]

    val path = "/api/{version}/app/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("gameObjectCount", Some(gameObjectCountQuery.toParamString(gameObjectCount))), ("filter", Some(filterQuery.toParamString(filter))), ("dateCreated", Some(dateCreatedQuery.toParamString(dateCreated))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("missionIds", Some(missionIdsQuery.toParamString(missionIds))), ("gameIds", Some(gameIdsQuery.toParamString(gameIds))), ("packIds", Some(packIdsQuery.toParamString(packIds))), ("gameLevelIds", Some(gameLevelIdsQuery.toParamString(gameLevelIds))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("includeHigherVersionPacks", Some(includeHigherVersionPacksQuery.toParamString(includeHigherVersionPacks))), ("includeHigherVersionLevels", Some(includeHigherVersionLevelsQuery.toParamString(includeHigherVersionLevels))), ("responseGroups", Some(responseGroupsQuery.toParamString(responseGroups))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AppResponse](req)

    } yield resp
  }

  def postAppData(version: BigDecimal, gameType: String, start: Integer, limit: Integer, data: String, deviceId: String, accountId: Long, includeGameData: Boolean, q: String, keyword: String, sortField: String, descending: Boolean, i: Integer, l: Integer, gameObjectCount: Boolean, filter: String, dateCreated: Long, ownerId: Long, missionIds: String, gameIds: String, packIds: String, gameLevelIds: String, appVersion: String, includeHigherVersionPacks: Boolean, includeHigherVersionLevels: Boolean, responseGroups: String, purchaseType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean], qQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], gameObjectCountQuery: QueryParam[Boolean], filterQuery: QueryParam[String], dateCreatedQuery: QueryParam[Long], ownerIdQuery: QueryParam[Long], missionIdsQuery: QueryParam[String], gameIdsQuery: QueryParam[String], packIdsQuery: QueryParam[String], gameLevelIdsQuery: QueryParam[String], appVersionQuery: QueryParam[String], includeHigherVersionPacksQuery: QueryParam[Boolean], includeHigherVersionLevelsQuery: QueryParam[Boolean], responseGroupsQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String], dataQuery: QueryParam[String]): Task[AppResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AppResponse] = jsonOf[AppResponse]

    val path = "/api/{version}/app/post".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("gameObjectCount", Some(gameObjectCountQuery.toParamString(gameObjectCount))), ("filter", Some(filterQuery.toParamString(filter))), ("dateCreated", Some(dateCreatedQuery.toParamString(dateCreated))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("missionIds", Some(missionIdsQuery.toParamString(missionIds))), ("gameIds", Some(gameIdsQuery.toParamString(gameIds))), ("packIds", Some(packIdsQuery.toParamString(packIds))), ("gameLevelIds", Some(gameLevelIdsQuery.toParamString(gameLevelIds))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("includeHigherVersionPacks", Some(includeHigherVersionPacksQuery.toParamString(includeHigherVersionPacks))), ("includeHigherVersionLevels", Some(includeHigherVersionLevelsQuery.toParamString(includeHigherVersionLevels))), ("responseGroups", Some(responseGroupsQuery.toParamString(responseGroups))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("data", Some(dataQuery.toParamString(data))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AppResponse](req)

    } yield resp
  }

  def regenAppData(version: BigDecimal, accountId: Long, appKey: String, buildVersion: String, apiVersion: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], buildVersionQuery: QueryParam[String], apiVersionQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/app/regen".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("buildVersion", Some(buildVersionQuery.toParamString(buildVersion))), ("apiVersion", Some(apiVersionQuery.toParamString(apiVersion))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
