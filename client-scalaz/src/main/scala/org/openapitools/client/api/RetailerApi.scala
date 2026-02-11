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

import org.openapitools.client.api.AccountLoginResponse
import java.io.File
import org.openapitools.client.api.RetailerFullResponse
import org.openapitools.client.api.RetailerResponse
import org.openapitools.client.api.SirqulResponse

object RetailerApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRetailer(host: String, name: String, deviceId: String, accountId: Long, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, country: String, businessPhone: String, businessPhoneExt: String, website: String, email: String, facebookUrl: String, twitterUrl: String, logo: File, logoAssetId: Long, picture1: File, picture1AssetId: Long, picture2: File, picture2AssetId: Long, categoryIds: String, categoryIdsToAdd: String, categoryIdsToRemove: String, filterIds: String, latitude: Double, longitude: Double, metaData: String, searchTags: String, retailerType: String, visibility: String, createDefaultLocation: Boolean, responseFormat: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], websiteQuery: QueryParam[String], emailQuery: QueryParam[String], facebookUrlQuery: QueryParam[String], twitterUrlQuery: QueryParam[String], logoQuery: QueryParam[File], logoAssetIdQuery: QueryParam[Long], picture1Query: QueryParam[File], picture1AssetIdQuery: QueryParam[Long], picture2Query: QueryParam[File], picture2AssetIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], categoryIdsToAddQuery: QueryParam[String], categoryIdsToRemoveQuery: QueryParam[String], filterIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], searchTagsQuery: QueryParam[String], retailerTypeQuery: QueryParam[String], visibilityQuery: QueryParam[String], createDefaultLocationQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[RetailerFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerFullResponse] = jsonOf[RetailerFullResponse]

    val path = "/retailer/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("website", Some(websiteQuery.toParamString(website))), ("email", Some(emailQuery.toParamString(email))), ("facebookUrl", Some(facebookUrlQuery.toParamString(facebookUrl))), ("twitterUrl", Some(twitterUrlQuery.toParamString(twitterUrl))), ("logo", Some(logoQuery.toParamString(logo))), ("logoAssetId", Some(logoAssetIdQuery.toParamString(logoAssetId))), ("picture1", Some(picture1Query.toParamString(picture1))), ("picture1AssetId", Some(picture1AssetIdQuery.toParamString(picture1AssetId))), ("picture2", Some(picture2Query.toParamString(picture2))), ("picture2AssetId", Some(picture2AssetIdQuery.toParamString(picture2AssetId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("categoryIdsToAdd", Some(categoryIdsToAddQuery.toParamString(categoryIdsToAdd))), ("categoryIdsToRemove", Some(categoryIdsToRemoveQuery.toParamString(categoryIdsToRemove))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("retailerType", Some(retailerTypeQuery.toParamString(retailerType))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("createDefaultLocation", Some(createDefaultLocationQuery.toParamString(createDefaultLocation))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerFullResponse](req)

    } yield resp
  }

  def deleteRetailer(host: String, deviceId: String, accountId: Long, retailerId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/retailer/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getRetailer(host: String, retailerId: Long, deviceId: String, accountId: Long, includeCounts: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long], includeCountsQuery: QueryParam[Boolean]): Task[RetailerFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerFullResponse] = jsonOf[RetailerFullResponse]

    val path = "/retailer/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("includeCounts", Some(includeCountsQuery.toParamString(includeCounts))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerFullResponse](req)

    } yield resp
  }

  def getRetailers(host: String, visibility: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, deviceId: String, accountId: Long, q: String, keyword: String, categoryIds: String, filterIds: String, i: Integer, l: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], visibilityQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[RetailerResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RetailerResponse]] = jsonOf[List[RetailerResponse]]

    val path = "/retailer/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RetailerResponse]](req)

    } yield resp
  }

  def retailerLoginCheck(host: String, username: String, password: String, deviceId: String, latitude: Double, longitude: Double, appKey: String)(implicit usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], deviceIdQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], appKeyQuery: QueryParam[String]): Task[AccountLoginResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AccountLoginResponse] = jsonOf[AccountLoginResponse]

    val path = "/retailer/login"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AccountLoginResponse](req)

    } yield resp
  }

  def updateRetailer(host: String, retailerId: Long, deviceId: String, accountId: Long, name: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, country: String, businessPhone: String, businessPhoneExt: String, website: String, email: String, facebookUrl: String, twitterUrl: String, logo: File, logoAssetId: Long, picture1: File, picture1AssetId: Long, picture2: File, picture2AssetId: Long, categoryIds: String, filterIds: String, latitude: Double, longitude: Double, metaData: String, searchTags: String, retailerType: String, visibility: String, active: Boolean, responseFormat: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], websiteQuery: QueryParam[String], emailQuery: QueryParam[String], facebookUrlQuery: QueryParam[String], twitterUrlQuery: QueryParam[String], logoQuery: QueryParam[File], logoAssetIdQuery: QueryParam[Long], picture1Query: QueryParam[File], picture1AssetIdQuery: QueryParam[Long], picture2Query: QueryParam[File], picture2AssetIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], searchTagsQuery: QueryParam[String], retailerTypeQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[RetailerFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerFullResponse] = jsonOf[RetailerFullResponse]

    val path = "/retailer/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("website", Some(websiteQuery.toParamString(website))), ("email", Some(emailQuery.toParamString(email))), ("facebookUrl", Some(facebookUrlQuery.toParamString(facebookUrl))), ("twitterUrl", Some(twitterUrlQuery.toParamString(twitterUrl))), ("logo", Some(logoQuery.toParamString(logo))), ("logoAssetId", Some(logoAssetIdQuery.toParamString(logoAssetId))), ("picture1", Some(picture1Query.toParamString(picture1))), ("picture1AssetId", Some(picture1AssetIdQuery.toParamString(picture1AssetId))), ("picture2", Some(picture2Query.toParamString(picture2))), ("picture2AssetId", Some(picture2AssetIdQuery.toParamString(picture2AssetId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("retailerType", Some(retailerTypeQuery.toParamString(retailerType))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerFullResponse](req)

    } yield resp
  }

}

class HttpServiceRetailerApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRetailer(name: String, deviceId: String, accountId: Long, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, country: String, businessPhone: String, businessPhoneExt: String, website: String, email: String, facebookUrl: String, twitterUrl: String, logo: File, logoAssetId: Long, picture1: File, picture1AssetId: Long, picture2: File, picture2AssetId: Long, categoryIds: String, categoryIdsToAdd: String, categoryIdsToRemove: String, filterIds: String, latitude: Double, longitude: Double, metaData: String, searchTags: String, retailerType: String, visibility: String, createDefaultLocation: Boolean, responseFormat: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], websiteQuery: QueryParam[String], emailQuery: QueryParam[String], facebookUrlQuery: QueryParam[String], twitterUrlQuery: QueryParam[String], logoQuery: QueryParam[File], logoAssetIdQuery: QueryParam[Long], picture1Query: QueryParam[File], picture1AssetIdQuery: QueryParam[Long], picture2Query: QueryParam[File], picture2AssetIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], categoryIdsToAddQuery: QueryParam[String], categoryIdsToRemoveQuery: QueryParam[String], filterIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], searchTagsQuery: QueryParam[String], retailerTypeQuery: QueryParam[String], visibilityQuery: QueryParam[String], createDefaultLocationQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[RetailerFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerFullResponse] = jsonOf[RetailerFullResponse]

    val path = "/retailer/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("website", Some(websiteQuery.toParamString(website))), ("email", Some(emailQuery.toParamString(email))), ("facebookUrl", Some(facebookUrlQuery.toParamString(facebookUrl))), ("twitterUrl", Some(twitterUrlQuery.toParamString(twitterUrl))), ("logo", Some(logoQuery.toParamString(logo))), ("logoAssetId", Some(logoAssetIdQuery.toParamString(logoAssetId))), ("picture1", Some(picture1Query.toParamString(picture1))), ("picture1AssetId", Some(picture1AssetIdQuery.toParamString(picture1AssetId))), ("picture2", Some(picture2Query.toParamString(picture2))), ("picture2AssetId", Some(picture2AssetIdQuery.toParamString(picture2AssetId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("categoryIdsToAdd", Some(categoryIdsToAddQuery.toParamString(categoryIdsToAdd))), ("categoryIdsToRemove", Some(categoryIdsToRemoveQuery.toParamString(categoryIdsToRemove))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("retailerType", Some(retailerTypeQuery.toParamString(retailerType))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("createDefaultLocation", Some(createDefaultLocationQuery.toParamString(createDefaultLocation))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerFullResponse](req)

    } yield resp
  }

  def deleteRetailer(deviceId: String, accountId: Long, retailerId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/retailer/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getRetailer(retailerId: Long, deviceId: String, accountId: Long, includeCounts: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long], includeCountsQuery: QueryParam[Boolean]): Task[RetailerFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerFullResponse] = jsonOf[RetailerFullResponse]

    val path = "/retailer/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("includeCounts", Some(includeCountsQuery.toParamString(includeCounts))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerFullResponse](req)

    } yield resp
  }

  def getRetailers(visibility: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, deviceId: String, accountId: Long, q: String, keyword: String, categoryIds: String, filterIds: String, i: Integer, l: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], visibilityQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[RetailerResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RetailerResponse]] = jsonOf[List[RetailerResponse]]

    val path = "/retailer/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RetailerResponse]](req)

    } yield resp
  }

  def retailerLoginCheck(username: String, password: String, deviceId: String, latitude: Double, longitude: Double, appKey: String)(implicit usernameQuery: QueryParam[String], passwordQuery: QueryParam[String], deviceIdQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], appKeyQuery: QueryParam[String]): Task[AccountLoginResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AccountLoginResponse] = jsonOf[AccountLoginResponse]

    val path = "/retailer/login"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("username", Some(usernameQuery.toParamString(username))), ("password", Some(passwordQuery.toParamString(password))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AccountLoginResponse](req)

    } yield resp
  }

  def updateRetailer(retailerId: Long, deviceId: String, accountId: Long, name: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, country: String, businessPhone: String, businessPhoneExt: String, website: String, email: String, facebookUrl: String, twitterUrl: String, logo: File, logoAssetId: Long, picture1: File, picture1AssetId: Long, picture2: File, picture2AssetId: Long, categoryIds: String, filterIds: String, latitude: Double, longitude: Double, metaData: String, searchTags: String, retailerType: String, visibility: String, active: Boolean, responseFormat: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], websiteQuery: QueryParam[String], emailQuery: QueryParam[String], facebookUrlQuery: QueryParam[String], twitterUrlQuery: QueryParam[String], logoQuery: QueryParam[File], logoAssetIdQuery: QueryParam[Long], picture1Query: QueryParam[File], picture1AssetIdQuery: QueryParam[Long], picture2Query: QueryParam[File], picture2AssetIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], searchTagsQuery: QueryParam[String], retailerTypeQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[RetailerFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerFullResponse] = jsonOf[RetailerFullResponse]

    val path = "/retailer/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("website", Some(websiteQuery.toParamString(website))), ("email", Some(emailQuery.toParamString(email))), ("facebookUrl", Some(facebookUrlQuery.toParamString(facebookUrl))), ("twitterUrl", Some(twitterUrlQuery.toParamString(twitterUrl))), ("logo", Some(logoQuery.toParamString(logo))), ("logoAssetId", Some(logoAssetIdQuery.toParamString(logoAssetId))), ("picture1", Some(picture1Query.toParamString(picture1))), ("picture1AssetId", Some(picture1AssetIdQuery.toParamString(picture1AssetId))), ("picture2", Some(picture2Query.toParamString(picture2))), ("picture2AssetId", Some(picture2AssetIdQuery.toParamString(picture2AssetId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("retailerType", Some(retailerTypeQuery.toParamString(retailerType))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerFullResponse](req)

    } yield resp
  }

}
