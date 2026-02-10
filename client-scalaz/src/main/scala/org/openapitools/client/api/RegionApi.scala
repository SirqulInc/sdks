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
import org.openapitools.client.api.RegionResponse

object RegionApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRegion(host: String, version: BigDecimal, accountId: Long, regionClass: String, shortName: String, fullName: String, parentIds: String, childrenIds: String, postalCodeIds: String, locations: String, retailerLocationId: Long, visibility: String, categoryIds: String, filterIds: String, start: Long, end: Long, polygon: String, metaData: String, latitude: Double, longitude: Double, versionCode: Integer, root: Boolean, active: Boolean)(implicit accountIdQuery: QueryParam[Long], regionClassQuery: QueryParam[String], shortNameQuery: QueryParam[String], fullNameQuery: QueryParam[String], parentIdsQuery: QueryParam[String], childrenIdsQuery: QueryParam[String], postalCodeIdsQuery: QueryParam[String], locationsQuery: QueryParam[String], retailerLocationIdQuery: QueryParam[Long], visibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], startQuery: QueryParam[Long], endQuery: QueryParam[Long], polygonQuery: QueryParam[String], metaDataQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], versionCodeQuery: QueryParam[Integer], rootQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean]): Task[RegionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RegionResponse] = jsonOf[RegionResponse]

    val path = "/api/{version}/region/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("regionClass", Some(regionClassQuery.toParamString(regionClass))), ("shortName", Some(shortNameQuery.toParamString(shortName))), ("fullName", Some(fullNameQuery.toParamString(fullName))), ("parentIds", Some(parentIdsQuery.toParamString(parentIds))), ("childrenIds", Some(childrenIdsQuery.toParamString(childrenIds))), ("postalCodeIds", Some(postalCodeIdsQuery.toParamString(postalCodeIds))), ("locations", Some(locationsQuery.toParamString(locations))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("start", Some(startQuery.toParamString(start))), ("end", Some(endQuery.toParamString(end))), ("polygon", Some(polygonQuery.toParamString(polygon))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("root", Some(rootQuery.toParamString(root))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RegionResponse](req)

    } yield resp
  }

  def deleteRegion(host: String, version: BigDecimal, accountId: Long, regionId: Long)(implicit accountIdQuery: QueryParam[Long], regionIdQuery: QueryParam[Long]): Task[RegionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RegionResponse] = jsonOf[RegionResponse]

    val path = "/api/{version}/region/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("regionId", Some(regionIdQuery.toParamString(regionId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RegionResponse](req)

    } yield resp
  }

  def getRegion(host: String, version: BigDecimal, regionId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long], regionIdQuery: QueryParam[Long]): Task[RegionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RegionResponse] = jsonOf[RegionResponse]

    val path = "/api/{version}/region/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("regionId", Some(regionIdQuery.toParamString(regionId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RegionResponse](req)

    } yield resp
  }

  def searchRegions(host: String, version: BigDecimal, accountId: Long, query: String, keyword: String, latitude: Double, longitude: Double, range: Double, regionClass: String, visibility: String, searchMode: String, sortField: String, descending: Boolean, includeParent: Boolean, includeChildren: Boolean, includePostalCodes: Boolean, categoryIds: String, filterIds: String, versionCode: Integer, activeOnly: Boolean, showDeleted: Boolean, lastUpdatedSince: Long, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], queryQuery: QueryParam[String], keywordQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], rangeQuery: QueryParam[Double], regionClassQuery: QueryParam[String], visibilityQuery: QueryParam[String], searchModeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], includeParentQuery: QueryParam[Boolean], includeChildrenQuery: QueryParam[Boolean], includePostalCodesQuery: QueryParam[Boolean], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], versionCodeQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], showDeletedQuery: QueryParam[Boolean], lastUpdatedSinceQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[RegionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RegionResponse]] = jsonOf[List[RegionResponse]]

    val path = "/api/{version}/region/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("query", Some(queryQuery.toParamString(query))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("range", Some(rangeQuery.toParamString(range))), ("regionClass", Some(regionClassQuery.toParamString(regionClass))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("searchMode", Some(searchModeQuery.toParamString(searchMode))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("includeParent", Some(includeParentQuery.toParamString(includeParent))), ("includeChildren", Some(includeChildrenQuery.toParamString(includeChildren))), ("includePostalCodes", Some(includePostalCodesQuery.toParamString(includePostalCodes))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("showDeleted", Some(showDeletedQuery.toParamString(showDeleted))), ("lastUpdatedSince", Some(lastUpdatedSinceQuery.toParamString(lastUpdatedSince))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RegionResponse]](req)

    } yield resp
  }

  def updateRegion(host: String, version: BigDecimal, accountId: Long, regionId: Long, regionClass: String, shortName: String, fullName: String, parentIds: String, childrenIds: String, postalCodeIds: String, locations: String, retailerLocationId: Long, visibility: String, categoryIds: String, filterIds: String, start: Long, end: Long, polygon: String, metaData: String, latitude: Double, longitude: Double, versionCode: Integer, root: Boolean, active: Boolean, clearLists: Boolean)(implicit accountIdQuery: QueryParam[Long], regionIdQuery: QueryParam[Long], regionClassQuery: QueryParam[String], shortNameQuery: QueryParam[String], fullNameQuery: QueryParam[String], parentIdsQuery: QueryParam[String], childrenIdsQuery: QueryParam[String], postalCodeIdsQuery: QueryParam[String], locationsQuery: QueryParam[String], retailerLocationIdQuery: QueryParam[Long], visibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], startQuery: QueryParam[Long], endQuery: QueryParam[Long], polygonQuery: QueryParam[String], metaDataQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], versionCodeQuery: QueryParam[Integer], rootQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], clearListsQuery: QueryParam[Boolean]): Task[RegionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RegionResponse] = jsonOf[RegionResponse]

    val path = "/api/{version}/region/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("regionId", Some(regionIdQuery.toParamString(regionId))), ("regionClass", Some(regionClassQuery.toParamString(regionClass))), ("shortName", Some(shortNameQuery.toParamString(shortName))), ("fullName", Some(fullNameQuery.toParamString(fullName))), ("parentIds", Some(parentIdsQuery.toParamString(parentIds))), ("childrenIds", Some(childrenIdsQuery.toParamString(childrenIds))), ("postalCodeIds", Some(postalCodeIdsQuery.toParamString(postalCodeIds))), ("locations", Some(locationsQuery.toParamString(locations))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("start", Some(startQuery.toParamString(start))), ("end", Some(endQuery.toParamString(end))), ("polygon", Some(polygonQuery.toParamString(polygon))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("root", Some(rootQuery.toParamString(root))), ("active", Some(activeQuery.toParamString(active))), ("clearLists", Some(clearListsQuery.toParamString(clearLists))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RegionResponse](req)

    } yield resp
  }

}

class HttpServiceRegionApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRegion(version: BigDecimal, accountId: Long, regionClass: String, shortName: String, fullName: String, parentIds: String, childrenIds: String, postalCodeIds: String, locations: String, retailerLocationId: Long, visibility: String, categoryIds: String, filterIds: String, start: Long, end: Long, polygon: String, metaData: String, latitude: Double, longitude: Double, versionCode: Integer, root: Boolean, active: Boolean)(implicit accountIdQuery: QueryParam[Long], regionClassQuery: QueryParam[String], shortNameQuery: QueryParam[String], fullNameQuery: QueryParam[String], parentIdsQuery: QueryParam[String], childrenIdsQuery: QueryParam[String], postalCodeIdsQuery: QueryParam[String], locationsQuery: QueryParam[String], retailerLocationIdQuery: QueryParam[Long], visibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], startQuery: QueryParam[Long], endQuery: QueryParam[Long], polygonQuery: QueryParam[String], metaDataQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], versionCodeQuery: QueryParam[Integer], rootQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean]): Task[RegionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RegionResponse] = jsonOf[RegionResponse]

    val path = "/api/{version}/region/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("regionClass", Some(regionClassQuery.toParamString(regionClass))), ("shortName", Some(shortNameQuery.toParamString(shortName))), ("fullName", Some(fullNameQuery.toParamString(fullName))), ("parentIds", Some(parentIdsQuery.toParamString(parentIds))), ("childrenIds", Some(childrenIdsQuery.toParamString(childrenIds))), ("postalCodeIds", Some(postalCodeIdsQuery.toParamString(postalCodeIds))), ("locations", Some(locationsQuery.toParamString(locations))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("start", Some(startQuery.toParamString(start))), ("end", Some(endQuery.toParamString(end))), ("polygon", Some(polygonQuery.toParamString(polygon))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("root", Some(rootQuery.toParamString(root))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RegionResponse](req)

    } yield resp
  }

  def deleteRegion(version: BigDecimal, accountId: Long, regionId: Long)(implicit accountIdQuery: QueryParam[Long], regionIdQuery: QueryParam[Long]): Task[RegionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RegionResponse] = jsonOf[RegionResponse]

    val path = "/api/{version}/region/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("regionId", Some(regionIdQuery.toParamString(regionId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RegionResponse](req)

    } yield resp
  }

  def getRegion(version: BigDecimal, regionId: Long, accountId: Long)(implicit accountIdQuery: QueryParam[Long], regionIdQuery: QueryParam[Long]): Task[RegionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RegionResponse] = jsonOf[RegionResponse]

    val path = "/api/{version}/region/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("regionId", Some(regionIdQuery.toParamString(regionId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RegionResponse](req)

    } yield resp
  }

  def searchRegions(version: BigDecimal, accountId: Long, query: String, keyword: String, latitude: Double, longitude: Double, range: Double, regionClass: String, visibility: String, searchMode: String, sortField: String, descending: Boolean, includeParent: Boolean, includeChildren: Boolean, includePostalCodes: Boolean, categoryIds: String, filterIds: String, versionCode: Integer, activeOnly: Boolean, showDeleted: Boolean, lastUpdatedSince: Long, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], queryQuery: QueryParam[String], keywordQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], rangeQuery: QueryParam[Double], regionClassQuery: QueryParam[String], visibilityQuery: QueryParam[String], searchModeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], includeParentQuery: QueryParam[Boolean], includeChildrenQuery: QueryParam[Boolean], includePostalCodesQuery: QueryParam[Boolean], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], versionCodeQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], showDeletedQuery: QueryParam[Boolean], lastUpdatedSinceQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[RegionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RegionResponse]] = jsonOf[List[RegionResponse]]

    val path = "/api/{version}/region/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("query", Some(queryQuery.toParamString(query))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("range", Some(rangeQuery.toParamString(range))), ("regionClass", Some(regionClassQuery.toParamString(regionClass))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("searchMode", Some(searchModeQuery.toParamString(searchMode))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("includeParent", Some(includeParentQuery.toParamString(includeParent))), ("includeChildren", Some(includeChildrenQuery.toParamString(includeChildren))), ("includePostalCodes", Some(includePostalCodesQuery.toParamString(includePostalCodes))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("showDeleted", Some(showDeletedQuery.toParamString(showDeleted))), ("lastUpdatedSince", Some(lastUpdatedSinceQuery.toParamString(lastUpdatedSince))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RegionResponse]](req)

    } yield resp
  }

  def updateRegion(version: BigDecimal, accountId: Long, regionId: Long, regionClass: String, shortName: String, fullName: String, parentIds: String, childrenIds: String, postalCodeIds: String, locations: String, retailerLocationId: Long, visibility: String, categoryIds: String, filterIds: String, start: Long, end: Long, polygon: String, metaData: String, latitude: Double, longitude: Double, versionCode: Integer, root: Boolean, active: Boolean, clearLists: Boolean)(implicit accountIdQuery: QueryParam[Long], regionIdQuery: QueryParam[Long], regionClassQuery: QueryParam[String], shortNameQuery: QueryParam[String], fullNameQuery: QueryParam[String], parentIdsQuery: QueryParam[String], childrenIdsQuery: QueryParam[String], postalCodeIdsQuery: QueryParam[String], locationsQuery: QueryParam[String], retailerLocationIdQuery: QueryParam[Long], visibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], startQuery: QueryParam[Long], endQuery: QueryParam[Long], polygonQuery: QueryParam[String], metaDataQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], versionCodeQuery: QueryParam[Integer], rootQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], clearListsQuery: QueryParam[Boolean]): Task[RegionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RegionResponse] = jsonOf[RegionResponse]

    val path = "/api/{version}/region/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("regionId", Some(regionIdQuery.toParamString(regionId))), ("regionClass", Some(regionClassQuery.toParamString(regionClass))), ("shortName", Some(shortNameQuery.toParamString(shortName))), ("fullName", Some(fullNameQuery.toParamString(fullName))), ("parentIds", Some(parentIdsQuery.toParamString(parentIds))), ("childrenIds", Some(childrenIdsQuery.toParamString(childrenIds))), ("postalCodeIds", Some(postalCodeIdsQuery.toParamString(postalCodeIds))), ("locations", Some(locationsQuery.toParamString(locations))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("start", Some(startQuery.toParamString(start))), ("end", Some(endQuery.toParamString(end))), ("polygon", Some(polygonQuery.toParamString(polygon))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("root", Some(rootQuery.toParamString(root))), ("active", Some(activeQuery.toParamString(active))), ("clearLists", Some(clearListsQuery.toParamString(clearLists))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RegionResponse](req)

    } yield resp
  }

}
