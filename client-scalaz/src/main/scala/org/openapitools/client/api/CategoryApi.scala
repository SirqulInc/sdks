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

import org.openapitools.client.api.CategoryResponse
import org.openapitools.client.api.CategoryTreeResponse
import org.openapitools.client.api.SirqulResponse

object CategoryApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def categoryDistanceSearch(host: String, accountId: Long, keyword: String, appKey: String, categoryIds: String, parentCategoryIds: String, rootOnly: Boolean, sortField: String = DISPLAY, responseGroup: String, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true, returnExternal: Boolean, exactMatch: Boolean, `type`: String, externalType: String, minOfferCount: Integer, latitude: Double, longitude: Double, range: Double)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], appKeyQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], parentCategoryIdsQuery: QueryParam[String], rootOnlyQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], responseGroupQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], returnExternalQuery: QueryParam[Boolean], exactMatchQuery: QueryParam[Boolean], `type`Query: QueryParam[String], externalTypeQuery: QueryParam[String], minOfferCountQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], rangeQuery: QueryParam[Double]): Task[List[CategoryResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[CategoryResponse]] = jsonOf[List[CategoryResponse]]

    val path = "/category/distancesearch"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("parentCategoryIds", Some(parentCategoryIdsQuery.toParamString(parentCategoryIds))), ("rootOnly", Some(rootOnlyQuery.toParamString(rootOnly))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("responseGroup", Some(responseGroupQuery.toParamString(responseGroup))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnExternal", Some(returnExternalQuery.toParamString(returnExternal))), ("exactMatch", Some(exactMatchQuery.toParamString(exactMatch))), ("`type`", Some(typeQuery.toParamString(type))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("minOfferCount", Some(minOfferCountQuery.toParamString(minOfferCount))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("range", Some(rangeQuery.toParamString(range))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[CategoryResponse]](req)

    } yield resp
  }

  def createCategory(host: String, accountId: Long, name: String, appKey: String, parentCategoryId: Long, description: String, `type`: String, assetId: Long, externalId: String, externalType: String, externalCategorySlug: String, sqootSlug: String, active: Boolean, metaData: String, searchTags: String)(implicit appKeyQuery: QueryParam[String], accountIdQuery: QueryParam[Long], parentCategoryIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], `type`Query: QueryParam[String], assetIdQuery: QueryParam[Long], externalIdQuery: QueryParam[String], externalTypeQuery: QueryParam[String], externalCategorySlugQuery: QueryParam[String], sqootSlugQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], searchTagsQuery: QueryParam[String]): Task[CategoryTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CategoryTreeResponse] = jsonOf[CategoryTreeResponse]

    val path = "/category/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("parentCategoryId", Some(parentCategoryIdQuery.toParamString(parentCategoryId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("`type`", Some(typeQuery.toParamString(type))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("externalCategorySlug", Some(externalCategorySlugQuery.toParamString(externalCategorySlug))), ("sqootSlug", Some(sqootSlugQuery.toParamString(sqootSlug))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CategoryTreeResponse](req)

    } yield resp
  }

  def deleteCategory(host: String, accountId: Long, categoryId: Long)(implicit accountIdQuery: QueryParam[Long], categoryIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/category/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def duplicateCategory(host: String, accountId: Long, categoryId: Long, appKey: String, parentCategoryId: Long)(implicit appKeyQuery: QueryParam[String], accountIdQuery: QueryParam[Long], categoryIdQuery: QueryParam[Long], parentCategoryIdQuery: QueryParam[Long]): Task[CategoryTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CategoryTreeResponse] = jsonOf[CategoryTreeResponse]

    val path = "/category/duplicate"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("parentCategoryId", Some(parentCategoryIdQuery.toParamString(parentCategoryId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CategoryTreeResponse](req)

    } yield resp
  }

  def getCategory(host: String, categoryId: Long, returnExternal: Boolean = true)(implicit categoryIdQuery: QueryParam[Long], returnExternalQuery: QueryParam[Boolean]): Task[CategoryTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CategoryTreeResponse] = jsonOf[CategoryTreeResponse]

    val path = "/category/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("returnExternal", Some(returnExternalQuery.toParamString(returnExternal))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CategoryTreeResponse](req)

    } yield resp
  }

  def searchCategories(host: String, accountId: Long, keyword: String, appKey: String, categoryId: String, categoryIds: String, parentCategoryIds: String, rootOnly: Boolean, sortField: String = DISPLAY, responseGroup: String, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true, returnExternal: Boolean = true, exactMatch: Boolean = false, `type`: String, externalType: String, excludeExternalType: Boolean, minOfferCount: Integer, searchDepth: Integer = 4, searchMode: String)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], appKeyQuery: QueryParam[String], categoryIdQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], parentCategoryIdsQuery: QueryParam[String], rootOnlyQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], responseGroupQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], returnExternalQuery: QueryParam[Boolean], exactMatchQuery: QueryParam[Boolean], `type`Query: QueryParam[String], externalTypeQuery: QueryParam[String], excludeExternalTypeQuery: QueryParam[Boolean], minOfferCountQuery: QueryParam[Integer], searchDepthQuery: QueryParam[Integer], searchModeQuery: QueryParam[String]): Task[List[CategoryResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[CategoryResponse]] = jsonOf[List[CategoryResponse]]

    val path = "/category/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("parentCategoryIds", Some(parentCategoryIdsQuery.toParamString(parentCategoryIds))), ("rootOnly", Some(rootOnlyQuery.toParamString(rootOnly))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("responseGroup", Some(responseGroupQuery.toParamString(responseGroup))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnExternal", Some(returnExternalQuery.toParamString(returnExternal))), ("exactMatch", Some(exactMatchQuery.toParamString(exactMatch))), ("`type`", Some(typeQuery.toParamString(type))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("excludeExternalType", Some(excludeExternalTypeQuery.toParamString(excludeExternalType))), ("minOfferCount", Some(minOfferCountQuery.toParamString(minOfferCount))), ("searchDepth", Some(searchDepthQuery.toParamString(searchDepth))), ("searchMode", Some(searchModeQuery.toParamString(searchMode))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[CategoryResponse]](req)

    } yield resp
  }

  def updateCategory(host: String, accountId: Long, categoryId: Long, parentCategoryId: Long, name: String, description: String, `type`: String, assetId: Long, externalId: String, externalType: String, externalCategorySlug: String, sqootSlug: String, active: Boolean, metaData: String, searchTags: String)(implicit accountIdQuery: QueryParam[Long], categoryIdQuery: QueryParam[Long], parentCategoryIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], `type`Query: QueryParam[String], assetIdQuery: QueryParam[Long], externalIdQuery: QueryParam[String], externalTypeQuery: QueryParam[String], externalCategorySlugQuery: QueryParam[String], sqootSlugQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], searchTagsQuery: QueryParam[String]): Task[CategoryTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CategoryTreeResponse] = jsonOf[CategoryTreeResponse]

    val path = "/category/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("parentCategoryId", Some(parentCategoryIdQuery.toParamString(parentCategoryId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("`type`", Some(typeQuery.toParamString(type))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("externalCategorySlug", Some(externalCategorySlugQuery.toParamString(externalCategorySlug))), ("sqootSlug", Some(sqootSlugQuery.toParamString(sqootSlug))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CategoryTreeResponse](req)

    } yield resp
  }

}

class HttpServiceCategoryApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def categoryDistanceSearch(accountId: Long, keyword: String, appKey: String, categoryIds: String, parentCategoryIds: String, rootOnly: Boolean, sortField: String = DISPLAY, responseGroup: String, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true, returnExternal: Boolean, exactMatch: Boolean, `type`: String, externalType: String, minOfferCount: Integer, latitude: Double, longitude: Double, range: Double)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], appKeyQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], parentCategoryIdsQuery: QueryParam[String], rootOnlyQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], responseGroupQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], returnExternalQuery: QueryParam[Boolean], exactMatchQuery: QueryParam[Boolean], `type`Query: QueryParam[String], externalTypeQuery: QueryParam[String], minOfferCountQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], rangeQuery: QueryParam[Double]): Task[List[CategoryResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[CategoryResponse]] = jsonOf[List[CategoryResponse]]

    val path = "/category/distancesearch"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("parentCategoryIds", Some(parentCategoryIdsQuery.toParamString(parentCategoryIds))), ("rootOnly", Some(rootOnlyQuery.toParamString(rootOnly))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("responseGroup", Some(responseGroupQuery.toParamString(responseGroup))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnExternal", Some(returnExternalQuery.toParamString(returnExternal))), ("exactMatch", Some(exactMatchQuery.toParamString(exactMatch))), ("`type`", Some(typeQuery.toParamString(type))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("minOfferCount", Some(minOfferCountQuery.toParamString(minOfferCount))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("range", Some(rangeQuery.toParamString(range))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[CategoryResponse]](req)

    } yield resp
  }

  def createCategory(accountId: Long, name: String, appKey: String, parentCategoryId: Long, description: String, `type`: String, assetId: Long, externalId: String, externalType: String, externalCategorySlug: String, sqootSlug: String, active: Boolean, metaData: String, searchTags: String)(implicit appKeyQuery: QueryParam[String], accountIdQuery: QueryParam[Long], parentCategoryIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], `type`Query: QueryParam[String], assetIdQuery: QueryParam[Long], externalIdQuery: QueryParam[String], externalTypeQuery: QueryParam[String], externalCategorySlugQuery: QueryParam[String], sqootSlugQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], searchTagsQuery: QueryParam[String]): Task[CategoryTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CategoryTreeResponse] = jsonOf[CategoryTreeResponse]

    val path = "/category/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("parentCategoryId", Some(parentCategoryIdQuery.toParamString(parentCategoryId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("`type`", Some(typeQuery.toParamString(type))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("externalCategorySlug", Some(externalCategorySlugQuery.toParamString(externalCategorySlug))), ("sqootSlug", Some(sqootSlugQuery.toParamString(sqootSlug))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CategoryTreeResponse](req)

    } yield resp
  }

  def deleteCategory(accountId: Long, categoryId: Long)(implicit accountIdQuery: QueryParam[Long], categoryIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/category/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def duplicateCategory(accountId: Long, categoryId: Long, appKey: String, parentCategoryId: Long)(implicit appKeyQuery: QueryParam[String], accountIdQuery: QueryParam[Long], categoryIdQuery: QueryParam[Long], parentCategoryIdQuery: QueryParam[Long]): Task[CategoryTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CategoryTreeResponse] = jsonOf[CategoryTreeResponse]

    val path = "/category/duplicate"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("parentCategoryId", Some(parentCategoryIdQuery.toParamString(parentCategoryId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CategoryTreeResponse](req)

    } yield resp
  }

  def getCategory(categoryId: Long, returnExternal: Boolean = true)(implicit categoryIdQuery: QueryParam[Long], returnExternalQuery: QueryParam[Boolean]): Task[CategoryTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CategoryTreeResponse] = jsonOf[CategoryTreeResponse]

    val path = "/category/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("returnExternal", Some(returnExternalQuery.toParamString(returnExternal))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CategoryTreeResponse](req)

    } yield resp
  }

  def searchCategories(accountId: Long, keyword: String, appKey: String, categoryId: String, categoryIds: String, parentCategoryIds: String, rootOnly: Boolean, sortField: String = DISPLAY, responseGroup: String, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true, returnExternal: Boolean = true, exactMatch: Boolean = false, `type`: String, externalType: String, excludeExternalType: Boolean, minOfferCount: Integer, searchDepth: Integer = 4, searchMode: String)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], appKeyQuery: QueryParam[String], categoryIdQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], parentCategoryIdsQuery: QueryParam[String], rootOnlyQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], responseGroupQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], returnExternalQuery: QueryParam[Boolean], exactMatchQuery: QueryParam[Boolean], `type`Query: QueryParam[String], externalTypeQuery: QueryParam[String], excludeExternalTypeQuery: QueryParam[Boolean], minOfferCountQuery: QueryParam[Integer], searchDepthQuery: QueryParam[Integer], searchModeQuery: QueryParam[String]): Task[List[CategoryResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[CategoryResponse]] = jsonOf[List[CategoryResponse]]

    val path = "/category/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("parentCategoryIds", Some(parentCategoryIdsQuery.toParamString(parentCategoryIds))), ("rootOnly", Some(rootOnlyQuery.toParamString(rootOnly))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("responseGroup", Some(responseGroupQuery.toParamString(responseGroup))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnExternal", Some(returnExternalQuery.toParamString(returnExternal))), ("exactMatch", Some(exactMatchQuery.toParamString(exactMatch))), ("`type`", Some(typeQuery.toParamString(type))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("excludeExternalType", Some(excludeExternalTypeQuery.toParamString(excludeExternalType))), ("minOfferCount", Some(minOfferCountQuery.toParamString(minOfferCount))), ("searchDepth", Some(searchDepthQuery.toParamString(searchDepth))), ("searchMode", Some(searchModeQuery.toParamString(searchMode))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[CategoryResponse]](req)

    } yield resp
  }

  def updateCategory(accountId: Long, categoryId: Long, parentCategoryId: Long, name: String, description: String, `type`: String, assetId: Long, externalId: String, externalType: String, externalCategorySlug: String, sqootSlug: String, active: Boolean, metaData: String, searchTags: String)(implicit accountIdQuery: QueryParam[Long], categoryIdQuery: QueryParam[Long], parentCategoryIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], `type`Query: QueryParam[String], assetIdQuery: QueryParam[Long], externalIdQuery: QueryParam[String], externalTypeQuery: QueryParam[String], externalCategorySlugQuery: QueryParam[String], sqootSlugQuery: QueryParam[String], activeQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], searchTagsQuery: QueryParam[String]): Task[CategoryTreeResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CategoryTreeResponse] = jsonOf[CategoryTreeResponse]

    val path = "/category/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("categoryId", Some(categoryIdQuery.toParamString(categoryId))), ("parentCategoryId", Some(parentCategoryIdQuery.toParamString(parentCategoryId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("`type`", Some(typeQuery.toParamString(type))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("externalType", Some(externalTypeQuery.toParamString(externalType))), ("externalCategorySlug", Some(externalCategorySlugQuery.toParamString(externalCategorySlug))), ("sqootSlug", Some(sqootSlugQuery.toParamString(sqootSlug))), ("active", Some(activeQuery.toParamString(active))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CategoryTreeResponse](req)

    } yield resp
  }

}
