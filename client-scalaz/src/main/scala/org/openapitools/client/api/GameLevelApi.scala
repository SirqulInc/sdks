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

import org.openapitools.client.api.GameLevelListResponse
import org.openapitools.client.api.GameLevelResponse
import org.openapitools.client.api.QuestionResponse
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.WordzWordResponse

object GameLevelApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createGameLevel(host: String, accountId: Long, name: String, gameData: String, gameDataSuffix: String, appKey: String, description: String, difficulty: String, appVersion: String, assetImageId: Long, assetIconId: Long, visibility: String, friendGroup: Boolean, connectionIds: String, connectionGroupIds: String, balance: Double, active: Boolean, allocateTickets: Boolean, ticketCount: Long, ticketType: String, points: Long, tutorialTitle: String, tutorialMessage: String, tutorialAlignment: String, tutorialImageAssetId: Long, offerId: Long, metaData: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], difficultyQuery: QueryParam[String], appVersionQuery: QueryParam[String], assetImageIdQuery: QueryParam[Long], assetIconIdQuery: QueryParam[Long], gameDataQuery: QueryParam[String], gameDataSuffixQuery: QueryParam[String], visibilityQuery: QueryParam[String], friendGroupQuery: QueryParam[Boolean], connectionIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], balanceQuery: QueryParam[Double], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], tutorialTitleQuery: QueryParam[String], tutorialMessageQuery: QueryParam[String], tutorialAlignmentQuery: QueryParam[String], tutorialImageAssetIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], metaDataQuery: QueryParam[String]): Task[GameLevelResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameLevelResponse] = jsonOf[GameLevelResponse]

    val path = "/level/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("difficulty", Some(difficultyQuery.toParamString(difficulty))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("assetImageId", Some(assetImageIdQuery.toParamString(assetImageId))), ("assetIconId", Some(assetIconIdQuery.toParamString(assetIconId))), ("gameData", Some(gameDataQuery.toParamString(gameData))), ("gameDataSuffix", Some(gameDataSuffixQuery.toParamString(gameDataSuffix))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("friendGroup", Some(friendGroupQuery.toParamString(friendGroup))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("balance", Some(balanceQuery.toParamString(balance))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("tutorialTitle", Some(tutorialTitleQuery.toParamString(tutorialTitle))), ("tutorialMessage", Some(tutorialMessageQuery.toParamString(tutorialMessage))), ("tutorialAlignment", Some(tutorialAlignmentQuery.toParamString(tutorialAlignment))), ("tutorialImageAssetId", Some(tutorialImageAssetIdQuery.toParamString(tutorialImageAssetId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameLevelResponse](req)

    } yield resp
  }

  def deleteGameLevel(host: String, accountId: Long, levelId: Long)(implicit accountIdQuery: QueryParam[Long], levelIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/level/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("levelId", Some(levelIdQuery.toParamString(levelId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getGameLevel(host: String, accountId: Long, levelId: Long, includeGameData: Boolean)(implicit accountIdQuery: QueryParam[Long], levelIdQuery: QueryParam[Long], includeGameDataQuery: QueryParam[Boolean]): Task[GameLevelResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameLevelResponse] = jsonOf[GameLevelResponse]

    val path = "/level/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("levelId", Some(levelIdQuery.toParamString(levelId))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameLevelResponse](req)

    } yield resp
  }

  def getGameLevelsByApplication(host: String, accountId: Long, appKey: String, keyword: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, appVersion: String, includeGameData: Boolean, filters: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], appVersionQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean], filtersQuery: QueryParam[String]): Task[GameLevelListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameLevelListResponse] = jsonOf[GameLevelListResponse]

    val path = "/level/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("filters", Some(filtersQuery.toParamString(filters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameLevelListResponse](req)

    } yield resp
  }

  def getGameLevelsByBillableEntity(host: String, accountId: Long, appKey: String, keyword: String, sortField: String, descending: Boolean, activeOnly: Boolean, start: Long, limit: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Long], limitQuery: QueryParam[Long]): Task[GameLevelResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameLevelResponse] = jsonOf[GameLevelResponse]

    val path = "/level/searchByBillableEntity"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameLevelResponse](req)

    } yield resp
  }

  def getQuestionsInLevel(host: String, levelId: Long, accountId: Long)(implicit levelIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[QuestionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QuestionResponse] = jsonOf[QuestionResponse]

    val path = "/level/questions/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("levelId", Some(levelIdQuery.toParamString(levelId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QuestionResponse](req)

    } yield resp
  }

  def getWordsInLevel(host: String, levelId: Long, accountId: Long)(implicit levelIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[WordzWordResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WordzWordResponse] = jsonOf[WordzWordResponse]

    val path = "/level/words/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("levelId", Some(levelIdQuery.toParamString(levelId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WordzWordResponse](req)

    } yield resp
  }

  def updateGameLevel(host: String, accountId: Long, levelId: Long, appKey: String, name: String, description: String, difficulty: String, appVersion: String, assetImageId: Long, assetIconId: Long, gameData: String, gameDataSuffix: String, visibility: String, friendGroup: Boolean, connectionIds: String, connectionGroupIds: String, balance: Double, active: Boolean, allocateTickets: Boolean, ticketCount: Long, ticketType: String, points: Long, tutorialTitle: String, tutorialMessage: String, tutorialAlignment: String, tutorialImageAssetId: Long, offerId: Long, metaData: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], levelIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], difficultyQuery: QueryParam[String], appVersionQuery: QueryParam[String], assetImageIdQuery: QueryParam[Long], assetIconIdQuery: QueryParam[Long], gameDataQuery: QueryParam[String], gameDataSuffixQuery: QueryParam[String], visibilityQuery: QueryParam[String], friendGroupQuery: QueryParam[Boolean], connectionIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], balanceQuery: QueryParam[Double], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], tutorialTitleQuery: QueryParam[String], tutorialMessageQuery: QueryParam[String], tutorialAlignmentQuery: QueryParam[String], tutorialImageAssetIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], metaDataQuery: QueryParam[String]): Task[GameLevelResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameLevelResponse] = jsonOf[GameLevelResponse]

    val path = "/level/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("levelId", Some(levelIdQuery.toParamString(levelId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("difficulty", Some(difficultyQuery.toParamString(difficulty))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("assetImageId", Some(assetImageIdQuery.toParamString(assetImageId))), ("assetIconId", Some(assetIconIdQuery.toParamString(assetIconId))), ("gameData", Some(gameDataQuery.toParamString(gameData))), ("gameDataSuffix", Some(gameDataSuffixQuery.toParamString(gameDataSuffix))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("friendGroup", Some(friendGroupQuery.toParamString(friendGroup))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("balance", Some(balanceQuery.toParamString(balance))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("tutorialTitle", Some(tutorialTitleQuery.toParamString(tutorialTitle))), ("tutorialMessage", Some(tutorialMessageQuery.toParamString(tutorialMessage))), ("tutorialAlignment", Some(tutorialAlignmentQuery.toParamString(tutorialAlignment))), ("tutorialImageAssetId", Some(tutorialImageAssetIdQuery.toParamString(tutorialImageAssetId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameLevelResponse](req)

    } yield resp
  }

  def updateQuestionsInLevel(host: String, levelId: Long, accountId: Long, questionIds: String)(implicit levelIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], questionIdsQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/level/questions/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("levelId", Some(levelIdQuery.toParamString(levelId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("questionIds", Some(questionIdsQuery.toParamString(questionIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateWordsInLevel(host: String, levelId: Long, accountId: Long, wordIds: String)(implicit levelIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], wordIdsQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/level/words/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("levelId", Some(levelIdQuery.toParamString(levelId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("wordIds", Some(wordIdsQuery.toParamString(wordIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceGameLevelApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createGameLevel(accountId: Long, name: String, gameData: String, gameDataSuffix: String, appKey: String, description: String, difficulty: String, appVersion: String, assetImageId: Long, assetIconId: Long, visibility: String, friendGroup: Boolean, connectionIds: String, connectionGroupIds: String, balance: Double, active: Boolean, allocateTickets: Boolean, ticketCount: Long, ticketType: String, points: Long, tutorialTitle: String, tutorialMessage: String, tutorialAlignment: String, tutorialImageAssetId: Long, offerId: Long, metaData: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], difficultyQuery: QueryParam[String], appVersionQuery: QueryParam[String], assetImageIdQuery: QueryParam[Long], assetIconIdQuery: QueryParam[Long], gameDataQuery: QueryParam[String], gameDataSuffixQuery: QueryParam[String], visibilityQuery: QueryParam[String], friendGroupQuery: QueryParam[Boolean], connectionIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], balanceQuery: QueryParam[Double], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], tutorialTitleQuery: QueryParam[String], tutorialMessageQuery: QueryParam[String], tutorialAlignmentQuery: QueryParam[String], tutorialImageAssetIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], metaDataQuery: QueryParam[String]): Task[GameLevelResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameLevelResponse] = jsonOf[GameLevelResponse]

    val path = "/level/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("difficulty", Some(difficultyQuery.toParamString(difficulty))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("assetImageId", Some(assetImageIdQuery.toParamString(assetImageId))), ("assetIconId", Some(assetIconIdQuery.toParamString(assetIconId))), ("gameData", Some(gameDataQuery.toParamString(gameData))), ("gameDataSuffix", Some(gameDataSuffixQuery.toParamString(gameDataSuffix))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("friendGroup", Some(friendGroupQuery.toParamString(friendGroup))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("balance", Some(balanceQuery.toParamString(balance))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("tutorialTitle", Some(tutorialTitleQuery.toParamString(tutorialTitle))), ("tutorialMessage", Some(tutorialMessageQuery.toParamString(tutorialMessage))), ("tutorialAlignment", Some(tutorialAlignmentQuery.toParamString(tutorialAlignment))), ("tutorialImageAssetId", Some(tutorialImageAssetIdQuery.toParamString(tutorialImageAssetId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameLevelResponse](req)

    } yield resp
  }

  def deleteGameLevel(accountId: Long, levelId: Long)(implicit accountIdQuery: QueryParam[Long], levelIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/level/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("levelId", Some(levelIdQuery.toParamString(levelId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getGameLevel(accountId: Long, levelId: Long, includeGameData: Boolean)(implicit accountIdQuery: QueryParam[Long], levelIdQuery: QueryParam[Long], includeGameDataQuery: QueryParam[Boolean]): Task[GameLevelResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameLevelResponse] = jsonOf[GameLevelResponse]

    val path = "/level/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("levelId", Some(levelIdQuery.toParamString(levelId))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameLevelResponse](req)

    } yield resp
  }

  def getGameLevelsByApplication(accountId: Long, appKey: String, keyword: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, appVersion: String, includeGameData: Boolean, filters: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], appVersionQuery: QueryParam[String], includeGameDataQuery: QueryParam[Boolean], filtersQuery: QueryParam[String]): Task[GameLevelListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameLevelListResponse] = jsonOf[GameLevelListResponse]

    val path = "/level/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("filters", Some(filtersQuery.toParamString(filters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameLevelListResponse](req)

    } yield resp
  }

  def getGameLevelsByBillableEntity(accountId: Long, appKey: String, keyword: String, sortField: String, descending: Boolean, activeOnly: Boolean, start: Long, limit: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Long], limitQuery: QueryParam[Long]): Task[GameLevelResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameLevelResponse] = jsonOf[GameLevelResponse]

    val path = "/level/searchByBillableEntity"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameLevelResponse](req)

    } yield resp
  }

  def getQuestionsInLevel(levelId: Long, accountId: Long)(implicit levelIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[QuestionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[QuestionResponse] = jsonOf[QuestionResponse]

    val path = "/level/questions/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("levelId", Some(levelIdQuery.toParamString(levelId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[QuestionResponse](req)

    } yield resp
  }

  def getWordsInLevel(levelId: Long, accountId: Long)(implicit levelIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long]): Task[WordzWordResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[WordzWordResponse] = jsonOf[WordzWordResponse]

    val path = "/level/words/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("levelId", Some(levelIdQuery.toParamString(levelId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[WordzWordResponse](req)

    } yield resp
  }

  def updateGameLevel(accountId: Long, levelId: Long, appKey: String, name: String, description: String, difficulty: String, appVersion: String, assetImageId: Long, assetIconId: Long, gameData: String, gameDataSuffix: String, visibility: String, friendGroup: Boolean, connectionIds: String, connectionGroupIds: String, balance: Double, active: Boolean, allocateTickets: Boolean, ticketCount: Long, ticketType: String, points: Long, tutorialTitle: String, tutorialMessage: String, tutorialAlignment: String, tutorialImageAssetId: Long, offerId: Long, metaData: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], levelIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], difficultyQuery: QueryParam[String], appVersionQuery: QueryParam[String], assetImageIdQuery: QueryParam[Long], assetIconIdQuery: QueryParam[Long], gameDataQuery: QueryParam[String], gameDataSuffixQuery: QueryParam[String], visibilityQuery: QueryParam[String], friendGroupQuery: QueryParam[Boolean], connectionIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], balanceQuery: QueryParam[Double], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], tutorialTitleQuery: QueryParam[String], tutorialMessageQuery: QueryParam[String], tutorialAlignmentQuery: QueryParam[String], tutorialImageAssetIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], metaDataQuery: QueryParam[String]): Task[GameLevelResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GameLevelResponse] = jsonOf[GameLevelResponse]

    val path = "/level/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("levelId", Some(levelIdQuery.toParamString(levelId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("difficulty", Some(difficultyQuery.toParamString(difficulty))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("assetImageId", Some(assetImageIdQuery.toParamString(assetImageId))), ("assetIconId", Some(assetIconIdQuery.toParamString(assetIconId))), ("gameData", Some(gameDataQuery.toParamString(gameData))), ("gameDataSuffix", Some(gameDataSuffixQuery.toParamString(gameDataSuffix))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("friendGroup", Some(friendGroupQuery.toParamString(friendGroup))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("balance", Some(balanceQuery.toParamString(balance))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("tutorialTitle", Some(tutorialTitleQuery.toParamString(tutorialTitle))), ("tutorialMessage", Some(tutorialMessageQuery.toParamString(tutorialMessage))), ("tutorialAlignment", Some(tutorialAlignmentQuery.toParamString(tutorialAlignment))), ("tutorialImageAssetId", Some(tutorialImageAssetIdQuery.toParamString(tutorialImageAssetId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("metaData", Some(metaDataQuery.toParamString(metaData))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GameLevelResponse](req)

    } yield resp
  }

  def updateQuestionsInLevel(levelId: Long, accountId: Long, questionIds: String)(implicit levelIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], questionIdsQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/level/questions/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("levelId", Some(levelIdQuery.toParamString(levelId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("questionIds", Some(questionIdsQuery.toParamString(questionIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateWordsInLevel(levelId: Long, accountId: Long, wordIds: String)(implicit levelIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], wordIdsQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/level/words/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("levelId", Some(levelIdQuery.toParamString(levelId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("wordIds", Some(wordIdsQuery.toParamString(wordIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
