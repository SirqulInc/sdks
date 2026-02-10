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

import org.openapitools.client.api.AgeGroupResponse
import org.openapitools.client.api.AudienceDeviceResponse
import org.openapitools.client.api.AudienceResponse
import org.openapitools.client.api.BigDecimal
import org.openapitools.client.api.OfferListResponse
import org.openapitools.client.api.SearchResponse
import org.openapitools.client.api.SirqulResponse

object AudienceApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createAudience(host: String, version: BigDecimal, accountId: Long, name: String, description: String, searchTags: String, gender: String, ageGroups: String, categoryIds: String, applicationIds: String, gameExperienceLevel: String, devices: String, deviceIds: String, deviceVersions: String, locations: String, radius: String, startTimeOffset: Integer, endTimeOffset: Integer, sendSuggestion: Boolean = true, associateDescription: String, associateType: String, associateId: Long, groupingId: String, metaData: String, visibility: String, audienceType: String, useOrder: Boolean, cohortRegionsData: String, appKey: String, trilaterationTypes: String, uniqueName: Boolean)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], searchTagsQuery: QueryParam[String], genderQuery: QueryParam[String], ageGroupsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], applicationIdsQuery: QueryParam[String], gameExperienceLevelQuery: QueryParam[String], devicesQuery: QueryParam[String], deviceIdsQuery: QueryParam[String], deviceVersionsQuery: QueryParam[String], locationsQuery: QueryParam[String], radiusQuery: QueryParam[String], startTimeOffsetQuery: QueryParam[Integer], endTimeOffsetQuery: QueryParam[Integer], sendSuggestionQuery: QueryParam[Boolean], associateDescriptionQuery: QueryParam[String], associateTypeQuery: QueryParam[String], associateIdQuery: QueryParam[Long], groupingIdQuery: QueryParam[String], metaDataQuery: QueryParam[String], visibilityQuery: QueryParam[String], audienceTypeQuery: QueryParam[String], useOrderQuery: QueryParam[Boolean], cohortRegionsDataQuery: QueryParam[String], appKeyQuery: QueryParam[String], trilaterationTypesQuery: QueryParam[String], uniqueNameQuery: QueryParam[Boolean]): Task[AudienceResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AudienceResponse] = jsonOf[AudienceResponse]

    val path = "/api/{version}/audience/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("gender", Some(genderQuery.toParamString(gender))), ("ageGroups", Some(ageGroupsQuery.toParamString(ageGroups))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))), ("gameExperienceLevel", Some(gameExperienceLevelQuery.toParamString(gameExperienceLevel))), ("devices", Some(devicesQuery.toParamString(devices))), ("deviceIds", Some(deviceIdsQuery.toParamString(deviceIds))), ("deviceVersions", Some(deviceVersionsQuery.toParamString(deviceVersions))), ("locations", Some(locationsQuery.toParamString(locations))), ("radius", Some(radiusQuery.toParamString(radius))), ("startTimeOffset", Some(startTimeOffsetQuery.toParamString(startTimeOffset))), ("endTimeOffset", Some(endTimeOffsetQuery.toParamString(endTimeOffset))), ("sendSuggestion", Some(sendSuggestionQuery.toParamString(sendSuggestion))), ("associateDescription", Some(associateDescriptionQuery.toParamString(associateDescription))), ("associateType", Some(associateTypeQuery.toParamString(associateType))), ("associateId", Some(associateIdQuery.toParamString(associateId))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("audienceType", Some(audienceTypeQuery.toParamString(audienceType))), ("useOrder", Some(useOrderQuery.toParamString(useOrder))), ("cohortRegionsData", Some(cohortRegionsDataQuery.toParamString(cohortRegionsData))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("trilaterationTypes", Some(trilaterationTypesQuery.toParamString(trilaterationTypes))), ("uniqueName", Some(uniqueNameQuery.toParamString(uniqueName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AudienceResponse](req)

    } yield resp
  }

  def deleteAudience(host: String, version: BigDecimal, accountId: Long, audienceId: Long)(implicit accountIdQuery: QueryParam[Long], audienceIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/audience/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAgeGroups(host: String, version: BigDecimal): Task[List[AgeGroupResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AgeGroupResponse]] = jsonOf[List[AgeGroupResponse]]

    val path = "/api/{version}/audience/ageGroups".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AgeGroupResponse]](req)

    } yield resp
  }

  def getAudience(host: String, version: BigDecimal, accountId: Long, audienceId: Long, appKey: String, returnAccountCount: Boolean = false, returnAlbumCount: Boolean = false, albumTypesForCount: String)(implicit accountIdQuery: QueryParam[Long], audienceIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnAccountCountQuery: QueryParam[Boolean], returnAlbumCountQuery: QueryParam[Boolean], albumTypesForCountQuery: QueryParam[String]): Task[AudienceResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AudienceResponse] = jsonOf[AudienceResponse]

    val path = "/api/{version}/audience/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnAccountCount", Some(returnAccountCountQuery.toParamString(returnAccountCount))), ("returnAlbumCount", Some(returnAlbumCountQuery.toParamString(returnAlbumCount))), ("albumTypesForCount", Some(albumTypesForCountQuery.toParamString(albumTypesForCount))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AudienceResponse](req)

    } yield resp
  }

  def getAudienceList(host: String, version: BigDecimal, accountId: Long, albumIds: String, keyword: String, keywordFields: String = SEARCH_TAGS,NAME,DESCRIPTION, sortField: String = NAME, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, sendSuggestion: Boolean, activeOnly: Boolean, groupByGroupingId: Boolean, appKey: String, returnGlobal: Boolean, exactKeyword: Boolean, audienceType: String, audienceTypes: String, returnAccountCount: Boolean = false, returnAlbumCount: Boolean = false, albumTypesForCount: String)(implicit accountIdQuery: QueryParam[Long], albumIdsQuery: QueryParam[String], keywordQuery: QueryParam[String], keywordFieldsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], sendSuggestionQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], groupByGroupingIdQuery: QueryParam[Boolean], appKeyQuery: QueryParam[String], returnGlobalQuery: QueryParam[Boolean], exactKeywordQuery: QueryParam[Boolean], audienceTypeQuery: QueryParam[String], audienceTypesQuery: QueryParam[String], returnAccountCountQuery: QueryParam[Boolean], returnAlbumCountQuery: QueryParam[Boolean], albumTypesForCountQuery: QueryParam[String]): Task[List[SearchResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[SearchResponse]] = jsonOf[List[SearchResponse]]

    val path = "/api/{version}/audience/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumIds", Some(albumIdsQuery.toParamString(albumIds))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("keywordFields", Some(keywordFieldsQuery.toParamString(keywordFields))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("sendSuggestion", Some(sendSuggestionQuery.toParamString(sendSuggestion))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("groupByGroupingId", Some(groupByGroupingIdQuery.toParamString(groupByGroupingId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnGlobal", Some(returnGlobalQuery.toParamString(returnGlobal))), ("exactKeyword", Some(exactKeywordQuery.toParamString(exactKeyword))), ("audienceType", Some(audienceTypeQuery.toParamString(audienceType))), ("audienceTypes", Some(audienceTypesQuery.toParamString(audienceTypes))), ("returnAccountCount", Some(returnAccountCountQuery.toParamString(returnAccountCount))), ("returnAlbumCount", Some(returnAlbumCountQuery.toParamString(returnAlbumCount))), ("albumTypesForCount", Some(albumTypesForCountQuery.toParamString(albumTypesForCount))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[SearchResponse]](req)

    } yield resp
  }

  def getDevices(host: String, version: BigDecimal, includeInactive: Boolean)(implicit includeInactiveQuery: QueryParam[Boolean]): Task[List[AudienceDeviceResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AudienceDeviceResponse]] = jsonOf[List[AudienceDeviceResponse]]

    val path = "/api/{version}/audience/devices".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AudienceDeviceResponse]](req)

    } yield resp
  }

  def getExperiences(host: String, version: BigDecimal): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/audience/experiences".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getGroupedAudiences(host: String, version: BigDecimal, accountId: Long, audienceGroupingId: String)(implicit accountIdQuery: QueryParam[Long], audienceGroupingIdQuery: QueryParam[String]): Task[AudienceResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AudienceResponse] = jsonOf[AudienceResponse]

    val path = "/api/{version}/audience/grouped/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("audienceGroupingId", Some(audienceGroupingIdQuery.toParamString(audienceGroupingId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AudienceResponse](req)

    } yield resp
  }

  def listByAccount(host: String, version: BigDecimal, accountId: Long, limit: Integer, suggestionType: String)(implicit accountIdQuery: QueryParam[Long], limitQuery: QueryParam[Integer], suggestionTypeQuery: QueryParam[String]): Task[OfferListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferListResponse] = jsonOf[OfferListResponse]

    val path = "/api/{version}/audience/suggestion/list".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("limit", Some(limitQuery.toParamString(limit))), ("suggestionType", Some(suggestionTypeQuery.toParamString(suggestionType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferListResponse](req)

    } yield resp
  }

  def listByAudience(host: String, version: BigDecimal, limit: Integer, gender: String, age: Integer, categoryIds: String, latitude: Double, longitude: Double)(implicit genderQuery: QueryParam[String], ageQuery: QueryParam[Integer], categoryIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], limitQuery: QueryParam[Integer]): Task[OfferListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferListResponse] = jsonOf[OfferListResponse]

    val path = "/api/{version}/audience/suggestion/offersByAudience".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("gender", Some(genderQuery.toParamString(gender))), ("age", Some(ageQuery.toParamString(age))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferListResponse](req)

    } yield resp
  }

  def listLastestByAccount(host: String, version: BigDecimal, accountId: Long, timeframe: Integer, suggestionType: String)(implicit accountIdQuery: QueryParam[Long], timeframeQuery: QueryParam[Integer], suggestionTypeQuery: QueryParam[String]): Task[OfferListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferListResponse] = jsonOf[OfferListResponse]

    val path = "/api/{version}/audience/suggestion/latest".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("timeframe", Some(timeframeQuery.toParamString(timeframe))), ("suggestionType", Some(suggestionTypeQuery.toParamString(suggestionType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferListResponse](req)

    } yield resp
  }

  def sendByAccount(host: String, version: BigDecimal, accountId: Long, latitude: Double, longitude: Double)(implicit accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/audience/suggestion/send".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateAudience(host: String, version: BigDecimal, accountId: Long, audienceId: Long, name: String, description: String, searchTags: String, gender: String, ageGroups: String, categoryIds: String, applicationIds: String, gameExperienceLevel: String, devices: String, deviceIds: String, deviceVersions: String, locations: String, radius: String, active: Boolean, sendSuggestion: Boolean, startTimeOffset: Integer, endTimeOffset: Integer, associateDescription: String, associateType: String, associateId: Long, groupingId: String, metaData: String, visibility: String, audienceType: String, useOrder: Boolean, cohortRegionsData: String, appKey: String, trilaterationTypes: String, uniqueName: Boolean)(implicit accountIdQuery: QueryParam[Long], audienceIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], searchTagsQuery: QueryParam[String], genderQuery: QueryParam[String], ageGroupsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], applicationIdsQuery: QueryParam[String], gameExperienceLevelQuery: QueryParam[String], devicesQuery: QueryParam[String], deviceIdsQuery: QueryParam[String], deviceVersionsQuery: QueryParam[String], locationsQuery: QueryParam[String], radiusQuery: QueryParam[String], activeQuery: QueryParam[Boolean], sendSuggestionQuery: QueryParam[Boolean], startTimeOffsetQuery: QueryParam[Integer], endTimeOffsetQuery: QueryParam[Integer], associateDescriptionQuery: QueryParam[String], associateTypeQuery: QueryParam[String], associateIdQuery: QueryParam[Long], groupingIdQuery: QueryParam[String], metaDataQuery: QueryParam[String], visibilityQuery: QueryParam[String], audienceTypeQuery: QueryParam[String], useOrderQuery: QueryParam[Boolean], cohortRegionsDataQuery: QueryParam[String], appKeyQuery: QueryParam[String], trilaterationTypesQuery: QueryParam[String], uniqueNameQuery: QueryParam[Boolean]): Task[AudienceResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AudienceResponse] = jsonOf[AudienceResponse]

    val path = "/api/{version}/audience/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("gender", Some(genderQuery.toParamString(gender))), ("ageGroups", Some(ageGroupsQuery.toParamString(ageGroups))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))), ("gameExperienceLevel", Some(gameExperienceLevelQuery.toParamString(gameExperienceLevel))), ("devices", Some(devicesQuery.toParamString(devices))), ("deviceIds", Some(deviceIdsQuery.toParamString(deviceIds))), ("deviceVersions", Some(deviceVersionsQuery.toParamString(deviceVersions))), ("locations", Some(locationsQuery.toParamString(locations))), ("radius", Some(radiusQuery.toParamString(radius))), ("active", Some(activeQuery.toParamString(active))), ("sendSuggestion", Some(sendSuggestionQuery.toParamString(sendSuggestion))), ("startTimeOffset", Some(startTimeOffsetQuery.toParamString(startTimeOffset))), ("endTimeOffset", Some(endTimeOffsetQuery.toParamString(endTimeOffset))), ("associateDescription", Some(associateDescriptionQuery.toParamString(associateDescription))), ("associateType", Some(associateTypeQuery.toParamString(associateType))), ("associateId", Some(associateIdQuery.toParamString(associateId))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("audienceType", Some(audienceTypeQuery.toParamString(audienceType))), ("useOrder", Some(useOrderQuery.toParamString(useOrder))), ("cohortRegionsData", Some(cohortRegionsDataQuery.toParamString(cohortRegionsData))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("trilaterationTypes", Some(trilaterationTypesQuery.toParamString(trilaterationTypes))), ("uniqueName", Some(uniqueNameQuery.toParamString(uniqueName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AudienceResponse](req)

    } yield resp
  }

}

class HttpServiceAudienceApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createAudience(version: BigDecimal, accountId: Long, name: String, description: String, searchTags: String, gender: String, ageGroups: String, categoryIds: String, applicationIds: String, gameExperienceLevel: String, devices: String, deviceIds: String, deviceVersions: String, locations: String, radius: String, startTimeOffset: Integer, endTimeOffset: Integer, sendSuggestion: Boolean = true, associateDescription: String, associateType: String, associateId: Long, groupingId: String, metaData: String, visibility: String, audienceType: String, useOrder: Boolean, cohortRegionsData: String, appKey: String, trilaterationTypes: String, uniqueName: Boolean)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], searchTagsQuery: QueryParam[String], genderQuery: QueryParam[String], ageGroupsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], applicationIdsQuery: QueryParam[String], gameExperienceLevelQuery: QueryParam[String], devicesQuery: QueryParam[String], deviceIdsQuery: QueryParam[String], deviceVersionsQuery: QueryParam[String], locationsQuery: QueryParam[String], radiusQuery: QueryParam[String], startTimeOffsetQuery: QueryParam[Integer], endTimeOffsetQuery: QueryParam[Integer], sendSuggestionQuery: QueryParam[Boolean], associateDescriptionQuery: QueryParam[String], associateTypeQuery: QueryParam[String], associateIdQuery: QueryParam[Long], groupingIdQuery: QueryParam[String], metaDataQuery: QueryParam[String], visibilityQuery: QueryParam[String], audienceTypeQuery: QueryParam[String], useOrderQuery: QueryParam[Boolean], cohortRegionsDataQuery: QueryParam[String], appKeyQuery: QueryParam[String], trilaterationTypesQuery: QueryParam[String], uniqueNameQuery: QueryParam[Boolean]): Task[AudienceResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AudienceResponse] = jsonOf[AudienceResponse]

    val path = "/api/{version}/audience/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("gender", Some(genderQuery.toParamString(gender))), ("ageGroups", Some(ageGroupsQuery.toParamString(ageGroups))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))), ("gameExperienceLevel", Some(gameExperienceLevelQuery.toParamString(gameExperienceLevel))), ("devices", Some(devicesQuery.toParamString(devices))), ("deviceIds", Some(deviceIdsQuery.toParamString(deviceIds))), ("deviceVersions", Some(deviceVersionsQuery.toParamString(deviceVersions))), ("locations", Some(locationsQuery.toParamString(locations))), ("radius", Some(radiusQuery.toParamString(radius))), ("startTimeOffset", Some(startTimeOffsetQuery.toParamString(startTimeOffset))), ("endTimeOffset", Some(endTimeOffsetQuery.toParamString(endTimeOffset))), ("sendSuggestion", Some(sendSuggestionQuery.toParamString(sendSuggestion))), ("associateDescription", Some(associateDescriptionQuery.toParamString(associateDescription))), ("associateType", Some(associateTypeQuery.toParamString(associateType))), ("associateId", Some(associateIdQuery.toParamString(associateId))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("audienceType", Some(audienceTypeQuery.toParamString(audienceType))), ("useOrder", Some(useOrderQuery.toParamString(useOrder))), ("cohortRegionsData", Some(cohortRegionsDataQuery.toParamString(cohortRegionsData))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("trilaterationTypes", Some(trilaterationTypesQuery.toParamString(trilaterationTypes))), ("uniqueName", Some(uniqueNameQuery.toParamString(uniqueName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AudienceResponse](req)

    } yield resp
  }

  def deleteAudience(version: BigDecimal, accountId: Long, audienceId: Long)(implicit accountIdQuery: QueryParam[Long], audienceIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/audience/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAgeGroups(version: BigDecimal): Task[List[AgeGroupResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AgeGroupResponse]] = jsonOf[List[AgeGroupResponse]]

    val path = "/api/{version}/audience/ageGroups".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AgeGroupResponse]](req)

    } yield resp
  }

  def getAudience(version: BigDecimal, accountId: Long, audienceId: Long, appKey: String, returnAccountCount: Boolean = false, returnAlbumCount: Boolean = false, albumTypesForCount: String)(implicit accountIdQuery: QueryParam[Long], audienceIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], returnAccountCountQuery: QueryParam[Boolean], returnAlbumCountQuery: QueryParam[Boolean], albumTypesForCountQuery: QueryParam[String]): Task[AudienceResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AudienceResponse] = jsonOf[AudienceResponse]

    val path = "/api/{version}/audience/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnAccountCount", Some(returnAccountCountQuery.toParamString(returnAccountCount))), ("returnAlbumCount", Some(returnAlbumCountQuery.toParamString(returnAlbumCount))), ("albumTypesForCount", Some(albumTypesForCountQuery.toParamString(albumTypesForCount))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AudienceResponse](req)

    } yield resp
  }

  def getAudienceList(version: BigDecimal, accountId: Long, albumIds: String, keyword: String, keywordFields: String = SEARCH_TAGS,NAME,DESCRIPTION, sortField: String = NAME, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, sendSuggestion: Boolean, activeOnly: Boolean, groupByGroupingId: Boolean, appKey: String, returnGlobal: Boolean, exactKeyword: Boolean, audienceType: String, audienceTypes: String, returnAccountCount: Boolean = false, returnAlbumCount: Boolean = false, albumTypesForCount: String)(implicit accountIdQuery: QueryParam[Long], albumIdsQuery: QueryParam[String], keywordQuery: QueryParam[String], keywordFieldsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], sendSuggestionQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], groupByGroupingIdQuery: QueryParam[Boolean], appKeyQuery: QueryParam[String], returnGlobalQuery: QueryParam[Boolean], exactKeywordQuery: QueryParam[Boolean], audienceTypeQuery: QueryParam[String], audienceTypesQuery: QueryParam[String], returnAccountCountQuery: QueryParam[Boolean], returnAlbumCountQuery: QueryParam[Boolean], albumTypesForCountQuery: QueryParam[String]): Task[List[SearchResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[SearchResponse]] = jsonOf[List[SearchResponse]]

    val path = "/api/{version}/audience/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumIds", Some(albumIdsQuery.toParamString(albumIds))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("keywordFields", Some(keywordFieldsQuery.toParamString(keywordFields))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("sendSuggestion", Some(sendSuggestionQuery.toParamString(sendSuggestion))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("groupByGroupingId", Some(groupByGroupingIdQuery.toParamString(groupByGroupingId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("returnGlobal", Some(returnGlobalQuery.toParamString(returnGlobal))), ("exactKeyword", Some(exactKeywordQuery.toParamString(exactKeyword))), ("audienceType", Some(audienceTypeQuery.toParamString(audienceType))), ("audienceTypes", Some(audienceTypesQuery.toParamString(audienceTypes))), ("returnAccountCount", Some(returnAccountCountQuery.toParamString(returnAccountCount))), ("returnAlbumCount", Some(returnAlbumCountQuery.toParamString(returnAlbumCount))), ("albumTypesForCount", Some(albumTypesForCountQuery.toParamString(albumTypesForCount))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[SearchResponse]](req)

    } yield resp
  }

  def getDevices(version: BigDecimal, includeInactive: Boolean)(implicit includeInactiveQuery: QueryParam[Boolean]): Task[List[AudienceDeviceResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AudienceDeviceResponse]] = jsonOf[List[AudienceDeviceResponse]]

    val path = "/api/{version}/audience/devices".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AudienceDeviceResponse]](req)

    } yield resp
  }

  def getExperiences(version: BigDecimal): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/audience/experiences".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getGroupedAudiences(version: BigDecimal, accountId: Long, audienceGroupingId: String)(implicit accountIdQuery: QueryParam[Long], audienceGroupingIdQuery: QueryParam[String]): Task[AudienceResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AudienceResponse] = jsonOf[AudienceResponse]

    val path = "/api/{version}/audience/grouped/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("audienceGroupingId", Some(audienceGroupingIdQuery.toParamString(audienceGroupingId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AudienceResponse](req)

    } yield resp
  }

  def listByAccount(version: BigDecimal, accountId: Long, limit: Integer, suggestionType: String)(implicit accountIdQuery: QueryParam[Long], limitQuery: QueryParam[Integer], suggestionTypeQuery: QueryParam[String]): Task[OfferListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferListResponse] = jsonOf[OfferListResponse]

    val path = "/api/{version}/audience/suggestion/list".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("limit", Some(limitQuery.toParamString(limit))), ("suggestionType", Some(suggestionTypeQuery.toParamString(suggestionType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferListResponse](req)

    } yield resp
  }

  def listByAudience(version: BigDecimal, limit: Integer, gender: String, age: Integer, categoryIds: String, latitude: Double, longitude: Double)(implicit genderQuery: QueryParam[String], ageQuery: QueryParam[Integer], categoryIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], limitQuery: QueryParam[Integer]): Task[OfferListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferListResponse] = jsonOf[OfferListResponse]

    val path = "/api/{version}/audience/suggestion/offersByAudience".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("gender", Some(genderQuery.toParamString(gender))), ("age", Some(ageQuery.toParamString(age))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferListResponse](req)

    } yield resp
  }

  def listLastestByAccount(version: BigDecimal, accountId: Long, timeframe: Integer, suggestionType: String)(implicit accountIdQuery: QueryParam[Long], timeframeQuery: QueryParam[Integer], suggestionTypeQuery: QueryParam[String]): Task[OfferListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferListResponse] = jsonOf[OfferListResponse]

    val path = "/api/{version}/audience/suggestion/latest".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("timeframe", Some(timeframeQuery.toParamString(timeframe))), ("suggestionType", Some(suggestionTypeQuery.toParamString(suggestionType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferListResponse](req)

    } yield resp
  }

  def sendByAccount(version: BigDecimal, accountId: Long, latitude: Double, longitude: Double)(implicit accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/audience/suggestion/send".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateAudience(version: BigDecimal, accountId: Long, audienceId: Long, name: String, description: String, searchTags: String, gender: String, ageGroups: String, categoryIds: String, applicationIds: String, gameExperienceLevel: String, devices: String, deviceIds: String, deviceVersions: String, locations: String, radius: String, active: Boolean, sendSuggestion: Boolean, startTimeOffset: Integer, endTimeOffset: Integer, associateDescription: String, associateType: String, associateId: Long, groupingId: String, metaData: String, visibility: String, audienceType: String, useOrder: Boolean, cohortRegionsData: String, appKey: String, trilaterationTypes: String, uniqueName: Boolean)(implicit accountIdQuery: QueryParam[Long], audienceIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], searchTagsQuery: QueryParam[String], genderQuery: QueryParam[String], ageGroupsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], applicationIdsQuery: QueryParam[String], gameExperienceLevelQuery: QueryParam[String], devicesQuery: QueryParam[String], deviceIdsQuery: QueryParam[String], deviceVersionsQuery: QueryParam[String], locationsQuery: QueryParam[String], radiusQuery: QueryParam[String], activeQuery: QueryParam[Boolean], sendSuggestionQuery: QueryParam[Boolean], startTimeOffsetQuery: QueryParam[Integer], endTimeOffsetQuery: QueryParam[Integer], associateDescriptionQuery: QueryParam[String], associateTypeQuery: QueryParam[String], associateIdQuery: QueryParam[Long], groupingIdQuery: QueryParam[String], metaDataQuery: QueryParam[String], visibilityQuery: QueryParam[String], audienceTypeQuery: QueryParam[String], useOrderQuery: QueryParam[Boolean], cohortRegionsDataQuery: QueryParam[String], appKeyQuery: QueryParam[String], trilaterationTypesQuery: QueryParam[String], uniqueNameQuery: QueryParam[Boolean]): Task[AudienceResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AudienceResponse] = jsonOf[AudienceResponse]

    val path = "/api/{version}/audience/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("gender", Some(genderQuery.toParamString(gender))), ("ageGroups", Some(ageGroupsQuery.toParamString(ageGroups))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("applicationIds", Some(applicationIdsQuery.toParamString(applicationIds))), ("gameExperienceLevel", Some(gameExperienceLevelQuery.toParamString(gameExperienceLevel))), ("devices", Some(devicesQuery.toParamString(devices))), ("deviceIds", Some(deviceIdsQuery.toParamString(deviceIds))), ("deviceVersions", Some(deviceVersionsQuery.toParamString(deviceVersions))), ("locations", Some(locationsQuery.toParamString(locations))), ("radius", Some(radiusQuery.toParamString(radius))), ("active", Some(activeQuery.toParamString(active))), ("sendSuggestion", Some(sendSuggestionQuery.toParamString(sendSuggestion))), ("startTimeOffset", Some(startTimeOffsetQuery.toParamString(startTimeOffset))), ("endTimeOffset", Some(endTimeOffsetQuery.toParamString(endTimeOffset))), ("associateDescription", Some(associateDescriptionQuery.toParamString(associateDescription))), ("associateType", Some(associateTypeQuery.toParamString(associateType))), ("associateId", Some(associateIdQuery.toParamString(associateId))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("audienceType", Some(audienceTypeQuery.toParamString(audienceType))), ("useOrder", Some(useOrderQuery.toParamString(useOrder))), ("cohortRegionsData", Some(cohortRegionsDataQuery.toParamString(cohortRegionsData))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("trilaterationTypes", Some(trilaterationTypesQuery.toParamString(trilaterationTypes))), ("uniqueName", Some(uniqueNameQuery.toParamString(uniqueName))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AudienceResponse](req)

    } yield resp
  }

}
