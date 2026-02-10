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
import org.openapitools.client.api.MediaOfferResponse
import org.openapitools.client.api.SirqulResponse

object MediaApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createMedia(host: String, version: BigDecimal, accountId: Long, title: String, barcodeType: String, noExpiration: Boolean, availableLimit: Integer, availableLimitPerUser: Integer, addedLimit: Integer, viewLimit: Integer, maxPrints: Integer, ticketPrice: Long, fullPrice: Double, discountPrice: Double, specialOfferType: String, offerVisibility: String, active: Boolean, retailerLocationIds: String, subTitle: String, details: String, subDetails: String, finePrint: String, barcodeEntry: String, externalRedeemOptions: String, externalUrl: String, ticketsRewardType: String, ticketsReward: Long, activated: Long, expires: Long, ticketPriceType: String, showRemaining: Boolean, showRedeemed: Boolean, replaced: Boolean, featured: Boolean, categoryIds: String, filterIds: String, barcodeAssetId: Long, imageAssetId: Long, imageAssetId1: Long, imageAssetId2: Long, imageAssetId3: Long, imageAssetId4: Long, imageAssetId5: Long, publisher: String, redeemableStart: Long, redeemableEnd: Long, conditionType: String, isbn: String, asin: String, catalogNumbers: String, parentalRating: String, availabilityDate: Long, mediaType: String, duration: Integer, author: String, releaseDate: Long, collectionIds: String, availability: String, availabilitySummary: String)(implicit accountIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], subDetailsQuery: QueryParam[String], finePrintQuery: QueryParam[String], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], externalRedeemOptionsQuery: QueryParam[String], externalUrlQuery: QueryParam[String], ticketsRewardTypeQuery: QueryParam[String], ticketsRewardQuery: QueryParam[Long], activatedQuery: QueryParam[Long], expiresQuery: QueryParam[Long], noExpirationQuery: QueryParam[Boolean], availableLimitQuery: QueryParam[Integer], availableLimitPerUserQuery: QueryParam[Integer], addedLimitQuery: QueryParam[Integer], viewLimitQuery: QueryParam[Integer], maxPrintsQuery: QueryParam[Integer], ticketPriceTypeQuery: QueryParam[String], ticketPriceQuery: QueryParam[Long], fullPriceQuery: QueryParam[Double], discountPriceQuery: QueryParam[Double], showRemainingQuery: QueryParam[Boolean], showRedeemedQuery: QueryParam[Boolean], replacedQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], specialOfferTypeQuery: QueryParam[String], offerVisibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], barcodeAssetIdQuery: QueryParam[Long], imageAssetIdQuery: QueryParam[Long], imageAssetId1Query: QueryParam[Long], imageAssetId2Query: QueryParam[Long], imageAssetId3Query: QueryParam[Long], imageAssetId4Query: QueryParam[Long], imageAssetId5Query: QueryParam[Long], publisherQuery: QueryParam[String], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long], conditionTypeQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], catalogNumbersQuery: QueryParam[String], parentalRatingQuery: QueryParam[String], availabilityDateQuery: QueryParam[Long], mediaTypeQuery: QueryParam[String], durationQuery: QueryParam[Integer], authorQuery: QueryParam[String], releaseDateQuery: QueryParam[Long], collectionIdsQuery: QueryParam[String], availabilityQuery: QueryParam[String], availabilitySummaryQuery: QueryParam[String]): Task[MediaOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MediaOfferResponse] = jsonOf[MediaOfferResponse]

    val path = "/api/{version}/media/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("subDetails", Some(subDetailsQuery.toParamString(subDetails))), ("finePrint", Some(finePrintQuery.toParamString(finePrint))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("externalRedeemOptions", Some(externalRedeemOptionsQuery.toParamString(externalRedeemOptions))), ("externalUrl", Some(externalUrlQuery.toParamString(externalUrl))), ("ticketsRewardType", Some(ticketsRewardTypeQuery.toParamString(ticketsRewardType))), ("ticketsReward", Some(ticketsRewardQuery.toParamString(ticketsReward))), ("activated", Some(activatedQuery.toParamString(activated))), ("expires", Some(expiresQuery.toParamString(expires))), ("noExpiration", Some(noExpirationQuery.toParamString(noExpiration))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("availableLimitPerUser", Some(availableLimitPerUserQuery.toParamString(availableLimitPerUser))), ("addedLimit", Some(addedLimitQuery.toParamString(addedLimit))), ("viewLimit", Some(viewLimitQuery.toParamString(viewLimit))), ("maxPrints", Some(maxPrintsQuery.toParamString(maxPrints))), ("ticketPriceType", Some(ticketPriceTypeQuery.toParamString(ticketPriceType))), ("ticketPrice", Some(ticketPriceQuery.toParamString(ticketPrice))), ("fullPrice", Some(fullPriceQuery.toParamString(fullPrice))), ("discountPrice", Some(discountPriceQuery.toParamString(discountPrice))), ("showRemaining", Some(showRemainingQuery.toParamString(showRemaining))), ("showRedeemed", Some(showRedeemedQuery.toParamString(showRedeemed))), ("replaced", Some(replacedQuery.toParamString(replaced))), ("featured", Some(featuredQuery.toParamString(featured))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("offerVisibility", Some(offerVisibilityQuery.toParamString(offerVisibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("barcodeAssetId", Some(barcodeAssetIdQuery.toParamString(barcodeAssetId))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("imageAssetId1", Some(imageAssetId1Query.toParamString(imageAssetId1))), ("imageAssetId2", Some(imageAssetId2Query.toParamString(imageAssetId2))), ("imageAssetId3", Some(imageAssetId3Query.toParamString(imageAssetId3))), ("imageAssetId4", Some(imageAssetId4Query.toParamString(imageAssetId4))), ("imageAssetId5", Some(imageAssetId5Query.toParamString(imageAssetId5))), ("publisher", Some(publisherQuery.toParamString(publisher))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))), ("conditionType", Some(conditionTypeQuery.toParamString(conditionType))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("catalogNumbers", Some(catalogNumbersQuery.toParamString(catalogNumbers))), ("parentalRating", Some(parentalRatingQuery.toParamString(parentalRating))), ("availabilityDate", Some(availabilityDateQuery.toParamString(availabilityDate))), ("mediaType", Some(mediaTypeQuery.toParamString(mediaType))), ("duration", Some(durationQuery.toParamString(duration))), ("author", Some(authorQuery.toParamString(author))), ("releaseDate", Some(releaseDateQuery.toParamString(releaseDate))), ("collectionIds", Some(collectionIdsQuery.toParamString(collectionIds))), ("availability", Some(availabilityQuery.toParamString(availability))), ("availabilitySummary", Some(availabilitySummaryQuery.toParamString(availabilitySummary))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MediaOfferResponse](req)

    } yield resp
  }

  def deleteMedia(host: String, version: BigDecimal, accountId: Long, mediaId: Long)(implicit accountIdQuery: QueryParam[Long], mediaIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/media/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("mediaId", Some(mediaIdQuery.toParamString(mediaId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getMedia(host: String, version: BigDecimal, accountId: Long, mediaId: Long)(implicit accountIdQuery: QueryParam[Long], mediaIdQuery: QueryParam[Long]): Task[MediaOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MediaOfferResponse] = jsonOf[MediaOfferResponse]

    val path = "/api/{version}/media/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("mediaId", Some(mediaIdQuery.toParamString(mediaId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MediaOfferResponse](req)

    } yield resp
  }

  def searchMedia(host: String, version: BigDecimal, accountId: Long, activeOnly: Boolean, sortField: String, descending: Boolean, keyword: String, categoryIds: String, filterIds: String, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], activeOnlyQuery: QueryParam[Boolean], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[MediaOfferResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MediaOfferResponse]] = jsonOf[List[MediaOfferResponse]]

    val path = "/api/{version}/media/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MediaOfferResponse]](req)

    } yield resp
  }

  def updateMedia(host: String, version: BigDecimal, accountId: Long, mediaId: Long, retailerLocationIds: String, offerLocations: String, title: String, subTitle: String, details: String, subDetails: String, finePrint: String, barcodeType: String, barcodeEntry: String, externalRedeemOptions: String, externalUrl: String, ticketsRewardType: String, ticketsReward: Long, activated: Long, expires: Long, noExpiration: Boolean, availableLimit: Integer, availableLimitPerUser: Integer, addedLimit: Integer, viewLimit: Integer, maxPrints: Integer, ticketPriceType: String, ticketPrice: Long, fullPrice: Double, discountPrice: Double, showRemaining: Boolean, showRedeemed: Boolean, replaced: Boolean, featured: Boolean, specialOfferType: String, offerVisibility: String, categoryIds: String, filterIds: String, active: Boolean, barcodeAssetId: Long, imageAssetId: Long, imageAssetId1: Long, imageAssetId2: Long, imageAssetId3: Long, imageAssetId4: Long, imageAssetId5: Long, publisher: String, redeemableStart: Long, redeemableEnd: Long, conditionType: String, isbn: String, asin: String, catalogNumbers: String, availabilityDate: Long, parentalRating: String, mediaType: String, duration: Integer, author: String, releaseDate: Long, collectionIds: String, availability: String, availabilitySummary: String)(implicit accountIdQuery: QueryParam[Long], mediaIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], offerLocationsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], subDetailsQuery: QueryParam[String], finePrintQuery: QueryParam[String], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], externalRedeemOptionsQuery: QueryParam[String], externalUrlQuery: QueryParam[String], ticketsRewardTypeQuery: QueryParam[String], ticketsRewardQuery: QueryParam[Long], activatedQuery: QueryParam[Long], expiresQuery: QueryParam[Long], noExpirationQuery: QueryParam[Boolean], availableLimitQuery: QueryParam[Integer], availableLimitPerUserQuery: QueryParam[Integer], addedLimitQuery: QueryParam[Integer], viewLimitQuery: QueryParam[Integer], maxPrintsQuery: QueryParam[Integer], ticketPriceTypeQuery: QueryParam[String], ticketPriceQuery: QueryParam[Long], fullPriceQuery: QueryParam[Double], discountPriceQuery: QueryParam[Double], showRemainingQuery: QueryParam[Boolean], showRedeemedQuery: QueryParam[Boolean], replacedQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], specialOfferTypeQuery: QueryParam[String], offerVisibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], barcodeAssetIdQuery: QueryParam[Long], imageAssetIdQuery: QueryParam[Long], imageAssetId1Query: QueryParam[Long], imageAssetId2Query: QueryParam[Long], imageAssetId3Query: QueryParam[Long], imageAssetId4Query: QueryParam[Long], imageAssetId5Query: QueryParam[Long], publisherQuery: QueryParam[String], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long], conditionTypeQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], catalogNumbersQuery: QueryParam[String], availabilityDateQuery: QueryParam[Long], parentalRatingQuery: QueryParam[String], mediaTypeQuery: QueryParam[String], durationQuery: QueryParam[Integer], authorQuery: QueryParam[String], releaseDateQuery: QueryParam[Long], collectionIdsQuery: QueryParam[String], availabilityQuery: QueryParam[String], availabilitySummaryQuery: QueryParam[String]): Task[MediaOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MediaOfferResponse] = jsonOf[MediaOfferResponse]

    val path = "/api/{version}/media/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("mediaId", Some(mediaIdQuery.toParamString(mediaId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("offerLocations", Some(offerLocationsQuery.toParamString(offerLocations))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("subDetails", Some(subDetailsQuery.toParamString(subDetails))), ("finePrint", Some(finePrintQuery.toParamString(finePrint))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("externalRedeemOptions", Some(externalRedeemOptionsQuery.toParamString(externalRedeemOptions))), ("externalUrl", Some(externalUrlQuery.toParamString(externalUrl))), ("ticketsRewardType", Some(ticketsRewardTypeQuery.toParamString(ticketsRewardType))), ("ticketsReward", Some(ticketsRewardQuery.toParamString(ticketsReward))), ("activated", Some(activatedQuery.toParamString(activated))), ("expires", Some(expiresQuery.toParamString(expires))), ("noExpiration", Some(noExpirationQuery.toParamString(noExpiration))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("availableLimitPerUser", Some(availableLimitPerUserQuery.toParamString(availableLimitPerUser))), ("addedLimit", Some(addedLimitQuery.toParamString(addedLimit))), ("viewLimit", Some(viewLimitQuery.toParamString(viewLimit))), ("maxPrints", Some(maxPrintsQuery.toParamString(maxPrints))), ("ticketPriceType", Some(ticketPriceTypeQuery.toParamString(ticketPriceType))), ("ticketPrice", Some(ticketPriceQuery.toParamString(ticketPrice))), ("fullPrice", Some(fullPriceQuery.toParamString(fullPrice))), ("discountPrice", Some(discountPriceQuery.toParamString(discountPrice))), ("showRemaining", Some(showRemainingQuery.toParamString(showRemaining))), ("showRedeemed", Some(showRedeemedQuery.toParamString(showRedeemed))), ("replaced", Some(replacedQuery.toParamString(replaced))), ("featured", Some(featuredQuery.toParamString(featured))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("offerVisibility", Some(offerVisibilityQuery.toParamString(offerVisibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("barcodeAssetId", Some(barcodeAssetIdQuery.toParamString(barcodeAssetId))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("imageAssetId1", Some(imageAssetId1Query.toParamString(imageAssetId1))), ("imageAssetId2", Some(imageAssetId2Query.toParamString(imageAssetId2))), ("imageAssetId3", Some(imageAssetId3Query.toParamString(imageAssetId3))), ("imageAssetId4", Some(imageAssetId4Query.toParamString(imageAssetId4))), ("imageAssetId5", Some(imageAssetId5Query.toParamString(imageAssetId5))), ("publisher", Some(publisherQuery.toParamString(publisher))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))), ("conditionType", Some(conditionTypeQuery.toParamString(conditionType))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("catalogNumbers", Some(catalogNumbersQuery.toParamString(catalogNumbers))), ("availabilityDate", Some(availabilityDateQuery.toParamString(availabilityDate))), ("parentalRating", Some(parentalRatingQuery.toParamString(parentalRating))), ("mediaType", Some(mediaTypeQuery.toParamString(mediaType))), ("duration", Some(durationQuery.toParamString(duration))), ("author", Some(authorQuery.toParamString(author))), ("releaseDate", Some(releaseDateQuery.toParamString(releaseDate))), ("collectionIds", Some(collectionIdsQuery.toParamString(collectionIds))), ("availability", Some(availabilityQuery.toParamString(availability))), ("availabilitySummary", Some(availabilitySummaryQuery.toParamString(availabilitySummary))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MediaOfferResponse](req)

    } yield resp
  }

}

class HttpServiceMediaApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createMedia(version: BigDecimal, accountId: Long, title: String, barcodeType: String, noExpiration: Boolean, availableLimit: Integer, availableLimitPerUser: Integer, addedLimit: Integer, viewLimit: Integer, maxPrints: Integer, ticketPrice: Long, fullPrice: Double, discountPrice: Double, specialOfferType: String, offerVisibility: String, active: Boolean, retailerLocationIds: String, subTitle: String, details: String, subDetails: String, finePrint: String, barcodeEntry: String, externalRedeemOptions: String, externalUrl: String, ticketsRewardType: String, ticketsReward: Long, activated: Long, expires: Long, ticketPriceType: String, showRemaining: Boolean, showRedeemed: Boolean, replaced: Boolean, featured: Boolean, categoryIds: String, filterIds: String, barcodeAssetId: Long, imageAssetId: Long, imageAssetId1: Long, imageAssetId2: Long, imageAssetId3: Long, imageAssetId4: Long, imageAssetId5: Long, publisher: String, redeemableStart: Long, redeemableEnd: Long, conditionType: String, isbn: String, asin: String, catalogNumbers: String, parentalRating: String, availabilityDate: Long, mediaType: String, duration: Integer, author: String, releaseDate: Long, collectionIds: String, availability: String, availabilitySummary: String)(implicit accountIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], subDetailsQuery: QueryParam[String], finePrintQuery: QueryParam[String], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], externalRedeemOptionsQuery: QueryParam[String], externalUrlQuery: QueryParam[String], ticketsRewardTypeQuery: QueryParam[String], ticketsRewardQuery: QueryParam[Long], activatedQuery: QueryParam[Long], expiresQuery: QueryParam[Long], noExpirationQuery: QueryParam[Boolean], availableLimitQuery: QueryParam[Integer], availableLimitPerUserQuery: QueryParam[Integer], addedLimitQuery: QueryParam[Integer], viewLimitQuery: QueryParam[Integer], maxPrintsQuery: QueryParam[Integer], ticketPriceTypeQuery: QueryParam[String], ticketPriceQuery: QueryParam[Long], fullPriceQuery: QueryParam[Double], discountPriceQuery: QueryParam[Double], showRemainingQuery: QueryParam[Boolean], showRedeemedQuery: QueryParam[Boolean], replacedQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], specialOfferTypeQuery: QueryParam[String], offerVisibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], barcodeAssetIdQuery: QueryParam[Long], imageAssetIdQuery: QueryParam[Long], imageAssetId1Query: QueryParam[Long], imageAssetId2Query: QueryParam[Long], imageAssetId3Query: QueryParam[Long], imageAssetId4Query: QueryParam[Long], imageAssetId5Query: QueryParam[Long], publisherQuery: QueryParam[String], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long], conditionTypeQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], catalogNumbersQuery: QueryParam[String], parentalRatingQuery: QueryParam[String], availabilityDateQuery: QueryParam[Long], mediaTypeQuery: QueryParam[String], durationQuery: QueryParam[Integer], authorQuery: QueryParam[String], releaseDateQuery: QueryParam[Long], collectionIdsQuery: QueryParam[String], availabilityQuery: QueryParam[String], availabilitySummaryQuery: QueryParam[String]): Task[MediaOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MediaOfferResponse] = jsonOf[MediaOfferResponse]

    val path = "/api/{version}/media/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("subDetails", Some(subDetailsQuery.toParamString(subDetails))), ("finePrint", Some(finePrintQuery.toParamString(finePrint))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("externalRedeemOptions", Some(externalRedeemOptionsQuery.toParamString(externalRedeemOptions))), ("externalUrl", Some(externalUrlQuery.toParamString(externalUrl))), ("ticketsRewardType", Some(ticketsRewardTypeQuery.toParamString(ticketsRewardType))), ("ticketsReward", Some(ticketsRewardQuery.toParamString(ticketsReward))), ("activated", Some(activatedQuery.toParamString(activated))), ("expires", Some(expiresQuery.toParamString(expires))), ("noExpiration", Some(noExpirationQuery.toParamString(noExpiration))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("availableLimitPerUser", Some(availableLimitPerUserQuery.toParamString(availableLimitPerUser))), ("addedLimit", Some(addedLimitQuery.toParamString(addedLimit))), ("viewLimit", Some(viewLimitQuery.toParamString(viewLimit))), ("maxPrints", Some(maxPrintsQuery.toParamString(maxPrints))), ("ticketPriceType", Some(ticketPriceTypeQuery.toParamString(ticketPriceType))), ("ticketPrice", Some(ticketPriceQuery.toParamString(ticketPrice))), ("fullPrice", Some(fullPriceQuery.toParamString(fullPrice))), ("discountPrice", Some(discountPriceQuery.toParamString(discountPrice))), ("showRemaining", Some(showRemainingQuery.toParamString(showRemaining))), ("showRedeemed", Some(showRedeemedQuery.toParamString(showRedeemed))), ("replaced", Some(replacedQuery.toParamString(replaced))), ("featured", Some(featuredQuery.toParamString(featured))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("offerVisibility", Some(offerVisibilityQuery.toParamString(offerVisibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("barcodeAssetId", Some(barcodeAssetIdQuery.toParamString(barcodeAssetId))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("imageAssetId1", Some(imageAssetId1Query.toParamString(imageAssetId1))), ("imageAssetId2", Some(imageAssetId2Query.toParamString(imageAssetId2))), ("imageAssetId3", Some(imageAssetId3Query.toParamString(imageAssetId3))), ("imageAssetId4", Some(imageAssetId4Query.toParamString(imageAssetId4))), ("imageAssetId5", Some(imageAssetId5Query.toParamString(imageAssetId5))), ("publisher", Some(publisherQuery.toParamString(publisher))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))), ("conditionType", Some(conditionTypeQuery.toParamString(conditionType))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("catalogNumbers", Some(catalogNumbersQuery.toParamString(catalogNumbers))), ("parentalRating", Some(parentalRatingQuery.toParamString(parentalRating))), ("availabilityDate", Some(availabilityDateQuery.toParamString(availabilityDate))), ("mediaType", Some(mediaTypeQuery.toParamString(mediaType))), ("duration", Some(durationQuery.toParamString(duration))), ("author", Some(authorQuery.toParamString(author))), ("releaseDate", Some(releaseDateQuery.toParamString(releaseDate))), ("collectionIds", Some(collectionIdsQuery.toParamString(collectionIds))), ("availability", Some(availabilityQuery.toParamString(availability))), ("availabilitySummary", Some(availabilitySummaryQuery.toParamString(availabilitySummary))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MediaOfferResponse](req)

    } yield resp
  }

  def deleteMedia(version: BigDecimal, accountId: Long, mediaId: Long)(implicit accountIdQuery: QueryParam[Long], mediaIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/media/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("mediaId", Some(mediaIdQuery.toParamString(mediaId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getMedia(version: BigDecimal, accountId: Long, mediaId: Long)(implicit accountIdQuery: QueryParam[Long], mediaIdQuery: QueryParam[Long]): Task[MediaOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MediaOfferResponse] = jsonOf[MediaOfferResponse]

    val path = "/api/{version}/media/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("mediaId", Some(mediaIdQuery.toParamString(mediaId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MediaOfferResponse](req)

    } yield resp
  }

  def searchMedia(version: BigDecimal, accountId: Long, activeOnly: Boolean, sortField: String, descending: Boolean, keyword: String, categoryIds: String, filterIds: String, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], activeOnlyQuery: QueryParam[Boolean], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[MediaOfferResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[MediaOfferResponse]] = jsonOf[List[MediaOfferResponse]]

    val path = "/api/{version}/media/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[MediaOfferResponse]](req)

    } yield resp
  }

  def updateMedia(version: BigDecimal, accountId: Long, mediaId: Long, retailerLocationIds: String, offerLocations: String, title: String, subTitle: String, details: String, subDetails: String, finePrint: String, barcodeType: String, barcodeEntry: String, externalRedeemOptions: String, externalUrl: String, ticketsRewardType: String, ticketsReward: Long, activated: Long, expires: Long, noExpiration: Boolean, availableLimit: Integer, availableLimitPerUser: Integer, addedLimit: Integer, viewLimit: Integer, maxPrints: Integer, ticketPriceType: String, ticketPrice: Long, fullPrice: Double, discountPrice: Double, showRemaining: Boolean, showRedeemed: Boolean, replaced: Boolean, featured: Boolean, specialOfferType: String, offerVisibility: String, categoryIds: String, filterIds: String, active: Boolean, barcodeAssetId: Long, imageAssetId: Long, imageAssetId1: Long, imageAssetId2: Long, imageAssetId3: Long, imageAssetId4: Long, imageAssetId5: Long, publisher: String, redeemableStart: Long, redeemableEnd: Long, conditionType: String, isbn: String, asin: String, catalogNumbers: String, availabilityDate: Long, parentalRating: String, mediaType: String, duration: Integer, author: String, releaseDate: Long, collectionIds: String, availability: String, availabilitySummary: String)(implicit accountIdQuery: QueryParam[Long], mediaIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], offerLocationsQuery: QueryParam[String], titleQuery: QueryParam[String], subTitleQuery: QueryParam[String], detailsQuery: QueryParam[String], subDetailsQuery: QueryParam[String], finePrintQuery: QueryParam[String], barcodeTypeQuery: QueryParam[String], barcodeEntryQuery: QueryParam[String], externalRedeemOptionsQuery: QueryParam[String], externalUrlQuery: QueryParam[String], ticketsRewardTypeQuery: QueryParam[String], ticketsRewardQuery: QueryParam[Long], activatedQuery: QueryParam[Long], expiresQuery: QueryParam[Long], noExpirationQuery: QueryParam[Boolean], availableLimitQuery: QueryParam[Integer], availableLimitPerUserQuery: QueryParam[Integer], addedLimitQuery: QueryParam[Integer], viewLimitQuery: QueryParam[Integer], maxPrintsQuery: QueryParam[Integer], ticketPriceTypeQuery: QueryParam[String], ticketPriceQuery: QueryParam[Long], fullPriceQuery: QueryParam[Double], discountPriceQuery: QueryParam[Double], showRemainingQuery: QueryParam[Boolean], showRedeemedQuery: QueryParam[Boolean], replacedQuery: QueryParam[Boolean], featuredQuery: QueryParam[Boolean], specialOfferTypeQuery: QueryParam[String], offerVisibilityQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], activeQuery: QueryParam[Boolean], barcodeAssetIdQuery: QueryParam[Long], imageAssetIdQuery: QueryParam[Long], imageAssetId1Query: QueryParam[Long], imageAssetId2Query: QueryParam[Long], imageAssetId3Query: QueryParam[Long], imageAssetId4Query: QueryParam[Long], imageAssetId5Query: QueryParam[Long], publisherQuery: QueryParam[String], redeemableStartQuery: QueryParam[Long], redeemableEndQuery: QueryParam[Long], conditionTypeQuery: QueryParam[String], isbnQuery: QueryParam[String], asinQuery: QueryParam[String], catalogNumbersQuery: QueryParam[String], availabilityDateQuery: QueryParam[Long], parentalRatingQuery: QueryParam[String], mediaTypeQuery: QueryParam[String], durationQuery: QueryParam[Integer], authorQuery: QueryParam[String], releaseDateQuery: QueryParam[Long], collectionIdsQuery: QueryParam[String], availabilityQuery: QueryParam[String], availabilitySummaryQuery: QueryParam[String]): Task[MediaOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[MediaOfferResponse] = jsonOf[MediaOfferResponse]

    val path = "/api/{version}/media/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("mediaId", Some(mediaIdQuery.toParamString(mediaId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("offerLocations", Some(offerLocationsQuery.toParamString(offerLocations))), ("title", Some(titleQuery.toParamString(title))), ("subTitle", Some(subTitleQuery.toParamString(subTitle))), ("details", Some(detailsQuery.toParamString(details))), ("subDetails", Some(subDetailsQuery.toParamString(subDetails))), ("finePrint", Some(finePrintQuery.toParamString(finePrint))), ("barcodeType", Some(barcodeTypeQuery.toParamString(barcodeType))), ("barcodeEntry", Some(barcodeEntryQuery.toParamString(barcodeEntry))), ("externalRedeemOptions", Some(externalRedeemOptionsQuery.toParamString(externalRedeemOptions))), ("externalUrl", Some(externalUrlQuery.toParamString(externalUrl))), ("ticketsRewardType", Some(ticketsRewardTypeQuery.toParamString(ticketsRewardType))), ("ticketsReward", Some(ticketsRewardQuery.toParamString(ticketsReward))), ("activated", Some(activatedQuery.toParamString(activated))), ("expires", Some(expiresQuery.toParamString(expires))), ("noExpiration", Some(noExpirationQuery.toParamString(noExpiration))), ("availableLimit", Some(availableLimitQuery.toParamString(availableLimit))), ("availableLimitPerUser", Some(availableLimitPerUserQuery.toParamString(availableLimitPerUser))), ("addedLimit", Some(addedLimitQuery.toParamString(addedLimit))), ("viewLimit", Some(viewLimitQuery.toParamString(viewLimit))), ("maxPrints", Some(maxPrintsQuery.toParamString(maxPrints))), ("ticketPriceType", Some(ticketPriceTypeQuery.toParamString(ticketPriceType))), ("ticketPrice", Some(ticketPriceQuery.toParamString(ticketPrice))), ("fullPrice", Some(fullPriceQuery.toParamString(fullPrice))), ("discountPrice", Some(discountPriceQuery.toParamString(discountPrice))), ("showRemaining", Some(showRemainingQuery.toParamString(showRemaining))), ("showRedeemed", Some(showRedeemedQuery.toParamString(showRedeemed))), ("replaced", Some(replacedQuery.toParamString(replaced))), ("featured", Some(featuredQuery.toParamString(featured))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("offerVisibility", Some(offerVisibilityQuery.toParamString(offerVisibility))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("active", Some(activeQuery.toParamString(active))), ("barcodeAssetId", Some(barcodeAssetIdQuery.toParamString(barcodeAssetId))), ("imageAssetId", Some(imageAssetIdQuery.toParamString(imageAssetId))), ("imageAssetId1", Some(imageAssetId1Query.toParamString(imageAssetId1))), ("imageAssetId2", Some(imageAssetId2Query.toParamString(imageAssetId2))), ("imageAssetId3", Some(imageAssetId3Query.toParamString(imageAssetId3))), ("imageAssetId4", Some(imageAssetId4Query.toParamString(imageAssetId4))), ("imageAssetId5", Some(imageAssetId5Query.toParamString(imageAssetId5))), ("publisher", Some(publisherQuery.toParamString(publisher))), ("redeemableStart", Some(redeemableStartQuery.toParamString(redeemableStart))), ("redeemableEnd", Some(redeemableEndQuery.toParamString(redeemableEnd))), ("conditionType", Some(conditionTypeQuery.toParamString(conditionType))), ("isbn", Some(isbnQuery.toParamString(isbn))), ("asin", Some(asinQuery.toParamString(asin))), ("catalogNumbers", Some(catalogNumbersQuery.toParamString(catalogNumbers))), ("availabilityDate", Some(availabilityDateQuery.toParamString(availabilityDate))), ("parentalRating", Some(parentalRatingQuery.toParamString(parentalRating))), ("mediaType", Some(mediaTypeQuery.toParamString(mediaType))), ("duration", Some(durationQuery.toParamString(duration))), ("author", Some(authorQuery.toParamString(author))), ("releaseDate", Some(releaseDateQuery.toParamString(releaseDate))), ("collectionIds", Some(collectionIdsQuery.toParamString(collectionIds))), ("availability", Some(availabilityQuery.toParamString(availability))), ("availabilitySummary", Some(availabilitySummaryQuery.toParamString(availabilitySummary))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MediaOfferResponse](req)

    } yield resp
  }

}
