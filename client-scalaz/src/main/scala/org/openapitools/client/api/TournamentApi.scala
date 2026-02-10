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
import org.openapitools.client.api.MissionShortResponse
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.TournamentResponse

object TournamentApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createTournament(host: String, version: BigDecimal, accountId: Long, appKey: String, title: String, costToPlay: Integer, startDate: Long, subType: String, imageAssetId: Long, secondsBetweenLevels: Integer = 600, secondsForTieBreaker: Integer = 600, secondsBetweenPacks: Integer = 86400, maximumLevelLength: Integer = 1800, costToPlayType: String, minimumToPlay: Integer = 1, startingLimit: Integer, availableLimit: Integer, description: String, metaData: String, audienceIds: String, active: Boolean, enableBuyBack: Boolean = false, offerIds: String, offerAssetId: Long, fixedReward: Boolean = false, splitReward: String = ALL, allocateTickets: Boolean, tournamentData: String, missionType: String = MULTISTAGE, visibility: String = PUBLIC, preliminaryGroups: Integer = 1, preliminaryGroupAdvancements: String = 1, enableMultipleEntries: Boolean = false, enableMultipleVotes: Boolean = false, featured: Boolean = false, winnerTag: String, tieTag: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], titleQuery: QueryParam[String], subTypeQuery: QueryParam[String], imageAssetIdQuery: QueryParam[Long], secondsBetweenLevelsQuery: QueryParam[Integer], secondsForTieBreakerQuery: QueryParam[Integer], secondsBetweenPacksQuery: QueryParam[Integer], maximumLevelLengthQuery: QueryParam[Integer], costToPlayQuery: QueryParam[Integer], costToPlayTypeQuery: QueryParam[String], minimumToPlayQuery: QueryParam[Integer], startingLimitQuery: QueryParam[Integer], availableLimitQuery: QueryParam[Integer], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String], startDateQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], enableBuyBackQuery: QueryParam[Boolean], offerIdsQuery: QueryParam[String], offerAssetIdQuery: QueryParam[Long], fixedRewardQuery: QueryParam[Boolean], splitRewardQuery: QueryParam[String], allocateTicketsQuery: QueryParam[Boolean], tournamentDataQuery: QueryParam[String], missionTypeQuery: QueryParam[String], visibilityQuery: QueryParam[String], preliminaryGroupsQuery: QueryParam[Integer], preliminaryGroupAdvancementsQuery: QueryParam[String], enableMultipleEntriesQuery: QueryParam[Boolean], enableMultipleVotesQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], winnerTagQuery: QueryParam[String], tieTagQuery: QueryParam[String]): Task[TournamentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TournamentResponse] = jsonOf[TournamentResponse]

    val path = "/api/{version}/tournament/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("title", Some(titleQuery.toParamString(title))), ("subType", Some(subTypeQuery.toParamString(subType))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("secondsBetweenLevels", Some(secondsBetweenLevelsQuery.toParamString(secondsBetweenLevels))), ("secondsForTieBreaker", Some(secondsForTieBreakerQuery.toParamString(secondsForTieBreaker))), ("secondsBetweenPacks", Some(secondsBetweenPacksQuery.toParamString(secondsBetweenPacks))), ("maximumLevelLength", Some(maximumLevelLengthQuery.toParamString(maximumLevelLength))), ("costToPlay", Some(costToPlayQuery.toParamString(costToPlay))), ("costToPlayType", Some(costToPlayTypeQuery.toParamString(costToPlayType))), ("minimumToPlay", Some(minimumToPlayQuery.toParamString(minimumToPlay))), ("startingLimit", Some(startingLimitQuery.toParamString(startingLimit))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("active", Some(activeQuery.toParamString(active))), ("enableBuyBack", Some(enableBuyBackQuery.toParamString(enableBuyBack))), ("offerIds", Some(offerIdsQuery.toParamString(offerIds))), ("offerAssetId", Some(offerAssetIdQuery.toParamString(offerAssetId))), ("fixedReward", Some(fixedRewardQuery.toParamString(fixedReward))), ("splitReward", Some(splitRewardQuery.toParamString(splitReward))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("tournamentData", Some(tournamentDataQuery.toParamString(tournamentData))), ("missionType", Some(missionTypeQuery.toParamString(missionType))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("preliminaryGroups", Some(preliminaryGroupsQuery.toParamString(preliminaryGroups))), ("preliminaryGroupAdvancements", Some(preliminaryGroupAdvancementsQuery.toParamString(preliminaryGroupAdvancements))), ("enableMultipleEntries", Some(enableMultipleEntriesQuery.toParamString(enableMultipleEntries))), ("enableMultipleVotes", Some(enableMultipleVotesQuery.toParamString(enableMultipleVotes))), ("featured", Some(featuredQuery.toParamString(featured))), ("winnerTag", Some(winnerTagQuery.toParamString(winnerTag))), ("tieTag", Some(tieTagQuery.toParamString(tieTag))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TournamentResponse](req)

    } yield resp
  }

  def deleteTournament(host: String, version: BigDecimal, accountId: Long, missionId: Long)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getTournament(host: String, version: BigDecimal, accountId: Long, missionId: Long, joinCode: String, includeScores: String, objectPreviewSize: Integer = 50)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], joinCodeQuery: QueryParam[String], includeScoresQuery: QueryParam[String], objectPreviewSizeQuery: QueryParam[Integer]): Task[TournamentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TournamentResponse] = jsonOf[TournamentResponse]

    val path = "/api/{version}/tournament/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("joinCode", Some(joinCodeQuery.toParamString(joinCode))), ("includeScores", Some(includeScoresQuery.toParamString(includeScores))), ("objectPreviewSize", Some(objectPreviewSizeQuery.toParamString(objectPreviewSize))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TournamentResponse](req)

    } yield resp
  }

  def searchObjects(host: String, version: BigDecimal, accountId: Long, gameLevelId: Long, sortField: String = PLAYER_SCORE_COUNT, descending: Boolean = true, start: Integer = 0, limit: Integer = 20)(implicit accountIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/object/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchRounds(host: String, version: BigDecimal, accountId: Long, appKey: String, status: String = ACCEPTED,ACTIVE, missionType: String, currentOnly: Boolean = true, visibilities: String = PUBLIC, start: Integer = 0, limit: Integer = 20)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], statusQuery: QueryParam[String], missionTypeQuery: QueryParam[String], currentOnlyQuery: QueryParam[Boolean], visibilitiesQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/round/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("status", Some(statusQuery.toParamString(status))), ("missionType", Some(missionTypeQuery.toParamString(missionType))), ("currentOnly", Some(currentOnlyQuery.toParamString(currentOnly))), ("visibilities", Some(visibilitiesQuery.toParamString(visibilities))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchTournaments(host: String, version: BigDecimal, accountId: Long, appKey: String, keyword: String, subType: String, includeInactive: Boolean = false, missionTypes: String = MULTISTAGE,TOURNAMENT,POOLPLAY, filter: String = UPCOMING, sortField: String = START_DATE, descending: Boolean, visibility: String = PUBLIC, start: Integer = 0, limit: Integer = 20)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], subTypeQuery: QueryParam[String], includeInactiveQuery: QueryParam[Boolean], missionTypesQuery: QueryParam[String], filterQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], visibilityQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[MissionShortResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionShortResponse] = jsonOf[MissionShortResponse]

    val path = "/api/{version}/tournament/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("subType", Some(subTypeQuery.toParamString(subType))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("missionTypes", Some(missionTypesQuery.toParamString(missionTypes))), ("filter", Some(filterQuery.toParamString(filter))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionShortResponse](req)

    } yield resp
  }

  def submitTournamentScore(host: String, version: BigDecimal, accountId: Long, appKey: String, missionId: Long, gameId: Long, packId: Long, scores: String, gameLevelId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], scoresQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/score".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("scores", Some(scoresQuery.toParamString(scores))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def submitTournamentVote(host: String, version: BigDecimal, accountId: Long, appKey: String, missionId: Long, gameObjectId: Long, deviceId: String, checkIfDeviceAlreadyVoted: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Long], checkIfDeviceAlreadyVotedQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/vote".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))), ("checkIfDeviceAlreadyVoted", Some(checkIfDeviceAlreadyVotedQuery.toParamString(checkIfDeviceAlreadyVoted))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def substituteTournamentPlayer(host: String, version: BigDecimal, accountId: Long, missionId: Long, packId: Long, gameLevelId: Long)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/substitute".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateTournament(host: String, version: BigDecimal, accountId: Long, missionId: Long, title: String, subType: String, imageAssetId: Long, secondsBetweenLevels: Integer, secondsForTieBreaker: Integer, secondsBetweenPacks: Integer, maximumLevelLength: Integer, costToPlay: Integer, costToPlayType: String, minimumToPlay: Integer, startingLimit: Integer, availableLimit: Integer, description: String, metaData: String, startDate: Long, audienceIds: String, active: Boolean, enableBuyBack: Boolean, offerIds: String, offerAssetId: Long, fixedReward: Boolean, splitReward: String, allocateTickets: Boolean, tournamentData: String, visibility: String, preliminaryGroups: Integer, preliminaryGroupAdvancements: String, enableMultipleEntries: Boolean, enableMultipleVotes: Boolean, featured: Boolean, winnerTag: String, tieTag: String)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], titleQuery: QueryParam[String], subTypeQuery: QueryParam[String], imageAssetIdQuery: QueryParam[Long], secondsBetweenLevelsQuery: QueryParam[Integer], secondsForTieBreakerQuery: QueryParam[Integer], secondsBetweenPacksQuery: QueryParam[Integer], maximumLevelLengthQuery: QueryParam[Integer], costToPlayQuery: QueryParam[Integer], costToPlayTypeQuery: QueryParam[String], minimumToPlayQuery: QueryParam[Integer], startingLimitQuery: QueryParam[Integer], availableLimitQuery: QueryParam[Integer], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String], startDateQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], enableBuyBackQuery: QueryParam[Boolean], offerIdsQuery: QueryParam[String], offerAssetIdQuery: QueryParam[Long], fixedRewardQuery: QueryParam[Boolean], splitRewardQuery: QueryParam[String], allocateTicketsQuery: QueryParam[Boolean], tournamentDataQuery: QueryParam[String], visibilityQuery: QueryParam[String], preliminaryGroupsQuery: QueryParam[Integer], preliminaryGroupAdvancementsQuery: QueryParam[String], enableMultipleEntriesQuery: QueryParam[Boolean], enableMultipleVotesQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], winnerTagQuery: QueryParam[String], tieTagQuery: QueryParam[String]): Task[TournamentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TournamentResponse] = jsonOf[TournamentResponse]

    val path = "/api/{version}/tournament/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("title", Some(titleQuery.toParamString(title))), ("subType", Some(subTypeQuery.toParamString(subType))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("secondsBetweenLevels", Some(secondsBetweenLevelsQuery.toParamString(secondsBetweenLevels))), ("secondsForTieBreaker", Some(secondsForTieBreakerQuery.toParamString(secondsForTieBreaker))), ("secondsBetweenPacks", Some(secondsBetweenPacksQuery.toParamString(secondsBetweenPacks))), ("maximumLevelLength", Some(maximumLevelLengthQuery.toParamString(maximumLevelLength))), ("costToPlay", Some(costToPlayQuery.toParamString(costToPlay))), ("costToPlayType", Some(costToPlayTypeQuery.toParamString(costToPlayType))), ("minimumToPlay", Some(minimumToPlayQuery.toParamString(minimumToPlay))), ("startingLimit", Some(startingLimitQuery.toParamString(startingLimit))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("active", Some(activeQuery.toParamString(active))), ("enableBuyBack", Some(enableBuyBackQuery.toParamString(enableBuyBack))), ("offerIds", Some(offerIdsQuery.toParamString(offerIds))), ("offerAssetId", Some(offerAssetIdQuery.toParamString(offerAssetId))), ("fixedReward", Some(fixedRewardQuery.toParamString(fixedReward))), ("splitReward", Some(splitRewardQuery.toParamString(splitReward))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("tournamentData", Some(tournamentDataQuery.toParamString(tournamentData))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("preliminaryGroups", Some(preliminaryGroupsQuery.toParamString(preliminaryGroups))), ("preliminaryGroupAdvancements", Some(preliminaryGroupAdvancementsQuery.toParamString(preliminaryGroupAdvancements))), ("enableMultipleEntries", Some(enableMultipleEntriesQuery.toParamString(enableMultipleEntries))), ("enableMultipleVotes", Some(enableMultipleVotesQuery.toParamString(enableMultipleVotes))), ("featured", Some(featuredQuery.toParamString(featured))), ("winnerTag", Some(winnerTagQuery.toParamString(winnerTag))), ("tieTag", Some(tieTagQuery.toParamString(tieTag))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TournamentResponse](req)

    } yield resp
  }

}

class HttpServiceTournamentApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createTournament(version: BigDecimal, accountId: Long, appKey: String, title: String, costToPlay: Integer, startDate: Long, subType: String, imageAssetId: Long, secondsBetweenLevels: Integer = 600, secondsForTieBreaker: Integer = 600, secondsBetweenPacks: Integer = 86400, maximumLevelLength: Integer = 1800, costToPlayType: String, minimumToPlay: Integer = 1, startingLimit: Integer, availableLimit: Integer, description: String, metaData: String, audienceIds: String, active: Boolean, enableBuyBack: Boolean = false, offerIds: String, offerAssetId: Long, fixedReward: Boolean = false, splitReward: String = ALL, allocateTickets: Boolean, tournamentData: String, missionType: String = MULTISTAGE, visibility: String = PUBLIC, preliminaryGroups: Integer = 1, preliminaryGroupAdvancements: String = 1, enableMultipleEntries: Boolean = false, enableMultipleVotes: Boolean = false, featured: Boolean = false, winnerTag: String, tieTag: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], titleQuery: QueryParam[String], subTypeQuery: QueryParam[String], imageAssetIdQuery: QueryParam[Long], secondsBetweenLevelsQuery: QueryParam[Integer], secondsForTieBreakerQuery: QueryParam[Integer], secondsBetweenPacksQuery: QueryParam[Integer], maximumLevelLengthQuery: QueryParam[Integer], costToPlayQuery: QueryParam[Integer], costToPlayTypeQuery: QueryParam[String], minimumToPlayQuery: QueryParam[Integer], startingLimitQuery: QueryParam[Integer], availableLimitQuery: QueryParam[Integer], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String], startDateQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], enableBuyBackQuery: QueryParam[Boolean], offerIdsQuery: QueryParam[String], offerAssetIdQuery: QueryParam[Long], fixedRewardQuery: QueryParam[Boolean], splitRewardQuery: QueryParam[String], allocateTicketsQuery: QueryParam[Boolean], tournamentDataQuery: QueryParam[String], missionTypeQuery: QueryParam[String], visibilityQuery: QueryParam[String], preliminaryGroupsQuery: QueryParam[Integer], preliminaryGroupAdvancementsQuery: QueryParam[String], enableMultipleEntriesQuery: QueryParam[Boolean], enableMultipleVotesQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], winnerTagQuery: QueryParam[String], tieTagQuery: QueryParam[String]): Task[TournamentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TournamentResponse] = jsonOf[TournamentResponse]

    val path = "/api/{version}/tournament/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("title", Some(titleQuery.toParamString(title))), ("subType", Some(subTypeQuery.toParamString(subType))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("secondsBetweenLevels", Some(secondsBetweenLevelsQuery.toParamString(secondsBetweenLevels))), ("secondsForTieBreaker", Some(secondsForTieBreakerQuery.toParamString(secondsForTieBreaker))), ("secondsBetweenPacks", Some(secondsBetweenPacksQuery.toParamString(secondsBetweenPacks))), ("maximumLevelLength", Some(maximumLevelLengthQuery.toParamString(maximumLevelLength))), ("costToPlay", Some(costToPlayQuery.toParamString(costToPlay))), ("costToPlayType", Some(costToPlayTypeQuery.toParamString(costToPlayType))), ("minimumToPlay", Some(minimumToPlayQuery.toParamString(minimumToPlay))), ("startingLimit", Some(startingLimitQuery.toParamString(startingLimit))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("active", Some(activeQuery.toParamString(active))), ("enableBuyBack", Some(enableBuyBackQuery.toParamString(enableBuyBack))), ("offerIds", Some(offerIdsQuery.toParamString(offerIds))), ("offerAssetId", Some(offerAssetIdQuery.toParamString(offerAssetId))), ("fixedReward", Some(fixedRewardQuery.toParamString(fixedReward))), ("splitReward", Some(splitRewardQuery.toParamString(splitReward))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("tournamentData", Some(tournamentDataQuery.toParamString(tournamentData))), ("missionType", Some(missionTypeQuery.toParamString(missionType))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("preliminaryGroups", Some(preliminaryGroupsQuery.toParamString(preliminaryGroups))), ("preliminaryGroupAdvancements", Some(preliminaryGroupAdvancementsQuery.toParamString(preliminaryGroupAdvancements))), ("enableMultipleEntries", Some(enableMultipleEntriesQuery.toParamString(enableMultipleEntries))), ("enableMultipleVotes", Some(enableMultipleVotesQuery.toParamString(enableMultipleVotes))), ("featured", Some(featuredQuery.toParamString(featured))), ("winnerTag", Some(winnerTagQuery.toParamString(winnerTag))), ("tieTag", Some(tieTagQuery.toParamString(tieTag))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TournamentResponse](req)

    } yield resp
  }

  def deleteTournament(version: BigDecimal, accountId: Long, missionId: Long)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getTournament(version: BigDecimal, accountId: Long, missionId: Long, joinCode: String, includeScores: String, objectPreviewSize: Integer = 50)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], joinCodeQuery: QueryParam[String], includeScoresQuery: QueryParam[String], objectPreviewSizeQuery: QueryParam[Integer]): Task[TournamentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TournamentResponse] = jsonOf[TournamentResponse]

    val path = "/api/{version}/tournament/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("joinCode", Some(joinCodeQuery.toParamString(joinCode))), ("includeScores", Some(includeScoresQuery.toParamString(includeScores))), ("objectPreviewSize", Some(objectPreviewSizeQuery.toParamString(objectPreviewSize))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TournamentResponse](req)

    } yield resp
  }

  def searchObjects(version: BigDecimal, accountId: Long, gameLevelId: Long, sortField: String = PLAYER_SCORE_COUNT, descending: Boolean = true, start: Integer = 0, limit: Integer = 20)(implicit accountIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/object/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchRounds(version: BigDecimal, accountId: Long, appKey: String, status: String = ACCEPTED,ACTIVE, missionType: String, currentOnly: Boolean = true, visibilities: String = PUBLIC, start: Integer = 0, limit: Integer = 20)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], statusQuery: QueryParam[String], missionTypeQuery: QueryParam[String], currentOnlyQuery: QueryParam[Boolean], visibilitiesQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/round/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("status", Some(statusQuery.toParamString(status))), ("missionType", Some(missionTypeQuery.toParamString(missionType))), ("currentOnly", Some(currentOnlyQuery.toParamString(currentOnly))), ("visibilities", Some(visibilitiesQuery.toParamString(visibilities))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchTournaments(version: BigDecimal, accountId: Long, appKey: String, keyword: String, subType: String, includeInactive: Boolean = false, missionTypes: String = MULTISTAGE,TOURNAMENT,POOLPLAY, filter: String = UPCOMING, sortField: String = START_DATE, descending: Boolean, visibility: String = PUBLIC, start: Integer = 0, limit: Integer = 20)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], subTypeQuery: QueryParam[String], includeInactiveQuery: QueryParam[Boolean], missionTypesQuery: QueryParam[String], filterQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], visibilityQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[MissionShortResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionShortResponse] = jsonOf[MissionShortResponse]

    val path = "/api/{version}/tournament/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("subType", Some(subTypeQuery.toParamString(subType))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("missionTypes", Some(missionTypesQuery.toParamString(missionTypes))), ("filter", Some(filterQuery.toParamString(filter))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionShortResponse](req)

    } yield resp
  }

  def submitTournamentScore(version: BigDecimal, accountId: Long, appKey: String, missionId: Long, gameId: Long, packId: Long, scores: String, gameLevelId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], scoresQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/score".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("scores", Some(scoresQuery.toParamString(scores))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def submitTournamentVote(version: BigDecimal, accountId: Long, appKey: String, missionId: Long, gameObjectId: Long, deviceId: String, checkIfDeviceAlreadyVoted: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Long], checkIfDeviceAlreadyVotedQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/vote".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))), ("checkIfDeviceAlreadyVoted", Some(checkIfDeviceAlreadyVotedQuery.toParamString(checkIfDeviceAlreadyVoted))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def substituteTournamentPlayer(version: BigDecimal, accountId: Long, missionId: Long, packId: Long, gameLevelId: Long)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tournament/substitute".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateTournament(version: BigDecimal, accountId: Long, missionId: Long, title: String, subType: String, imageAssetId: Long, secondsBetweenLevels: Integer, secondsForTieBreaker: Integer, secondsBetweenPacks: Integer, maximumLevelLength: Integer, costToPlay: Integer, costToPlayType: String, minimumToPlay: Integer, startingLimit: Integer, availableLimit: Integer, description: String, metaData: String, startDate: Long, audienceIds: String, active: Boolean, enableBuyBack: Boolean, offerIds: String, offerAssetId: Long, fixedReward: Boolean, splitReward: String, allocateTickets: Boolean, tournamentData: String, visibility: String, preliminaryGroups: Integer, preliminaryGroupAdvancements: String, enableMultipleEntries: Boolean, enableMultipleVotes: Boolean, featured: Boolean, winnerTag: String, tieTag: String)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], titleQuery: QueryParam[String], subTypeQuery: QueryParam[String], imageAssetIdQuery: QueryParam[Long], secondsBetweenLevelsQuery: QueryParam[Integer], secondsForTieBreakerQuery: QueryParam[Integer], secondsBetweenPacksQuery: QueryParam[Integer], maximumLevelLengthQuery: QueryParam[Integer], costToPlayQuery: QueryParam[Integer], costToPlayTypeQuery: QueryParam[String], minimumToPlayQuery: QueryParam[Integer], startingLimitQuery: QueryParam[Integer], availableLimitQuery: QueryParam[Integer], descriptionQuery: QueryParam[String], metaDataQuery: QueryParam[String], startDateQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], enableBuyBackQuery: QueryParam[Boolean], offerIdsQuery: QueryParam[String], offerAssetIdQuery: QueryParam[Long], fixedRewardQuery: QueryParam[Boolean], splitRewardQuery: QueryParam[String], allocateTicketsQuery: QueryParam[Boolean], tournamentDataQuery: QueryParam[String], visibilityQuery: QueryParam[String], preliminaryGroupsQuery: QueryParam[Integer], preliminaryGroupAdvancementsQuery: QueryParam[String], enableMultipleEntriesQuery: QueryParam[Boolean], enableMultipleVotesQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], winnerTagQuery: QueryParam[String], tieTagQuery: QueryParam[String]): Task[TournamentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TournamentResponse] = jsonOf[TournamentResponse]

    val path = "/api/{version}/tournament/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("title", Some(titleQuery.toParamString(title))), ("subType", Some(subTypeQuery.toParamString(subType))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("secondsBetweenLevels", Some(secondsBetweenLevelsQuery.toParamString(secondsBetweenLevels))), ("secondsForTieBreaker", Some(secondsForTieBreakerQuery.toParamString(secondsForTieBreaker))), ("secondsBetweenPacks", Some(secondsBetweenPacksQuery.toParamString(secondsBetweenPacks))), ("maximumLevelLength", Some(maximumLevelLengthQuery.toParamString(maximumLevelLength))), ("costToPlay", Some(costToPlayQuery.toParamString(costToPlay))), ("costToPlayType", Some(costToPlayTypeQuery.toParamString(costToPlayType))), ("minimumToPlay", Some(minimumToPlayQuery.toParamString(minimumToPlay))), ("startingLimit", Some(startingLimitQuery.toParamString(startingLimit))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("description", Some(descriptionQuery.toParamString(description))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("active", Some(activeQuery.toParamString(active))), ("enableBuyBack", Some(enableBuyBackQuery.toParamString(enableBuyBack))), ("offerIds", Some(offerIdsQuery.toParamString(offerIds))), ("offerAssetId", Some(offerAssetIdQuery.toParamString(offerAssetId))), ("fixedReward", Some(fixedRewardQuery.toParamString(fixedReward))), ("splitReward", Some(splitRewardQuery.toParamString(splitReward))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("tournamentData", Some(tournamentDataQuery.toParamString(tournamentData))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("preliminaryGroups", Some(preliminaryGroupsQuery.toParamString(preliminaryGroups))), ("preliminaryGroupAdvancements", Some(preliminaryGroupAdvancementsQuery.toParamString(preliminaryGroupAdvancements))), ("enableMultipleEntries", Some(enableMultipleEntriesQuery.toParamString(enableMultipleEntries))), ("enableMultipleVotes", Some(enableMultipleVotesQuery.toParamString(enableMultipleVotes))), ("featured", Some(featuredQuery.toParamString(featured))), ("winnerTag", Some(winnerTagQuery.toParamString(winnerTag))), ("tieTag", Some(tieTagQuery.toParamString(tieTag))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TournamentResponse](req)

    } yield resp
  }

}
