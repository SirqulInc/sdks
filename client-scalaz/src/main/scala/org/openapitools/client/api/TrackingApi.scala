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

import org.openapitools.client.api.AccountMiniResponse
import org.openapitools.client.api.BigDecimal
import org.openapitools.client.api.Leg
import org.openapitools.client.api.LegResponse
import org.openapitools.client.api.PredictedLocationResponse
import org.openapitools.client.api.PreferredLocationResponse
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.StepResponse

object TrackingApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def batchSaveTracking(host: String, version: BigDecimal, data: String, deviceId: String, accountId: Long, generateAccounts: Boolean, updateAccountLocations: Boolean, defaultTag: String = PASSIVE, slaveUID: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String], generateAccountsQuery: QueryParam[Boolean], updateAccountLocationsQuery: QueryParam[Boolean], defaultTagQuery: QueryParam[String], slaveUIDQuery: QueryParam[String]): Task[List[Leg]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Leg]] = jsonOf[List[Leg]]

    val path = "/api/{version}/tracking/batch/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("data", Some(dataQuery.toParamString(data))), ("generateAccounts", Some(generateAccountsQuery.toParamString(generateAccounts))), ("updateAccountLocations", Some(updateAccountLocationsQuery.toParamString(updateAccountLocations))), ("defaultTag", Some(defaultTagQuery.toParamString(defaultTag))), ("slaveUID", Some(slaveUIDQuery.toParamString(slaveUID))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Leg]](req)

    } yield resp
  }

  def getPredictedLocations(host: String, version: BigDecimal, accountId: Long, latitude: Double, longitude: Double, dateCheck: Long, hourCheck: String, threshold: Long = 1, distanceUnit: String = MILES, searchRange: Double = 0, sortOrder: String = MATCHES)(implicit accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], dateCheckQuery: QueryParam[Long], hourCheckQuery: QueryParam[String], thresholdQuery: QueryParam[Long], distanceUnitQuery: QueryParam[String], searchRangeQuery: QueryParam[Double], sortOrderQuery: QueryParam[String]): Task[PredictedLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PredictedLocationResponse] = jsonOf[PredictedLocationResponse]

    val path = "/api/{version}/tracking/predicted/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("dateCheck", Some(dateCheckQuery.toParamString(dateCheck))), ("hourCheck", Some(hourCheckQuery.toParamString(hourCheck))), ("threshold", Some(thresholdQuery.toParamString(threshold))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("sortOrder", Some(sortOrderQuery.toParamString(sortOrder))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PredictedLocationResponse](req)

    } yield resp
  }

  def getPredictedPath(host: String, version: BigDecimal, accountId: Long, startStepId: Long, endStepId: Long)(implicit accountIdQuery: QueryParam[Long], startStepIdQuery: QueryParam[Long], endStepIdQuery: QueryParam[Long]): Task[List[StepResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[StepResponse]] = jsonOf[List[StepResponse]]

    val path = "/api/{version}/tracking/path/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("startStepId", Some(startStepIdQuery.toParamString(startStepId))), ("endStepId", Some(endStepIdQuery.toParamString(endStepId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[StepResponse]](req)

    } yield resp
  }

  def getPreferredLocations(host: String, version: BigDecimal, accountId: Long, latitude: Double, longitude: Double, dateCheck: Long, hourCheck: String, sortField: String = PREFERRED_DATE, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, searchRange: Double = 0, distanceUnit: String = MILES)(implicit accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], dateCheckQuery: QueryParam[Long], hourCheckQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], searchRangeQuery: QueryParam[Double], distanceUnitQuery: QueryParam[String]): Task[List[PreferredLocationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PreferredLocationResponse]] = jsonOf[List[PreferredLocationResponse]]

    val path = "/api/{version}/tracking/preferred/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("dateCheck", Some(dateCheckQuery.toParamString(dateCheck))), ("hourCheck", Some(hourCheckQuery.toParamString(hourCheck))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PreferredLocationResponse]](req)

    } yield resp
  }

  def getTrackingLegs(host: String, version: BigDecimal, deviceId: String, accountId: Long, ownerId: Long, trackingDeviceId: String, startDate: Long, endDate: Long, tags: String, getLastPoint: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ownerIdQuery: QueryParam[Long], trackingDeviceIdQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tagsQuery: QueryParam[String], getLastPointQuery: QueryParam[Boolean]): Task[List[LegResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[LegResponse]] = jsonOf[List[LegResponse]]

    val path = "/api/{version}/tracking/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("trackingDeviceId", Some(trackingDeviceIdQuery.toParamString(trackingDeviceId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tags", Some(tagsQuery.toParamString(tags))), ("getLastPoint", Some(getLastPointQuery.toParamString(getLastPoint))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[LegResponse]](req)

    } yield resp
  }

  def saveTrackingLeg(host: String, version: BigDecimal, startLat: Double, startLng: Double, startDate: Long, endLat: Double, endLng: Double, endDate: Long, deviceId: String, accountId: Long, distance: Double, duration: Long, steps: String, tags: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], distanceQuery: QueryParam[Double], durationQuery: QueryParam[Long], startLatQuery: QueryParam[Double], startLngQuery: QueryParam[Double], startDateQuery: QueryParam[Long], endLatQuery: QueryParam[Double], endLngQuery: QueryParam[Double], endDateQuery: QueryParam[Long], stepsQuery: QueryParam[String], tagsQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tracking/leg/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("distance", Some(distanceQuery.toParamString(distance))), ("duration", Some(durationQuery.toParamString(duration))), ("startLat", Some(startLatQuery.toParamString(startLat))), ("startLng", Some(startLngQuery.toParamString(startLng))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endLat", Some(endLatQuery.toParamString(endLat))), ("endLng", Some(endLngQuery.toParamString(endLng))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("steps", Some(stepsQuery.toParamString(steps))), ("tags", Some(tagsQuery.toParamString(tags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def saveTrackingStep(host: String, version: BigDecimal, legId: Long, startLat: Double, startLng: Double, startDate: Long, endLat: Double, endLng: Double, endDate: Long, deviceId: String, accountId: Long, distance: Double, duration: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], legIdQuery: QueryParam[Long], distanceQuery: QueryParam[Double], durationQuery: QueryParam[Long], startLatQuery: QueryParam[Double], startLngQuery: QueryParam[Double], startDateQuery: QueryParam[Long], endLatQuery: QueryParam[Double], endLngQuery: QueryParam[Double], endDateQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tracking/step/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("legId", Some(legIdQuery.toParamString(legId))), ("distance", Some(distanceQuery.toParamString(distance))), ("duration", Some(durationQuery.toParamString(duration))), ("startLat", Some(startLatQuery.toParamString(startLat))), ("startLng", Some(startLngQuery.toParamString(startLng))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endLat", Some(endLatQuery.toParamString(endLat))), ("endLng", Some(endLngQuery.toParamString(endLng))), ("endDate", Some(endDateQuery.toParamString(endDate))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchAccountsWithTrackingLegs(host: String, version: BigDecimal, accountId: Long, keyword: String, startDate: Long, endDate: Long, tags: String, audienceIds: String, latitude: Double, longitude: Double, range: Double = 5, sortField: String = LEG_START_DATE, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = false)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tagsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], rangeQuery: QueryParam[Double], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[AccountMiniResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AccountMiniResponse]] = jsonOf[List[AccountMiniResponse]]

    val path = "/api/{version}/tracking/list".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tags", Some(tagsQuery.toParamString(tags))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("range", Some(rangeQuery.toParamString(range))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AccountMiniResponse]](req)

    } yield resp
  }

  def searchTrackingLegs(host: String, version: BigDecimal, accountId: Long, appKey: String, trackingDeviceId: String, startDate: Long, endDate: Long, tags: String, start: Integer = 0, limit: Integer = 100)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], trackingDeviceIdQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tagsQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[LegResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[LegResponse]] = jsonOf[List[LegResponse]]

    val path = "/api/{version}/tracking/searchByBillable".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("trackingDeviceId", Some(trackingDeviceIdQuery.toParamString(trackingDeviceId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tags", Some(tagsQuery.toParamString(tags))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[LegResponse]](req)

    } yield resp
  }

}

class HttpServiceTrackingApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def batchSaveTracking(version: BigDecimal, data: String, deviceId: String, accountId: Long, generateAccounts: Boolean, updateAccountLocations: Boolean, defaultTag: String = PASSIVE, slaveUID: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String], generateAccountsQuery: QueryParam[Boolean], updateAccountLocationsQuery: QueryParam[Boolean], defaultTagQuery: QueryParam[String], slaveUIDQuery: QueryParam[String]): Task[List[Leg]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[Leg]] = jsonOf[List[Leg]]

    val path = "/api/{version}/tracking/batch/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("data", Some(dataQuery.toParamString(data))), ("generateAccounts", Some(generateAccountsQuery.toParamString(generateAccounts))), ("updateAccountLocations", Some(updateAccountLocationsQuery.toParamString(updateAccountLocations))), ("defaultTag", Some(defaultTagQuery.toParamString(defaultTag))), ("slaveUID", Some(slaveUIDQuery.toParamString(slaveUID))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[Leg]](req)

    } yield resp
  }

  def getPredictedLocations(version: BigDecimal, accountId: Long, latitude: Double, longitude: Double, dateCheck: Long, hourCheck: String, threshold: Long = 1, distanceUnit: String = MILES, searchRange: Double = 0, sortOrder: String = MATCHES)(implicit accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], dateCheckQuery: QueryParam[Long], hourCheckQuery: QueryParam[String], thresholdQuery: QueryParam[Long], distanceUnitQuery: QueryParam[String], searchRangeQuery: QueryParam[Double], sortOrderQuery: QueryParam[String]): Task[PredictedLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PredictedLocationResponse] = jsonOf[PredictedLocationResponse]

    val path = "/api/{version}/tracking/predicted/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("dateCheck", Some(dateCheckQuery.toParamString(dateCheck))), ("hourCheck", Some(hourCheckQuery.toParamString(hourCheck))), ("threshold", Some(thresholdQuery.toParamString(threshold))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("sortOrder", Some(sortOrderQuery.toParamString(sortOrder))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PredictedLocationResponse](req)

    } yield resp
  }

  def getPredictedPath(version: BigDecimal, accountId: Long, startStepId: Long, endStepId: Long)(implicit accountIdQuery: QueryParam[Long], startStepIdQuery: QueryParam[Long], endStepIdQuery: QueryParam[Long]): Task[List[StepResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[StepResponse]] = jsonOf[List[StepResponse]]

    val path = "/api/{version}/tracking/path/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("startStepId", Some(startStepIdQuery.toParamString(startStepId))), ("endStepId", Some(endStepIdQuery.toParamString(endStepId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[StepResponse]](req)

    } yield resp
  }

  def getPreferredLocations(version: BigDecimal, accountId: Long, latitude: Double, longitude: Double, dateCheck: Long, hourCheck: String, sortField: String = PREFERRED_DATE, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, searchRange: Double = 0, distanceUnit: String = MILES)(implicit accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], dateCheckQuery: QueryParam[Long], hourCheckQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], searchRangeQuery: QueryParam[Double], distanceUnitQuery: QueryParam[String]): Task[List[PreferredLocationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PreferredLocationResponse]] = jsonOf[List[PreferredLocationResponse]]

    val path = "/api/{version}/tracking/preferred/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("dateCheck", Some(dateCheckQuery.toParamString(dateCheck))), ("hourCheck", Some(hourCheckQuery.toParamString(hourCheck))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PreferredLocationResponse]](req)

    } yield resp
  }

  def getTrackingLegs(version: BigDecimal, deviceId: String, accountId: Long, ownerId: Long, trackingDeviceId: String, startDate: Long, endDate: Long, tags: String, getLastPoint: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ownerIdQuery: QueryParam[Long], trackingDeviceIdQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tagsQuery: QueryParam[String], getLastPointQuery: QueryParam[Boolean]): Task[List[LegResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[LegResponse]] = jsonOf[List[LegResponse]]

    val path = "/api/{version}/tracking/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("trackingDeviceId", Some(trackingDeviceIdQuery.toParamString(trackingDeviceId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tags", Some(tagsQuery.toParamString(tags))), ("getLastPoint", Some(getLastPointQuery.toParamString(getLastPoint))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[LegResponse]](req)

    } yield resp
  }

  def saveTrackingLeg(version: BigDecimal, startLat: Double, startLng: Double, startDate: Long, endLat: Double, endLng: Double, endDate: Long, deviceId: String, accountId: Long, distance: Double, duration: Long, steps: String, tags: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], distanceQuery: QueryParam[Double], durationQuery: QueryParam[Long], startLatQuery: QueryParam[Double], startLngQuery: QueryParam[Double], startDateQuery: QueryParam[Long], endLatQuery: QueryParam[Double], endLngQuery: QueryParam[Double], endDateQuery: QueryParam[Long], stepsQuery: QueryParam[String], tagsQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tracking/leg/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("distance", Some(distanceQuery.toParamString(distance))), ("duration", Some(durationQuery.toParamString(duration))), ("startLat", Some(startLatQuery.toParamString(startLat))), ("startLng", Some(startLngQuery.toParamString(startLng))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endLat", Some(endLatQuery.toParamString(endLat))), ("endLng", Some(endLngQuery.toParamString(endLng))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("steps", Some(stepsQuery.toParamString(steps))), ("tags", Some(tagsQuery.toParamString(tags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def saveTrackingStep(version: BigDecimal, legId: Long, startLat: Double, startLng: Double, startDate: Long, endLat: Double, endLng: Double, endDate: Long, deviceId: String, accountId: Long, distance: Double, duration: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], legIdQuery: QueryParam[Long], distanceQuery: QueryParam[Double], durationQuery: QueryParam[Long], startLatQuery: QueryParam[Double], startLngQuery: QueryParam[Double], startDateQuery: QueryParam[Long], endLatQuery: QueryParam[Double], endLngQuery: QueryParam[Double], endDateQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/tracking/step/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("legId", Some(legIdQuery.toParamString(legId))), ("distance", Some(distanceQuery.toParamString(distance))), ("duration", Some(durationQuery.toParamString(duration))), ("startLat", Some(startLatQuery.toParamString(startLat))), ("startLng", Some(startLngQuery.toParamString(startLng))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endLat", Some(endLatQuery.toParamString(endLat))), ("endLng", Some(endLngQuery.toParamString(endLng))), ("endDate", Some(endDateQuery.toParamString(endDate))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchAccountsWithTrackingLegs(version: BigDecimal, accountId: Long, keyword: String, startDate: Long, endDate: Long, tags: String, audienceIds: String, latitude: Double, longitude: Double, range: Double = 5, sortField: String = LEG_START_DATE, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = false)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tagsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], rangeQuery: QueryParam[Double], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[AccountMiniResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AccountMiniResponse]] = jsonOf[List[AccountMiniResponse]]

    val path = "/api/{version}/tracking/list".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tags", Some(tagsQuery.toParamString(tags))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("range", Some(rangeQuery.toParamString(range))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AccountMiniResponse]](req)

    } yield resp
  }

  def searchTrackingLegs(version: BigDecimal, accountId: Long, appKey: String, trackingDeviceId: String, startDate: Long, endDate: Long, tags: String, start: Integer = 0, limit: Integer = 100)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], trackingDeviceIdQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tagsQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[LegResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[LegResponse]] = jsonOf[List[LegResponse]]

    val path = "/api/{version}/tracking/searchByBillable".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("trackingDeviceId", Some(trackingDeviceIdQuery.toParamString(trackingDeviceId))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tags", Some(tagsQuery.toParamString(tags))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[LegResponse]](req)

    } yield resp
  }

}
