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

import org.openapitools.client.api.ScoreResponse

object ScoreApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createScore(host: String, accountId: Long, appKey: String, points: Integer, missionId: Long, gameId: Long, packId: Long, gameLevelId: Long, gameObjectId: Long, timeTaken: Integer, highest: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Long], pointsQuery: QueryParam[Integer], timeTakenQuery: QueryParam[Integer], highestQuery: QueryParam[Boolean]): Task[ScoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScoreResponse] = jsonOf[ScoreResponse]

    val path = "/score/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))), ("points", Some(pointsQuery.toParamString(points))), ("timeTaken", Some(timeTakenQuery.toParamString(timeTaken))), ("highest", Some(highestQuery.toParamString(highest))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScoreResponse](req)

    } yield resp
  }

  def getScore(host: String, accountId: Long, appKey: String, missionId: Long, gameId: Long, packId: Long, gameLevelId: Long, gameObjectId: Long, scoreObjectType: String, scoreStatus: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Long], scoreObjectTypeQuery: QueryParam[String], scoreStatusQuery: QueryParam[String]): Task[ScoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScoreResponse] = jsonOf[ScoreResponse]

    val path = "/score/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))), ("scoreObjectType", Some(scoreObjectTypeQuery.toParamString(scoreObjectType))), ("scoreStatus", Some(scoreStatusQuery.toParamString(scoreStatus))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScoreResponse](req)

    } yield resp
  }

  def searchScores(host: String, accountId: Long, appKey: String, missionId: Long, gameId: Long, packId: Long, gameLevelId: Long, gameObjectId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Long]): Task[List[ScoreResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ScoreResponse]] = jsonOf[List[ScoreResponse]]

    val path = "/score/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ScoreResponse]](req)

    } yield resp
  }

}

class HttpServiceScoreApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createScore(accountId: Long, appKey: String, points: Integer, missionId: Long, gameId: Long, packId: Long, gameLevelId: Long, gameObjectId: Long, timeTaken: Integer, highest: Boolean)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Long], pointsQuery: QueryParam[Integer], timeTakenQuery: QueryParam[Integer], highestQuery: QueryParam[Boolean]): Task[ScoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScoreResponse] = jsonOf[ScoreResponse]

    val path = "/score/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))), ("points", Some(pointsQuery.toParamString(points))), ("timeTaken", Some(timeTakenQuery.toParamString(timeTaken))), ("highest", Some(highestQuery.toParamString(highest))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScoreResponse](req)

    } yield resp
  }

  def getScore(accountId: Long, appKey: String, missionId: Long, gameId: Long, packId: Long, gameLevelId: Long, gameObjectId: Long, scoreObjectType: String, scoreStatus: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Long], scoreObjectTypeQuery: QueryParam[String], scoreStatusQuery: QueryParam[String]): Task[ScoreResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScoreResponse] = jsonOf[ScoreResponse]

    val path = "/score/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))), ("scoreObjectType", Some(scoreObjectTypeQuery.toParamString(scoreObjectType))), ("scoreStatus", Some(scoreStatusQuery.toParamString(scoreStatus))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScoreResponse](req)

    } yield resp
  }

  def searchScores(accountId: Long, appKey: String, missionId: Long, gameId: Long, packId: Long, gameLevelId: Long, gameObjectId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Long]): Task[List[ScoreResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ScoreResponse]] = jsonOf[List[ScoreResponse]]

    val path = "/score/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ScoreResponse]](req)

    } yield resp
  }

}
