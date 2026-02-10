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
import org.openapitools.client.api.MissionFormatResponse
import org.openapitools.client.api.MissionResponse
import org.openapitools.client.api.SirqulResponse

object MissionApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createMission(host: String, version: BigDecimal, accountId: Long, title: String, description: String, subType: String, startDate: Long, endDate: Long, active: Boolean, gameLevelIds: String, creativeIds: String, audienceIds: String, missionTask: String, formatType: String, offerId: Long, balance: Double, advancedReporting: Boolean, allocateTickets: Boolean, ticketCount: Long, ticketType: String, points: Long, metaData: String, applicationIds: String, devices: String, deviceIds: String, deviceVersions: String, locations: String, radius: String)(implicit accountIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], subTypeQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], gameLevelIdsQuery: QueryParam[String], creativeIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], missionTaskQuery: QueryParam[String], formatTypeQuery: QueryParam[String], offerIdQuery: QueryParam[Long], balanceQuery: QueryParam[Double], advancedReportingQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], metaDataQuery: QueryParam[String], applicationIdsQuery: QueryParam[String], devicesQuery: QueryParam[String], deviceIdsQuery: QueryParam[String], deviceVersionsQuery: QueryParam[String], locationsQuery: QueryParam[String], radiusQuery: QueryParam[String]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/api/{version}/mission/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("subType", Some(subTypeQuery.toParamString(subType))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("active", Some(activeQuery.toParamString(active))), ("gameLevelIds", Some(gameLevelIdsQuery.toParamString(gameLevelIds))), ("creativeIds", Some(creativeIdsQuery.toParamString(creativeIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("missionTask", Some(missionTaskQuery.toParamString(missionTask))), ("formatType", Some(formatTypeQuery.toParamString(formatType))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("balance", Some(balanceQuery.toParamString(balance))), ("advancedReporting", Some(advancedReportingQuery.toParamString(advancedReporting))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))), ("devices", Some(devicesQuery.toParamString(devices))), ("deviceIds", Some(deviceIdsQuery.toParamString(deviceIds))), ("deviceVersions", Some(deviceVersionsQuery.toParamString(deviceVersions))), ("locations", Some(locationsQuery.toParamString(locations))), ("radius", Some(radiusQuery.toParamString(radius))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

  def deleteMission(host: String, version: BigDecimal, accountId: Long, missionId: Long)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/mission/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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

  def findMissions(host: String, version: BigDecimal, appKey: String, suffix: String, `type`: String, accountId: Long, appVersion: String, latitude: Double, longitude: Double, device: String, deviceIdentifier: Long, deviceVersion: String, start: Integer, limit: Integer, includeGameData: Boolean, includeAudiences: Boolean, allocatesTickets: Boolean, randomize: Boolean, targetedAdsOnly: Boolean, missionIds: String, audienceOperator: String)(implicit appKeyQuery: QueryParam[String], suffixQuery: QueryParam[String], `type`Query: QueryParam[String], accountIdQuery: QueryParam[Long], appVersionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], deviceQuery: QueryParam[String], deviceIdentifierQuery: QueryParam[Long], deviceVersionQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], includeGameDataQuery: QueryParam[Boolean], includeAudiencesQuery: QueryParam[Boolean], allocatesTicketsQuery: QueryParam[Boolean], randomizeQuery: QueryParam[Boolean], targetedAdsOnlyQuery: QueryParam[Boolean], missionIdsQuery: QueryParam[String], audienceOperatorQuery: QueryParam[String]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/api/{version}/mission/find".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("suffix", Some(suffixQuery.toParamString(suffix))), ("`type`", Some(typeQuery.toParamString(type))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("device", Some(deviceQuery.toParamString(device))), ("deviceIdentifier", Some(deviceIdentifierQuery.toParamString(deviceIdentifier))), ("deviceVersion", Some(deviceVersionQuery.toParamString(deviceVersion))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("includeAudiences", Some(includeAudiencesQuery.toParamString(includeAudiences))), ("allocatesTickets", Some(allocatesTicketsQuery.toParamString(allocatesTickets))), ("randomize", Some(randomizeQuery.toParamString(randomize))), ("targetedAdsOnly", Some(targetedAdsOnlyQuery.toParamString(targetedAdsOnly))), ("missionIds", Some(missionIdsQuery.toParamString(missionIds))), ("audienceOperator", Some(audienceOperatorQuery.toParamString(audienceOperator))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

  def getMission(host: String, version: BigDecimal, accountId: Long, missionId: Long, returnCreative: Boolean)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], returnCreativeQuery: QueryParam[Boolean]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/api/{version}/mission/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("returnCreative", Some(returnCreativeQuery.toParamString(returnCreative))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

  def importMission(host: String, version: BigDecimal, accountId: Long, latitude: Double, longitude: Double, appKey: String, keyword: String, start: Integer, limit: Integer, adSize: String)(implicit accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], appKeyQuery: QueryParam[String], adSizeQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/mission/import".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("adSize", Some(adSizeQuery.toParamString(adSize))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchMissionFormats(host: String, version: BigDecimal, start: Integer, limit: Integer, activeOnly: Boolean)(implicit startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[MissionFormatResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MissionFormatResponse]] = jsonOf[List[MissionFormatResponse]]

    val path = "/api/{version}/mission/format/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MissionFormatResponse]](req)

    } yield resp
  }

  def searchMissions(host: String, version: BigDecimal, accountId: Long, keyword: String, subType: String, start: Integer, limit: Integer, includeGameData: Boolean, includeAudiences: Boolean, includeInactive: Boolean, suffix: String, sortField: String, descending: Boolean)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], subTypeQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], includeGameDataQuery: QueryParam[Boolean], includeAudiencesQuery: QueryParam[Boolean], includeInactiveQuery: QueryParam[Boolean], suffixQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean]): Task[List[MissionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MissionResponse]] = jsonOf[List[MissionResponse]]

    val path = "/api/{version}/mission/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("subType", Some(subTypeQuery.toParamString(subType))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("includeAudiences", Some(includeAudiencesQuery.toParamString(includeAudiences))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("suffix", Some(suffixQuery.toParamString(suffix))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MissionResponse]](req)

    } yield resp
  }

  def searchMissionsByBillableEntity(host: String, version: BigDecimal, accountId: Long, keyword: String, start: Integer, limit: Integer, includeGameData: Boolean, includeAudiences: Boolean, includeInactive: Boolean, suffix: String, sortField: String, descending: Boolean)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], includeGameDataQuery: QueryParam[Boolean], includeAudiencesQuery: QueryParam[Boolean], includeInactiveQuery: QueryParam[Boolean], suffixQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean]): Task[List[MissionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MissionResponse]] = jsonOf[List[MissionResponse]]

    val path = "/api/{version}/mission/searchByBillableEntity".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("includeAudiences", Some(includeAudiencesQuery.toParamString(includeAudiences))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("suffix", Some(suffixQuery.toParamString(suffix))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MissionResponse]](req)

    } yield resp
  }

  def updateMission(host: String, version: BigDecimal, accountId: Long, missionId: Long, title: String, description: String, subType: String, metaData: String, startDate: Long, endDate: Long, active: Boolean, gameLevelIds: String, creativeIds: String, audienceIds: String, offerId: Long, balance: Double, advancedReporting: Boolean, allocateTickets: Boolean, ticketCount: Long, ticketType: String, points: Long, applicationIds: String, devices: String, deviceIds: String, deviceVersions: String, locations: String, radius: String)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], subTypeQuery: QueryParam[String], metaDataQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], gameLevelIdsQuery: QueryParam[String], creativeIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], offerIdQuery: QueryParam[Long], balanceQuery: QueryParam[Double], advancedReportingQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], applicationIdsQuery: QueryParam[String], devicesQuery: QueryParam[String], deviceIdsQuery: QueryParam[String], deviceVersionsQuery: QueryParam[String], locationsQuery: QueryParam[String], radiusQuery: QueryParam[String]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/api/{version}/mission/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("subType", Some(subTypeQuery.toParamString(subType))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("active", Some(activeQuery.toParamString(active))), ("gameLevelIds", Some(gameLevelIdsQuery.toParamString(gameLevelIds))), ("creativeIds", Some(creativeIdsQuery.toParamString(creativeIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("balance", Some(balanceQuery.toParamString(balance))), ("advancedReporting", Some(advancedReportingQuery.toParamString(advancedReporting))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))), ("devices", Some(devicesQuery.toParamString(devices))), ("deviceIds", Some(deviceIdsQuery.toParamString(deviceIds))), ("deviceVersions", Some(deviceVersionsQuery.toParamString(deviceVersions))), ("locations", Some(locationsQuery.toParamString(locations))), ("radius", Some(radiusQuery.toParamString(radius))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

}

class HttpServiceMissionApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createMission(version: BigDecimal, accountId: Long, title: String, description: String, subType: String, startDate: Long, endDate: Long, active: Boolean, gameLevelIds: String, creativeIds: String, audienceIds: String, missionTask: String, formatType: String, offerId: Long, balance: Double, advancedReporting: Boolean, allocateTickets: Boolean, ticketCount: Long, ticketType: String, points: Long, metaData: String, applicationIds: String, devices: String, deviceIds: String, deviceVersions: String, locations: String, radius: String)(implicit accountIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], subTypeQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], gameLevelIdsQuery: QueryParam[String], creativeIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], missionTaskQuery: QueryParam[String], formatTypeQuery: QueryParam[String], offerIdQuery: QueryParam[Long], balanceQuery: QueryParam[Double], advancedReportingQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], metaDataQuery: QueryParam[String], applicationIdsQuery: QueryParam[String], devicesQuery: QueryParam[String], deviceIdsQuery: QueryParam[String], deviceVersionsQuery: QueryParam[String], locationsQuery: QueryParam[String], radiusQuery: QueryParam[String]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/api/{version}/mission/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("subType", Some(subTypeQuery.toParamString(subType))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("active", Some(activeQuery.toParamString(active))), ("gameLevelIds", Some(gameLevelIdsQuery.toParamString(gameLevelIds))), ("creativeIds", Some(creativeIdsQuery.toParamString(creativeIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("missionTask", Some(missionTaskQuery.toParamString(missionTask))), ("formatType", Some(formatTypeQuery.toParamString(formatType))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("balance", Some(balanceQuery.toParamString(balance))), ("advancedReporting", Some(advancedReportingQuery.toParamString(advancedReporting))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))), ("devices", Some(devicesQuery.toParamString(devices))), ("deviceIds", Some(deviceIdsQuery.toParamString(deviceIds))), ("deviceVersions", Some(deviceVersionsQuery.toParamString(deviceVersions))), ("locations", Some(locationsQuery.toParamString(locations))), ("radius", Some(radiusQuery.toParamString(radius))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

  def deleteMission(version: BigDecimal, accountId: Long, missionId: Long)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/mission/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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

  def findMissions(version: BigDecimal, appKey: String, suffix: String, `type`: String, accountId: Long, appVersion: String, latitude: Double, longitude: Double, device: String, deviceIdentifier: Long, deviceVersion: String, start: Integer, limit: Integer, includeGameData: Boolean, includeAudiences: Boolean, allocatesTickets: Boolean, randomize: Boolean, targetedAdsOnly: Boolean, missionIds: String, audienceOperator: String)(implicit appKeyQuery: QueryParam[String], suffixQuery: QueryParam[String], `type`Query: QueryParam[String], accountIdQuery: QueryParam[Long], appVersionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], deviceQuery: QueryParam[String], deviceIdentifierQuery: QueryParam[Long], deviceVersionQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], includeGameDataQuery: QueryParam[Boolean], includeAudiencesQuery: QueryParam[Boolean], allocatesTicketsQuery: QueryParam[Boolean], randomizeQuery: QueryParam[Boolean], targetedAdsOnlyQuery: QueryParam[Boolean], missionIdsQuery: QueryParam[String], audienceOperatorQuery: QueryParam[String]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/api/{version}/mission/find".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("suffix", Some(suffixQuery.toParamString(suffix))), ("`type`", Some(typeQuery.toParamString(type))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("device", Some(deviceQuery.toParamString(device))), ("deviceIdentifier", Some(deviceIdentifierQuery.toParamString(deviceIdentifier))), ("deviceVersion", Some(deviceVersionQuery.toParamString(deviceVersion))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("includeAudiences", Some(includeAudiencesQuery.toParamString(includeAudiences))), ("allocatesTickets", Some(allocatesTicketsQuery.toParamString(allocatesTickets))), ("randomize", Some(randomizeQuery.toParamString(randomize))), ("targetedAdsOnly", Some(targetedAdsOnlyQuery.toParamString(targetedAdsOnly))), ("missionIds", Some(missionIdsQuery.toParamString(missionIds))), ("audienceOperator", Some(audienceOperatorQuery.toParamString(audienceOperator))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

  def getMission(version: BigDecimal, accountId: Long, missionId: Long, returnCreative: Boolean)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], returnCreativeQuery: QueryParam[Boolean]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/api/{version}/mission/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("returnCreative", Some(returnCreativeQuery.toParamString(returnCreative))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

  def importMission(version: BigDecimal, accountId: Long, latitude: Double, longitude: Double, appKey: String, keyword: String, start: Integer, limit: Integer, adSize: String)(implicit accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], appKeyQuery: QueryParam[String], adSizeQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/mission/import".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("adSize", Some(adSizeQuery.toParamString(adSize))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchMissionFormats(version: BigDecimal, start: Integer, limit: Integer, activeOnly: Boolean)(implicit startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[MissionFormatResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MissionFormatResponse]] = jsonOf[List[MissionFormatResponse]]

    val path = "/api/{version}/mission/format/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MissionFormatResponse]](req)

    } yield resp
  }

  def searchMissions(version: BigDecimal, accountId: Long, keyword: String, subType: String, start: Integer, limit: Integer, includeGameData: Boolean, includeAudiences: Boolean, includeInactive: Boolean, suffix: String, sortField: String, descending: Boolean)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], subTypeQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], includeGameDataQuery: QueryParam[Boolean], includeAudiencesQuery: QueryParam[Boolean], includeInactiveQuery: QueryParam[Boolean], suffixQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean]): Task[List[MissionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MissionResponse]] = jsonOf[List[MissionResponse]]

    val path = "/api/{version}/mission/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("subType", Some(subTypeQuery.toParamString(subType))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("includeAudiences", Some(includeAudiencesQuery.toParamString(includeAudiences))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("suffix", Some(suffixQuery.toParamString(suffix))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MissionResponse]](req)

    } yield resp
  }

  def searchMissionsByBillableEntity(version: BigDecimal, accountId: Long, keyword: String, start: Integer, limit: Integer, includeGameData: Boolean, includeAudiences: Boolean, includeInactive: Boolean, suffix: String, sortField: String, descending: Boolean)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], includeGameDataQuery: QueryParam[Boolean], includeAudiencesQuery: QueryParam[Boolean], includeInactiveQuery: QueryParam[Boolean], suffixQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean]): Task[List[MissionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MissionResponse]] = jsonOf[List[MissionResponse]]

    val path = "/api/{version}/mission/searchByBillableEntity".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("includeGameData", Some(includeGameDataQuery.toParamString(includeGameData))), ("includeAudiences", Some(includeAudiencesQuery.toParamString(includeAudiences))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("suffix", Some(suffixQuery.toParamString(suffix))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MissionResponse]](req)

    } yield resp
  }

  def updateMission(version: BigDecimal, accountId: Long, missionId: Long, title: String, description: String, subType: String, metaData: String, startDate: Long, endDate: Long, active: Boolean, gameLevelIds: String, creativeIds: String, audienceIds: String, offerId: Long, balance: Double, advancedReporting: Boolean, allocateTickets: Boolean, ticketCount: Long, ticketType: String, points: Long, applicationIds: String, devices: String, deviceIds: String, deviceVersions: String, locations: String, radius: String)(implicit accountIdQuery: QueryParam[Long], missionIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], subTypeQuery: QueryParam[String], metaDataQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], activeQuery: QueryParam[Boolean], gameLevelIdsQuery: QueryParam[String], creativeIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], offerIdQuery: QueryParam[Long], balanceQuery: QueryParam[Double], advancedReportingQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketCountQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], applicationIdsQuery: QueryParam[String], devicesQuery: QueryParam[String], deviceIdsQuery: QueryParam[String], deviceVersionsQuery: QueryParam[String], locationsQuery: QueryParam[String], radiusQuery: QueryParam[String]): Task[MissionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]

    val path = "/api/{version}/mission/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("missionId", Some(missionIdQuery.toParamString(missionId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("subType", Some(subTypeQuery.toParamString(subType))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("active", Some(activeQuery.toParamString(active))), ("gameLevelIds", Some(gameLevelIdsQuery.toParamString(gameLevelIds))), ("creativeIds", Some(creativeIdsQuery.toParamString(creativeIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("balance", Some(balanceQuery.toParamString(balance))), ("advancedReporting", Some(advancedReportingQuery.toParamString(advancedReporting))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketCount", Some(ticketCountQuery.toParamString(ticketCount))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))), ("devices", Some(devicesQuery.toParamString(devices))), ("deviceIds", Some(deviceIdsQuery.toParamString(deviceIds))), ("deviceVersions", Some(deviceVersionsQuery.toParamString(deviceVersions))), ("locations", Some(locationsQuery.toParamString(locations))), ("radius", Some(radiusQuery.toParamString(radius))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MissionResponse](req)

    } yield resp
  }

}
