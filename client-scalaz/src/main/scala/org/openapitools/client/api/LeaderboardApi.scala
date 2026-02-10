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

import org.openapitools.client.api.BigDecimal
import java.io.File
import org.openapitools.client.api.LeaderboardResponse
import org.openapitools.client.api.SirqulResponse

object LeaderboardApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createLeaderboard(host: String, version: BigDecimal, accountId: Long, appKey: String, rankType: String, leaderboardMode: String, iconMedia: File, iconAssetId: Long, bannerMedia: File, bannerAssetId: Long, limitation: Integer, sortField: String, title: String, description: String, metaData: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], leaderboardModeQuery: QueryParam[String], iconMediaQuery: QueryParam[File], iconAssetIdQuery: QueryParam[Long], bannerMediaQuery: QueryParam[File], bannerAssetIdQuery: QueryParam[Long], limitationQuery: QueryParam[Integer], sortFieldQuery: QueryParam[String], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String]): Task[LeaderboardResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LeaderboardResponse] = jsonOf[LeaderboardResponse]

    val path = "/api/{version}/leaderboard/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("leaderboardMode", Some(leaderboardModeQuery.toParamString(leaderboardMode))), ("iconMedia", Some(iconMediaQuery.toParamString(iconMedia))), ("iconAssetId", Some(iconAssetIdQuery.toParamString(iconAssetId))), ("bannerMedia", Some(bannerMediaQuery.toParamString(bannerMedia))), ("bannerAssetId", Some(bannerAssetIdQuery.toParamString(bannerAssetId))), ("limitation", Some(limitationQuery.toParamString(limitation))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LeaderboardResponse](req)

    } yield resp
  }

  def deleteLeaderboard(host: String, version: BigDecimal, leaderboardId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long], leaderboardIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/leaderboard/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("leaderboardId", Some(leaderboardIdQuery.toParamString(leaderboardId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getLeaderboard(host: String, version: BigDecimal, leaderboardId: Long, accountId: Long, includeFullRankingList: Boolean)(implicit accountIdQuery: QueryParam[Long], leaderboardIdQuery: QueryParam[Long], includeFullRankingListQuery: QueryParam[Boolean]): Task[LeaderboardResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LeaderboardResponse] = jsonOf[LeaderboardResponse]

    val path = "/api/{version}/leaderboard/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("leaderboardId", Some(leaderboardIdQuery.toParamString(leaderboardId))), ("includeFullRankingList", Some(includeFullRankingListQuery.toParamString(includeFullRankingList))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LeaderboardResponse](req)

    } yield resp
  }

  def searchLeaderboards(host: String, version: BigDecimal, accountId: Long, appKey: String, globalOnly: Boolean, keyword: String, leaderboardIds: String, rankTypes: String, sortField: String, descending: Boolean, includeInactive: Boolean, includeAppResponse: Boolean, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], globalOnlyQuery: QueryParam[Boolean], keywordQuery: QueryParam[String], leaderboardIdsQuery: QueryParam[String], rankTypesQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], includeInactiveQuery: QueryParam[Boolean], includeAppResponseQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[LeaderboardResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LeaderboardResponse] = jsonOf[LeaderboardResponse]

    val path = "/api/{version}/leaderboard/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("globalOnly", Some(globalOnlyQuery.toParamString(globalOnly))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("leaderboardIds", Some(leaderboardIdsQuery.toParamString(leaderboardIds))), ("rankTypes", Some(rankTypesQuery.toParamString(rankTypes))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("includeAppResponse", Some(includeAppResponseQuery.toParamString(includeAppResponse))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LeaderboardResponse](req)

    } yield resp
  }

  def updateLeaderboard(host: String, version: BigDecimal, leaderboardId: Long, accountId: Long, appKey: String, rankType: String, leaderboardMode: String, sortField: String, iconMedia: File, iconAssetId: Long, bannerMedia: File, bannerAssetId: Long, limitation: Integer, active: Boolean, title: String, description: String, metaData: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], leaderboardIdQuery: QueryParam[Long], rankTypeQuery: QueryParam[String], leaderboardModeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], iconMediaQuery: QueryParam[File], iconAssetIdQuery: QueryParam[Long], bannerMediaQuery: QueryParam[File], bannerAssetIdQuery: QueryParam[Long], limitationQuery: QueryParam[Integer], activeQuery: QueryParam[Boolean], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String]): Task[LeaderboardResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LeaderboardResponse] = jsonOf[LeaderboardResponse]

    val path = "/api/{version}/leaderboard/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("leaderboardId", Some(leaderboardIdQuery.toParamString(leaderboardId))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("leaderboardMode", Some(leaderboardModeQuery.toParamString(leaderboardMode))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("iconMedia", Some(iconMediaQuery.toParamString(iconMedia))), ("iconAssetId", Some(iconAssetIdQuery.toParamString(iconAssetId))), ("bannerMedia", Some(bannerMediaQuery.toParamString(bannerMedia))), ("bannerAssetId", Some(bannerAssetIdQuery.toParamString(bannerAssetId))), ("limitation", Some(limitationQuery.toParamString(limitation))), ("active", Some(activeQuery.toParamString(active))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LeaderboardResponse](req)

    } yield resp
  }

}

class HttpServiceLeaderboardApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createLeaderboard(version: BigDecimal, accountId: Long, appKey: String, rankType: String, leaderboardMode: String, iconMedia: File, iconAssetId: Long, bannerMedia: File, bannerAssetId: Long, limitation: Integer, sortField: String, title: String, description: String, metaData: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], leaderboardModeQuery: QueryParam[String], iconMediaQuery: QueryParam[File], iconAssetIdQuery: QueryParam[Long], bannerMediaQuery: QueryParam[File], bannerAssetIdQuery: QueryParam[Long], limitationQuery: QueryParam[Integer], sortFieldQuery: QueryParam[String], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String]): Task[LeaderboardResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LeaderboardResponse] = jsonOf[LeaderboardResponse]

    val path = "/api/{version}/leaderboard/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("leaderboardMode", Some(leaderboardModeQuery.toParamString(leaderboardMode))), ("iconMedia", Some(iconMediaQuery.toParamString(iconMedia))), ("iconAssetId", Some(iconAssetIdQuery.toParamString(iconAssetId))), ("bannerMedia", Some(bannerMediaQuery.toParamString(bannerMedia))), ("bannerAssetId", Some(bannerAssetIdQuery.toParamString(bannerAssetId))), ("limitation", Some(limitationQuery.toParamString(limitation))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LeaderboardResponse](req)

    } yield resp
  }

  def deleteLeaderboard(version: BigDecimal, leaderboardId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long], leaderboardIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/leaderboard/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("leaderboardId", Some(leaderboardIdQuery.toParamString(leaderboardId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getLeaderboard(version: BigDecimal, leaderboardId: Long, accountId: Long, includeFullRankingList: Boolean)(implicit accountIdQuery: QueryParam[Long], leaderboardIdQuery: QueryParam[Long], includeFullRankingListQuery: QueryParam[Boolean]): Task[LeaderboardResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LeaderboardResponse] = jsonOf[LeaderboardResponse]

    val path = "/api/{version}/leaderboard/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("leaderboardId", Some(leaderboardIdQuery.toParamString(leaderboardId))), ("includeFullRankingList", Some(includeFullRankingListQuery.toParamString(includeFullRankingList))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LeaderboardResponse](req)

    } yield resp
  }

  def searchLeaderboards(version: BigDecimal, accountId: Long, appKey: String, globalOnly: Boolean, keyword: String, leaderboardIds: String, rankTypes: String, sortField: String, descending: Boolean, includeInactive: Boolean, includeAppResponse: Boolean, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], globalOnlyQuery: QueryParam[Boolean], keywordQuery: QueryParam[String], leaderboardIdsQuery: QueryParam[String], rankTypesQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], includeInactiveQuery: QueryParam[Boolean], includeAppResponseQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[LeaderboardResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LeaderboardResponse] = jsonOf[LeaderboardResponse]

    val path = "/api/{version}/leaderboard/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("globalOnly", Some(globalOnlyQuery.toParamString(globalOnly))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("leaderboardIds", Some(leaderboardIdsQuery.toParamString(leaderboardIds))), ("rankTypes", Some(rankTypesQuery.toParamString(rankTypes))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("includeAppResponse", Some(includeAppResponseQuery.toParamString(includeAppResponse))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LeaderboardResponse](req)

    } yield resp
  }

  def updateLeaderboard(version: BigDecimal, leaderboardId: Long, accountId: Long, appKey: String, rankType: String, leaderboardMode: String, sortField: String, iconMedia: File, iconAssetId: Long, bannerMedia: File, bannerAssetId: Long, limitation: Integer, active: Boolean, title: String, description: String, metaData: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], leaderboardIdQuery: QueryParam[Long], rankTypeQuery: QueryParam[String], leaderboardModeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], iconMediaQuery: QueryParam[File], iconAssetIdQuery: QueryParam[Long], bannerMediaQuery: QueryParam[File], bannerAssetIdQuery: QueryParam[Long], limitationQuery: QueryParam[Integer], activeQuery: QueryParam[Boolean], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String]): Task[LeaderboardResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LeaderboardResponse] = jsonOf[LeaderboardResponse]

    val path = "/api/{version}/leaderboard/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("leaderboardId", Some(leaderboardIdQuery.toParamString(leaderboardId))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("leaderboardMode", Some(leaderboardModeQuery.toParamString(leaderboardMode))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("iconMedia", Some(iconMediaQuery.toParamString(iconMedia))), ("iconAssetId", Some(iconAssetIdQuery.toParamString(iconAssetId))), ("bannerMedia", Some(bannerMediaQuery.toParamString(bannerMedia))), ("bannerAssetId", Some(bannerAssetIdQuery.toParamString(bannerAssetId))), ("limitation", Some(limitationQuery.toParamString(limitation))), ("active", Some(activeQuery.toParamString(active))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LeaderboardResponse](req)

    } yield resp
  }

}
