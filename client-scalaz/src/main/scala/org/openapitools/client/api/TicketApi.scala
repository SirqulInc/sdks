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
import org.openapitools.client.api.CountResponse
import java.io.File
import org.openapitools.client.api.ProfileResponse
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.TicketListResponse
import org.openapitools.client.api.TicketOfferResponse

object TicketApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getTicketCount(host: String, version: BigDecimal, deviceId: String, accountId: Long, gameType: String, appKey: String, ticketType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], ticketTypeQuery: QueryParam[String]): Task[CountResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CountResponse] = jsonOf[CountResponse]

    val path = "/api/{version}/ticket/count".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CountResponse](req)

    } yield resp
  }

  def getTicketList(host: String, version: BigDecimal, deviceId: String, accountId: Long, ticketObjectType: String, actionType: String, ticketIds: String, objectIds: String, receiptTokens: String, gameType: String, appKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ticketObjectTypeQuery: QueryParam[String], actionTypeQuery: QueryParam[String], ticketIdsQuery: QueryParam[String], objectIdsQuery: QueryParam[String], receiptTokensQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[TicketListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TicketListResponse] = jsonOf[TicketListResponse]

    val path = "/api/{version}/ticket/getList".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ticketObjectType", Some(ticketObjectTypeQuery.toParamString(ticketObjectType))), ("actionType", Some(actionTypeQuery.toParamString(actionType))), ("ticketIds", Some(ticketIdsQuery.toParamString(ticketIds))), ("objectIds", Some(objectIdsQuery.toParamString(objectIds))), ("receiptTokens", Some(receiptTokensQuery.toParamString(receiptTokens))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TicketListResponse](req)

    } yield resp
  }

  def giftPurchase(host: String, version: BigDecimal, receiverAccountId: Long, ticketId: Long, deviceId: String, accountId: Long, assetId: Long, customMessage: String, gameType: String, appKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], receiverAccountIdQuery: QueryParam[Long], ticketIdQuery: QueryParam[Long], assetIdQuery: QueryParam[Long], customMessageQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/purchase/gift".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("receiverAccountId", Some(receiverAccountIdQuery.toParamString(receiverAccountId))), ("ticketId", Some(ticketIdQuery.toParamString(ticketId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("customMessage", Some(customMessageQuery.toParamString(customMessage))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def saveTicket(host: String, version: BigDecimal, actionType: String, ticketObjectType: String, returnNulls: Boolean, deviceId: String, accountId: Long, gameType: String, appKey: String, objectId: Long, purchaseCode: String, receiptToken: String, receiptData: String, count: Long, ticketType: String, purchaseProvider: String, purchaseType: String, returnProfileResponse: Boolean, includeProfileResponse: Boolean, appVersion: String)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], actionTypeQuery: QueryParam[String], ticketObjectTypeQuery: QueryParam[String], objectIdQuery: QueryParam[Long], purchaseCodeQuery: QueryParam[String], receiptTokenQuery: QueryParam[String], receiptDataQuery: QueryParam[String], countQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], purchaseProviderQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String], returnProfileResponseQuery: QueryParam[Boolean], includeProfileResponseQuery: QueryParam[Boolean], appVersionQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/ticket/save".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("actionType", Some(actionTypeQuery.toParamString(actionType))), ("ticketObjectType", Some(ticketObjectTypeQuery.toParamString(ticketObjectType))), ("objectId", Some(objectIdQuery.toParamString(objectId))), ("purchaseCode", Some(purchaseCodeQuery.toParamString(purchaseCode))), ("receiptToken", Some(receiptTokenQuery.toParamString(receiptToken))), ("receiptData", Some(receiptDataQuery.toParamString(receiptData))), ("count", Some(countQuery.toParamString(count))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("purchaseProvider", Some(purchaseProviderQuery.toParamString(purchaseProvider))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("returnProfileResponse", Some(returnProfileResponseQuery.toParamString(returnProfileResponse))), ("includeProfileResponse", Some(includeProfileResponseQuery.toParamString(includeProfileResponse))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def saveTicketViaFileUpload(host: String, version: BigDecimal, actionType: String, ticketObjectType: String, receiptData: File, returnNulls: Boolean, deviceId: String, accountId: Long, gameType: String, appKey: String, objectId: Long, purchaseCode: String, receiptToken: String, count: Long, ticketType: String, purchaseProvider: String, purchaseType: String, returnProfileResponse: Boolean, includeProfileResponse: Boolean, appVersion: String)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], actionTypeQuery: QueryParam[String], ticketObjectTypeQuery: QueryParam[String], objectIdQuery: QueryParam[Long], purchaseCodeQuery: QueryParam[String], receiptTokenQuery: QueryParam[String], receiptDataQuery: QueryParam[File], countQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], purchaseProviderQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String], returnProfileResponseQuery: QueryParam[Boolean], includeProfileResponseQuery: QueryParam[Boolean], appVersionQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/ticket/save/fileUpload".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("actionType", Some(actionTypeQuery.toParamString(actionType))), ("ticketObjectType", Some(ticketObjectTypeQuery.toParamString(ticketObjectType))), ("objectId", Some(objectIdQuery.toParamString(objectId))), ("purchaseCode", Some(purchaseCodeQuery.toParamString(purchaseCode))), ("receiptToken", Some(receiptTokenQuery.toParamString(receiptToken))), ("receiptData", Some(receiptDataQuery.toParamString(receiptData))), ("count", Some(countQuery.toParamString(count))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("purchaseProvider", Some(purchaseProviderQuery.toParamString(purchaseProvider))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("returnProfileResponse", Some(returnProfileResponseQuery.toParamString(returnProfileResponse))), ("includeProfileResponse", Some(includeProfileResponseQuery.toParamString(includeProfileResponse))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def ticketOffers(host: String, version: BigDecimal): Task[TicketOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TicketOfferResponse] = jsonOf[TicketOfferResponse]

    val path = "/api/{version}/ticket/ticketoffers".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TicketOfferResponse](req)

    } yield resp
  }

}

class HttpServiceTicketApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getTicketCount(version: BigDecimal, deviceId: String, accountId: Long, gameType: String, appKey: String, ticketType: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], ticketTypeQuery: QueryParam[String]): Task[CountResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[CountResponse] = jsonOf[CountResponse]

    val path = "/api/{version}/ticket/count".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[CountResponse](req)

    } yield resp
  }

  def getTicketList(version: BigDecimal, deviceId: String, accountId: Long, ticketObjectType: String, actionType: String, ticketIds: String, objectIds: String, receiptTokens: String, gameType: String, appKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], ticketObjectTypeQuery: QueryParam[String], actionTypeQuery: QueryParam[String], ticketIdsQuery: QueryParam[String], objectIdsQuery: QueryParam[String], receiptTokensQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[TicketListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TicketListResponse] = jsonOf[TicketListResponse]

    val path = "/api/{version}/ticket/getList".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("ticketObjectType", Some(ticketObjectTypeQuery.toParamString(ticketObjectType))), ("actionType", Some(actionTypeQuery.toParamString(actionType))), ("ticketIds", Some(ticketIdsQuery.toParamString(ticketIds))), ("objectIds", Some(objectIdsQuery.toParamString(objectIds))), ("receiptTokens", Some(receiptTokensQuery.toParamString(receiptTokens))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TicketListResponse](req)

    } yield resp
  }

  def giftPurchase(version: BigDecimal, receiverAccountId: Long, ticketId: Long, deviceId: String, accountId: Long, assetId: Long, customMessage: String, gameType: String, appKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], receiverAccountIdQuery: QueryParam[Long], ticketIdQuery: QueryParam[Long], assetIdQuery: QueryParam[Long], customMessageQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/purchase/gift".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("receiverAccountId", Some(receiverAccountIdQuery.toParamString(receiverAccountId))), ("ticketId", Some(ticketIdQuery.toParamString(ticketId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("customMessage", Some(customMessageQuery.toParamString(customMessage))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def saveTicket(version: BigDecimal, actionType: String, ticketObjectType: String, returnNulls: Boolean, deviceId: String, accountId: Long, gameType: String, appKey: String, objectId: Long, purchaseCode: String, receiptToken: String, receiptData: String, count: Long, ticketType: String, purchaseProvider: String, purchaseType: String, returnProfileResponse: Boolean, includeProfileResponse: Boolean, appVersion: String)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], actionTypeQuery: QueryParam[String], ticketObjectTypeQuery: QueryParam[String], objectIdQuery: QueryParam[Long], purchaseCodeQuery: QueryParam[String], receiptTokenQuery: QueryParam[String], receiptDataQuery: QueryParam[String], countQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], purchaseProviderQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String], returnProfileResponseQuery: QueryParam[Boolean], includeProfileResponseQuery: QueryParam[Boolean], appVersionQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/ticket/save".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("actionType", Some(actionTypeQuery.toParamString(actionType))), ("ticketObjectType", Some(ticketObjectTypeQuery.toParamString(ticketObjectType))), ("objectId", Some(objectIdQuery.toParamString(objectId))), ("purchaseCode", Some(purchaseCodeQuery.toParamString(purchaseCode))), ("receiptToken", Some(receiptTokenQuery.toParamString(receiptToken))), ("receiptData", Some(receiptDataQuery.toParamString(receiptData))), ("count", Some(countQuery.toParamString(count))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("purchaseProvider", Some(purchaseProviderQuery.toParamString(purchaseProvider))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("returnProfileResponse", Some(returnProfileResponseQuery.toParamString(returnProfileResponse))), ("includeProfileResponse", Some(includeProfileResponseQuery.toParamString(includeProfileResponse))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def saveTicketViaFileUpload(version: BigDecimal, actionType: String, ticketObjectType: String, receiptData: File, returnNulls: Boolean, deviceId: String, accountId: Long, gameType: String, appKey: String, objectId: Long, purchaseCode: String, receiptToken: String, count: Long, ticketType: String, purchaseProvider: String, purchaseType: String, returnProfileResponse: Boolean, includeProfileResponse: Boolean, appVersion: String)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], actionTypeQuery: QueryParam[String], ticketObjectTypeQuery: QueryParam[String], objectIdQuery: QueryParam[Long], purchaseCodeQuery: QueryParam[String], receiptTokenQuery: QueryParam[String], receiptDataQuery: QueryParam[File], countQuery: QueryParam[Long], ticketTypeQuery: QueryParam[String], purchaseProviderQuery: QueryParam[String], purchaseTypeQuery: QueryParam[String], returnProfileResponseQuery: QueryParam[Boolean], includeProfileResponseQuery: QueryParam[Boolean], appVersionQuery: QueryParam[String]): Task[ProfileResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ProfileResponse] = jsonOf[ProfileResponse]

    val path = "/api/{version}/ticket/save/fileUpload".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("actionType", Some(actionTypeQuery.toParamString(actionType))), ("ticketObjectType", Some(ticketObjectTypeQuery.toParamString(ticketObjectType))), ("objectId", Some(objectIdQuery.toParamString(objectId))), ("purchaseCode", Some(purchaseCodeQuery.toParamString(purchaseCode))), ("receiptToken", Some(receiptTokenQuery.toParamString(receiptToken))), ("receiptData", Some(receiptDataQuery.toParamString(receiptData))), ("count", Some(countQuery.toParamString(count))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("purchaseProvider", Some(purchaseProviderQuery.toParamString(purchaseProvider))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("returnProfileResponse", Some(returnProfileResponseQuery.toParamString(returnProfileResponse))), ("includeProfileResponse", Some(includeProfileResponseQuery.toParamString(includeProfileResponse))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ProfileResponse](req)

    } yield resp
  }

  def ticketOffers(version: BigDecimal): Task[TicketOfferResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TicketOfferResponse] = jsonOf[TicketOfferResponse]

    val path = "/api/{version}/ticket/ticketoffers".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TicketOfferResponse](req)

    } yield resp
  }

}
