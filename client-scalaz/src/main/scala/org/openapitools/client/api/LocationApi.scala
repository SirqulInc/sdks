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

import org.openapitools.client.api.CoordsResponse
import java.io.File
import org.openapitools.client.api.GeoPointResponse
import org.openapitools.client.api.LocationSearchResponse
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.TrilatCacheRequest

object LocationApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def cacheTrilaterationData(host: String, udid: String, sourceTime: Long, minimumSampleSize: Integer, data: String, dataFile: File)(implicit udidQuery: QueryParam[String], sourceTimeQuery: QueryParam[Long], minimumSampleSizeQuery: QueryParam[Integer], dataQuery: QueryParam[String], dataFileQuery: QueryParam[File]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/location/trilaterate/cache"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("udid", Some(udidQuery.toParamString(udid))), ("sourceTime", Some(sourceTimeQuery.toParamString(sourceTime))), ("minimumSampleSize", Some(minimumSampleSizeQuery.toParamString(minimumSampleSize))), ("data", Some(dataQuery.toParamString(data))), ("dataFile", Some(dataFileQuery.toParamString(dataFile))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def cacheTrilaterationDataGzip(host: String, body: TrilatCacheRequest): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/location/trilaterate/cache/submit"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getLocationByIp(host: String, ip: String)(implicit ipQuery: QueryParam[String]): Task[CoordsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CoordsResponse] = jsonOf[CoordsResponse]

    val path = "/location/ip"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("ip", Some(ipQuery.toParamString(ip))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CoordsResponse](req)

    } yield resp
  }

  def getLocationByTrilateration(host: String, accountId: Long, latitude: Double, longitude: Double, data: String, responseFilters: String)(implicit accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], dataQuery: QueryParam[String], responseFiltersQuery: QueryParam[String]): Task[GeoPointResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GeoPointResponse] = jsonOf[GeoPointResponse]

    val path = "/account/location/trilaterate"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("data", Some(dataQuery.toParamString(data))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GeoPointResponse](req)

    } yield resp
  }

  def getLocations(host: String, deviceId: String, accountId: Long, currentlatitude: Double, currentlongitude: Double, currentLatitude: Double, currentLongitude: Double, query: String, zipcode: String, zipCode: String, selectedMaplatitude: Double, selectedMaplongitude: Double, selectedMapLatitude: Double, selectedMapLongitude: Double, searchRange: Double = 5, useGeocode: Boolean = false, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 20)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], currentlatitudeQuery: QueryParam[Double], currentlongitudeQuery: QueryParam[Double], currentLatitudeQuery: QueryParam[Double], currentLongitudeQuery: QueryParam[Double], queryQuery: QueryParam[String], zipcodeQuery: QueryParam[String], zipCodeQuery: QueryParam[String], selectedMaplatitudeQuery: QueryParam[Double], selectedMaplongitudeQuery: QueryParam[Double], selectedMapLatitudeQuery: QueryParam[Double], selectedMapLongitudeQuery: QueryParam[Double], searchRangeQuery: QueryParam[Double], useGeocodeQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[LocationSearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LocationSearchResponse] = jsonOf[LocationSearchResponse]

    val path = "/location/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("currentlatitude", Some(currentlatitudeQuery.toParamString(currentlatitude))), ("currentlongitude", Some(currentlongitudeQuery.toParamString(currentlongitude))), ("currentLatitude", Some(currentLatitudeQuery.toParamString(currentLatitude))), ("currentLongitude", Some(currentLongitudeQuery.toParamString(currentLongitude))), ("query", Some(queryQuery.toParamString(query))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("zipCode", Some(zipCodeQuery.toParamString(zipCode))), ("selectedMaplatitude", Some(selectedMaplatitudeQuery.toParamString(selectedMaplatitude))), ("selectedMaplongitude", Some(selectedMaplongitudeQuery.toParamString(selectedMaplongitude))), ("selectedMapLatitude", Some(selectedMapLatitudeQuery.toParamString(selectedMapLatitude))), ("selectedMapLongitude", Some(selectedMapLongitudeQuery.toParamString(selectedMapLongitude))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("useGeocode", Some(useGeocodeQuery.toParamString(useGeocode))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LocationSearchResponse](req)

    } yield resp
  }

}

class HttpServiceLocationApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def cacheTrilaterationData(udid: String, sourceTime: Long, minimumSampleSize: Integer, data: String, dataFile: File)(implicit udidQuery: QueryParam[String], sourceTimeQuery: QueryParam[Long], minimumSampleSizeQuery: QueryParam[Integer], dataQuery: QueryParam[String], dataFileQuery: QueryParam[File]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/location/trilaterate/cache"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("udid", Some(udidQuery.toParamString(udid))), ("sourceTime", Some(sourceTimeQuery.toParamString(sourceTime))), ("minimumSampleSize", Some(minimumSampleSizeQuery.toParamString(minimumSampleSize))), ("data", Some(dataQuery.toParamString(data))), ("dataFile", Some(dataFileQuery.toParamString(dataFile))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def cacheTrilaterationDataGzip(body: TrilatCacheRequest): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/location/trilaterate/cache/submit"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(body)
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getLocationByIp(ip: String)(implicit ipQuery: QueryParam[String]): Task[CoordsResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CoordsResponse] = jsonOf[CoordsResponse]

    val path = "/location/ip"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("ip", Some(ipQuery.toParamString(ip))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CoordsResponse](req)

    } yield resp
  }

  def getLocationByTrilateration(accountId: Long, latitude: Double, longitude: Double, data: String, responseFilters: String)(implicit accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], dataQuery: QueryParam[String], responseFiltersQuery: QueryParam[String]): Task[GeoPointResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[GeoPointResponse] = jsonOf[GeoPointResponse]

    val path = "/account/location/trilaterate"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("data", Some(dataQuery.toParamString(data))), ("responseFilters", Some(responseFiltersQuery.toParamString(responseFilters))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GeoPointResponse](req)

    } yield resp
  }

  def getLocations(deviceId: String, accountId: Long, currentlatitude: Double, currentlongitude: Double, currentLatitude: Double, currentLongitude: Double, query: String, zipcode: String, zipCode: String, selectedMaplatitude: Double, selectedMaplongitude: Double, selectedMapLatitude: Double, selectedMapLongitude: Double, searchRange: Double = 5, useGeocode: Boolean = false, i: Integer, start: Integer = 0, l: Integer, limit: Integer = 20)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], currentlatitudeQuery: QueryParam[Double], currentlongitudeQuery: QueryParam[Double], currentLatitudeQuery: QueryParam[Double], currentLongitudeQuery: QueryParam[Double], queryQuery: QueryParam[String], zipcodeQuery: QueryParam[String], zipCodeQuery: QueryParam[String], selectedMaplatitudeQuery: QueryParam[Double], selectedMaplongitudeQuery: QueryParam[Double], selectedMapLatitudeQuery: QueryParam[Double], selectedMapLongitudeQuery: QueryParam[Double], searchRangeQuery: QueryParam[Double], useGeocodeQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[LocationSearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[LocationSearchResponse] = jsonOf[LocationSearchResponse]

    val path = "/location/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("currentlatitude", Some(currentlatitudeQuery.toParamString(currentlatitude))), ("currentlongitude", Some(currentlongitudeQuery.toParamString(currentlongitude))), ("currentLatitude", Some(currentLatitudeQuery.toParamString(currentLatitude))), ("currentLongitude", Some(currentLongitudeQuery.toParamString(currentLongitude))), ("query", Some(queryQuery.toParamString(query))), ("zipcode", Some(zipcodeQuery.toParamString(zipcode))), ("zipCode", Some(zipCodeQuery.toParamString(zipCode))), ("selectedMaplatitude", Some(selectedMaplatitudeQuery.toParamString(selectedMaplatitude))), ("selectedMaplongitude", Some(selectedMaplongitudeQuery.toParamString(selectedMaplongitude))), ("selectedMapLatitude", Some(selectedMapLatitudeQuery.toParamString(selectedMapLatitude))), ("selectedMapLongitude", Some(selectedMapLongitudeQuery.toParamString(selectedMapLongitude))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("useGeocode", Some(useGeocodeQuery.toParamString(useGeocode))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[LocationSearchResponse](req)

    } yield resp
  }

}
