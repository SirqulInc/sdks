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
import org.openapitools.client.api.ChartData
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.UserActivityResponse

object AnalyticsApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def activities(host: String, version: BigDecimal, start: Integer, limit: Integer, accountId: Long)(implicit startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], accountIdQuery: QueryParam[Long]): Task[List[UserActivityResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[UserActivityResponse]] = jsonOf[List[UserActivityResponse]]

    val path = "/api/{version}/analytics/useractivity".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[UserActivityResponse]](req)

    } yield resp
  }

  def aggregatedFilteredUsage(host: String, version: BigDecimal, deviceId: String, accountId: Long, applicationId: Long, appKey: String, startDate: Long, endDate: Long, deviceType: String, device: String, deviceOS: String, gender: String, ageGroup: String, country: String, state: String, city: String, zip: String, model: String, tag: String, userAccountId: Long, userAccountDisplay: String, userAccountUsername: String, groupByRoot: String, groupBy: String, distinctCount: String, sortField: String, descending: Boolean, hideUnknown: Boolean, responseFormat: String, l: Integer, limit: Integer, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], applicationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], deviceTypeQuery: QueryParam[String], deviceQuery: QueryParam[String], deviceOSQuery: QueryParam[String], genderQuery: QueryParam[String], ageGroupQuery: QueryParam[String], countryQuery: QueryParam[String], stateQuery: QueryParam[String], cityQuery: QueryParam[String], zipQuery: QueryParam[String], modelQuery: QueryParam[String], tagQuery: QueryParam[String], userAccountIdQuery: QueryParam[Long], userAccountDisplayQuery: QueryParam[String], userAccountUsernameQuery: QueryParam[String], groupByRootQuery: QueryParam[String], groupByQuery: QueryParam[String], distinctCountQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], hideUnknownQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ChartData] = {
    implicit val returnTypeDecoder: EntityDecoder[ChartData] = jsonOf[ChartData]

    val path = "/api/{version}/analytics/aggregatedFilteredUsage".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("applicationId", Some(applicationIdQuery.toParamString(applicationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("device", Some(deviceQuery.toParamString(device))), ("deviceOS", Some(deviceOSQuery.toParamString(deviceOS))), ("gender", Some(genderQuery.toParamString(gender))), ("ageGroup", Some(ageGroupQuery.toParamString(ageGroup))), ("country", Some(countryQuery.toParamString(country))), ("state", Some(stateQuery.toParamString(state))), ("city", Some(cityQuery.toParamString(city))), ("zip", Some(zipQuery.toParamString(zip))), ("model", Some(modelQuery.toParamString(model))), ("tag", Some(tagQuery.toParamString(tag))), ("userAccountId", Some(userAccountIdQuery.toParamString(userAccountId))), ("userAccountDisplay", Some(userAccountDisplayQuery.toParamString(userAccountDisplay))), ("userAccountUsername", Some(userAccountUsernameQuery.toParamString(userAccountUsername))), ("groupByRoot", Some(groupByRootQuery.toParamString(groupByRoot))), ("groupBy", Some(groupByQuery.toParamString(groupBy))), ("distinctCount", Some(distinctCountQuery.toParamString(distinctCount))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("hideUnknown", Some(hideUnknownQuery.toParamString(hideUnknown))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ChartData](req)

    } yield resp
  }

  def filteredUsage(host: String, version: BigDecimal, deviceId: String, accountId: Long, applicationId: Long, appKey: String, startDate: Long, endDate: Long, deviceType: String, device: String, deviceOS: String, gender: String, ageGroup: String, country: String, state: String, city: String, zip: String, model: String, tag: String, userAccountId: Long, userAccountDisplay: String, userAccountUsername: String, customId: Long, customType: String, customValue: Double, customValue2: Double, customLong: Long, customLong2: Long, customMessage: String, customMessage2: String, groupBy: String, distinctCount: String, sumColumn: String, sortField: String, descending: Boolean, hideUnknown: Boolean, responseFormat: String, l: Integer, limit: Integer, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], applicationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], deviceTypeQuery: QueryParam[String], deviceQuery: QueryParam[String], deviceOSQuery: QueryParam[String], genderQuery: QueryParam[String], ageGroupQuery: QueryParam[String], countryQuery: QueryParam[String], stateQuery: QueryParam[String], cityQuery: QueryParam[String], zipQuery: QueryParam[String], modelQuery: QueryParam[String], tagQuery: QueryParam[String], userAccountIdQuery: QueryParam[Long], userAccountDisplayQuery: QueryParam[String], userAccountUsernameQuery: QueryParam[String], customIdQuery: QueryParam[Long], customTypeQuery: QueryParam[String], customValueQuery: QueryParam[Double], customValue2Query: QueryParam[Double], customLongQuery: QueryParam[Long], customLong2Query: QueryParam[Long], customMessageQuery: QueryParam[String], customMessage2Query: QueryParam[String], groupByQuery: QueryParam[String], distinctCountQuery: QueryParam[String], sumColumnQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], hideUnknownQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ChartData] = {
    implicit val returnTypeDecoder: EntityDecoder[ChartData] = jsonOf[ChartData]

    val path = "/api/{version}/analytics/filteredUsage".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("applicationId", Some(applicationIdQuery.toParamString(applicationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("device", Some(deviceQuery.toParamString(device))), ("deviceOS", Some(deviceOSQuery.toParamString(deviceOS))), ("gender", Some(genderQuery.toParamString(gender))), ("ageGroup", Some(ageGroupQuery.toParamString(ageGroup))), ("country", Some(countryQuery.toParamString(country))), ("state", Some(stateQuery.toParamString(state))), ("city", Some(cityQuery.toParamString(city))), ("zip", Some(zipQuery.toParamString(zip))), ("model", Some(modelQuery.toParamString(model))), ("tag", Some(tagQuery.toParamString(tag))), ("userAccountId", Some(userAccountIdQuery.toParamString(userAccountId))), ("userAccountDisplay", Some(userAccountDisplayQuery.toParamString(userAccountDisplay))), ("userAccountUsername", Some(userAccountUsernameQuery.toParamString(userAccountUsername))), ("customId", Some(customIdQuery.toParamString(customId))), ("customType", Some(customTypeQuery.toParamString(customType))), ("customValue", Some(customValueQuery.toParamString(customValue))), ("customValue2", Some(customValue2Query.toParamString(customValue2))), ("customLong", Some(customLongQuery.toParamString(customLong))), ("customLong2", Some(customLong2Query.toParamString(customLong2))), ("customMessage", Some(customMessageQuery.toParamString(customMessage))), ("customMessage2", Some(customMessage2Query.toParamString(customMessage2))), ("groupBy", Some(groupByQuery.toParamString(groupBy))), ("distinctCount", Some(distinctCountQuery.toParamString(distinctCount))), ("sumColumn", Some(sumColumnQuery.toParamString(sumColumn))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("hideUnknown", Some(hideUnknownQuery.toParamString(hideUnknown))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ChartData](req)

    } yield resp
  }

  def usage(host: String, version: BigDecimal, tag: String, deviceId: String, accountId: Long, applicationId: Long, appKey: String, appVersion: String, device: String, deviceType: String, deviceOS: String, model: String, latitude: Double, longitude: Double, customId: Long, customType: String, achievementIncrement: Long, city: String, state: String, country: String, zip: String, locationDescription: String, clientTime: Long, errorMessage: String, ip: String, userAgent: String, backgroundEvent: Boolean, customMessage: String, customMessage2: String, customValue: Double, customValue2: Double, customLong: Long, customLong2: Long)(implicit tagQuery: QueryParam[String], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], applicationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], appVersionQuery: QueryParam[String], deviceQuery: QueryParam[String], deviceTypeQuery: QueryParam[String], deviceOSQuery: QueryParam[String], modelQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], customIdQuery: QueryParam[Long], customTypeQuery: QueryParam[String], achievementIncrementQuery: QueryParam[Long], cityQuery: QueryParam[String], stateQuery: QueryParam[String], countryQuery: QueryParam[String], zipQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], clientTimeQuery: QueryParam[Long], errorMessageQuery: QueryParam[String], ipQuery: QueryParam[String], userAgentQuery: QueryParam[String], backgroundEventQuery: QueryParam[Boolean], customMessageQuery: QueryParam[String], customMessage2Query: QueryParam[String], customValueQuery: QueryParam[Double], customValue2Query: QueryParam[Double], customLongQuery: QueryParam[Long], customLong2Query: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/analytics/usage".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("tag", Some(tagQuery.toParamString(tag))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("applicationId", Some(applicationIdQuery.toParamString(applicationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("device", Some(deviceQuery.toParamString(device))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("deviceOS", Some(deviceOSQuery.toParamString(deviceOS))), ("model", Some(modelQuery.toParamString(model))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("customId", Some(customIdQuery.toParamString(customId))), ("customType", Some(customTypeQuery.toParamString(customType))), ("achievementIncrement", Some(achievementIncrementQuery.toParamString(achievementIncrement))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("country", Some(countryQuery.toParamString(country))), ("zip", Some(zipQuery.toParamString(zip))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("clientTime", Some(clientTimeQuery.toParamString(clientTime))), ("errorMessage", Some(errorMessageQuery.toParamString(errorMessage))), ("ip", Some(ipQuery.toParamString(ip))), ("userAgent", Some(userAgentQuery.toParamString(userAgent))), ("backgroundEvent", Some(backgroundEventQuery.toParamString(backgroundEvent))), ("customMessage", Some(customMessageQuery.toParamString(customMessage))), ("customMessage2", Some(customMessage2Query.toParamString(customMessage2))), ("customValue", Some(customValueQuery.toParamString(customValue))), ("customValue2", Some(customValue2Query.toParamString(customValue2))), ("customLong", Some(customLongQuery.toParamString(customLong))), ("customLong2", Some(customLong2Query.toParamString(customLong2))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def usageBatch(host: String, version: BigDecimal, appKey: String, device: String, data: String, deviceId: String, accountId: Long, appVersion: String, deviceType: String, deviceOS: String, model: String, updateRanking: Boolean, returnSummaryResponse: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], appVersionQuery: QueryParam[String], deviceQuery: QueryParam[String], deviceTypeQuery: QueryParam[String], deviceOSQuery: QueryParam[String], modelQuery: QueryParam[String], dataQuery: QueryParam[String], updateRankingQuery: QueryParam[Boolean], returnSummaryResponseQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/analytics/usage/batch".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("device", Some(deviceQuery.toParamString(device))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("deviceOS", Some(deviceOSQuery.toParamString(deviceOS))), ("model", Some(modelQuery.toParamString(model))), ("data", Some(dataQuery.toParamString(data))), ("updateRanking", Some(updateRankingQuery.toParamString(updateRanking))), ("returnSummaryResponse", Some(returnSummaryResponseQuery.toParamString(returnSummaryResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceAnalyticsApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def activities(version: BigDecimal, start: Integer, limit: Integer, accountId: Long)(implicit startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], accountIdQuery: QueryParam[Long]): Task[List[UserActivityResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[UserActivityResponse]] = jsonOf[List[UserActivityResponse]]

    val path = "/api/{version}/analytics/useractivity".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[UserActivityResponse]](req)

    } yield resp
  }

  def aggregatedFilteredUsage(version: BigDecimal, deviceId: String, accountId: Long, applicationId: Long, appKey: String, startDate: Long, endDate: Long, deviceType: String, device: String, deviceOS: String, gender: String, ageGroup: String, country: String, state: String, city: String, zip: String, model: String, tag: String, userAccountId: Long, userAccountDisplay: String, userAccountUsername: String, groupByRoot: String, groupBy: String, distinctCount: String, sortField: String, descending: Boolean, hideUnknown: Boolean, responseFormat: String, l: Integer, limit: Integer, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], applicationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], deviceTypeQuery: QueryParam[String], deviceQuery: QueryParam[String], deviceOSQuery: QueryParam[String], genderQuery: QueryParam[String], ageGroupQuery: QueryParam[String], countryQuery: QueryParam[String], stateQuery: QueryParam[String], cityQuery: QueryParam[String], zipQuery: QueryParam[String], modelQuery: QueryParam[String], tagQuery: QueryParam[String], userAccountIdQuery: QueryParam[Long], userAccountDisplayQuery: QueryParam[String], userAccountUsernameQuery: QueryParam[String], groupByRootQuery: QueryParam[String], groupByQuery: QueryParam[String], distinctCountQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], hideUnknownQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ChartData] = {
    implicit val returnTypeDecoder: EntityDecoder[ChartData] = jsonOf[ChartData]

    val path = "/api/{version}/analytics/aggregatedFilteredUsage".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("applicationId", Some(applicationIdQuery.toParamString(applicationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("device", Some(deviceQuery.toParamString(device))), ("deviceOS", Some(deviceOSQuery.toParamString(deviceOS))), ("gender", Some(genderQuery.toParamString(gender))), ("ageGroup", Some(ageGroupQuery.toParamString(ageGroup))), ("country", Some(countryQuery.toParamString(country))), ("state", Some(stateQuery.toParamString(state))), ("city", Some(cityQuery.toParamString(city))), ("zip", Some(zipQuery.toParamString(zip))), ("model", Some(modelQuery.toParamString(model))), ("tag", Some(tagQuery.toParamString(tag))), ("userAccountId", Some(userAccountIdQuery.toParamString(userAccountId))), ("userAccountDisplay", Some(userAccountDisplayQuery.toParamString(userAccountDisplay))), ("userAccountUsername", Some(userAccountUsernameQuery.toParamString(userAccountUsername))), ("groupByRoot", Some(groupByRootQuery.toParamString(groupByRoot))), ("groupBy", Some(groupByQuery.toParamString(groupBy))), ("distinctCount", Some(distinctCountQuery.toParamString(distinctCount))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("hideUnknown", Some(hideUnknownQuery.toParamString(hideUnknown))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ChartData](req)

    } yield resp
  }

  def filteredUsage(version: BigDecimal, deviceId: String, accountId: Long, applicationId: Long, appKey: String, startDate: Long, endDate: Long, deviceType: String, device: String, deviceOS: String, gender: String, ageGroup: String, country: String, state: String, city: String, zip: String, model: String, tag: String, userAccountId: Long, userAccountDisplay: String, userAccountUsername: String, customId: Long, customType: String, customValue: Double, customValue2: Double, customLong: Long, customLong2: Long, customMessage: String, customMessage2: String, groupBy: String, distinctCount: String, sumColumn: String, sortField: String, descending: Boolean, hideUnknown: Boolean, responseFormat: String, l: Integer, limit: Integer, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], applicationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], deviceTypeQuery: QueryParam[String], deviceQuery: QueryParam[String], deviceOSQuery: QueryParam[String], genderQuery: QueryParam[String], ageGroupQuery: QueryParam[String], countryQuery: QueryParam[String], stateQuery: QueryParam[String], cityQuery: QueryParam[String], zipQuery: QueryParam[String], modelQuery: QueryParam[String], tagQuery: QueryParam[String], userAccountIdQuery: QueryParam[Long], userAccountDisplayQuery: QueryParam[String], userAccountUsernameQuery: QueryParam[String], customIdQuery: QueryParam[Long], customTypeQuery: QueryParam[String], customValueQuery: QueryParam[Double], customValue2Query: QueryParam[Double], customLongQuery: QueryParam[Long], customLong2Query: QueryParam[Long], customMessageQuery: QueryParam[String], customMessage2Query: QueryParam[String], groupByQuery: QueryParam[String], distinctCountQuery: QueryParam[String], sumColumnQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], hideUnknownQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ChartData] = {
    implicit val returnTypeDecoder: EntityDecoder[ChartData] = jsonOf[ChartData]

    val path = "/api/{version}/analytics/filteredUsage".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("applicationId", Some(applicationIdQuery.toParamString(applicationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("device", Some(deviceQuery.toParamString(device))), ("deviceOS", Some(deviceOSQuery.toParamString(deviceOS))), ("gender", Some(genderQuery.toParamString(gender))), ("ageGroup", Some(ageGroupQuery.toParamString(ageGroup))), ("country", Some(countryQuery.toParamString(country))), ("state", Some(stateQuery.toParamString(state))), ("city", Some(cityQuery.toParamString(city))), ("zip", Some(zipQuery.toParamString(zip))), ("model", Some(modelQuery.toParamString(model))), ("tag", Some(tagQuery.toParamString(tag))), ("userAccountId", Some(userAccountIdQuery.toParamString(userAccountId))), ("userAccountDisplay", Some(userAccountDisplayQuery.toParamString(userAccountDisplay))), ("userAccountUsername", Some(userAccountUsernameQuery.toParamString(userAccountUsername))), ("customId", Some(customIdQuery.toParamString(customId))), ("customType", Some(customTypeQuery.toParamString(customType))), ("customValue", Some(customValueQuery.toParamString(customValue))), ("customValue2", Some(customValue2Query.toParamString(customValue2))), ("customLong", Some(customLongQuery.toParamString(customLong))), ("customLong2", Some(customLong2Query.toParamString(customLong2))), ("customMessage", Some(customMessageQuery.toParamString(customMessage))), ("customMessage2", Some(customMessage2Query.toParamString(customMessage2))), ("groupBy", Some(groupByQuery.toParamString(groupBy))), ("distinctCount", Some(distinctCountQuery.toParamString(distinctCount))), ("sumColumn", Some(sumColumnQuery.toParamString(sumColumn))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("hideUnknown", Some(hideUnknownQuery.toParamString(hideUnknown))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ChartData](req)

    } yield resp
  }

  def usage(version: BigDecimal, tag: String, deviceId: String, accountId: Long, applicationId: Long, appKey: String, appVersion: String, device: String, deviceType: String, deviceOS: String, model: String, latitude: Double, longitude: Double, customId: Long, customType: String, achievementIncrement: Long, city: String, state: String, country: String, zip: String, locationDescription: String, clientTime: Long, errorMessage: String, ip: String, userAgent: String, backgroundEvent: Boolean, customMessage: String, customMessage2: String, customValue: Double, customValue2: Double, customLong: Long, customLong2: Long)(implicit tagQuery: QueryParam[String], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], applicationIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], appVersionQuery: QueryParam[String], deviceQuery: QueryParam[String], deviceTypeQuery: QueryParam[String], deviceOSQuery: QueryParam[String], modelQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], customIdQuery: QueryParam[Long], customTypeQuery: QueryParam[String], achievementIncrementQuery: QueryParam[Long], cityQuery: QueryParam[String], stateQuery: QueryParam[String], countryQuery: QueryParam[String], zipQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], clientTimeQuery: QueryParam[Long], errorMessageQuery: QueryParam[String], ipQuery: QueryParam[String], userAgentQuery: QueryParam[String], backgroundEventQuery: QueryParam[Boolean], customMessageQuery: QueryParam[String], customMessage2Query: QueryParam[String], customValueQuery: QueryParam[Double], customValue2Query: QueryParam[Double], customLongQuery: QueryParam[Long], customLong2Query: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/analytics/usage".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("tag", Some(tagQuery.toParamString(tag))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("applicationId", Some(applicationIdQuery.toParamString(applicationId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("device", Some(deviceQuery.toParamString(device))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("deviceOS", Some(deviceOSQuery.toParamString(deviceOS))), ("model", Some(modelQuery.toParamString(model))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("customId", Some(customIdQuery.toParamString(customId))), ("customType", Some(customTypeQuery.toParamString(customType))), ("achievementIncrement", Some(achievementIncrementQuery.toParamString(achievementIncrement))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("country", Some(countryQuery.toParamString(country))), ("zip", Some(zipQuery.toParamString(zip))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("clientTime", Some(clientTimeQuery.toParamString(clientTime))), ("errorMessage", Some(errorMessageQuery.toParamString(errorMessage))), ("ip", Some(ipQuery.toParamString(ip))), ("userAgent", Some(userAgentQuery.toParamString(userAgent))), ("backgroundEvent", Some(backgroundEventQuery.toParamString(backgroundEvent))), ("customMessage", Some(customMessageQuery.toParamString(customMessage))), ("customMessage2", Some(customMessage2Query.toParamString(customMessage2))), ("customValue", Some(customValueQuery.toParamString(customValue))), ("customValue2", Some(customValue2Query.toParamString(customValue2))), ("customLong", Some(customLongQuery.toParamString(customLong))), ("customLong2", Some(customLong2Query.toParamString(customLong2))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def usageBatch(version: BigDecimal, appKey: String, device: String, data: String, deviceId: String, accountId: Long, appVersion: String, deviceType: String, deviceOS: String, model: String, updateRanking: Boolean, returnSummaryResponse: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], appVersionQuery: QueryParam[String], deviceQuery: QueryParam[String], deviceTypeQuery: QueryParam[String], deviceOSQuery: QueryParam[String], modelQuery: QueryParam[String], dataQuery: QueryParam[String], updateRankingQuery: QueryParam[Boolean], returnSummaryResponseQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/analytics/usage/batch".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("device", Some(deviceQuery.toParamString(device))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("deviceOS", Some(deviceOSQuery.toParamString(deviceOS))), ("model", Some(modelQuery.toParamString(model))), ("data", Some(dataQuery.toParamString(data))), ("updateRanking", Some(updateRankingQuery.toParamString(updateRanking))), ("returnSummaryResponse", Some(returnSummaryResponseQuery.toParamString(returnSummaryResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
