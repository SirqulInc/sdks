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
import org.openapitools.client.api.OfferTransactionResponse
import org.openapitools.client.api.SirqulResponse

object WalletApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createOfferTransaction(host: String, version: BigDecimal, deviceId: String, accountId: Long, offerId: Long, offerLocationId: Long, offerCart: String, promoCode: String, currencyType: String = CASH, usePoints: Boolean, metaData: String, appKey: String, status: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], offerCartQuery: QueryParam[String], promoCodeQuery: QueryParam[String], currencyTypeQuery: QueryParam[String], usePointsQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], appKeyQuery: QueryParam[String], statusQuery: QueryParam[Integer]): Task[List[OfferTransactionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferTransactionResponse]] = jsonOf[List[OfferTransactionResponse]]

    val path = "/api/{version}/wallet/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("offerCart", Some(offerCartQuery.toParamString(offerCart))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("usePoints", Some(usePointsQuery.toParamString(usePoints))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("status", Some(statusQuery.toParamString(status))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferTransactionResponse]](req)

    } yield resp
  }

  def deleteOfferTransaction(host: String, version: BigDecimal, transactionId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], transactionIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/wallet/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("transactionId", Some(transactionIdQuery.toParamString(transactionId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getOfferTransaction(host: String, version: BigDecimal, transactionId: Long, deviceId: String, accountId: Long, includeMission: Boolean = false, latitude: Double, longitude: Double, returnFullResponse: Boolean = true)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], transactionIdQuery: QueryParam[Long], includeMissionQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnFullResponseQuery: QueryParam[Boolean]): Task[OfferTransactionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferTransactionResponse] = jsonOf[OfferTransactionResponse]

    val path = "/api/{version}/wallet/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("transactionId", Some(transactionIdQuery.toParamString(transactionId))), ("includeMission", Some(includeMissionQuery.toParamString(includeMission))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferTransactionResponse](req)

    } yield resp
  }

  def previewOfferTransaction(host: String, version: BigDecimal, deviceId: String, accountId: Long, offerId: Long, offerLocationId: Long, offerCart: String, promoCode: String, currencyType: String = CASH, usePoints: Boolean, metaData: String, appKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], offerCartQuery: QueryParam[String], promoCodeQuery: QueryParam[String], currencyTypeQuery: QueryParam[String], usePointsQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[List[OfferTransactionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferTransactionResponse]] = jsonOf[List[OfferTransactionResponse]]

    val path = "/api/{version}/wallet/preview".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("offerCart", Some(offerCartQuery.toParamString(offerCart))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("usePoints", Some(usePointsQuery.toParamString(usePoints))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferTransactionResponse]](req)

    } yield resp
  }

  def searchOfferTransactions(host: String, version: BigDecimal, deviceId: String, accountId: Long, keyword: String, retailerId: Long, retailerIds: String, retailerLocationId: Long, retailerLocationIds: String, excludeRetailerLocationIds: String, offerId: Long, offerIds: String, offerLocationId: Long, offerLocationIds: String, offerType: String, offerTypes: String, specialOfferType: String, specialOfferTypes: String, categoryIds: String, filterIds: String, offerAudienceIds: String, sortField: String = CREATED, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, latitude: Double, longitude: Double, redeemableStartDate: Long, redeemableEndDate: Long, filterByParentOffer: Boolean = false, startedSince: Long, startedBefore: Long, endedSince: Long, endedBefore: Long, redeemed: Boolean = false, statuses: String, reservationsOnly: Boolean = false, activeOnly: Boolean = false, returnFullResponse: Boolean = false, recurringStartedSince: Long, recurringStartedBefore: Long, recurringExpirationSince: Long, recurringExpirationBefore: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerIdsQuery: QueryParam[String], retailerLocationIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], excludeRetailerLocationIdsQuery: QueryParam[String], offerIdQuery: QueryParam[Long], offerIdsQuery: QueryParam[String], offerLocationIdQuery: QueryParam[Long], offerLocationIdsQuery: QueryParam[String], offerTypeQuery: QueryParam[String], offerTypesQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], specialOfferTypesQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], offerAudienceIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], redeemableStartDateQuery: QueryParam[Long], redeemableEndDateQuery: QueryParam[Long], filterByParentOfferQuery: QueryParam[Boolean], startedSinceQuery: QueryParam[Long], startedBeforeQuery: QueryParam[Long], endedSinceQuery: QueryParam[Long], endedBeforeQuery: QueryParam[Long], redeemedQuery: QueryParam[Boolean], statusesQuery: QueryParam[String], reservationsOnlyQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], returnFullResponseQuery: QueryParam[Boolean], recurringStartedSinceQuery: QueryParam[Long], recurringStartedBeforeQuery: QueryParam[Long], recurringExpirationSinceQuery: QueryParam[Long], recurringExpirationBeforeQuery: QueryParam[Long]): Task[List[OfferTransactionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferTransactionResponse]] = jsonOf[List[OfferTransactionResponse]]

    val path = "/api/{version}/wallet/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerIds", Some(retailerIdsQuery.toParamString(retailerIds))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("excludeRetailerLocationIds", Some(excludeRetailerLocationIdsQuery.toParamString(excludeRetailerLocationIds))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerIds", Some(offerIdsQuery.toParamString(offerIds))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("offerLocationIds", Some(offerLocationIdsQuery.toParamString(offerLocationIds))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("offerTypes", Some(offerTypesQuery.toParamString(offerTypes))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("specialOfferTypes", Some(specialOfferTypesQuery.toParamString(specialOfferTypes))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("offerAudienceIds", Some(offerAudienceIdsQuery.toParamString(offerAudienceIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("redeemableStartDate", Some(redeemableStartDateQuery.toParamString(redeemableStartDate))), ("redeemableEndDate", Some(redeemableEndDateQuery.toParamString(redeemableEndDate))), ("filterByParentOffer", Some(filterByParentOfferQuery.toParamString(filterByParentOffer))), ("startedSince", Some(startedSinceQuery.toParamString(startedSince))), ("startedBefore", Some(startedBeforeQuery.toParamString(startedBefore))), ("endedSince", Some(endedSinceQuery.toParamString(endedSince))), ("endedBefore", Some(endedBeforeQuery.toParamString(endedBefore))), ("redeemed", Some(redeemedQuery.toParamString(redeemed))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("reservationsOnly", Some(reservationsOnlyQuery.toParamString(reservationsOnly))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("recurringStartedSince", Some(recurringStartedSinceQuery.toParamString(recurringStartedSince))), ("recurringStartedBefore", Some(recurringStartedBeforeQuery.toParamString(recurringStartedBefore))), ("recurringExpirationSince", Some(recurringExpirationSinceQuery.toParamString(recurringExpirationSince))), ("recurringExpirationBefore", Some(recurringExpirationBeforeQuery.toParamString(recurringExpirationBefore))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferTransactionResponse]](req)

    } yield resp
  }

  def updateOfferTransaction(host: String, version: BigDecimal, transactionId: Long, status: Integer, deviceId: String, accountId: Long, offerLocationId: Long, currencyType: String = CASH, usePoints: Boolean, appKey: String, latitude: Double, longitude: Double, metaData: String, returnFullResponse: Boolean = false, exceptionMembershipOfferIds: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], transactionIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], currencyTypeQuery: QueryParam[String], usePointsQuery: QueryParam[Boolean], appKeyQuery: QueryParam[String], statusQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], returnFullResponseQuery: QueryParam[Boolean], exceptionMembershipOfferIdsQuery: QueryParam[String]): Task[OfferTransactionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferTransactionResponse] = jsonOf[OfferTransactionResponse]

    val path = "/api/{version}/wallet/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("transactionId", Some(transactionIdQuery.toParamString(transactionId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("usePoints", Some(usePointsQuery.toParamString(usePoints))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("status", Some(statusQuery.toParamString(status))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("exceptionMembershipOfferIds", Some(exceptionMembershipOfferIdsQuery.toParamString(exceptionMembershipOfferIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferTransactionResponse](req)

    } yield resp
  }

}

class HttpServiceWalletApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createOfferTransaction(version: BigDecimal, deviceId: String, accountId: Long, offerId: Long, offerLocationId: Long, offerCart: String, promoCode: String, currencyType: String = CASH, usePoints: Boolean, metaData: String, appKey: String, status: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], offerCartQuery: QueryParam[String], promoCodeQuery: QueryParam[String], currencyTypeQuery: QueryParam[String], usePointsQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], appKeyQuery: QueryParam[String], statusQuery: QueryParam[Integer]): Task[List[OfferTransactionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferTransactionResponse]] = jsonOf[List[OfferTransactionResponse]]

    val path = "/api/{version}/wallet/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("offerCart", Some(offerCartQuery.toParamString(offerCart))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("usePoints", Some(usePointsQuery.toParamString(usePoints))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("status", Some(statusQuery.toParamString(status))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferTransactionResponse]](req)

    } yield resp
  }

  def deleteOfferTransaction(version: BigDecimal, transactionId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], transactionIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/wallet/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("transactionId", Some(transactionIdQuery.toParamString(transactionId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getOfferTransaction(version: BigDecimal, transactionId: Long, deviceId: String, accountId: Long, includeMission: Boolean = false, latitude: Double, longitude: Double, returnFullResponse: Boolean = true)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], transactionIdQuery: QueryParam[Long], includeMissionQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnFullResponseQuery: QueryParam[Boolean]): Task[OfferTransactionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferTransactionResponse] = jsonOf[OfferTransactionResponse]

    val path = "/api/{version}/wallet/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("transactionId", Some(transactionIdQuery.toParamString(transactionId))), ("includeMission", Some(includeMissionQuery.toParamString(includeMission))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferTransactionResponse](req)

    } yield resp
  }

  def previewOfferTransaction(version: BigDecimal, deviceId: String, accountId: Long, offerId: Long, offerLocationId: Long, offerCart: String, promoCode: String, currencyType: String = CASH, usePoints: Boolean, metaData: String, appKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], offerIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], offerCartQuery: QueryParam[String], promoCodeQuery: QueryParam[String], currencyTypeQuery: QueryParam[String], usePointsQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[List[OfferTransactionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferTransactionResponse]] = jsonOf[List[OfferTransactionResponse]]

    val path = "/api/{version}/wallet/preview".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("offerCart", Some(offerCartQuery.toParamString(offerCart))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("usePoints", Some(usePointsQuery.toParamString(usePoints))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferTransactionResponse]](req)

    } yield resp
  }

  def searchOfferTransactions(version: BigDecimal, deviceId: String, accountId: Long, keyword: String, retailerId: Long, retailerIds: String, retailerLocationId: Long, retailerLocationIds: String, excludeRetailerLocationIds: String, offerId: Long, offerIds: String, offerLocationId: Long, offerLocationIds: String, offerType: String, offerTypes: String, specialOfferType: String, specialOfferTypes: String, categoryIds: String, filterIds: String, offerAudienceIds: String, sortField: String = CREATED, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, latitude: Double, longitude: Double, redeemableStartDate: Long, redeemableEndDate: Long, filterByParentOffer: Boolean = false, startedSince: Long, startedBefore: Long, endedSince: Long, endedBefore: Long, redeemed: Boolean = false, statuses: String, reservationsOnly: Boolean = false, activeOnly: Boolean = false, returnFullResponse: Boolean = false, recurringStartedSince: Long, recurringStartedBefore: Long, recurringExpirationSince: Long, recurringExpirationBefore: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], retailerIdQuery: QueryParam[Long], retailerIdsQuery: QueryParam[String], retailerLocationIdQuery: QueryParam[Long], retailerLocationIdsQuery: QueryParam[String], excludeRetailerLocationIdsQuery: QueryParam[String], offerIdQuery: QueryParam[Long], offerIdsQuery: QueryParam[String], offerLocationIdQuery: QueryParam[Long], offerLocationIdsQuery: QueryParam[String], offerTypeQuery: QueryParam[String], offerTypesQuery: QueryParam[String], specialOfferTypeQuery: QueryParam[String], specialOfferTypesQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], offerAudienceIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], redeemableStartDateQuery: QueryParam[Long], redeemableEndDateQuery: QueryParam[Long], filterByParentOfferQuery: QueryParam[Boolean], startedSinceQuery: QueryParam[Long], startedBeforeQuery: QueryParam[Long], endedSinceQuery: QueryParam[Long], endedBeforeQuery: QueryParam[Long], redeemedQuery: QueryParam[Boolean], statusesQuery: QueryParam[String], reservationsOnlyQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], returnFullResponseQuery: QueryParam[Boolean], recurringStartedSinceQuery: QueryParam[Long], recurringStartedBeforeQuery: QueryParam[Long], recurringExpirationSinceQuery: QueryParam[Long], recurringExpirationBeforeQuery: QueryParam[Long]): Task[List[OfferTransactionResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OfferTransactionResponse]] = jsonOf[List[OfferTransactionResponse]]

    val path = "/api/{version}/wallet/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("retailerId", Some(retailerIdQuery.toParamString(retailerId))), ("retailerIds", Some(retailerIdsQuery.toParamString(retailerIds))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("excludeRetailerLocationIds", Some(excludeRetailerLocationIdsQuery.toParamString(excludeRetailerLocationIds))), ("offerId", Some(offerIdQuery.toParamString(offerId))), ("offerIds", Some(offerIdsQuery.toParamString(offerIds))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("offerLocationIds", Some(offerLocationIdsQuery.toParamString(offerLocationIds))), ("offerType", Some(offerTypeQuery.toParamString(offerType))), ("offerTypes", Some(offerTypesQuery.toParamString(offerTypes))), ("specialOfferType", Some(specialOfferTypeQuery.toParamString(specialOfferType))), ("specialOfferTypes", Some(specialOfferTypesQuery.toParamString(specialOfferTypes))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("offerAudienceIds", Some(offerAudienceIdsQuery.toParamString(offerAudienceIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("redeemableStartDate", Some(redeemableStartDateQuery.toParamString(redeemableStartDate))), ("redeemableEndDate", Some(redeemableEndDateQuery.toParamString(redeemableEndDate))), ("filterByParentOffer", Some(filterByParentOfferQuery.toParamString(filterByParentOffer))), ("startedSince", Some(startedSinceQuery.toParamString(startedSince))), ("startedBefore", Some(startedBeforeQuery.toParamString(startedBefore))), ("endedSince", Some(endedSinceQuery.toParamString(endedSince))), ("endedBefore", Some(endedBeforeQuery.toParamString(endedBefore))), ("redeemed", Some(redeemedQuery.toParamString(redeemed))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("reservationsOnly", Some(reservationsOnlyQuery.toParamString(reservationsOnly))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("recurringStartedSince", Some(recurringStartedSinceQuery.toParamString(recurringStartedSince))), ("recurringStartedBefore", Some(recurringStartedBeforeQuery.toParamString(recurringStartedBefore))), ("recurringExpirationSince", Some(recurringExpirationSinceQuery.toParamString(recurringExpirationSince))), ("recurringExpirationBefore", Some(recurringExpirationBeforeQuery.toParamString(recurringExpirationBefore))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OfferTransactionResponse]](req)

    } yield resp
  }

  def updateOfferTransaction(version: BigDecimal, transactionId: Long, status: Integer, deviceId: String, accountId: Long, offerLocationId: Long, currencyType: String = CASH, usePoints: Boolean, appKey: String, latitude: Double, longitude: Double, metaData: String, returnFullResponse: Boolean = false, exceptionMembershipOfferIds: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], transactionIdQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long], currencyTypeQuery: QueryParam[String], usePointsQuery: QueryParam[Boolean], appKeyQuery: QueryParam[String], statusQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], returnFullResponseQuery: QueryParam[Boolean], exceptionMembershipOfferIdsQuery: QueryParam[String]): Task[OfferTransactionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OfferTransactionResponse] = jsonOf[OfferTransactionResponse]

    val path = "/api/{version}/wallet/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("transactionId", Some(transactionIdQuery.toParamString(transactionId))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("usePoints", Some(usePointsQuery.toParamString(usePoints))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("status", Some(statusQuery.toParamString(status))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("exceptionMembershipOfferIds", Some(exceptionMembershipOfferIdsQuery.toParamString(exceptionMembershipOfferIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OfferTransactionResponse](req)

    } yield resp
  }

}
