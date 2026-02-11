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

import java.io.File
import org.openapitools.client.api.RetailerLocationResponse
import org.openapitools.client.api.SirqulResponse

object RetailerLocationApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRetailerLocationConsumer(host: String, appKey: String, name: String, deviceId: String, accountId: Long, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, country: String, businessPhone: String, businessPhoneExt: String, website: String, email: String, detailsHeader: String, detailsBody: String, hours: String, tags: String, logoAssetId: Long, picture1AssetId: Long, picture2AssetId: Long, categoryIds: String, filterIds: String, metaData: String, publicLocation: Boolean, active: Boolean, locationType: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], websiteQuery: QueryParam[String], emailQuery: QueryParam[String], detailsHeaderQuery: QueryParam[String], detailsBodyQuery: QueryParam[String], hoursQuery: QueryParam[String], tagsQuery: QueryParam[String], logoAssetIdQuery: QueryParam[Long], picture1AssetIdQuery: QueryParam[Long], picture2AssetIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], metaDataQuery: QueryParam[String], publicLocationQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], locationTypeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[RetailerLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerLocationResponse] = jsonOf[RetailerLocationResponse]

    val path = "/location/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("website", Some(websiteQuery.toParamString(website))), ("email", Some(emailQuery.toParamString(email))), ("detailsHeader", Some(detailsHeaderQuery.toParamString(detailsHeader))), ("detailsBody", Some(detailsBodyQuery.toParamString(detailsBody))), ("hours", Some(hoursQuery.toParamString(hours))), ("tags", Some(tagsQuery.toParamString(tags))), ("logoAssetId", Some(logoAssetIdQuery.toParamString(logoAssetId))), ("picture1AssetId", Some(picture1AssetIdQuery.toParamString(picture1AssetId))), ("picture2AssetId", Some(picture2AssetIdQuery.toParamString(picture2AssetId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("publicLocation", Some(publicLocationQuery.toParamString(publicLocation))), ("active", Some(activeQuery.toParamString(active))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerLocationResponse](req)

    } yield resp
  }

  def createRetailerLocations(host: String, retailerId: Long, name: String, streetAddress: String, city: String, state: String, postalCode: String, deviceId: String, accountId: Long, streetAddress2: String, country: String, businessPhone: String, businessPhoneExt: String, website: String, email: String, internalId: String, detailsHeader: String, detailsBody: String, hours: String, logo: File, logoAssetId: Long, picture1: File, picture1AssetId: Long, picture2: File, picture2AssetId: Long, categoryIds: String, filterIds: String, latitude: Double, longitude: Double, building: String, googlePlaceId: String, yelpId: String, active: Boolean, publicLocation: Boolean, locationType: String, audienceIds: String, audienceIdsToAdd: String, audienceIdsToRemove: String, responseFormat: String, responseIncludes: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], websiteQuery: QueryParam[String], emailQuery: QueryParam[String], internalIdQuery: QueryParam[String], detailsHeaderQuery: QueryParam[String], detailsBodyQuery: QueryParam[String], hoursQuery: QueryParam[String], logoQuery: QueryParam[File], logoAssetIdQuery: QueryParam[Long], picture1Query: QueryParam[File], picture1AssetIdQuery: QueryParam[Long], picture2Query: QueryParam[File], picture2AssetIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], buildingQuery: QueryParam[String], googlePlaceIdQuery: QueryParam[String], yelpIdQuery: QueryParam[String], activeQuery: QueryParam[Boolean], publicLocationQuery: QueryParam[Boolean], locationTypeQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String], responseFormatQuery: QueryParam[String], responseIncludesQuery: QueryParam[String]): Task[RetailerLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerLocationResponse] = jsonOf[RetailerLocationResponse]

    val path = "/retailer/location/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("website", Some(websiteQuery.toParamString(website))), ("email", Some(emailQuery.toParamString(email))), ("internalId", Some(internalIdQuery.toParamString(internalId))), ("detailsHeader", Some(detailsHeaderQuery.toParamString(detailsHeader))), ("detailsBody", Some(detailsBodyQuery.toParamString(detailsBody))), ("hours", Some(hoursQuery.toParamString(hours))), ("logo", Some(logoQuery.toParamString(logo))), ("logoAssetId", Some(logoAssetIdQuery.toParamString(logoAssetId))), ("picture1", Some(picture1Query.toParamString(picture1))), ("picture1AssetId", Some(picture1AssetIdQuery.toParamString(picture1AssetId))), ("picture2", Some(picture2Query.toParamString(picture2))), ("picture2AssetId", Some(picture2AssetIdQuery.toParamString(picture2AssetId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("building", Some(buildingQuery.toParamString(building))), ("googlePlaceId", Some(googlePlaceIdQuery.toParamString(googlePlaceId))), ("yelpId", Some(yelpIdQuery.toParamString(yelpId))), ("active", Some(activeQuery.toParamString(active))), ("publicLocation", Some(publicLocationQuery.toParamString(publicLocation))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))), ("responseIncludes", Some(responseIncludesQuery.toParamString(responseIncludes))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerLocationResponse](req)

    } yield resp
  }

  def deleteRetailerLocation(host: String, deviceId: String, accountId: Long, retailerLocationId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/retailer/location/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getRetailerLocation(host: String, retailerLocationId: Long, deviceId: String, accountId: Long, retailerLocationToken: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], retailerLocationTokenQuery: QueryParam[String]): Task[RetailerLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerLocationResponse] = jsonOf[RetailerLocationResponse]

    val path = "/retailer/location/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("retailerLocationToken", Some(retailerLocationTokenQuery.toParamString(retailerLocationToken))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerLocationResponse](req)

    } yield resp
  }

  def getRetailerLocationConsumer(host: String, retailerLocationId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long]): Task[RetailerLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerLocationResponse] = jsonOf[RetailerLocationResponse]

    val path = "/location/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerLocationResponse](req)

    } yield resp
  }

  def indexedRetailerLocationDistanceSearch(host: String, latitude: Double, longitude: Double, searchRange: Double, start: Integer, limit: Integer, accountId: Long, address: String, hasOffers: Boolean, categories: String, filters: String, audiences: String, retailerIds: String, retailerLocationIds: String, tags: String, locationType: String, sortField: String, descending: Boolean, q: String, keyword: String, keywordOperator: String, searchExpression: String, distanceUnit: String, returnFavorited: Boolean, returnRetailer: Boolean, returnAssets: Boolean, returnOffers: Boolean, returnCategories: Boolean, returnFilters: Boolean, returnAudiences: Boolean, returnQrCode: Boolean, returnExternalCategoryData: Boolean, includeFavorite: Boolean, includeLiked: Boolean, includeRating: Boolean)(implicit latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], accountIdQuery: QueryParam[Long], addressQuery: QueryParam[String], searchRangeQuery: QueryParam[Double], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], hasOffersQuery: QueryParam[Boolean], categoriesQuery: QueryParam[String], filtersQuery: QueryParam[String], audiencesQuery: QueryParam[String], retailerIdsQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], tagsQuery: QueryParam[String], locationTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], qQuery: QueryParam[String], keywordQuery: QueryParam[String], keywordOperatorQuery: QueryParam[String], searchExpressionQuery: QueryParam[String], distanceUnitQuery: QueryParam[String], returnFavoritedQuery: QueryParam[Boolean], returnRetailerQuery: QueryParam[Boolean], returnAssetsQuery: QueryParam[Boolean], returnOffersQuery: QueryParam[Boolean], returnCategoriesQuery: QueryParam[Boolean], returnFiltersQuery: QueryParam[Boolean], returnAudiencesQuery: QueryParam[Boolean], returnQrCodeQuery: QueryParam[Boolean], returnExternalCategoryDataQuery: QueryParam[Boolean], includeFavoriteQuery: QueryParam[Boolean], includeLikedQuery: QueryParam[Boolean], includeRatingQuery: QueryParam[Boolean]): Task[List[RetailerLocationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RetailerLocationResponse]] = jsonOf[List[RetailerLocationResponse]]

    val path = "/retailer/location/idistancesearch"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("address", Some(addressQuery.toParamString(address))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("hasOffers", Some(hasOffersQuery.toParamString(hasOffers))), ("categories", Some(categoriesQuery.toParamString(categories))), ("filters", Some(filtersQuery.toParamString(filters))), ("audiences", Some(audiencesQuery.toParamString(audiences))), ("retailerIds", Some(retailerIdsQuery.toParamString(retailerIds))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("tags", Some(tagsQuery.toParamString(tags))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("keywordOperator", Some(keywordOperatorQuery.toParamString(keywordOperator))), ("searchExpression", Some(searchExpressionQuery.toParamString(searchExpression))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))), ("returnFavorited", Some(returnFavoritedQuery.toParamString(returnFavorited))), ("returnRetailer", Some(returnRetailerQuery.toParamString(returnRetailer))), ("returnAssets", Some(returnAssetsQuery.toParamString(returnAssets))), ("returnOffers", Some(returnOffersQuery.toParamString(returnOffers))), ("returnCategories", Some(returnCategoriesQuery.toParamString(returnCategories))), ("returnFilters", Some(returnFiltersQuery.toParamString(returnFilters))), ("returnAudiences", Some(returnAudiencesQuery.toParamString(returnAudiences))), ("returnQrCode", Some(returnQrCodeQuery.toParamString(returnQrCode))), ("returnExternalCategoryData", Some(returnExternalCategoryDataQuery.toParamString(returnExternalCategoryData))), ("includeFavorite", Some(includeFavoriteQuery.toParamString(includeFavorite))), ("includeLiked", Some(includeLikedQuery.toParamString(includeLiked))), ("includeRating", Some(includeRatingQuery.toParamString(includeRating))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RetailerLocationResponse]](req)

    } yield resp
  }

  def indexedRetailerLocationSearch(host: String, accountId: Long, start: Integer, limit: Integer, hasOffers: Boolean, categories: String, filters: String, audiences: String, retailerIds: String, retailerLocationIds: String, tags: String, locationType: String, sortField: String, descending: Boolean, q: String, keyword: String, keywordOperator: String, searchExpression: String, returnRetailer: Boolean, returnAssets: Boolean, returnOffers: Boolean, returnCategories: Boolean, returnFilters: Boolean, returnAudiences: Boolean, returnQrCode: Boolean, returnExternalCategoryData: Boolean, includeFavorite: Boolean, includeLiked: Boolean, includeRating: Boolean)(implicit accountIdQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], hasOffersQuery: QueryParam[Boolean], categoriesQuery: QueryParam[String], filtersQuery: QueryParam[String], audiencesQuery: QueryParam[String], retailerIdsQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], tagsQuery: QueryParam[String], locationTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], qQuery: QueryParam[String], keywordQuery: QueryParam[String], keywordOperatorQuery: QueryParam[String], searchExpressionQuery: QueryParam[String], returnRetailerQuery: QueryParam[Boolean], returnAssetsQuery: QueryParam[Boolean], returnOffersQuery: QueryParam[Boolean], returnCategoriesQuery: QueryParam[Boolean], returnFiltersQuery: QueryParam[Boolean], returnAudiencesQuery: QueryParam[Boolean], returnQrCodeQuery: QueryParam[Boolean], returnExternalCategoryDataQuery: QueryParam[Boolean], includeFavoriteQuery: QueryParam[Boolean], includeLikedQuery: QueryParam[Boolean], includeRatingQuery: QueryParam[Boolean]): Task[List[RetailerLocationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RetailerLocationResponse]] = jsonOf[List[RetailerLocationResponse]]

    val path = "/retailer/location/isearch"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("hasOffers", Some(hasOffersQuery.toParamString(hasOffers))), ("categories", Some(categoriesQuery.toParamString(categories))), ("filters", Some(filtersQuery.toParamString(filters))), ("audiences", Some(audiencesQuery.toParamString(audiences))), ("retailerIds", Some(retailerIdsQuery.toParamString(retailerIds))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("tags", Some(tagsQuery.toParamString(tags))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("keywordOperator", Some(keywordOperatorQuery.toParamString(keywordOperator))), ("searchExpression", Some(searchExpressionQuery.toParamString(searchExpression))), ("returnRetailer", Some(returnRetailerQuery.toParamString(returnRetailer))), ("returnAssets", Some(returnAssetsQuery.toParamString(returnAssets))), ("returnOffers", Some(returnOffersQuery.toParamString(returnOffers))), ("returnCategories", Some(returnCategoriesQuery.toParamString(returnCategories))), ("returnFilters", Some(returnFiltersQuery.toParamString(returnFilters))), ("returnAudiences", Some(returnAudiencesQuery.toParamString(returnAudiences))), ("returnQrCode", Some(returnQrCodeQuery.toParamString(returnQrCode))), ("returnExternalCategoryData", Some(returnExternalCategoryDataQuery.toParamString(returnExternalCategoryData))), ("includeFavorite", Some(includeFavoriteQuery.toParamString(includeFavorite))), ("includeLiked", Some(includeLikedQuery.toParamString(includeLiked))), ("includeRating", Some(includeRatingQuery.toParamString(includeRating))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RetailerLocationResponse]](req)

    } yield resp
  }

  def searchRetailerLocations(host: String, deviceId: String, accountId: Long, q: String, keyword: String, retailerIds: String, retailerLocationIds: String, locationType: String, sortField: String, descending: Boolean, i: Integer, start: Integer, l: Integer, limit: Integer, showPublicLocations: Boolean, activeOnly: Boolean, returnRetailer: Boolean, returnAssets: Boolean, returnOffers: Boolean, returnCategories: Boolean, returnFilters: Boolean, returnAudiences: Boolean, returnQrCode: Boolean, includeFavorite: Boolean, includeLiked: Boolean, includeRating: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], retailerIdsQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], locationTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], showPublicLocationsQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], returnRetailerQuery: QueryParam[Boolean], returnAssetsQuery: QueryParam[Boolean], returnOffersQuery: QueryParam[Boolean], returnCategoriesQuery: QueryParam[Boolean], returnFiltersQuery: QueryParam[Boolean], returnAudiencesQuery: QueryParam[Boolean], returnQrCodeQuery: QueryParam[Boolean], includeFavoriteQuery: QueryParam[Boolean], includeLikedQuery: QueryParam[Boolean], includeRatingQuery: QueryParam[Boolean]): Task[List[RetailerLocationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RetailerLocationResponse]] = jsonOf[List[RetailerLocationResponse]]

    val path = "/retailer/location/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerIds", Some(retailerIdsQuery.toParamString(retailerIds))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("showPublicLocations", Some(showPublicLocationsQuery.toParamString(showPublicLocations))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnRetailer", Some(returnRetailerQuery.toParamString(returnRetailer))), ("returnAssets", Some(returnAssetsQuery.toParamString(returnAssets))), ("returnOffers", Some(returnOffersQuery.toParamString(returnOffers))), ("returnCategories", Some(returnCategoriesQuery.toParamString(returnCategories))), ("returnFilters", Some(returnFiltersQuery.toParamString(returnFilters))), ("returnAudiences", Some(returnAudiencesQuery.toParamString(returnAudiences))), ("returnQrCode", Some(returnQrCodeQuery.toParamString(returnQrCode))), ("includeFavorite", Some(includeFavoriteQuery.toParamString(includeFavorite))), ("includeLiked", Some(includeLikedQuery.toParamString(includeLiked))), ("includeRating", Some(includeRatingQuery.toParamString(includeRating))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RetailerLocationResponse]](req)

    } yield resp
  }

  def updateRetailerLocations(host: String, retailerLocationId: Long, deviceId: String, accountId: Long, name: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, country: String, businessPhone: String, businessPhoneExt: String, website: String, email: String, internalId: String, detailsHeader: String, detailsBody: String, hours: String, logo: File, logoAssetId: Long, picture1: File, picture1AssetId: Long, picture2: File, picture2AssetId: Long, categoryIds: String, filterIds: String, latitude: Double, longitude: Double, building: String, googlePlaceId: String, yelpId: String, metaData: String, paymentProvider: String, active: Boolean, publicLocation: Boolean, locationType: String, audienceIds: String, audienceIdsToAdd: String, audienceIdsToRemove: String, responseFormat: String, tags: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], websiteQuery: QueryParam[String], emailQuery: QueryParam[String], internalIdQuery: QueryParam[String], detailsHeaderQuery: QueryParam[String], detailsBodyQuery: QueryParam[String], hoursQuery: QueryParam[String], logoQuery: QueryParam[File], logoAssetIdQuery: QueryParam[Long], picture1Query: QueryParam[File], picture1AssetIdQuery: QueryParam[Long], picture2Query: QueryParam[File], picture2AssetIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], buildingQuery: QueryParam[String], googlePlaceIdQuery: QueryParam[String], yelpIdQuery: QueryParam[String], metaDataQuery: QueryParam[String], paymentProviderQuery: QueryParam[String], activeQuery: QueryParam[Boolean], publicLocationQuery: QueryParam[Boolean], locationTypeQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String], responseFormatQuery: QueryParam[String], tagsQuery: QueryParam[String]): Task[RetailerLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerLocationResponse] = jsonOf[RetailerLocationResponse]

    val path = "/retailer/location/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("website", Some(websiteQuery.toParamString(website))), ("email", Some(emailQuery.toParamString(email))), ("internalId", Some(internalIdQuery.toParamString(internalId))), ("detailsHeader", Some(detailsHeaderQuery.toParamString(detailsHeader))), ("detailsBody", Some(detailsBodyQuery.toParamString(detailsBody))), ("hours", Some(hoursQuery.toParamString(hours))), ("logo", Some(logoQuery.toParamString(logo))), ("logoAssetId", Some(logoAssetIdQuery.toParamString(logoAssetId))), ("picture1", Some(picture1Query.toParamString(picture1))), ("picture1AssetId", Some(picture1AssetIdQuery.toParamString(picture1AssetId))), ("picture2", Some(picture2Query.toParamString(picture2))), ("picture2AssetId", Some(picture2AssetIdQuery.toParamString(picture2AssetId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("building", Some(buildingQuery.toParamString(building))), ("googlePlaceId", Some(googlePlaceIdQuery.toParamString(googlePlaceId))), ("yelpId", Some(yelpIdQuery.toParamString(yelpId))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("paymentProvider", Some(paymentProviderQuery.toParamString(paymentProvider))), ("active", Some(activeQuery.toParamString(active))), ("publicLocation", Some(publicLocationQuery.toParamString(publicLocation))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))), ("tags", Some(tagsQuery.toParamString(tags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerLocationResponse](req)

    } yield resp
  }

}

class HttpServiceRetailerLocationApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRetailerLocationConsumer(appKey: String, name: String, deviceId: String, accountId: Long, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, country: String, businessPhone: String, businessPhoneExt: String, website: String, email: String, detailsHeader: String, detailsBody: String, hours: String, tags: String, logoAssetId: Long, picture1AssetId: Long, picture2AssetId: Long, categoryIds: String, filterIds: String, metaData: String, publicLocation: Boolean, active: Boolean, locationType: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], websiteQuery: QueryParam[String], emailQuery: QueryParam[String], detailsHeaderQuery: QueryParam[String], detailsBodyQuery: QueryParam[String], hoursQuery: QueryParam[String], tagsQuery: QueryParam[String], logoAssetIdQuery: QueryParam[Long], picture1AssetIdQuery: QueryParam[Long], picture2AssetIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], metaDataQuery: QueryParam[String], publicLocationQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], locationTypeQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[RetailerLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerLocationResponse] = jsonOf[RetailerLocationResponse]

    val path = "/location/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("website", Some(websiteQuery.toParamString(website))), ("email", Some(emailQuery.toParamString(email))), ("detailsHeader", Some(detailsHeaderQuery.toParamString(detailsHeader))), ("detailsBody", Some(detailsBodyQuery.toParamString(detailsBody))), ("hours", Some(hoursQuery.toParamString(hours))), ("tags", Some(tagsQuery.toParamString(tags))), ("logoAssetId", Some(logoAssetIdQuery.toParamString(logoAssetId))), ("picture1AssetId", Some(picture1AssetIdQuery.toParamString(picture1AssetId))), ("picture2AssetId", Some(picture2AssetIdQuery.toParamString(picture2AssetId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("publicLocation", Some(publicLocationQuery.toParamString(publicLocation))), ("active", Some(activeQuery.toParamString(active))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerLocationResponse](req)

    } yield resp
  }

  def createRetailerLocations(retailerId: Long, name: String, streetAddress: String, city: String, state: String, postalCode: String, deviceId: String, accountId: Long, streetAddress2: String, country: String, businessPhone: String, businessPhoneExt: String, website: String, email: String, internalId: String, detailsHeader: String, detailsBody: String, hours: String, logo: File, logoAssetId: Long, picture1: File, picture1AssetId: Long, picture2: File, picture2AssetId: Long, categoryIds: String, filterIds: String, latitude: Double, longitude: Double, building: String, googlePlaceId: String, yelpId: String, active: Boolean, publicLocation: Boolean, locationType: String, audienceIds: String, audienceIdsToAdd: String, audienceIdsToRemove: String, responseFormat: String, responseIncludes: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], websiteQuery: QueryParam[String], emailQuery: QueryParam[String], internalIdQuery: QueryParam[String], detailsHeaderQuery: QueryParam[String], detailsBodyQuery: QueryParam[String], hoursQuery: QueryParam[String], logoQuery: QueryParam[File], logoAssetIdQuery: QueryParam[Long], picture1Query: QueryParam[File], picture1AssetIdQuery: QueryParam[Long], picture2Query: QueryParam[File], picture2AssetIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], buildingQuery: QueryParam[String], googlePlaceIdQuery: QueryParam[String], yelpIdQuery: QueryParam[String], activeQuery: QueryParam[Boolean], publicLocationQuery: QueryParam[Boolean], locationTypeQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String], responseFormatQuery: QueryParam[String], responseIncludesQuery: QueryParam[String]): Task[RetailerLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerLocationResponse] = jsonOf[RetailerLocationResponse]

    val path = "/retailer/location/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("website", Some(websiteQuery.toParamString(website))), ("email", Some(emailQuery.toParamString(email))), ("internalId", Some(internalIdQuery.toParamString(internalId))), ("detailsHeader", Some(detailsHeaderQuery.toParamString(detailsHeader))), ("detailsBody", Some(detailsBodyQuery.toParamString(detailsBody))), ("hours", Some(hoursQuery.toParamString(hours))), ("logo", Some(logoQuery.toParamString(logo))), ("logoAssetId", Some(logoAssetIdQuery.toParamString(logoAssetId))), ("picture1", Some(picture1Query.toParamString(picture1))), ("picture1AssetId", Some(picture1AssetIdQuery.toParamString(picture1AssetId))), ("picture2", Some(picture2Query.toParamString(picture2))), ("picture2AssetId", Some(picture2AssetIdQuery.toParamString(picture2AssetId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("building", Some(buildingQuery.toParamString(building))), ("googlePlaceId", Some(googlePlaceIdQuery.toParamString(googlePlaceId))), ("yelpId", Some(yelpIdQuery.toParamString(yelpId))), ("active", Some(activeQuery.toParamString(active))), ("publicLocation", Some(publicLocationQuery.toParamString(publicLocation))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))), ("responseIncludes", Some(responseIncludesQuery.toParamString(responseIncludes))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerLocationResponse](req)

    } yield resp
  }

  def deleteRetailerLocation(deviceId: String, accountId: Long, retailerLocationId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/retailer/location/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getRetailerLocation(retailerLocationId: Long, deviceId: String, accountId: Long, retailerLocationToken: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], retailerLocationTokenQuery: QueryParam[String]): Task[RetailerLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerLocationResponse] = jsonOf[RetailerLocationResponse]

    val path = "/retailer/location/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("retailerLocationToken", Some(retailerLocationTokenQuery.toParamString(retailerLocationToken))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerLocationResponse](req)

    } yield resp
  }

  def getRetailerLocationConsumer(retailerLocationId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long]): Task[RetailerLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerLocationResponse] = jsonOf[RetailerLocationResponse]

    val path = "/location/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerLocationResponse](req)

    } yield resp
  }

  def indexedRetailerLocationDistanceSearch(latitude: Double, longitude: Double, searchRange: Double, start: Integer, limit: Integer, accountId: Long, address: String, hasOffers: Boolean, categories: String, filters: String, audiences: String, retailerIds: String, retailerLocationIds: String, tags: String, locationType: String, sortField: String, descending: Boolean, q: String, keyword: String, keywordOperator: String, searchExpression: String, distanceUnit: String, returnFavorited: Boolean, returnRetailer: Boolean, returnAssets: Boolean, returnOffers: Boolean, returnCategories: Boolean, returnFilters: Boolean, returnAudiences: Boolean, returnQrCode: Boolean, returnExternalCategoryData: Boolean, includeFavorite: Boolean, includeLiked: Boolean, includeRating: Boolean)(implicit latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], accountIdQuery: QueryParam[Long], addressQuery: QueryParam[String], searchRangeQuery: QueryParam[Double], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], hasOffersQuery: QueryParam[Boolean], categoriesQuery: QueryParam[String], filtersQuery: QueryParam[String], audiencesQuery: QueryParam[String], retailerIdsQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], tagsQuery: QueryParam[String], locationTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], qQuery: QueryParam[String], keywordQuery: QueryParam[String], keywordOperatorQuery: QueryParam[String], searchExpressionQuery: QueryParam[String], distanceUnitQuery: QueryParam[String], returnFavoritedQuery: QueryParam[Boolean], returnRetailerQuery: QueryParam[Boolean], returnAssetsQuery: QueryParam[Boolean], returnOffersQuery: QueryParam[Boolean], returnCategoriesQuery: QueryParam[Boolean], returnFiltersQuery: QueryParam[Boolean], returnAudiencesQuery: QueryParam[Boolean], returnQrCodeQuery: QueryParam[Boolean], returnExternalCategoryDataQuery: QueryParam[Boolean], includeFavoriteQuery: QueryParam[Boolean], includeLikedQuery: QueryParam[Boolean], includeRatingQuery: QueryParam[Boolean]): Task[List[RetailerLocationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RetailerLocationResponse]] = jsonOf[List[RetailerLocationResponse]]

    val path = "/retailer/location/idistancesearch"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("address", Some(addressQuery.toParamString(address))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("hasOffers", Some(hasOffersQuery.toParamString(hasOffers))), ("categories", Some(categoriesQuery.toParamString(categories))), ("filters", Some(filtersQuery.toParamString(filters))), ("audiences", Some(audiencesQuery.toParamString(audiences))), ("retailerIds", Some(retailerIdsQuery.toParamString(retailerIds))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("tags", Some(tagsQuery.toParamString(tags))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("keywordOperator", Some(keywordOperatorQuery.toParamString(keywordOperator))), ("searchExpression", Some(searchExpressionQuery.toParamString(searchExpression))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))), ("returnFavorited", Some(returnFavoritedQuery.toParamString(returnFavorited))), ("returnRetailer", Some(returnRetailerQuery.toParamString(returnRetailer))), ("returnAssets", Some(returnAssetsQuery.toParamString(returnAssets))), ("returnOffers", Some(returnOffersQuery.toParamString(returnOffers))), ("returnCategories", Some(returnCategoriesQuery.toParamString(returnCategories))), ("returnFilters", Some(returnFiltersQuery.toParamString(returnFilters))), ("returnAudiences", Some(returnAudiencesQuery.toParamString(returnAudiences))), ("returnQrCode", Some(returnQrCodeQuery.toParamString(returnQrCode))), ("returnExternalCategoryData", Some(returnExternalCategoryDataQuery.toParamString(returnExternalCategoryData))), ("includeFavorite", Some(includeFavoriteQuery.toParamString(includeFavorite))), ("includeLiked", Some(includeLikedQuery.toParamString(includeLiked))), ("includeRating", Some(includeRatingQuery.toParamString(includeRating))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RetailerLocationResponse]](req)

    } yield resp
  }

  def indexedRetailerLocationSearch(accountId: Long, start: Integer, limit: Integer, hasOffers: Boolean, categories: String, filters: String, audiences: String, retailerIds: String, retailerLocationIds: String, tags: String, locationType: String, sortField: String, descending: Boolean, q: String, keyword: String, keywordOperator: String, searchExpression: String, returnRetailer: Boolean, returnAssets: Boolean, returnOffers: Boolean, returnCategories: Boolean, returnFilters: Boolean, returnAudiences: Boolean, returnQrCode: Boolean, returnExternalCategoryData: Boolean, includeFavorite: Boolean, includeLiked: Boolean, includeRating: Boolean)(implicit accountIdQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], hasOffersQuery: QueryParam[Boolean], categoriesQuery: QueryParam[String], filtersQuery: QueryParam[String], audiencesQuery: QueryParam[String], retailerIdsQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], tagsQuery: QueryParam[String], locationTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], qQuery: QueryParam[String], keywordQuery: QueryParam[String], keywordOperatorQuery: QueryParam[String], searchExpressionQuery: QueryParam[String], returnRetailerQuery: QueryParam[Boolean], returnAssetsQuery: QueryParam[Boolean], returnOffersQuery: QueryParam[Boolean], returnCategoriesQuery: QueryParam[Boolean], returnFiltersQuery: QueryParam[Boolean], returnAudiencesQuery: QueryParam[Boolean], returnQrCodeQuery: QueryParam[Boolean], returnExternalCategoryDataQuery: QueryParam[Boolean], includeFavoriteQuery: QueryParam[Boolean], includeLikedQuery: QueryParam[Boolean], includeRatingQuery: QueryParam[Boolean]): Task[List[RetailerLocationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RetailerLocationResponse]] = jsonOf[List[RetailerLocationResponse]]

    val path = "/retailer/location/isearch"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("hasOffers", Some(hasOffersQuery.toParamString(hasOffers))), ("categories", Some(categoriesQuery.toParamString(categories))), ("filters", Some(filtersQuery.toParamString(filters))), ("audiences", Some(audiencesQuery.toParamString(audiences))), ("retailerIds", Some(retailerIdsQuery.toParamString(retailerIds))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("tags", Some(tagsQuery.toParamString(tags))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("keywordOperator", Some(keywordOperatorQuery.toParamString(keywordOperator))), ("searchExpression", Some(searchExpressionQuery.toParamString(searchExpression))), ("returnRetailer", Some(returnRetailerQuery.toParamString(returnRetailer))), ("returnAssets", Some(returnAssetsQuery.toParamString(returnAssets))), ("returnOffers", Some(returnOffersQuery.toParamString(returnOffers))), ("returnCategories", Some(returnCategoriesQuery.toParamString(returnCategories))), ("returnFilters", Some(returnFiltersQuery.toParamString(returnFilters))), ("returnAudiences", Some(returnAudiencesQuery.toParamString(returnAudiences))), ("returnQrCode", Some(returnQrCodeQuery.toParamString(returnQrCode))), ("returnExternalCategoryData", Some(returnExternalCategoryDataQuery.toParamString(returnExternalCategoryData))), ("includeFavorite", Some(includeFavoriteQuery.toParamString(includeFavorite))), ("includeLiked", Some(includeLikedQuery.toParamString(includeLiked))), ("includeRating", Some(includeRatingQuery.toParamString(includeRating))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RetailerLocationResponse]](req)

    } yield resp
  }

  def searchRetailerLocations(deviceId: String, accountId: Long, q: String, keyword: String, retailerIds: String, retailerLocationIds: String, locationType: String, sortField: String, descending: Boolean, i: Integer, start: Integer, l: Integer, limit: Integer, showPublicLocations: Boolean, activeOnly: Boolean, returnRetailer: Boolean, returnAssets: Boolean, returnOffers: Boolean, returnCategories: Boolean, returnFilters: Boolean, returnAudiences: Boolean, returnQrCode: Boolean, includeFavorite: Boolean, includeLiked: Boolean, includeRating: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], retailerIdsQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], locationTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], showPublicLocationsQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], returnRetailerQuery: QueryParam[Boolean], returnAssetsQuery: QueryParam[Boolean], returnOffersQuery: QueryParam[Boolean], returnCategoriesQuery: QueryParam[Boolean], returnFiltersQuery: QueryParam[Boolean], returnAudiencesQuery: QueryParam[Boolean], returnQrCodeQuery: QueryParam[Boolean], includeFavoriteQuery: QueryParam[Boolean], includeLikedQuery: QueryParam[Boolean], includeRatingQuery: QueryParam[Boolean]): Task[List[RetailerLocationResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[RetailerLocationResponse]] = jsonOf[List[RetailerLocationResponse]]

    val path = "/retailer/location/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerIds", Some(retailerIdsQuery.toParamString(retailerIds))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("showPublicLocations", Some(showPublicLocationsQuery.toParamString(showPublicLocations))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnRetailer", Some(returnRetailerQuery.toParamString(returnRetailer))), ("returnAssets", Some(returnAssetsQuery.toParamString(returnAssets))), ("returnOffers", Some(returnOffersQuery.toParamString(returnOffers))), ("returnCategories", Some(returnCategoriesQuery.toParamString(returnCategories))), ("returnFilters", Some(returnFiltersQuery.toParamString(returnFilters))), ("returnAudiences", Some(returnAudiencesQuery.toParamString(returnAudiences))), ("returnQrCode", Some(returnQrCodeQuery.toParamString(returnQrCode))), ("includeFavorite", Some(includeFavoriteQuery.toParamString(includeFavorite))), ("includeLiked", Some(includeLikedQuery.toParamString(includeLiked))), ("includeRating", Some(includeRatingQuery.toParamString(includeRating))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[RetailerLocationResponse]](req)

    } yield resp
  }

  def updateRetailerLocations(retailerLocationId: Long, deviceId: String, accountId: Long, name: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, country: String, businessPhone: String, businessPhoneExt: String, website: String, email: String, internalId: String, detailsHeader: String, detailsBody: String, hours: String, logo: File, logoAssetId: Long, picture1: File, picture1AssetId: Long, picture2: File, picture2AssetId: Long, categoryIds: String, filterIds: String, latitude: Double, longitude: Double, building: String, googlePlaceId: String, yelpId: String, metaData: String, paymentProvider: String, active: Boolean, publicLocation: Boolean, locationType: String, audienceIds: String, audienceIdsToAdd: String, audienceIdsToRemove: String, responseFormat: String, tags: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], nameQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], countryQuery: QueryParam[String], businessPhoneQuery: QueryParam[String], businessPhoneExtQuery: QueryParam[String], websiteQuery: QueryParam[String], emailQuery: QueryParam[String], internalIdQuery: QueryParam[String], detailsHeaderQuery: QueryParam[String], detailsBodyQuery: QueryParam[String], hoursQuery: QueryParam[String], logoQuery: QueryParam[File], logoAssetIdQuery: QueryParam[Long], picture1Query: QueryParam[File], picture1AssetIdQuery: QueryParam[Long], picture2Query: QueryParam[File], picture2AssetIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], buildingQuery: QueryParam[String], googlePlaceIdQuery: QueryParam[String], yelpIdQuery: QueryParam[String], metaDataQuery: QueryParam[String], paymentProviderQuery: QueryParam[String], activeQuery: QueryParam[Boolean], publicLocationQuery: QueryParam[Boolean], locationTypeQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String], responseFormatQuery: QueryParam[String], tagsQuery: QueryParam[String]): Task[RetailerLocationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerLocationResponse] = jsonOf[RetailerLocationResponse]

    val path = "/retailer/location/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("name", Some(nameQuery.toParamString(name))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("country", Some(countryQuery.toParamString(country))), ("businessPhone", Some(businessPhoneQuery.toParamString(businessPhone))), ("businessPhoneExt", Some(businessPhoneExtQuery.toParamString(businessPhoneExt))), ("website", Some(websiteQuery.toParamString(website))), ("email", Some(emailQuery.toParamString(email))), ("internalId", Some(internalIdQuery.toParamString(internalId))), ("detailsHeader", Some(detailsHeaderQuery.toParamString(detailsHeader))), ("detailsBody", Some(detailsBodyQuery.toParamString(detailsBody))), ("hours", Some(hoursQuery.toParamString(hours))), ("logo", Some(logoQuery.toParamString(logo))), ("logoAssetId", Some(logoAssetIdQuery.toParamString(logoAssetId))), ("picture1", Some(picture1Query.toParamString(picture1))), ("picture1AssetId", Some(picture1AssetIdQuery.toParamString(picture1AssetId))), ("picture2", Some(picture2Query.toParamString(picture2))), ("picture2AssetId", Some(picture2AssetIdQuery.toParamString(picture2AssetId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("building", Some(buildingQuery.toParamString(building))), ("googlePlaceId", Some(googlePlaceIdQuery.toParamString(googlePlaceId))), ("yelpId", Some(yelpIdQuery.toParamString(yelpId))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("paymentProvider", Some(paymentProviderQuery.toParamString(paymentProvider))), ("active", Some(activeQuery.toParamString(active))), ("publicLocation", Some(publicLocationQuery.toParamString(publicLocation))), ("locationType", Some(locationTypeQuery.toParamString(locationType))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))), ("responseFormat", Some(responseFormatQuery.toParamString(responseFormat))), ("tags", Some(tagsQuery.toParamString(tags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerLocationResponse](req)

    } yield resp
  }

}
