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
import org.openapitools.client.api.ListCountResponse
import org.openapitools.client.api.OfferListResponse
import org.openapitools.client.api.OfferResponse
import org.openapitools.client.api.OfferShortResponse
import org.openapitools.client.api.OfferTransactionResponse
import org.openapitools.client.api.RetailerOfferResponse
import org.openapitools.client.api.SirqulResponse

object OfferApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def batchUpdateOfferLocations(host: String, version: BigDecimal, data: String, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/retailer/offer/location/batchUpdate".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("data", Some(dataQuery.toParamString(data))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def createOffer(host: String, version: BigDecimal, includeOfferLocations: Boolean, title: String, barcodeType: String, noExpiration: Boolean, availableLimit: Integer, availableLimitPerUser: Integer, addedLimit: Integer, viewLimit: Integer, maxPrints: Integer, ticketPrice: Long, fullPrice: Double, discountPrice: Double, offerType: String, specialOfferType: String, offerVisibility: String, active: Boolean, deviceId: String, accountId: Long, tags: String, parentOfferId: Long, retailerLocationIds: String, offerLocations: String, subTitle: String, details: String, subDetails: String, finePrint: String, barcodeEntry: String, externalRedeemOptions: String, externalUrl: String, externalId: String, ticketsRewardType: String, ticketsReward: Long, activated: Long, expires: Long, ticketPriceType: String, showRemaining: Boolean, showRedeemed: Boolean, replaced: Boolean, featured: Boolean, categoryIds: String, filterIds: String, barcodeAssetId: Long, imageAssetId: Long, imageAssetId1: Long, imageAssetId2: Long, imageAssetId3: Long, imageAssetId4: Long, imageAssetId5: Long, publisher: String, redeemableStart: Long, redeemableEnd: Long, brand: String, productType: String, conditionType: String, isbn: String, asin: String, catalogNumbers: String, department: String, features: String, minimumPrice: Double, width: Double, height: Double, depth: Double, weight: Double, unit: String, studio: String, parentalRating: String, publishDate: Long, availabilityDate: Long, sizeId: Long, listingId: Long, mediaType: String, duration: Integer, author: String, releaseDate: Long, collectionIds: String, rebootTimeHour: Integer, rebootTimeMinute: Integer, idleTimeoutInSecond: Integer, serialNumber: String, udid: String, deviceType: String, devicePower: Double, deviceInterference: Double, availability: String, availabilitySummary: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], tagsQuery: QueryParam[String], parentOfferIdQuery: QueryParam[Long], includeOfferLocationsQuery: QueryParam[Boolean], retailerLocationIdsQuery: QueryParam[String], offerLocationsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], subDetailsQuery: QueryParam[String], finePrintQuery: QueryParam[String], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], externalRedeemOptionsQuery: QueryParam[String], externalUrlQuery: QueryParam[String], externalIdQuery: QueryParam[String], ticketsRewardTypeQuery: QueryParam[String], ticketsRewardQuery: QueryParam[Long], activatedQuery: QueryParam[Long], expiresQuery: QueryParam[Long], noExpirationQuery: QueryParam[Boolean], availableLimitQuery: QueryParam[Integer], availableLimitPerUserQuery: QueryParam[Integer], addedLimitQuery: QueryParam[Integer], viewLimitQuery: QueryParam[Integer], maxPrintsQuery: QueryParam[Integer], ticketPriceTypeQuery: QueryParam[String], ticketPriceQuery: QueryParam[Long], fullPriceQuery: QueryParam[Double], discountPriceQuery: QueryParam[Double], showRemainingQuery: QueryParam[Boolean], showRedeemedQuery: QueryParam[Boolean], replacedQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], offerTypeQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], offerVisibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], barcodeAssetIdQuery: QueryParam[Long], imageAssetIdQuery: QueryParam[Long], imageAssetId1Query: QueryParam[Long], imageAssetId2Query: QueryParam[Long], imageAssetId3Query: QueryParam[Long], imageAssetId4Query: QueryParam[Long], imageAssetId5Query: QueryParam[Long], publisherQuery: QueryParam[String], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long], brandQuery: QueryParam[String], productTypeQuery: QueryParam[String], conditionTypeQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], catalogNumbersQuery: QueryParam[String], departmentQuery: QueryParam[String], featuresQuery: QueryParam[String], minimumPriceQuery: QueryParam[Double], widthQuery: QueryParam[Double], heightQuery: QueryParam[Double], depthQuery: QueryParam[Double], weightQuery: QueryParam[Double], unitQuery: QueryParam[String], studioQuery: QueryParam[String], parentalRatingQuery: QueryParam[String], publishDateQuery: QueryParam[Long], availabilityDateQuery: QueryParam[Long], sizeIdQuery: QueryParam[Long], listingIdQuery: QueryParam[Long], mediaTypeQuery: QueryParam[String], durationQuery: QueryParam[Integer], authorQuery: QueryParam[String], releaseDateQuery: QueryParam[Long], collectionIdsQuery: QueryParam[String], rebootTimeHourQuery: QueryParam[Integer], rebootTimeMinuteQuery: QueryParam[Integer], idleTimeoutInSecondQuery: QueryParam[Integer], serialNumberQuery: QueryParam[String], udidQuery: QueryParam[String], deviceTypeQuery: QueryParam[String], devicePowerQuery: QueryParam[Double], deviceInterferenceQuery: QueryParam[Double], availabilityQuery: QueryParam[String], availabilitySummaryQuery: QueryParam[String]): Task[RetailerOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerOfferResponse] = jsonOf[RetailerOfferResponse]

    val path = "/api/{version}/retailer/offer/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("tags", Some(tagsQuery.toParamString(tags))), ("parentOfferId", Some(parentOfferIdQuery.toParamString(parentOfferId))), ("includeOfferLocations", Some(includeOfferLocationsQuery.toParamString(includeOfferLocations))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("offerLocations", Some(offerLocationsQuery.toParamString(offerLocations))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("subDetails", Some(subDetailsQuery.toParamString(subDetails))), ("finePrint", Some(finePrintQuery.toParamString(finePrint))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("externalRedeemOptions", Some(externalRedeemOptionsQuery.toParamString(externalRedeemOptions))), ("externalUrl", Some(externalUrlQuery.toParamString(externalUrl))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("ticketsRewardType", Some(ticketsRewardTypeQuery.toParamString(ticketsRewardType))), ("ticketsReward", Some(ticketsRewardQuery.toParamString(ticketsReward))), ("activated", Some(activatedQuery.toParamString(activated))), ("expires", Some(expiresQuery.toParamString(expires))), ("noExpiration", Some(noExpirationQuery.toParamString(noExpiration))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("availableLimitPerUser", Some(availableLimitPerUserQuery.toParamString(availableLimitPerUser))), ("addedLimit", Some(addedLimitQuery.toParamString(addedLimit))), ("viewLimit", Some(viewLimitQuery.toParamString(viewLimit))), ("maxPrints", Some(maxPrintsQuery.toParamString(maxPrints))), ("ticketPriceType", Some(ticketPriceTypeQuery.toParamString(ticketPriceType))), ("ticketPrice", Some(ticketPriceQuery.toParamString(ticketPrice))), ("fullPrice", Some(fullPriceQuery.toParamString(fullPrice))), ("discountPrice", Some(discountPriceQuery.toParamString(discountPrice))), ("showRemaining", Some(showRemainingQuery.toParamString(showRemaining))), ("showRedeemed", Some(showRedeemedQuery.toParamString(showRedeemed))), ("replaced", Some(replacedQuery.toParamString(replaced))), ("featured", Some(featuredQuery.toParamString(featured))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("offerVisibility", Some(offerVisibilityQuery.toParamString(offerVisibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("barcodeAssetId", Some(barcodeAssetIdQuery.toParamString(barcodeAssetId))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("imageAssetId1", Some(imageAssetId1Query.toParamString(imageAssetId1))), ("imageAssetId2", Some(imageAssetId2Query.toParamString(imageAssetId2))), ("imageAssetId3", Some(imageAssetId3Query.toParamString(imageAssetId3))), ("imageAssetId4", Some(imageAssetId4Query.toParamString(imageAssetId4))), ("imageAssetId5", Some(imageAssetId5Query.toParamString(imageAssetId5))), ("publisher", Some(publisherQuery.toParamString(publisher))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))), ("brand", Some(brandQuery.toParamString(brand))), ("productType", Some(productTypeQuery.toParamString(productType))), ("conditionType", Some(conditionTypeQuery.toParamString(conditionType))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("catalogNumbers", Some(catalogNumbersQuery.toParamString(catalogNumbers))), ("department", Some(departmentQuery.toParamString(department))), ("features", Some(featuresQuery.toParamString(features))), ("minimumPrice", Some(minimumPriceQuery.toParamString(minimumPrice))), ("width", Some(widthQuery.toParamString(width))), ("height", Some(heightQuery.toParamString(height))), ("depth", Some(depthQuery.toParamString(depth))), ("weight", Some(weightQuery.toParamString(weight))), ("unit", Some(unitQuery.toParamString(unit))), ("studio", Some(studioQuery.toParamString(studio))), ("parentalRating", Some(parentalRatingQuery.toParamString(parentalRating))), ("publishDate", Some(publishDateQuery.toParamString(publishDate))), ("availabilityDate", Some(availabilityDateQuery.toParamString(availabilityDate))), ("sizeId", Some(sizeIdQuery.toParamString(sizeId))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("mediaType", Some(mediaTypeQuery.toParamString(mediaType))), ("duration", Some(durationQuery.toParamString(duration))), ("author", Some(authorQuery.toParamString(author))), ("releaseDate", Some(releaseDateQuery.toParamString(releaseDate))), ("collectionIds", Some(collectionIdsQuery.toParamString(collectionIds))), ("rebootTimeHour", Some(rebootTimeHourQuery.toParamString(rebootTimeHour))), ("rebootTimeMinute", Some(rebootTimeMinuteQuery.toParamString(rebootTimeMinute))), ("idleTimeoutInSecond", Some(idleTimeoutInSecondQuery.toParamString(idleTimeoutInSecond))), ("serialNumber", Some(serialNumberQuery.toParamString(serialNumber))), ("udid", Some(udidQuery.toParamString(udid))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("devicePower", Some(devicePowerQuery.toParamString(devicePower))), ("deviceInterference", Some(deviceInterferenceQuery.toParamString(deviceInterference))), ("availability", Some(availabilityQuery.toParamString(availability))), ("availabilitySummary", Some(availabilitySummaryQuery.toParamString(availabilitySummary))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerOfferResponse](req)

    } yield resp
  }

  def deleteOffer(host: String, version: BigDecimal, offerId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/retailer/offer/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteOfferLocation(host: String, version: BigDecimal, offerLocationId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/retailer/offer/location/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getOffer(host: String, version: BigDecimal, offerId: Long, includeOfferLocations: Boolean, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], includeOfferLocationsQuery: QueryParam[Boolean]): Task[RetailerOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerOfferResponse] = jsonOf[RetailerOfferResponse]

    val path = "/api/{version}/retailer/offer/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("includeOfferLocations", Some(includeOfferLocationsQuery.toParamString(includeOfferLocations))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerOfferResponse](req)

    } yield resp
  }

  def getOfferDetails(host: String, version: BigDecimal, deviceId: String, accountId: Long, offerId: Long, offerLocationId: Long, distance: Double, latitude: Double, longitude: Double, includeOfferLocations: Boolean = false, includeRetailerLocations: Boolean = false, includeChildOffers: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], distanceQuery: QueryParam[Double], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], includeOfferLocationsQuery: QueryParam[Boolean], includeRetailerLocationsQuery: QueryParam[Boolean], includeChildOffersQuery: QueryParam[Boolean]): Task[OfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferResponse] = jsonOf[OfferResponse]

    val path = "/api/{version}/offer/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("distance", Some(distanceQuery.toParamString(distance))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("includeOfferLocations", Some(includeOfferLocationsQuery.toParamString(includeOfferLocations))), ("includeRetailerLocations", Some(includeRetailerLocationsQuery.toParamString(includeRetailerLocations))), ("includeChildOffers", Some(includeChildOffersQuery.toParamString(includeChildOffers))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferResponse](req)

    } yield resp
  }

  def getOfferListCounts(host: String, version: BigDecimal, latitude: Double, longitude: Double, searchRange: BigDecimal = 5, distanceUnit: String = MILES)(implicit latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], searchRangeQuery: QueryParam[BigDecimal], distanceUnitQuery: QueryParam[String]): Task[ListCountResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ListCountResponse] = jsonOf[ListCountResponse]

    val path = "/api/{version}/offer/lists/count".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ListCountResponse](req)

    } yield resp
  }

  def getOfferLocation(host: String, version: BigDecimal, offerLocationId: Long, udid: String)(implicit offerLocationIdQuery: QueryParam[Long], udidQuery: QueryParam[String]): Task[OfferShortResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferShortResponse] = jsonOf[OfferShortResponse]

    val path = "/api/{version}/offer/location/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("udid", Some(udidQuery.toParamString(udid))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferShortResponse](req)

    } yield resp
  }

  def getOfferLocationsForRetailers(host: String, version: BigDecimal, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, includeRetailerLocation: Boolean, deviceId: String, accountId: Long, keyword: String, retailerId: Long, retailerLocationId: Long, offerType: String, specialOfferType: String, barcodeType: String, barcodeEntry: String, isbn: String, asin: String, deviceStatus: String, needsNotificationSent: Boolean, lastNotificationSent: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], offerTypeQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], includeRetailerLocationQuery: QueryParam[Boolean], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], deviceStatusQuery: QueryParam[String], needsNotificationSentQuery: QueryParam[Boolean], lastNotificationSentQuery: QueryParam[Long]): Task[List[OfferShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferShortResponse]] = jsonOf[List[OfferShortResponse]]

    val path = "/api/{version}/retailer/offer/location/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("includeRetailerLocation", Some(includeRetailerLocationQuery.toParamString(includeRetailerLocation))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("deviceStatus", Some(deviceStatusQuery.toParamString(deviceStatus))), ("needsNotificationSent", Some(needsNotificationSentQuery.toParamString(needsNotificationSent))), ("lastNotificationSent", Some(lastNotificationSentQuery.toParamString(lastNotificationSent))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferShortResponse]](req)

    } yield resp
  }

  def getOffersForRetailers(host: String, version: BigDecimal, offerVisibility: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, availableOnly: Boolean, activeOnly: Boolean, includeCategories: Boolean, includeFilters: Boolean, includeOfferLocations: Boolean, deviceId: String, accountId: Long, categoryIds: String, filterIds: String, q: String, keyword: String, retailerId: Long, retailerLocationId: Long, couponType: String, offerType: String, offerTypes: String, specialOfferType: String, i: Integer, l: Integer, barcodeType: String, barcodeEntry: String, isbn: String, asin: String, deviceStatus: String, needsNotificationSent: Boolean, lastNotificationSent: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], qQuery: QueryParam[String], keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], couponTypeQuery: QueryParam[String], offerTypeQuery: QueryParam[String], offerTypesQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], offerVisibilityQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], availableOnlyQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], includeCategoriesQuery: QueryParam[Boolean], includeFiltersQuery: QueryParam[Boolean], includeOfferLocationsQuery: QueryParam[Boolean], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], deviceStatusQuery: QueryParam[String], needsNotificationSentQuery: QueryParam[Boolean], lastNotificationSentQuery: QueryParam[Long]): Task[List[OfferResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferResponse]] = jsonOf[List[OfferResponse]]

    val path = "/api/{version}/retailer/offer/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("couponType", Some(couponTypeQuery.toParamString(couponType))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("offerTypes", Some(offerTypesQuery.toParamString(offerTypes))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("offerVisibility", Some(offerVisibilityQuery.toParamString(offerVisibility))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("availableOnly", Some(availableOnlyQuery.toParamString(availableOnly))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("includeCategories", Some(includeCategoriesQuery.toParamString(includeCategories))), ("includeFilters", Some(includeFiltersQuery.toParamString(includeFilters))), ("includeOfferLocations", Some(includeOfferLocationsQuery.toParamString(includeOfferLocations))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("deviceStatus", Some(deviceStatusQuery.toParamString(deviceStatus))), ("needsNotificationSent", Some(needsNotificationSentQuery.toParamString(needsNotificationSent))), ("lastNotificationSent", Some(lastNotificationSentQuery.toParamString(lastNotificationSent))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferResponse]](req)

    } yield resp
  }

  def redeemOfferTransaction(host: String, version: BigDecimal, offerTransactionId: Long, status: Integer, deviceId: String, accountId: Long, offerLocationId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerTransactionIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], statusQuery: QueryParam[Integer]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/retailer/offer/transaction/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerTransactionId", Some(offerTransactionIdQuery.toParamString(offerTransactionId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("status", Some(statusQuery.toParamString(status))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchOfferTransactionsForRetailers(host: String, version: BigDecimal, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, deviceId: String, accountId: Long, q: String, keyword: String, retailerId: Long, retailerLocationId: Long, offerId: Long, offerLocationId: Long, redeemed: Boolean, reservationsOnly: Boolean, couponType: String, offerType: String, specialOfferType: String, customerAccountIds: String, categoryIds: String, redeemableStartDate: Long, redeemableEndDate: Long, i: Integer, l: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], redeemedQuery: QueryParam[Boolean], reservationsOnlyQuery: QueryParam[Boolean], couponTypeQuery: QueryParam[String], offerTypeQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], customerAccountIdsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], redeemableStartDateQuery: QueryParam[Long], redeemableEndDateQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[OfferTransactionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferTransactionResponse]] = jsonOf[List[OfferTransactionResponse]]

    val path = "/api/{version}/retailer/offer/transaction/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("redeemed", Some(redeemedQuery.toParamString(redeemed))), ("reservationsOnly", Some(reservationsOnlyQuery.toParamString(reservationsOnly))), ("couponType", Some(couponTypeQuery.toParamString(couponType))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("customerAccountIds", Some(customerAccountIdsQuery.toParamString(customerAccountIds))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("redeemableStartDate", Some(redeemableStartDateQuery.toParamString(redeemableStartDate))), ("redeemableEndDate", Some(redeemableEndDateQuery.toParamString(redeemableEndDate))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferTransactionResponse]](req)

    } yield resp
  }

  def searchOffersForConsumer(host: String, version: BigDecimal, latitude: Double, longitude: Double, recommendationType: String, locationId: Long, start: Integer, limit: Integer, maxRecommendations: Integer, distanceUnit: String, appKey: String, deviceId: String, accountId: Long, searchRange: Double = 5, tags: String, supportedPostalCodes: String, keyword: String, categories: String, filters: String, offerTypes: String = COUPON, VOUCHER, `type`: String, sortField: String, recommendOfferIds: String, retailerLocationIds: String, offerId: Long, includeMission: Boolean, includeCategories: Boolean, includeFilters: Boolean, includeExpired: Boolean, includeFavorite: Boolean, closestOfferOnly: Boolean, searchExpression: String, groupBy: String)(implicit appKeyQuery: QueryParam[String], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], searchRangeQuery: QueryParam[Double], tagsQuery: QueryParam[String], supportedPostalCodesQuery: QueryParam[String], keywordQuery: QueryParam[String], categoriesQuery: QueryParam[String], filtersQuery: QueryParam[String], offerTypesQuery: QueryParam[String], `type`Query: QueryParam[String], sortFieldQuery: QueryParam[String], recommendOfferIdsQuery: QueryParam[String], recommendationTypeQuery: QueryParam[String], locationIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], offerIdQuery: QueryParam[Long], includeMissionQuery: QueryParam[Boolean], includeCategoriesQuery: QueryParam[Boolean], includeFiltersQuery: QueryParam[Boolean], includeExpiredQuery: QueryParam[Boolean], includeFavoriteQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], maxRecommendationsQuery: QueryParam[Integer], distanceUnitQuery: QueryParam[String], closestOfferOnlyQuery: QueryParam[Boolean], searchExpressionQuery: QueryParam[String], groupByQuery: QueryParam[String]): Task[OfferListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferListResponse] = jsonOf[OfferListResponse]

    val path = "/api/{version}/offer/lists".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("tags", Some(tagsQuery.toParamString(tags))), ("supportedPostalCodes", Some(supportedPostalCodesQuery.toParamString(supportedPostalCodes))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("categories", Some(categoriesQuery.toParamString(categories))), ("filters", Some(filtersQuery.toParamString(filters))), ("offerTypes", Some(offerTypesQuery.toParamString(offerTypes))), ("`type`", Some(typeQuery.toParamString(type))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("recommendOfferIds", Some(recommendOfferIdsQuery.toParamString(recommendOfferIds))), ("recommendationType", Some(recommendationTypeQuery.toParamString(recommendationType))), ("locationId", Some(locationIdQuery.toParamString(locationId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("includeMission", Some(includeMissionQuery.toParamString(includeMission))), ("includeCategories", Some(includeCategoriesQuery.toParamString(includeCategories))), ("includeFilters", Some(includeFiltersQuery.toParamString(includeFilters))), ("includeExpired", Some(includeExpiredQuery.toParamString(includeExpired))), ("includeFavorite", Some(includeFavoriteQuery.toParamString(includeFavorite))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("maxRecommendations", Some(maxRecommendationsQuery.toParamString(maxRecommendations))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))), ("closestOfferOnly", Some(closestOfferOnlyQuery.toParamString(closestOfferOnly))), ("searchExpression", Some(searchExpressionQuery.toParamString(searchExpression))), ("groupBy", Some(groupByQuery.toParamString(groupBy))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferListResponse](req)

    } yield resp
  }

  def topOfferTransactions(host: String, version: BigDecimal, start: Integer = 0, limit: Integer = 20)(implicit startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[OfferListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferListResponse] = jsonOf[OfferListResponse]

    val path = "/api/{version}/offer/top".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferListResponse](req)

    } yield resp
  }

  def updateOffer(host: String, version: BigDecimal, offerId: Long, includeOfferLocations: Boolean, deviceId: String, accountId: Long, parentOfferId: Long, retailerLocationIds: String, offerLocations: String, tags: String, title: String, subTitle: String, details: String, subDetails: String, finePrint: String, barcodeType: String, barcodeEntry: String, externalRedeemOptions: String, externalUrl: String, externalId: String, ticketsRewardType: String, ticketsReward: Long, activated: Long, expires: Long, noExpiration: Boolean, availableLimit: Integer, availableLimitPerUser: Integer, addedLimit: Integer, viewLimit: Integer, maxPrints: Integer, ticketPriceType: String, ticketPrice: Long, fullPrice: Double, discountPrice: Double, showRemaining: Boolean, showRedeemed: Boolean, replaced: Boolean, featured: Boolean, offerType: String, specialOfferType: String, offerVisibility: String, categoryIds: String, filterIds: String, active: Boolean, barcodeAssetId: Long, imageAssetId: Long, imageAssetId1: Long, imageAssetId2: Long, imageAssetId3: Long, imageAssetId4: Long, imageAssetId5: Long, publisher: String, redeemableStart: Long, redeemableEnd: Long, brand: String, productType: String, conditionType: String, isbn: String, asin: String, catalogNumbers: String, department: String, features: String, minimumPrice: Double, width: Double, height: Double, depth: Double, weight: Double, unit: String, studio: String, parentalRating: String, publishDate: Long, availabilityDate: Long, sizeId: Long, listingId: Long, mediaType: String, duration: Integer, author: String, releaseDate: Long, collectionIds: String, rebootTimeHour: Integer, rebootTimeMinute: Integer, idleTimeoutInSecond: Integer, serialNumber: String, udid: String, deviceType: String, devicePower: Double, deviceInterference: Double, availability: String, availabilitySummary: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], parentOfferIdQuery: QueryParam[Long], includeOfferLocationsQuery: QueryParam[Boolean], retailerLocationIdsQuery: QueryParam[String], offerLocationsQuery: QueryParam[String], tagsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], subDetailsQuery: QueryParam[String], finePrintQuery: QueryParam[String], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], externalRedeemOptionsQuery: QueryParam[String], externalUrlQuery: QueryParam[String], externalIdQuery: QueryParam[String], ticketsRewardTypeQuery: QueryParam[String], ticketsRewardQuery: QueryParam[Long], activatedQuery: QueryParam[Long], expiresQuery: QueryParam[Long], noExpirationQuery: QueryParam[Boolean], availableLimitQuery: QueryParam[Integer], availableLimitPerUserQuery: QueryParam[Integer], addedLimitQuery: QueryParam[Integer], viewLimitQuery: QueryParam[Integer], maxPrintsQuery: QueryParam[Integer], ticketPriceTypeQuery: QueryParam[String], ticketPriceQuery: QueryParam[Long], fullPriceQuery: QueryParam[Double], discountPriceQuery: QueryParam[Double], showRemainingQuery: QueryParam[Boolean], showRedeemedQuery: QueryParam[Boolean], replacedQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], offerTypeQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], offerVisibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], barcodeAssetIdQuery: QueryParam[Long], imageAssetIdQuery: QueryParam[Long], imageAssetId1Query: QueryParam[Long], imageAssetId2Query: QueryParam[Long], imageAssetId3Query: QueryParam[Long], imageAssetId4Query: QueryParam[Long], imageAssetId5Query: QueryParam[Long], publisherQuery: QueryParam[String], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long], brandQuery: QueryParam[String], productTypeQuery: QueryParam[String], conditionTypeQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], catalogNumbersQuery: QueryParam[String], departmentQuery: QueryParam[String], featuresQuery: QueryParam[String], minimumPriceQuery: QueryParam[Double], widthQuery: QueryParam[Double], heightQuery: QueryParam[Double], depthQuery: QueryParam[Double], weightQuery: QueryParam[Double], unitQuery: QueryParam[String], studioQuery: QueryParam[String], parentalRatingQuery: QueryParam[String], publishDateQuery: QueryParam[Long], availabilityDateQuery: QueryParam[Long], sizeIdQuery: QueryParam[Long], listingIdQuery: QueryParam[Long], mediaTypeQuery: QueryParam[String], durationQuery: QueryParam[Integer], authorQuery: QueryParam[String], releaseDateQuery: QueryParam[Long], collectionIdsQuery: QueryParam[String], rebootTimeHourQuery: QueryParam[Integer], rebootTimeMinuteQuery: QueryParam[Integer], idleTimeoutInSecondQuery: QueryParam[Integer], serialNumberQuery: QueryParam[String], udidQuery: QueryParam[String], deviceTypeQuery: QueryParam[String], devicePowerQuery: QueryParam[Double], deviceInterferenceQuery: QueryParam[Double], availabilityQuery: QueryParam[String], availabilitySummaryQuery: QueryParam[String]): Task[RetailerOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerOfferResponse] = jsonOf[RetailerOfferResponse]

    val path = "/api/{version}/retailer/offer/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("parentOfferId", Some(parentOfferIdQuery.toParamString(parentOfferId))), ("includeOfferLocations", Some(includeOfferLocationsQuery.toParamString(includeOfferLocations))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("offerLocations", Some(offerLocationsQuery.toParamString(offerLocations))), ("tags", Some(tagsQuery.toParamString(tags))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("subDetails", Some(subDetailsQuery.toParamString(subDetails))), ("finePrint", Some(finePrintQuery.toParamString(finePrint))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("externalRedeemOptions", Some(externalRedeemOptionsQuery.toParamString(externalRedeemOptions))), ("externalUrl", Some(externalUrlQuery.toParamString(externalUrl))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("ticketsRewardType", Some(ticketsRewardTypeQuery.toParamString(ticketsRewardType))), ("ticketsReward", Some(ticketsRewardQuery.toParamString(ticketsReward))), ("activated", Some(activatedQuery.toParamString(activated))), ("expires", Some(expiresQuery.toParamString(expires))), ("noExpiration", Some(noExpirationQuery.toParamString(noExpiration))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("availableLimitPerUser", Some(availableLimitPerUserQuery.toParamString(availableLimitPerUser))), ("addedLimit", Some(addedLimitQuery.toParamString(addedLimit))), ("viewLimit", Some(viewLimitQuery.toParamString(viewLimit))), ("maxPrints", Some(maxPrintsQuery.toParamString(maxPrints))), ("ticketPriceType", Some(ticketPriceTypeQuery.toParamString(ticketPriceType))), ("ticketPrice", Some(ticketPriceQuery.toParamString(ticketPrice))), ("fullPrice", Some(fullPriceQuery.toParamString(fullPrice))), ("discountPrice", Some(discountPriceQuery.toParamString(discountPrice))), ("showRemaining", Some(showRemainingQuery.toParamString(showRemaining))), ("showRedeemed", Some(showRedeemedQuery.toParamString(showRedeemed))), ("replaced", Some(replacedQuery.toParamString(replaced))), ("featured", Some(featuredQuery.toParamString(featured))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("offerVisibility", Some(offerVisibilityQuery.toParamString(offerVisibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("barcodeAssetId", Some(barcodeAssetIdQuery.toParamString(barcodeAssetId))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("imageAssetId1", Some(imageAssetId1Query.toParamString(imageAssetId1))), ("imageAssetId2", Some(imageAssetId2Query.toParamString(imageAssetId2))), ("imageAssetId3", Some(imageAssetId3Query.toParamString(imageAssetId3))), ("imageAssetId4", Some(imageAssetId4Query.toParamString(imageAssetId4))), ("imageAssetId5", Some(imageAssetId5Query.toParamString(imageAssetId5))), ("publisher", Some(publisherQuery.toParamString(publisher))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))), ("brand", Some(brandQuery.toParamString(brand))), ("productType", Some(productTypeQuery.toParamString(productType))), ("conditionType", Some(conditionTypeQuery.toParamString(conditionType))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("catalogNumbers", Some(catalogNumbersQuery.toParamString(catalogNumbers))), ("department", Some(departmentQuery.toParamString(department))), ("features", Some(featuresQuery.toParamString(features))), ("minimumPrice", Some(minimumPriceQuery.toParamString(minimumPrice))), ("width", Some(widthQuery.toParamString(width))), ("height", Some(heightQuery.toParamString(height))), ("depth", Some(depthQuery.toParamString(depth))), ("weight", Some(weightQuery.toParamString(weight))), ("unit", Some(unitQuery.toParamString(unit))), ("studio", Some(studioQuery.toParamString(studio))), ("parentalRating", Some(parentalRatingQuery.toParamString(parentalRating))), ("publishDate", Some(publishDateQuery.toParamString(publishDate))), ("availabilityDate", Some(availabilityDateQuery.toParamString(availabilityDate))), ("sizeId", Some(sizeIdQuery.toParamString(sizeId))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("mediaType", Some(mediaTypeQuery.toParamString(mediaType))), ("duration", Some(durationQuery.toParamString(duration))), ("author", Some(authorQuery.toParamString(author))), ("releaseDate", Some(releaseDateQuery.toParamString(releaseDate))), ("collectionIds", Some(collectionIdsQuery.toParamString(collectionIds))), ("rebootTimeHour", Some(rebootTimeHourQuery.toParamString(rebootTimeHour))), ("rebootTimeMinute", Some(rebootTimeMinuteQuery.toParamString(rebootTimeMinute))), ("idleTimeoutInSecond", Some(idleTimeoutInSecondQuery.toParamString(idleTimeoutInSecond))), ("serialNumber", Some(serialNumberQuery.toParamString(serialNumber))), ("udid", Some(udidQuery.toParamString(udid))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("devicePower", Some(devicePowerQuery.toParamString(devicePower))), ("deviceInterference", Some(deviceInterferenceQuery.toParamString(deviceInterference))), ("availability", Some(availabilityQuery.toParamString(availability))), ("availabilitySummary", Some(availabilitySummaryQuery.toParamString(availabilitySummary))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerOfferResponse](req)

    } yield resp
  }

  def updateOfferStatus(host: String, version: BigDecimal, offerIds: String, active: Boolean, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/retailer/offer/status".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerIds", Some(offerIdsQuery.toParamString(offerIds))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceOfferApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def batchUpdateOfferLocations(version: BigDecimal, data: String, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], dataQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/retailer/offer/location/batchUpdate".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("data", Some(dataQuery.toParamString(data))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def createOffer(version: BigDecimal, includeOfferLocations: Boolean, title: String, barcodeType: String, noExpiration: Boolean, availableLimit: Integer, availableLimitPerUser: Integer, addedLimit: Integer, viewLimit: Integer, maxPrints: Integer, ticketPrice: Long, fullPrice: Double, discountPrice: Double, offerType: String, specialOfferType: String, offerVisibility: String, active: Boolean, deviceId: String, accountId: Long, tags: String, parentOfferId: Long, retailerLocationIds: String, offerLocations: String, subTitle: String, details: String, subDetails: String, finePrint: String, barcodeEntry: String, externalRedeemOptions: String, externalUrl: String, externalId: String, ticketsRewardType: String, ticketsReward: Long, activated: Long, expires: Long, ticketPriceType: String, showRemaining: Boolean, showRedeemed: Boolean, replaced: Boolean, featured: Boolean, categoryIds: String, filterIds: String, barcodeAssetId: Long, imageAssetId: Long, imageAssetId1: Long, imageAssetId2: Long, imageAssetId3: Long, imageAssetId4: Long, imageAssetId5: Long, publisher: String, redeemableStart: Long, redeemableEnd: Long, brand: String, productType: String, conditionType: String, isbn: String, asin: String, catalogNumbers: String, department: String, features: String, minimumPrice: Double, width: Double, height: Double, depth: Double, weight: Double, unit: String, studio: String, parentalRating: String, publishDate: Long, availabilityDate: Long, sizeId: Long, listingId: Long, mediaType: String, duration: Integer, author: String, releaseDate: Long, collectionIds: String, rebootTimeHour: Integer, rebootTimeMinute: Integer, idleTimeoutInSecond: Integer, serialNumber: String, udid: String, deviceType: String, devicePower: Double, deviceInterference: Double, availability: String, availabilitySummary: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], tagsQuery: QueryParam[String], parentOfferIdQuery: QueryParam[Long], includeOfferLocationsQuery: QueryParam[Boolean], retailerLocationIdsQuery: QueryParam[String], offerLocationsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], subDetailsQuery: QueryParam[String], finePrintQuery: QueryParam[String], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], externalRedeemOptionsQuery: QueryParam[String], externalUrlQuery: QueryParam[String], externalIdQuery: QueryParam[String], ticketsRewardTypeQuery: QueryParam[String], ticketsRewardQuery: QueryParam[Long], activatedQuery: QueryParam[Long], expiresQuery: QueryParam[Long], noExpirationQuery: QueryParam[Boolean], availableLimitQuery: QueryParam[Integer], availableLimitPerUserQuery: QueryParam[Integer], addedLimitQuery: QueryParam[Integer], viewLimitQuery: QueryParam[Integer], maxPrintsQuery: QueryParam[Integer], ticketPriceTypeQuery: QueryParam[String], ticketPriceQuery: QueryParam[Long], fullPriceQuery: QueryParam[Double], discountPriceQuery: QueryParam[Double], showRemainingQuery: QueryParam[Boolean], showRedeemedQuery: QueryParam[Boolean], replacedQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], offerTypeQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], offerVisibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], barcodeAssetIdQuery: QueryParam[Long], imageAssetIdQuery: QueryParam[Long], imageAssetId1Query: QueryParam[Long], imageAssetId2Query: QueryParam[Long], imageAssetId3Query: QueryParam[Long], imageAssetId4Query: QueryParam[Long], imageAssetId5Query: QueryParam[Long], publisherQuery: QueryParam[String], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long], brandQuery: QueryParam[String], productTypeQuery: QueryParam[String], conditionTypeQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], catalogNumbersQuery: QueryParam[String], departmentQuery: QueryParam[String], featuresQuery: QueryParam[String], minimumPriceQuery: QueryParam[Double], widthQuery: QueryParam[Double], heightQuery: QueryParam[Double], depthQuery: QueryParam[Double], weightQuery: QueryParam[Double], unitQuery: QueryParam[String], studioQuery: QueryParam[String], parentalRatingQuery: QueryParam[String], publishDateQuery: QueryParam[Long], availabilityDateQuery: QueryParam[Long], sizeIdQuery: QueryParam[Long], listingIdQuery: QueryParam[Long], mediaTypeQuery: QueryParam[String], durationQuery: QueryParam[Integer], authorQuery: QueryParam[String], releaseDateQuery: QueryParam[Long], collectionIdsQuery: QueryParam[String], rebootTimeHourQuery: QueryParam[Integer], rebootTimeMinuteQuery: QueryParam[Integer], idleTimeoutInSecondQuery: QueryParam[Integer], serialNumberQuery: QueryParam[String], udidQuery: QueryParam[String], deviceTypeQuery: QueryParam[String], devicePowerQuery: QueryParam[Double], deviceInterferenceQuery: QueryParam[Double], availabilityQuery: QueryParam[String], availabilitySummaryQuery: QueryParam[String]): Task[RetailerOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerOfferResponse] = jsonOf[RetailerOfferResponse]

    val path = "/api/{version}/retailer/offer/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("tags", Some(tagsQuery.toParamString(tags))), ("parentOfferId", Some(parentOfferIdQuery.toParamString(parentOfferId))), ("includeOfferLocations", Some(includeOfferLocationsQuery.toParamString(includeOfferLocations))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("offerLocations", Some(offerLocationsQuery.toParamString(offerLocations))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("subDetails", Some(subDetailsQuery.toParamString(subDetails))), ("finePrint", Some(finePrintQuery.toParamString(finePrint))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("externalRedeemOptions", Some(externalRedeemOptionsQuery.toParamString(externalRedeemOptions))), ("externalUrl", Some(externalUrlQuery.toParamString(externalUrl))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("ticketsRewardType", Some(ticketsRewardTypeQuery.toParamString(ticketsRewardType))), ("ticketsReward", Some(ticketsRewardQuery.toParamString(ticketsReward))), ("activated", Some(activatedQuery.toParamString(activated))), ("expires", Some(expiresQuery.toParamString(expires))), ("noExpiration", Some(noExpirationQuery.toParamString(noExpiration))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("availableLimitPerUser", Some(availableLimitPerUserQuery.toParamString(availableLimitPerUser))), ("addedLimit", Some(addedLimitQuery.toParamString(addedLimit))), ("viewLimit", Some(viewLimitQuery.toParamString(viewLimit))), ("maxPrints", Some(maxPrintsQuery.toParamString(maxPrints))), ("ticketPriceType", Some(ticketPriceTypeQuery.toParamString(ticketPriceType))), ("ticketPrice", Some(ticketPriceQuery.toParamString(ticketPrice))), ("fullPrice", Some(fullPriceQuery.toParamString(fullPrice))), ("discountPrice", Some(discountPriceQuery.toParamString(discountPrice))), ("showRemaining", Some(showRemainingQuery.toParamString(showRemaining))), ("showRedeemed", Some(showRedeemedQuery.toParamString(showRedeemed))), ("replaced", Some(replacedQuery.toParamString(replaced))), ("featured", Some(featuredQuery.toParamString(featured))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("offerVisibility", Some(offerVisibilityQuery.toParamString(offerVisibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("barcodeAssetId", Some(barcodeAssetIdQuery.toParamString(barcodeAssetId))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("imageAssetId1", Some(imageAssetId1Query.toParamString(imageAssetId1))), ("imageAssetId2", Some(imageAssetId2Query.toParamString(imageAssetId2))), ("imageAssetId3", Some(imageAssetId3Query.toParamString(imageAssetId3))), ("imageAssetId4", Some(imageAssetId4Query.toParamString(imageAssetId4))), ("imageAssetId5", Some(imageAssetId5Query.toParamString(imageAssetId5))), ("publisher", Some(publisherQuery.toParamString(publisher))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))), ("brand", Some(brandQuery.toParamString(brand))), ("productType", Some(productTypeQuery.toParamString(productType))), ("conditionType", Some(conditionTypeQuery.toParamString(conditionType))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("catalogNumbers", Some(catalogNumbersQuery.toParamString(catalogNumbers))), ("department", Some(departmentQuery.toParamString(department))), ("features", Some(featuresQuery.toParamString(features))), ("minimumPrice", Some(minimumPriceQuery.toParamString(minimumPrice))), ("width", Some(widthQuery.toParamString(width))), ("height", Some(heightQuery.toParamString(height))), ("depth", Some(depthQuery.toParamString(depth))), ("weight", Some(weightQuery.toParamString(weight))), ("unit", Some(unitQuery.toParamString(unit))), ("studio", Some(studioQuery.toParamString(studio))), ("parentalRating", Some(parentalRatingQuery.toParamString(parentalRating))), ("publishDate", Some(publishDateQuery.toParamString(publishDate))), ("availabilityDate", Some(availabilityDateQuery.toParamString(availabilityDate))), ("sizeId", Some(sizeIdQuery.toParamString(sizeId))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("mediaType", Some(mediaTypeQuery.toParamString(mediaType))), ("duration", Some(durationQuery.toParamString(duration))), ("author", Some(authorQuery.toParamString(author))), ("releaseDate", Some(releaseDateQuery.toParamString(releaseDate))), ("collectionIds", Some(collectionIdsQuery.toParamString(collectionIds))), ("rebootTimeHour", Some(rebootTimeHourQuery.toParamString(rebootTimeHour))), ("rebootTimeMinute", Some(rebootTimeMinuteQuery.toParamString(rebootTimeMinute))), ("idleTimeoutInSecond", Some(idleTimeoutInSecondQuery.toParamString(idleTimeoutInSecond))), ("serialNumber", Some(serialNumberQuery.toParamString(serialNumber))), ("udid", Some(udidQuery.toParamString(udid))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("devicePower", Some(devicePowerQuery.toParamString(devicePower))), ("deviceInterference", Some(deviceInterferenceQuery.toParamString(deviceInterference))), ("availability", Some(availabilityQuery.toParamString(availability))), ("availabilitySummary", Some(availabilitySummaryQuery.toParamString(availabilitySummary))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerOfferResponse](req)

    } yield resp
  }

  def deleteOffer(version: BigDecimal, offerId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/retailer/offer/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def deleteOfferLocation(version: BigDecimal, offerLocationId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/retailer/offer/location/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getOffer(version: BigDecimal, offerId: Long, includeOfferLocations: Boolean, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], includeOfferLocationsQuery: QueryParam[Boolean]): Task[RetailerOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerOfferResponse] = jsonOf[RetailerOfferResponse]

    val path = "/api/{version}/retailer/offer/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("includeOfferLocations", Some(includeOfferLocationsQuery.toParamString(includeOfferLocations))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerOfferResponse](req)

    } yield resp
  }

  def getOfferDetails(version: BigDecimal, deviceId: String, accountId: Long, offerId: Long, offerLocationId: Long, distance: Double, latitude: Double, longitude: Double, includeOfferLocations: Boolean = false, includeRetailerLocations: Boolean = false, includeChildOffers: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], distanceQuery: QueryParam[Double], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], includeOfferLocationsQuery: QueryParam[Boolean], includeRetailerLocationsQuery: QueryParam[Boolean], includeChildOffersQuery: QueryParam[Boolean]): Task[OfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferResponse] = jsonOf[OfferResponse]

    val path = "/api/{version}/offer/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("distance", Some(distanceQuery.toParamString(distance))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("includeOfferLocations", Some(includeOfferLocationsQuery.toParamString(includeOfferLocations))), ("includeRetailerLocations", Some(includeRetailerLocationsQuery.toParamString(includeRetailerLocations))), ("includeChildOffers", Some(includeChildOffersQuery.toParamString(includeChildOffers))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferResponse](req)

    } yield resp
  }

  def getOfferListCounts(version: BigDecimal, latitude: Double, longitude: Double, searchRange: BigDecimal = 5, distanceUnit: String = MILES)(implicit latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], searchRangeQuery: QueryParam[BigDecimal], distanceUnitQuery: QueryParam[String]): Task[ListCountResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ListCountResponse] = jsonOf[ListCountResponse]

    val path = "/api/{version}/offer/lists/count".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ListCountResponse](req)

    } yield resp
  }

  def getOfferLocation(version: BigDecimal, offerLocationId: Long, udid: String)(implicit offerLocationIdQuery: QueryParam[Long], udidQuery: QueryParam[String]): Task[OfferShortResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferShortResponse] = jsonOf[OfferShortResponse]

    val path = "/api/{version}/offer/location/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("udid", Some(udidQuery.toParamString(udid))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferShortResponse](req)

    } yield resp
  }

  def getOfferLocationsForRetailers(version: BigDecimal, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, includeRetailerLocation: Boolean, deviceId: String, accountId: Long, keyword: String, retailerId: Long, retailerLocationId: Long, offerType: String, specialOfferType: String, barcodeType: String, barcodeEntry: String, isbn: String, asin: String, deviceStatus: String, needsNotificationSent: Boolean, lastNotificationSent: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], offerTypeQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], includeRetailerLocationQuery: QueryParam[Boolean], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], deviceStatusQuery: QueryParam[String], needsNotificationSentQuery: QueryParam[Boolean], lastNotificationSentQuery: QueryParam[Long]): Task[List[OfferShortResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferShortResponse]] = jsonOf[List[OfferShortResponse]]

    val path = "/api/{version}/retailer/offer/location/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("includeRetailerLocation", Some(includeRetailerLocationQuery.toParamString(includeRetailerLocation))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("deviceStatus", Some(deviceStatusQuery.toParamString(deviceStatus))), ("needsNotificationSent", Some(needsNotificationSentQuery.toParamString(needsNotificationSent))), ("lastNotificationSent", Some(lastNotificationSentQuery.toParamString(lastNotificationSent))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferShortResponse]](req)

    } yield resp
  }

  def getOffersForRetailers(version: BigDecimal, offerVisibility: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, availableOnly: Boolean, activeOnly: Boolean, includeCategories: Boolean, includeFilters: Boolean, includeOfferLocations: Boolean, deviceId: String, accountId: Long, categoryIds: String, filterIds: String, q: String, keyword: String, retailerId: Long, retailerLocationId: Long, couponType: String, offerType: String, offerTypes: String, specialOfferType: String, i: Integer, l: Integer, barcodeType: String, barcodeEntry: String, isbn: String, asin: String, deviceStatus: String, needsNotificationSent: Boolean, lastNotificationSent: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], qQuery: QueryParam[String], keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], couponTypeQuery: QueryParam[String], offerTypeQuery: QueryParam[String], offerTypesQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], offerVisibilityQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], availableOnlyQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], includeCategoriesQuery: QueryParam[Boolean], includeFiltersQuery: QueryParam[Boolean], includeOfferLocationsQuery: QueryParam[Boolean], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], deviceStatusQuery: QueryParam[String], needsNotificationSentQuery: QueryParam[Boolean], lastNotificationSentQuery: QueryParam[Long]): Task[List[OfferResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferResponse]] = jsonOf[List[OfferResponse]]

    val path = "/api/{version}/retailer/offer/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("couponType", Some(couponTypeQuery.toParamString(couponType))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("offerTypes", Some(offerTypesQuery.toParamString(offerTypes))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("offerVisibility", Some(offerVisibilityQuery.toParamString(offerVisibility))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("availableOnly", Some(availableOnlyQuery.toParamString(availableOnly))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("includeCategories", Some(includeCategoriesQuery.toParamString(includeCategories))), ("includeFilters", Some(includeFiltersQuery.toParamString(includeFilters))), ("includeOfferLocations", Some(includeOfferLocationsQuery.toParamString(includeOfferLocations))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("deviceStatus", Some(deviceStatusQuery.toParamString(deviceStatus))), ("needsNotificationSent", Some(needsNotificationSentQuery.toParamString(needsNotificationSent))), ("lastNotificationSent", Some(lastNotificationSentQuery.toParamString(lastNotificationSent))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferResponse]](req)

    } yield resp
  }

  def redeemOfferTransaction(version: BigDecimal, offerTransactionId: Long, status: Integer, deviceId: String, accountId: Long, offerLocationId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerTransactionIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], statusQuery: QueryParam[Integer]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/retailer/offer/transaction/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerTransactionId", Some(offerTransactionIdQuery.toParamString(offerTransactionId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("status", Some(statusQuery.toParamString(status))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchOfferTransactionsForRetailers(version: BigDecimal, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, deviceId: String, accountId: Long, q: String, keyword: String, retailerId: Long, retailerLocationId: Long, offerId: Long, offerLocationId: Long, redeemed: Boolean, reservationsOnly: Boolean, couponType: String, offerType: String, specialOfferType: String, customerAccountIds: String, categoryIds: String, redeemableStartDate: Long, redeemableEndDate: Long, i: Integer, l: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], redeemedQuery: QueryParam[Boolean], reservationsOnlyQuery: QueryParam[Boolean], couponTypeQuery: QueryParam[String], offerTypeQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], customerAccountIdsQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], redeemableStartDateQuery: QueryParam[Long], redeemableEndDateQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[OfferTransactionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferTransactionResponse]] = jsonOf[List[OfferTransactionResponse]]

    val path = "/api/{version}/retailer/offer/transaction/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("redeemed", Some(redeemedQuery.toParamString(redeemed))), ("reservationsOnly", Some(reservationsOnlyQuery.toParamString(reservationsOnly))), ("couponType", Some(couponTypeQuery.toParamString(couponType))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("customerAccountIds", Some(customerAccountIdsQuery.toParamString(customerAccountIds))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("redeemableStartDate", Some(redeemableStartDateQuery.toParamString(redeemableStartDate))), ("redeemableEndDate", Some(redeemableEndDateQuery.toParamString(redeemableEndDate))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferTransactionResponse]](req)

    } yield resp
  }

  def searchOffersForConsumer(version: BigDecimal, latitude: Double, longitude: Double, recommendationType: String, locationId: Long, start: Integer, limit: Integer, maxRecommendations: Integer, distanceUnit: String, appKey: String, deviceId: String, accountId: Long, searchRange: Double = 5, tags: String, supportedPostalCodes: String, keyword: String, categories: String, filters: String, offerTypes: String = COUPON, VOUCHER, `type`: String, sortField: String, recommendOfferIds: String, retailerLocationIds: String, offerId: Long, includeMission: Boolean, includeCategories: Boolean, includeFilters: Boolean, includeExpired: Boolean, includeFavorite: Boolean, closestOfferOnly: Boolean, searchExpression: String, groupBy: String)(implicit appKeyQuery: QueryParam[String], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], searchRangeQuery: QueryParam[Double], tagsQuery: QueryParam[String], supportedPostalCodesQuery: QueryParam[String], keywordQuery: QueryParam[String], categoriesQuery: QueryParam[String], filtersQuery: QueryParam[String], offerTypesQuery: QueryParam[String], `type`Query: QueryParam[String], sortFieldQuery: QueryParam[String], recommendOfferIdsQuery: QueryParam[String], recommendationTypeQuery: QueryParam[String], locationIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], offerIdQuery: QueryParam[Long], includeMissionQuery: QueryParam[Boolean], includeCategoriesQuery: QueryParam[Boolean], includeFiltersQuery: QueryParam[Boolean], includeExpiredQuery: QueryParam[Boolean], includeFavoriteQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], maxRecommendationsQuery: QueryParam[Integer], distanceUnitQuery: QueryParam[String], closestOfferOnlyQuery: QueryParam[Boolean], searchExpressionQuery: QueryParam[String], groupByQuery: QueryParam[String]): Task[OfferListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferListResponse] = jsonOf[OfferListResponse]

    val path = "/api/{version}/offer/lists".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("appKey", Some(appKeyQuery.toParamString(appKey))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("tags", Some(tagsQuery.toParamString(tags))), ("supportedPostalCodes", Some(supportedPostalCodesQuery.toParamString(supportedPostalCodes))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("categories", Some(categoriesQuery.toParamString(categories))), ("filters", Some(filtersQuery.toParamString(filters))), ("offerTypes", Some(offerTypesQuery.toParamString(offerTypes))), ("`type`", Some(typeQuery.toParamString(type))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("recommendOfferIds", Some(recommendOfferIdsQuery.toParamString(recommendOfferIds))), ("recommendationType", Some(recommendationTypeQuery.toParamString(recommendationType))), ("locationId", Some(locationIdQuery.toParamString(locationId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("includeMission", Some(includeMissionQuery.toParamString(includeMission))), ("includeCategories", Some(includeCategoriesQuery.toParamString(includeCategories))), ("includeFilters", Some(includeFiltersQuery.toParamString(includeFilters))), ("includeExpired", Some(includeExpiredQuery.toParamString(includeExpired))), ("includeFavorite", Some(includeFavoriteQuery.toParamString(includeFavorite))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("maxRecommendations", Some(maxRecommendationsQuery.toParamString(maxRecommendations))), ("distanceUnit", Some(distanceUnitQuery.toParamString(distanceUnit))), ("closestOfferOnly", Some(closestOfferOnlyQuery.toParamString(closestOfferOnly))), ("searchExpression", Some(searchExpressionQuery.toParamString(searchExpression))), ("groupBy", Some(groupByQuery.toParamString(groupBy))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferListResponse](req)

    } yield resp
  }

  def topOfferTransactions(version: BigDecimal, start: Integer = 0, limit: Integer = 20)(implicit startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[OfferListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferListResponse] = jsonOf[OfferListResponse]

    val path = "/api/{version}/offer/top".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferListResponse](req)

    } yield resp
  }

  def updateOffer(version: BigDecimal, offerId: Long, includeOfferLocations: Boolean, deviceId: String, accountId: Long, parentOfferId: Long, retailerLocationIds: String, offerLocations: String, tags: String, title: String, subTitle: String, details: String, subDetails: String, finePrint: String, barcodeType: String, barcodeEntry: String, externalRedeemOptions: String, externalUrl: String, externalId: String, ticketsRewardType: String, ticketsReward: Long, activated: Long, expires: Long, noExpiration: Boolean, availableLimit: Integer, availableLimitPerUser: Integer, addedLimit: Integer, viewLimit: Integer, maxPrints: Integer, ticketPriceType: String, ticketPrice: Long, fullPrice: Double, discountPrice: Double, showRemaining: Boolean, showRedeemed: Boolean, replaced: Boolean, featured: Boolean, offerType: String, specialOfferType: String, offerVisibility: String, categoryIds: String, filterIds: String, active: Boolean, barcodeAssetId: Long, imageAssetId: Long, imageAssetId1: Long, imageAssetId2: Long, imageAssetId3: Long, imageAssetId4: Long, imageAssetId5: Long, publisher: String, redeemableStart: Long, redeemableEnd: Long, brand: String, productType: String, conditionType: String, isbn: String, asin: String, catalogNumbers: String, department: String, features: String, minimumPrice: Double, width: Double, height: Double, depth: Double, weight: Double, unit: String, studio: String, parentalRating: String, publishDate: Long, availabilityDate: Long, sizeId: Long, listingId: Long, mediaType: String, duration: Integer, author: String, releaseDate: Long, collectionIds: String, rebootTimeHour: Integer, rebootTimeMinute: Integer, idleTimeoutInSecond: Integer, serialNumber: String, udid: String, deviceType: String, devicePower: Double, deviceInterference: Double, availability: String, availabilitySummary: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], parentOfferIdQuery: QueryParam[Long], includeOfferLocationsQuery: QueryParam[Boolean], retailerLocationIdsQuery: QueryParam[String], offerLocationsQuery: QueryParam[String], tagsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], subDetailsQuery: QueryParam[String], finePrintQuery: QueryParam[String], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], externalRedeemOptionsQuery: QueryParam[String], externalUrlQuery: QueryParam[String], externalIdQuery: QueryParam[String], ticketsRewardTypeQuery: QueryParam[String], ticketsRewardQuery: QueryParam[Long], activatedQuery: QueryParam[Long], expiresQuery: QueryParam[Long], noExpirationQuery: QueryParam[Boolean], availableLimitQuery: QueryParam[Integer], availableLimitPerUserQuery: QueryParam[Integer], addedLimitQuery: QueryParam[Integer], viewLimitQuery: QueryParam[Integer], maxPrintsQuery: QueryParam[Integer], ticketPriceTypeQuery: QueryParam[String], ticketPriceQuery: QueryParam[Long], fullPriceQuery: QueryParam[Double], discountPriceQuery: QueryParam[Double], showRemainingQuery: QueryParam[Boolean], showRedeemedQuery: QueryParam[Boolean], replacedQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], offerTypeQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], offerVisibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], barcodeAssetIdQuery: QueryParam[Long], imageAssetIdQuery: QueryParam[Long], imageAssetId1Query: QueryParam[Long], imageAssetId2Query: QueryParam[Long], imageAssetId3Query: QueryParam[Long], imageAssetId4Query: QueryParam[Long], imageAssetId5Query: QueryParam[Long], publisherQuery: QueryParam[String], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long], brandQuery: QueryParam[String], productTypeQuery: QueryParam[String], conditionTypeQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], catalogNumbersQuery: QueryParam[String], departmentQuery: QueryParam[String], featuresQuery: QueryParam[String], minimumPriceQuery: QueryParam[Double], widthQuery: QueryParam[Double], heightQuery: QueryParam[Double], depthQuery: QueryParam[Double], weightQuery: QueryParam[Double], unitQuery: QueryParam[String], studioQuery: QueryParam[String], parentalRatingQuery: QueryParam[String], publishDateQuery: QueryParam[Long], availabilityDateQuery: QueryParam[Long], sizeIdQuery: QueryParam[Long], listingIdQuery: QueryParam[Long], mediaTypeQuery: QueryParam[String], durationQuery: QueryParam[Integer], authorQuery: QueryParam[String], releaseDateQuery: QueryParam[Long], collectionIdsQuery: QueryParam[String], rebootTimeHourQuery: QueryParam[Integer], rebootTimeMinuteQuery: QueryParam[Integer], idleTimeoutInSecondQuery: QueryParam[Integer], serialNumberQuery: QueryParam[String], udidQuery: QueryParam[String], deviceTypeQuery: QueryParam[String], devicePowerQuery: QueryParam[Double], deviceInterferenceQuery: QueryParam[Double], availabilityQuery: QueryParam[String], availabilitySummaryQuery: QueryParam[String]): Task[RetailerOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[RetailerOfferResponse] = jsonOf[RetailerOfferResponse]

    val path = "/api/{version}/retailer/offer/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("parentOfferId", Some(parentOfferIdQuery.toParamString(parentOfferId))), ("includeOfferLocations", Some(includeOfferLocationsQuery.toParamString(includeOfferLocations))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("offerLocations", Some(offerLocationsQuery.toParamString(offerLocations))), ("tags", Some(tagsQuery.toParamString(tags))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("subDetails", Some(subDetailsQuery.toParamString(subDetails))), ("finePrint", Some(finePrintQuery.toParamString(finePrint))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("externalRedeemOptions", Some(externalRedeemOptionsQuery.toParamString(externalRedeemOptions))), ("externalUrl", Some(externalUrlQuery.toParamString(externalUrl))), ("externalId", Some(externalIdQuery.toParamString(externalId))), ("ticketsRewardType", Some(ticketsRewardTypeQuery.toParamString(ticketsRewardType))), ("ticketsReward", Some(ticketsRewardQuery.toParamString(ticketsReward))), ("activated", Some(activatedQuery.toParamString(activated))), ("expires", Some(expiresQuery.toParamString(expires))), ("noExpiration", Some(noExpirationQuery.toParamString(noExpiration))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("availableLimitPerUser", Some(availableLimitPerUserQuery.toParamString(availableLimitPerUser))), ("addedLimit", Some(addedLimitQuery.toParamString(addedLimit))), ("viewLimit", Some(viewLimitQuery.toParamString(viewLimit))), ("maxPrints", Some(maxPrintsQuery.toParamString(maxPrints))), ("ticketPriceType", Some(ticketPriceTypeQuery.toParamString(ticketPriceType))), ("ticketPrice", Some(ticketPriceQuery.toParamString(ticketPrice))), ("fullPrice", Some(fullPriceQuery.toParamString(fullPrice))), ("discountPrice", Some(discountPriceQuery.toParamString(discountPrice))), ("showRemaining", Some(showRemainingQuery.toParamString(showRemaining))), ("showRedeemed", Some(showRedeemedQuery.toParamString(showRedeemed))), ("replaced", Some(replacedQuery.toParamString(replaced))), ("featured", Some(featuredQuery.toParamString(featured))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("offerVisibility", Some(offerVisibilityQuery.toParamString(offerVisibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("barcodeAssetId", Some(barcodeAssetIdQuery.toParamString(barcodeAssetId))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("imageAssetId1", Some(imageAssetId1Query.toParamString(imageAssetId1))), ("imageAssetId2", Some(imageAssetId2Query.toParamString(imageAssetId2))), ("imageAssetId3", Some(imageAssetId3Query.toParamString(imageAssetId3))), ("imageAssetId4", Some(imageAssetId4Query.toParamString(imageAssetId4))), ("imageAssetId5", Some(imageAssetId5Query.toParamString(imageAssetId5))), ("publisher", Some(publisherQuery.toParamString(publisher))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))), ("brand", Some(brandQuery.toParamString(brand))), ("productType", Some(productTypeQuery.toParamString(productType))), ("conditionType", Some(conditionTypeQuery.toParamString(conditionType))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("catalogNumbers", Some(catalogNumbersQuery.toParamString(catalogNumbers))), ("department", Some(departmentQuery.toParamString(department))), ("features", Some(featuresQuery.toParamString(features))), ("minimumPrice", Some(minimumPriceQuery.toParamString(minimumPrice))), ("width", Some(widthQuery.toParamString(width))), ("height", Some(heightQuery.toParamString(height))), ("depth", Some(depthQuery.toParamString(depth))), ("weight", Some(weightQuery.toParamString(weight))), ("unit", Some(unitQuery.toParamString(unit))), ("studio", Some(studioQuery.toParamString(studio))), ("parentalRating", Some(parentalRatingQuery.toParamString(parentalRating))), ("publishDate", Some(publishDateQuery.toParamString(publishDate))), ("availabilityDate", Some(availabilityDateQuery.toParamString(availabilityDate))), ("sizeId", Some(sizeIdQuery.toParamString(sizeId))), ("listingId", Some(listingIdQuery.toParamString(listingId))), ("mediaType", Some(mediaTypeQuery.toParamString(mediaType))), ("duration", Some(durationQuery.toParamString(duration))), ("author", Some(authorQuery.toParamString(author))), ("releaseDate", Some(releaseDateQuery.toParamString(releaseDate))), ("collectionIds", Some(collectionIdsQuery.toParamString(collectionIds))), ("rebootTimeHour", Some(rebootTimeHourQuery.toParamString(rebootTimeHour))), ("rebootTimeMinute", Some(rebootTimeMinuteQuery.toParamString(rebootTimeMinute))), ("idleTimeoutInSecond", Some(idleTimeoutInSecondQuery.toParamString(idleTimeoutInSecond))), ("serialNumber", Some(serialNumberQuery.toParamString(serialNumber))), ("udid", Some(udidQuery.toParamString(udid))), ("deviceType", Some(deviceTypeQuery.toParamString(deviceType))), ("devicePower", Some(devicePowerQuery.toParamString(devicePower))), ("deviceInterference", Some(deviceInterferenceQuery.toParamString(deviceInterference))), ("availability", Some(availabilityQuery.toParamString(availability))), ("availabilitySummary", Some(availabilitySummaryQuery.toParamString(availabilitySummary))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RetailerOfferResponse](req)

    } yield resp
  }

  def updateOfferStatus(version: BigDecimal, offerIds: String, active: Boolean, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/retailer/offer/status".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerIds", Some(offerIdsQuery.toParamString(offerIds))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
