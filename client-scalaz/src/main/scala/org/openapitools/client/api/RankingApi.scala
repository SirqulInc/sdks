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
import org.openapitools.client.api.RankFullResponse
import org.openapitools.client.api.SirqulResponse

object RankingApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getHistoricalRankings(host: String, version: BigDecimal, appKey: String, rankType: String, startDate: Long, endDate: Long, deviceId: String, accountId: Long, sortField: String = TOTAL, descending: Boolean = true, start: Integer = 0, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[RankFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RankFullResponse] = jsonOf[RankFullResponse]

    val path = "/api/{version}/ranking/historical/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RankFullResponse](req)

    } yield resp
  }

  def getRankings(host: String, version: BigDecimal, deviceId: String, accountId: Long, gameType: String, appKey: String, q: String, keyword: String, rankType: String = POINTS,DOWNLOADS,INVITATIONS, leaderboardMode: String = GLOBAL, withinAccountIds: String, returnUserRank: Boolean = true, albumId: Long, audienceId: Long, sortField: String = TOTAL, descending: Boolean = true, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], qQuery: QueryParam[String], keywordQuery: QueryParam[String], rankTypeQuery: QueryParam[String], leaderboardModeQuery: QueryParam[String], withinAccountIdsQuery: QueryParam[String], returnUserRankQuery: QueryParam[Boolean], albumIdQuery: QueryParam[Long], audienceIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[RankFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RankFullResponse] = jsonOf[RankFullResponse]

    val path = "/api/{version}/ranking/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("leaderboardMode", Some(leaderboardModeQuery.toParamString(leaderboardMode))), ("withinAccountIds", Some(withinAccountIdsQuery.toParamString(withinAccountIds))), ("returnUserRank", Some(returnUserRankQuery.toParamString(returnUserRank))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RankFullResponse](req)

    } yield resp
  }

  def getUserRank(host: String, version: BigDecimal, deviceId: String, accountId: Long, appKey: String, rankType: String, returnUserRank: Boolean = false, leaderboardMode: String = GLOBAL, sortField: String = TOTAL, keyword: String, descending: Boolean = true, start: Integer = 0, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], returnUserRankQuery: QueryParam[Boolean], leaderboardModeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], keywordQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/api/{version}/ranking/personal/ranks".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("returnUserRank", Some(returnUserRankQuery.toParamString(returnUserRank))), ("leaderboardMode", Some(leaderboardModeQuery.toParamString(leaderboardMode))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def overrideUserRank(host: String, version: BigDecimal, accountId: Long, ownerAccountId: Long, appKey: String, rankType: String, totalScore: Long, totalCount: Long, totalTime: Long, dailyScore: Long, dailyCount: Long, dailyTime: Long, weeklyScore: Long, weeklyCount: Long, weeklyTime: Long, monthlyScore: Long, monthlyCount: Long, monthlyTime: Long, topScore: Long, lowestScore: Long, streakCount: Long, streakBestCount: Long, startDate: Long, endDate: Long)(implicit accountIdQuery: QueryParam[Long], ownerAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], totalScoreQuery: QueryParam[Long], totalCountQuery: QueryParam[Long], totalTimeQuery: QueryParam[Long], dailyScoreQuery: QueryParam[Long], dailyCountQuery: QueryParam[Long], dailyTimeQuery: QueryParam[Long], weeklyScoreQuery: QueryParam[Long], weeklyCountQuery: QueryParam[Long], weeklyTimeQuery: QueryParam[Long], monthlyScoreQuery: QueryParam[Long], monthlyCountQuery: QueryParam[Long], monthlyTimeQuery: QueryParam[Long], topScoreQuery: QueryParam[Long], lowestScoreQuery: QueryParam[Long], streakCountQuery: QueryParam[Long], streakBestCountQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/ranking/override".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ownerAccountId", Some(ownerAccountIdQuery.toParamString(ownerAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("totalScore", Some(totalScoreQuery.toParamString(totalScore))), ("totalCount", Some(totalCountQuery.toParamString(totalCount))), ("totalTime", Some(totalTimeQuery.toParamString(totalTime))), ("dailyScore", Some(dailyScoreQuery.toParamString(dailyScore))), ("dailyCount", Some(dailyCountQuery.toParamString(dailyCount))), ("dailyTime", Some(dailyTimeQuery.toParamString(dailyTime))), ("weeklyScore", Some(weeklyScoreQuery.toParamString(weeklyScore))), ("weeklyCount", Some(weeklyCountQuery.toParamString(weeklyCount))), ("weeklyTime", Some(weeklyTimeQuery.toParamString(weeklyTime))), ("monthlyScore", Some(monthlyScoreQuery.toParamString(monthlyScore))), ("monthlyCount", Some(monthlyCountQuery.toParamString(monthlyCount))), ("monthlyTime", Some(monthlyTimeQuery.toParamString(monthlyTime))), ("topScore", Some(topScoreQuery.toParamString(topScore))), ("lowestScore", Some(lowestScoreQuery.toParamString(lowestScore))), ("streakCount", Some(streakCountQuery.toParamString(streakCount))), ("streakBestCount", Some(streakBestCountQuery.toParamString(streakBestCount))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateRankings(host: String, version: BigDecimal, accountId: Long, appKey: String, rankType: String, increment: Long = 1, timeIncrement: Long, tag: String, startDate: Long, endDate: Long, updateGlobal: Boolean, createLeaderboard: Boolean = false)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], incrementQuery: QueryParam[Long], timeIncrementQuery: QueryParam[Long], tagQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], updateGlobalQuery: QueryParam[Boolean], createLeaderboardQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/ranking/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("increment", Some(incrementQuery.toParamString(increment))), ("timeIncrement", Some(timeIncrementQuery.toParamString(timeIncrement))), ("tag", Some(tagQuery.toParamString(tag))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("updateGlobal", Some(updateGlobalQuery.toParamString(updateGlobal))), ("createLeaderboard", Some(createLeaderboardQuery.toParamString(createLeaderboard))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceRankingApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getHistoricalRankings(version: BigDecimal, appKey: String, rankType: String, startDate: Long, endDate: Long, deviceId: String, accountId: Long, sortField: String = TOTAL, descending: Boolean = true, start: Integer = 0, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[RankFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RankFullResponse] = jsonOf[RankFullResponse]

    val path = "/api/{version}/ranking/historical/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RankFullResponse](req)

    } yield resp
  }

  def getRankings(version: BigDecimal, deviceId: String, accountId: Long, gameType: String, appKey: String, q: String, keyword: String, rankType: String = POINTS,DOWNLOADS,INVITATIONS, leaderboardMode: String = GLOBAL, withinAccountIds: String, returnUserRank: Boolean = true, albumId: Long, audienceId: Long, sortField: String = TOTAL, descending: Boolean = true, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], qQuery: QueryParam[String], keywordQuery: QueryParam[String], rankTypeQuery: QueryParam[String], leaderboardModeQuery: QueryParam[String], withinAccountIdsQuery: QueryParam[String], returnUserRankQuery: QueryParam[Boolean], albumIdQuery: QueryParam[Long], audienceIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[RankFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RankFullResponse] = jsonOf[RankFullResponse]

    val path = "/api/{version}/ranking/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("leaderboardMode", Some(leaderboardModeQuery.toParamString(leaderboardMode))), ("withinAccountIds", Some(withinAccountIdsQuery.toParamString(withinAccountIds))), ("returnUserRank", Some(returnUserRankQuery.toParamString(returnUserRank))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RankFullResponse](req)

    } yield resp
  }

  def getUserRank(version: BigDecimal, deviceId: String, accountId: Long, appKey: String, rankType: String, returnUserRank: Boolean = false, leaderboardMode: String = GLOBAL, sortField: String = TOTAL, keyword: String, descending: Boolean = true, start: Integer = 0, limit: Integer = 100)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], returnUserRankQuery: QueryParam[Boolean], leaderboardModeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], keywordQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[Any] = {
    implicit val returnTypeDecoder: EntityDecoder[Any] = jsonOf[Any]

    val path = "/api/{version}/ranking/personal/ranks".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("returnUserRank", Some(returnUserRankQuery.toParamString(returnUserRank))), ("leaderboardMode", Some(leaderboardModeQuery.toParamString(leaderboardMode))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Any](req)

    } yield resp
  }

  def overrideUserRank(version: BigDecimal, accountId: Long, ownerAccountId: Long, appKey: String, rankType: String, totalScore: Long, totalCount: Long, totalTime: Long, dailyScore: Long, dailyCount: Long, dailyTime: Long, weeklyScore: Long, weeklyCount: Long, weeklyTime: Long, monthlyScore: Long, monthlyCount: Long, monthlyTime: Long, topScore: Long, lowestScore: Long, streakCount: Long, streakBestCount: Long, startDate: Long, endDate: Long)(implicit accountIdQuery: QueryParam[Long], ownerAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], totalScoreQuery: QueryParam[Long], totalCountQuery: QueryParam[Long], totalTimeQuery: QueryParam[Long], dailyScoreQuery: QueryParam[Long], dailyCountQuery: QueryParam[Long], dailyTimeQuery: QueryParam[Long], weeklyScoreQuery: QueryParam[Long], weeklyCountQuery: QueryParam[Long], weeklyTimeQuery: QueryParam[Long], monthlyScoreQuery: QueryParam[Long], monthlyCountQuery: QueryParam[Long], monthlyTimeQuery: QueryParam[Long], topScoreQuery: QueryParam[Long], lowestScoreQuery: QueryParam[Long], streakCountQuery: QueryParam[Long], streakBestCountQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/ranking/override".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ownerAccountId", Some(ownerAccountIdQuery.toParamString(ownerAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("totalScore", Some(totalScoreQuery.toParamString(totalScore))), ("totalCount", Some(totalCountQuery.toParamString(totalCount))), ("totalTime", Some(totalTimeQuery.toParamString(totalTime))), ("dailyScore", Some(dailyScoreQuery.toParamString(dailyScore))), ("dailyCount", Some(dailyCountQuery.toParamString(dailyCount))), ("dailyTime", Some(dailyTimeQuery.toParamString(dailyTime))), ("weeklyScore", Some(weeklyScoreQuery.toParamString(weeklyScore))), ("weeklyCount", Some(weeklyCountQuery.toParamString(weeklyCount))), ("weeklyTime", Some(weeklyTimeQuery.toParamString(weeklyTime))), ("monthlyScore", Some(monthlyScoreQuery.toParamString(monthlyScore))), ("monthlyCount", Some(monthlyCountQuery.toParamString(monthlyCount))), ("monthlyTime", Some(monthlyTimeQuery.toParamString(monthlyTime))), ("topScore", Some(topScoreQuery.toParamString(topScore))), ("lowestScore", Some(lowestScoreQuery.toParamString(lowestScore))), ("streakCount", Some(streakCountQuery.toParamString(streakCount))), ("streakBestCount", Some(streakBestCountQuery.toParamString(streakBestCount))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateRankings(version: BigDecimal, accountId: Long, appKey: String, rankType: String, increment: Long = 1, timeIncrement: Long, tag: String, startDate: Long, endDate: Long, updateGlobal: Boolean, createLeaderboard: Boolean = false)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], incrementQuery: QueryParam[Long], timeIncrementQuery: QueryParam[Long], tagQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], updateGlobalQuery: QueryParam[Boolean], createLeaderboardQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/ranking/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("increment", Some(incrementQuery.toParamString(increment))), ("timeIncrement", Some(timeIncrementQuery.toParamString(timeIncrement))), ("tag", Some(tagQuery.toParamString(tag))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("updateGlobal", Some(updateGlobalQuery.toParamString(updateGlobal))), ("createLeaderboard", Some(createLeaderboardQuery.toParamString(createLeaderboard))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
