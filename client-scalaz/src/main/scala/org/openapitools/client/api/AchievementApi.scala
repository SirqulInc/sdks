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

import org.openapitools.client.api.AchievementProgressResponse
import org.openapitools.client.api.AchievementResponse
import org.openapitools.client.api.AchievementShortResponse
import org.openapitools.client.api.AchievementTierResponse
import java.io.File
import org.openapitools.client.api.SirqulResponse

object AchievementApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def achievementTierSearchPost(host: String, deviceId: String, accountId: Long, appKey: String, keyword: String, achievementType: Long, rankType: String, sortField: String, descending: Boolean, descendingGoal: Boolean, start: Long, limit: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], achievementTypeQuery: QueryParam[Long], rankTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], descendingGoalQuery: QueryParam[Boolean], startQuery: QueryParam[Long], limitQuery: QueryParam[Long]): Task[AchievementTierResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementTierResponse] = jsonOf[AchievementTierResponse]

    val path = "/achievement/tier/search"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("achievementType", Some(achievementTypeQuery.toParamString(achievementType))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("descendingGoal", Some(descendingGoalQuery.toParamString(descendingGoal))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementTierResponse](req)

    } yield resp
  }

  def createAchievement(host: String, appKey: String, title: String, deviceId: String, accountId: Long, analyticsTag: String, description: String, rankType: String, rankIncrement: Integer, minIncrement: Integer, maxIncrement: Integer, validate: Boolean, active: Boolean, triggerDefinition: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], analyticsTagQuery: QueryParam[String], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], rankTypeQuery: QueryParam[String], rankIncrementQuery: QueryParam[Integer], minIncrementQuery: QueryParam[Integer], maxIncrementQuery: QueryParam[Integer], validateQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], triggerDefinitionQuery: QueryParam[String]): Task[AchievementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementResponse] = jsonOf[AchievementResponse]

    val path = "/achievement/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("analyticsTag", Some(analyticsTagQuery.toParamString(analyticsTag))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("rankIncrement", Some(rankIncrementQuery.toParamString(rankIncrement))), ("minIncrement", Some(minIncrementQuery.toParamString(minIncrement))), ("maxIncrement", Some(maxIncrementQuery.toParamString(maxIncrement))), ("validate", Some(validateQuery.toParamString(validate))), ("active", Some(activeQuery.toParamString(active))), ("triggerDefinition", Some(triggerDefinitionQuery.toParamString(triggerDefinition))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementResponse](req)

    } yield resp
  }

  def createAchievementTier(host: String, achievementId: Long, scoreAllInstances: Boolean, deviceId: String, accountId: Long, icon: File, iconAssetId: Long, title: String, description: String, goalCount: Long, missionId: Long, gameId: Long, packId: Long, gameLevelId: Long, gameObjectId: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], achievementIdQuery: QueryParam[Long], iconQuery: QueryParam[File], iconAssetIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], goalCountQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Integer], scoreAllInstancesQuery: QueryParam[Boolean]): Task[AchievementTierResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementTierResponse] = jsonOf[AchievementTierResponse]

    val path = "/achievement/tier/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementId", Some(achievementIdQuery.toParamString(achievementId))), ("icon", Some(iconQuery.toParamString(icon))), ("iconAssetId", Some(iconAssetIdQuery.toParamString(iconAssetId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("goalCount", Some(goalCountQuery.toParamString(goalCount))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))), ("scoreAllInstances", Some(scoreAllInstancesQuery.toParamString(scoreAllInstances))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementTierResponse](req)

    } yield resp
  }

  def deleteAchievement(host: String, achievementId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long], achievementIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/achievement/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementId", Some(achievementIdQuery.toParamString(achievementId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteAchievementTier(host: String, achievementTierId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long], achievementTierIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/achievement/tier/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementTierId", Some(achievementTierIdQuery.toParamString(achievementTierId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAchievement(host: String, achievementId: Long, deviceId: String, accountId: Long, achievementType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], achievementIdQuery: QueryParam[Long], achievementTypeQuery: QueryParam[String]): Task[AchievementTierResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementTierResponse] = jsonOf[AchievementTierResponse]

    val path = "/achievement/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementId", Some(achievementIdQuery.toParamString(achievementId))), ("achievementType", Some(achievementTypeQuery.toParamString(achievementType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementTierResponse](req)

    } yield resp
  }

  def getAchievementTier(host: String, accountId: Long, achievementTierId: Long)(implicit accountIdQuery: QueryParam[Long], achievementTierIdQuery: QueryParam[Long]): Task[AchievementTierResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementTierResponse] = jsonOf[AchievementTierResponse]

    val path = "/achievement/tier/get"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementTierId", Some(achievementTierIdQuery.toParamString(achievementTierId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementTierResponse](req)

    } yield resp
  }

  def getUserAchievements(host: String, returnNulls: Boolean = true, appKey: String, includeUndiscovered: Boolean = true, deviceId: String, accountId: Long, connectionAccountEmail: String, connectionAccountId: Long, rankType: String, achievementType: String, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountEmailQuery: QueryParam[String], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], achievementTypeQuery: QueryParam[String], includeUndiscoveredQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[List[AchievementProgressResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AchievementProgressResponse]] = jsonOf[List[AchievementProgressResponse]]

    val path = "/achievement/progress/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountEmail", Some(connectionAccountEmailQuery.toParamString(connectionAccountEmail))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("achievementType", Some(achievementTypeQuery.toParamString(achievementType))), ("includeUndiscovered", Some(includeUndiscoveredQuery.toParamString(includeUndiscovered))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AchievementProgressResponse]](req)

    } yield resp
  }

  def listAchievementTags(host: String, appKey: String)(implicit appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/achievement/tag/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def listAchievements(host: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, deviceId: String, accountId: Long, appKey: String, keyword: String, achievementType: String, rankType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], achievementTypeQuery: QueryParam[String], rankTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[AchievementShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AchievementShortResponse]] = jsonOf[List[AchievementShortResponse]]

    val path = "/achievement/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("achievementType", Some(achievementTypeQuery.toParamString(achievementType))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AchievementShortResponse]](req)

    } yield resp
  }

  def searchAchievements(host: String, appKey: String, sortField: String = TITLE, descending: Boolean = false, includeTiers: Boolean = false, includeInactiveTiers: Boolean = false, start: Integer = 0, limit: Integer = 100, deviceId: String, accountId: Long, keyword: String, achievementType: String, rankType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], achievementTypeQuery: QueryParam[String], rankTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], includeTiersQuery: QueryParam[Boolean], includeInactiveTiersQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[AchievementShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AchievementShortResponse]] = jsonOf[List[AchievementShortResponse]]

    val path = "/achievement/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("achievementType", Some(achievementTypeQuery.toParamString(achievementType))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("includeTiers", Some(includeTiersQuery.toParamString(includeTiers))), ("includeInactiveTiers", Some(includeInactiveTiersQuery.toParamString(includeInactiveTiers))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AchievementShortResponse]](req)

    } yield resp
  }

  def updateAchievement(host: String, deviceId: String, accountId: Long, achievementId: Long, analyticsTag: String, title: String, description: String, rankType: String, rankIncrement: Integer, minIncrement: Integer, nullMinIncrement: Boolean, maxIncrement: Integer, nullMaxIncrement: Boolean, validate: Boolean, active: Boolean, triggerDefinition: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], achievementIdQuery: QueryParam[Long], analyticsTagQuery: QueryParam[String], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], rankTypeQuery: QueryParam[String], rankIncrementQuery: QueryParam[Integer], minIncrementQuery: QueryParam[Integer], nullMinIncrementQuery: QueryParam[Boolean], maxIncrementQuery: QueryParam[Integer], nullMaxIncrementQuery: QueryParam[Boolean], validateQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], triggerDefinitionQuery: QueryParam[String]): Task[AchievementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementResponse] = jsonOf[AchievementResponse]

    val path = "/achievement/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementId", Some(achievementIdQuery.toParamString(achievementId))), ("analyticsTag", Some(analyticsTagQuery.toParamString(analyticsTag))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("rankIncrement", Some(rankIncrementQuery.toParamString(rankIncrement))), ("minIncrement", Some(minIncrementQuery.toParamString(minIncrement))), ("nullMinIncrement", Some(nullMinIncrementQuery.toParamString(nullMinIncrement))), ("maxIncrement", Some(maxIncrementQuery.toParamString(maxIncrement))), ("nullMaxIncrement", Some(nullMaxIncrementQuery.toParamString(nullMaxIncrement))), ("validate", Some(validateQuery.toParamString(validate))), ("active", Some(activeQuery.toParamString(active))), ("triggerDefinition", Some(triggerDefinitionQuery.toParamString(triggerDefinition))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementResponse](req)

    } yield resp
  }

  def updateAchievementTier(host: String, achievementTierId: Long, deviceId: String, accountId: Long, icon: File, iconAssetId: Long, title: String, description: String, goalCount: Long, missionId: Long, gameId: Long, packId: Long, gameLevelId: Long, gameObjectId: Long, scoreAllInstances: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], achievementTierIdQuery: QueryParam[Long], iconQuery: QueryParam[File], iconAssetIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], goalCountQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Long], scoreAllInstancesQuery: QueryParam[Boolean]): Task[AchievementTierResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementTierResponse] = jsonOf[AchievementTierResponse]

    val path = "/achievement/tier/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementTierId", Some(achievementTierIdQuery.toParamString(achievementTierId))), ("icon", Some(iconQuery.toParamString(icon))), ("iconAssetId", Some(iconAssetIdQuery.toParamString(iconAssetId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("goalCount", Some(goalCountQuery.toParamString(goalCount))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))), ("scoreAllInstances", Some(scoreAllInstancesQuery.toParamString(scoreAllInstances))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementTierResponse](req)

    } yield resp
  }

  def updateUserAchievement(host: String, accountId: Long, achievementId: Long, tag: String, customId: Long, increment: Long, startDate: Long, endDate: Long, returnProgress: Boolean)(implicit accountIdQuery: QueryParam[Long], achievementIdQuery: QueryParam[Long], tagQuery: QueryParam[String], customIdQuery: QueryParam[Long], incrementQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], returnProgressQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/achievement/progress/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementId", Some(achievementIdQuery.toParamString(achievementId))), ("tag", Some(tagQuery.toParamString(tag))), ("customId", Some(customIdQuery.toParamString(customId))), ("increment", Some(incrementQuery.toParamString(increment))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("returnProgress", Some(returnProgressQuery.toParamString(returnProgress))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceAchievementApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def achievementTierSearchPost(deviceId: String, accountId: Long, appKey: String, keyword: String, achievementType: Long, rankType: String, sortField: String, descending: Boolean, descendingGoal: Boolean, start: Long, limit: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], achievementTypeQuery: QueryParam[Long], rankTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], descendingGoalQuery: QueryParam[Boolean], startQuery: QueryParam[Long], limitQuery: QueryParam[Long]): Task[AchievementTierResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementTierResponse] = jsonOf[AchievementTierResponse]

    val path = "/achievement/tier/search"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("achievementType", Some(achievementTypeQuery.toParamString(achievementType))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("descendingGoal", Some(descendingGoalQuery.toParamString(descendingGoal))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementTierResponse](req)

    } yield resp
  }

  def createAchievement(appKey: String, title: String, deviceId: String, accountId: Long, analyticsTag: String, description: String, rankType: String, rankIncrement: Integer, minIncrement: Integer, maxIncrement: Integer, validate: Boolean, active: Boolean, triggerDefinition: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], analyticsTagQuery: QueryParam[String], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], rankTypeQuery: QueryParam[String], rankIncrementQuery: QueryParam[Integer], minIncrementQuery: QueryParam[Integer], maxIncrementQuery: QueryParam[Integer], validateQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], triggerDefinitionQuery: QueryParam[String]): Task[AchievementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementResponse] = jsonOf[AchievementResponse]

    val path = "/achievement/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("analyticsTag", Some(analyticsTagQuery.toParamString(analyticsTag))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("rankIncrement", Some(rankIncrementQuery.toParamString(rankIncrement))), ("minIncrement", Some(minIncrementQuery.toParamString(minIncrement))), ("maxIncrement", Some(maxIncrementQuery.toParamString(maxIncrement))), ("validate", Some(validateQuery.toParamString(validate))), ("active", Some(activeQuery.toParamString(active))), ("triggerDefinition", Some(triggerDefinitionQuery.toParamString(triggerDefinition))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementResponse](req)

    } yield resp
  }

  def createAchievementTier(achievementId: Long, scoreAllInstances: Boolean, deviceId: String, accountId: Long, icon: File, iconAssetId: Long, title: String, description: String, goalCount: Long, missionId: Long, gameId: Long, packId: Long, gameLevelId: Long, gameObjectId: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], achievementIdQuery: QueryParam[Long], iconQuery: QueryParam[File], iconAssetIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], goalCountQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Integer], scoreAllInstancesQuery: QueryParam[Boolean]): Task[AchievementTierResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementTierResponse] = jsonOf[AchievementTierResponse]

    val path = "/achievement/tier/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementId", Some(achievementIdQuery.toParamString(achievementId))), ("icon", Some(iconQuery.toParamString(icon))), ("iconAssetId", Some(iconAssetIdQuery.toParamString(iconAssetId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("goalCount", Some(goalCountQuery.toParamString(goalCount))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))), ("scoreAllInstances", Some(scoreAllInstancesQuery.toParamString(scoreAllInstances))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementTierResponse](req)

    } yield resp
  }

  def deleteAchievement(achievementId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long], achievementIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/achievement/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementId", Some(achievementIdQuery.toParamString(achievementId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteAchievementTier(achievementTierId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long], achievementTierIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/achievement/tier/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementTierId", Some(achievementTierIdQuery.toParamString(achievementTierId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAchievement(achievementId: Long, deviceId: String, accountId: Long, achievementType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], achievementIdQuery: QueryParam[Long], achievementTypeQuery: QueryParam[String]): Task[AchievementTierResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementTierResponse] = jsonOf[AchievementTierResponse]

    val path = "/achievement/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementId", Some(achievementIdQuery.toParamString(achievementId))), ("achievementType", Some(achievementTypeQuery.toParamString(achievementType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementTierResponse](req)

    } yield resp
  }

  def getAchievementTier(accountId: Long, achievementTierId: Long)(implicit accountIdQuery: QueryParam[Long], achievementTierIdQuery: QueryParam[Long]): Task[AchievementTierResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementTierResponse] = jsonOf[AchievementTierResponse]

    val path = "/achievement/tier/get"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementTierId", Some(achievementTierIdQuery.toParamString(achievementTierId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementTierResponse](req)

    } yield resp
  }

  def getUserAchievements(returnNulls: Boolean = true, appKey: String, includeUndiscovered: Boolean = true, deviceId: String, accountId: Long, connectionAccountEmail: String, connectionAccountId: Long, rankType: String, achievementType: String, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountEmailQuery: QueryParam[String], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], rankTypeQuery: QueryParam[String], achievementTypeQuery: QueryParam[String], includeUndiscoveredQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[List[AchievementProgressResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AchievementProgressResponse]] = jsonOf[List[AchievementProgressResponse]]

    val path = "/achievement/progress/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountEmail", Some(connectionAccountEmailQuery.toParamString(connectionAccountEmail))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("achievementType", Some(achievementTypeQuery.toParamString(achievementType))), ("includeUndiscovered", Some(includeUndiscoveredQuery.toParamString(includeUndiscovered))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AchievementProgressResponse]](req)

    } yield resp
  }

  def listAchievementTags(appKey: String)(implicit appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/achievement/tag/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def listAchievements(sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, deviceId: String, accountId: Long, appKey: String, keyword: String, achievementType: String, rankType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], achievementTypeQuery: QueryParam[String], rankTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[AchievementShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AchievementShortResponse]] = jsonOf[List[AchievementShortResponse]]

    val path = "/achievement/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("achievementType", Some(achievementTypeQuery.toParamString(achievementType))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AchievementShortResponse]](req)

    } yield resp
  }

  def searchAchievements(appKey: String, sortField: String = TITLE, descending: Boolean = false, includeTiers: Boolean = false, includeInactiveTiers: Boolean = false, start: Integer = 0, limit: Integer = 100, deviceId: String, accountId: Long, keyword: String, achievementType: String, rankType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], achievementTypeQuery: QueryParam[String], rankTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], includeTiersQuery: QueryParam[Boolean], includeInactiveTiersQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[AchievementShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AchievementShortResponse]] = jsonOf[List[AchievementShortResponse]]

    val path = "/achievement/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("achievementType", Some(achievementTypeQuery.toParamString(achievementType))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("includeTiers", Some(includeTiersQuery.toParamString(includeTiers))), ("includeInactiveTiers", Some(includeInactiveTiersQuery.toParamString(includeInactiveTiers))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AchievementShortResponse]](req)

    } yield resp
  }

  def updateAchievement(deviceId: String, accountId: Long, achievementId: Long, analyticsTag: String, title: String, description: String, rankType: String, rankIncrement: Integer, minIncrement: Integer, nullMinIncrement: Boolean, maxIncrement: Integer, nullMaxIncrement: Boolean, validate: Boolean, active: Boolean, triggerDefinition: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], achievementIdQuery: QueryParam[Long], analyticsTagQuery: QueryParam[String], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], rankTypeQuery: QueryParam[String], rankIncrementQuery: QueryParam[Integer], minIncrementQuery: QueryParam[Integer], nullMinIncrementQuery: QueryParam[Boolean], maxIncrementQuery: QueryParam[Integer], nullMaxIncrementQuery: QueryParam[Boolean], validateQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], triggerDefinitionQuery: QueryParam[String]): Task[AchievementResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementResponse] = jsonOf[AchievementResponse]

    val path = "/achievement/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementId", Some(achievementIdQuery.toParamString(achievementId))), ("analyticsTag", Some(analyticsTagQuery.toParamString(analyticsTag))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("rankType", Some(rankTypeQuery.toParamString(rankType))), ("rankIncrement", Some(rankIncrementQuery.toParamString(rankIncrement))), ("minIncrement", Some(minIncrementQuery.toParamString(minIncrement))), ("nullMinIncrement", Some(nullMinIncrementQuery.toParamString(nullMinIncrement))), ("maxIncrement", Some(maxIncrementQuery.toParamString(maxIncrement))), ("nullMaxIncrement", Some(nullMaxIncrementQuery.toParamString(nullMaxIncrement))), ("validate", Some(validateQuery.toParamString(validate))), ("active", Some(activeQuery.toParamString(active))), ("triggerDefinition", Some(triggerDefinitionQuery.toParamString(triggerDefinition))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementResponse](req)

    } yield resp
  }

  def updateAchievementTier(achievementTierId: Long, deviceId: String, accountId: Long, icon: File, iconAssetId: Long, title: String, description: String, goalCount: Long, missionId: Long, gameId: Long, packId: Long, gameLevelId: Long, gameObjectId: Long, scoreAllInstances: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], achievementTierIdQuery: QueryParam[Long], iconQuery: QueryParam[File], iconAssetIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], goalCountQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], gameIdQuery: QueryParam[Long], packIdQuery: QueryParam[Long], gameLevelIdQuery: QueryParam[Long], gameObjectIdQuery: QueryParam[Long], scoreAllInstancesQuery: QueryParam[Boolean]): Task[AchievementTierResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AchievementTierResponse] = jsonOf[AchievementTierResponse]

    val path = "/achievement/tier/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementTierId", Some(achievementTierIdQuery.toParamString(achievementTierId))), ("icon", Some(iconQuery.toParamString(icon))), ("iconAssetId", Some(iconAssetIdQuery.toParamString(iconAssetId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("goalCount", Some(goalCountQuery.toParamString(goalCount))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("gameId", Some(gameIdQuery.toParamString(gameId))), ("packId", Some(packIdQuery.toParamString(packId))), ("gameLevelId", Some(gameLevelIdQuery.toParamString(gameLevelId))), ("gameObjectId", Some(gameObjectIdQuery.toParamString(gameObjectId))), ("scoreAllInstances", Some(scoreAllInstancesQuery.toParamString(scoreAllInstances))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AchievementTierResponse](req)

    } yield resp
  }

  def updateUserAchievement(accountId: Long, achievementId: Long, tag: String, customId: Long, increment: Long, startDate: Long, endDate: Long, returnProgress: Boolean)(implicit accountIdQuery: QueryParam[Long], achievementIdQuery: QueryParam[Long], tagQuery: QueryParam[String], customIdQuery: QueryParam[Long], incrementQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], returnProgressQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/achievement/progress/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("achievementId", Some(achievementIdQuery.toParamString(achievementId))), ("tag", Some(tagQuery.toParamString(tag))), ("customId", Some(customIdQuery.toParamString(customId))), ("increment", Some(incrementQuery.toParamString(increment))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("returnProgress", Some(returnProgressQuery.toParamString(returnProgress))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
