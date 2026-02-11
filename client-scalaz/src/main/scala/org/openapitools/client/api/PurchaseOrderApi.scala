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

import org.openapitools.client.api.OrderResponse
import org.openapitools.client.api.SirqulResponse

object PurchaseOrderApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createOrder(host: String, appKey: String, cart: String, deviceId: String, accountId: Long, description: String, currencyType: String = CASH, paymentMethodId: Long, externalOrderId: String, externalPaymentId: String, remoteRefType: String, externalDate: Long, promoCode: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], descriptionQuery: QueryParam[String], currencyTypeQuery: QueryParam[String], cartQuery: QueryParam[String], paymentMethodIdQuery: QueryParam[Long], externalOrderIdQuery: QueryParam[String], externalPaymentIdQuery: QueryParam[String], remoteRefTypeQuery: QueryParam[String], externalDateQuery: QueryParam[Long], promoCodeQuery: QueryParam[String]): Task[OrderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrderResponse] = jsonOf[OrderResponse]

    val path = "/order/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("description", Some(descriptionQuery.toParamString(description))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("cart", Some(cartQuery.toParamString(cart))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("externalOrderId", Some(externalOrderIdQuery.toParamString(externalOrderId))), ("externalPaymentId", Some(externalPaymentIdQuery.toParamString(externalPaymentId))), ("remoteRefType", Some(remoteRefTypeQuery.toParamString(remoteRefType))), ("externalDate", Some(externalDateQuery.toParamString(externalDate))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrderResponse](req)

    } yield resp
  }

  def deleteOrder(host: String, orderId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], orderIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/order/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("orderId", Some(orderIdQuery.toParamString(orderId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getOrder(host: String, deviceId: String, accountId: Long, orderId: Long, externalOrderId: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], orderIdQuery: QueryParam[Long], externalOrderIdQuery: QueryParam[String]): Task[OrderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrderResponse] = jsonOf[OrderResponse]

    val path = "/order/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("orderId", Some(orderIdQuery.toParamString(orderId))), ("externalOrderId", Some(externalOrderIdQuery.toParamString(externalOrderId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrderResponse](req)

    } yield resp
  }

  def previewOrder(host: String, appKey: String, cart: String, deviceId: String, accountId: Long, description: String, currencyType: String = CASH, paymentMethodId: Long, externalOrderId: String, externalPaymentId: String, remoteRefType: String, externalDate: Long, promoCode: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], descriptionQuery: QueryParam[String], currencyTypeQuery: QueryParam[String], cartQuery: QueryParam[String], paymentMethodIdQuery: QueryParam[Long], externalOrderIdQuery: QueryParam[String], externalPaymentIdQuery: QueryParam[String], remoteRefTypeQuery: QueryParam[String], externalDateQuery: QueryParam[Long], promoCodeQuery: QueryParam[String]): Task[OrderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrderResponse] = jsonOf[OrderResponse]

    val path = "/order/preview"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("description", Some(descriptionQuery.toParamString(description))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("cart", Some(cartQuery.toParamString(cart))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("externalOrderId", Some(externalOrderIdQuery.toParamString(externalOrderId))), ("externalPaymentId", Some(externalPaymentIdQuery.toParamString(externalPaymentId))), ("remoteRefType", Some(remoteRefTypeQuery.toParamString(remoteRefType))), ("externalDate", Some(externalDateQuery.toParamString(externalDate))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrderResponse](req)

    } yield resp
  }

  def searchOrders(host: String, appKey: String, deviceId: String, accountId: Long, start: Integer = 0, limit: Integer = 20, descending: Boolean = true, activeOnly: Boolean = false, ignoreCustomerFilter: Boolean = false, orderItemTypes: String, orderItemIds: String, orderCustomTypes: String, orderCustomIds: String, sortField: String = ID, offerTypes: String, specialOfferTypes: String, categoryIds: String, filterIds: String, offerAudienceIds: String, transactionAudienceIds: String, offerIds: String, offerLocationIds: String, retailerIds: String, retailerLocationIds: String, statuses: String, keyword: String, redeemableStartDate: Long, redeemableEndDate: Long, startedSince: Long, startedBefore: Long, endedSince: Long, endedBefore: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], ignoreCustomerFilterQuery: QueryParam[Boolean], orderItemTypesQuery: QueryParam[String], orderItemIdsQuery: QueryParam[String], orderCustomTypesQuery: QueryParam[String], orderCustomIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], offerTypesQuery: QueryParam[String], specialOfferTypesQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], offerAudienceIdsQuery: QueryParam[String], transactionAudienceIdsQuery: QueryParam[String], offerIdsQuery: QueryParam[String], offerLocationIdsQuery: QueryParam[String], retailerIdsQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], statusesQuery: QueryParam[String], keywordQuery: QueryParam[String], redeemableStartDateQuery: QueryParam[Long], redeemableEndDateQuery: QueryParam[Long], startedSinceQuery: QueryParam[Long], startedBeforeQuery: QueryParam[Long], endedSinceQuery: QueryParam[Long], endedBeforeQuery: QueryParam[Long]): Task[List[OrderResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OrderResponse]] = jsonOf[List[OrderResponse]]

    val path = "/order/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("ignoreCustomerFilter", Some(ignoreCustomerFilterQuery.toParamString(ignoreCustomerFilter))), ("orderItemTypes", Some(orderItemTypesQuery.toParamString(orderItemTypes))), ("orderItemIds", Some(orderItemIdsQuery.toParamString(orderItemIds))), ("orderCustomTypes", Some(orderCustomTypesQuery.toParamString(orderCustomTypes))), ("orderCustomIds", Some(orderCustomIdsQuery.toParamString(orderCustomIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("offerTypes", Some(offerTypesQuery.toParamString(offerTypes))), ("specialOfferTypes", Some(specialOfferTypesQuery.toParamString(specialOfferTypes))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("offerAudienceIds", Some(offerAudienceIdsQuery.toParamString(offerAudienceIds))), ("transactionAudienceIds", Some(transactionAudienceIdsQuery.toParamString(transactionAudienceIds))), ("offerIds", Some(offerIdsQuery.toParamString(offerIds))), ("offerLocationIds", Some(offerLocationIdsQuery.toParamString(offerLocationIds))), ("retailerIds", Some(retailerIdsQuery.toParamString(retailerIds))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("redeemableStartDate", Some(redeemableStartDateQuery.toParamString(redeemableStartDate))), ("redeemableEndDate", Some(redeemableEndDateQuery.toParamString(redeemableEndDate))), ("startedSince", Some(startedSinceQuery.toParamString(startedSince))), ("startedBefore", Some(startedBeforeQuery.toParamString(startedBefore))), ("endedSince", Some(endedSinceQuery.toParamString(endedSince))), ("endedBefore", Some(endedBeforeQuery.toParamString(endedBefore))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OrderResponse]](req)

    } yield resp
  }

  def updateOrder(host: String, orderId: Long, appKey: String, cart: String, deviceId: String, accountId: Long, paymentTransactionId: Long, description: String, currencyType: String = CASH, paymentMethodId: Long, externalPaymentId: String, externalDate: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], orderIdQuery: QueryParam[Long], paymentTransactionIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], descriptionQuery: QueryParam[String], currencyTypeQuery: QueryParam[String], cartQuery: QueryParam[String], paymentMethodIdQuery: QueryParam[Long], externalPaymentIdQuery: QueryParam[String], externalDateQuery: QueryParam[Long]): Task[OrderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrderResponse] = jsonOf[OrderResponse]

    val path = "/order/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("orderId", Some(orderIdQuery.toParamString(orderId))), ("paymentTransactionId", Some(paymentTransactionIdQuery.toParamString(paymentTransactionId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("description", Some(descriptionQuery.toParamString(description))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("cart", Some(cartQuery.toParamString(cart))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("externalPaymentId", Some(externalPaymentIdQuery.toParamString(externalPaymentId))), ("externalDate", Some(externalDateQuery.toParamString(externalDate))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrderResponse](req)

    } yield resp
  }

}

class HttpServicePurchaseOrderApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createOrder(appKey: String, cart: String, deviceId: String, accountId: Long, description: String, currencyType: String = CASH, paymentMethodId: Long, externalOrderId: String, externalPaymentId: String, remoteRefType: String, externalDate: Long, promoCode: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], descriptionQuery: QueryParam[String], currencyTypeQuery: QueryParam[String], cartQuery: QueryParam[String], paymentMethodIdQuery: QueryParam[Long], externalOrderIdQuery: QueryParam[String], externalPaymentIdQuery: QueryParam[String], remoteRefTypeQuery: QueryParam[String], externalDateQuery: QueryParam[Long], promoCodeQuery: QueryParam[String]): Task[OrderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrderResponse] = jsonOf[OrderResponse]

    val path = "/order/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("description", Some(descriptionQuery.toParamString(description))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("cart", Some(cartQuery.toParamString(cart))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("externalOrderId", Some(externalOrderIdQuery.toParamString(externalOrderId))), ("externalPaymentId", Some(externalPaymentIdQuery.toParamString(externalPaymentId))), ("remoteRefType", Some(remoteRefTypeQuery.toParamString(remoteRefType))), ("externalDate", Some(externalDateQuery.toParamString(externalDate))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrderResponse](req)

    } yield resp
  }

  def deleteOrder(orderId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], orderIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/order/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("orderId", Some(orderIdQuery.toParamString(orderId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getOrder(deviceId: String, accountId: Long, orderId: Long, externalOrderId: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], orderIdQuery: QueryParam[Long], externalOrderIdQuery: QueryParam[String]): Task[OrderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrderResponse] = jsonOf[OrderResponse]

    val path = "/order/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("orderId", Some(orderIdQuery.toParamString(orderId))), ("externalOrderId", Some(externalOrderIdQuery.toParamString(externalOrderId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrderResponse](req)

    } yield resp
  }

  def previewOrder(appKey: String, cart: String, deviceId: String, accountId: Long, description: String, currencyType: String = CASH, paymentMethodId: Long, externalOrderId: String, externalPaymentId: String, remoteRefType: String, externalDate: Long, promoCode: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], descriptionQuery: QueryParam[String], currencyTypeQuery: QueryParam[String], cartQuery: QueryParam[String], paymentMethodIdQuery: QueryParam[Long], externalOrderIdQuery: QueryParam[String], externalPaymentIdQuery: QueryParam[String], remoteRefTypeQuery: QueryParam[String], externalDateQuery: QueryParam[Long], promoCodeQuery: QueryParam[String]): Task[OrderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrderResponse] = jsonOf[OrderResponse]

    val path = "/order/preview"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("description", Some(descriptionQuery.toParamString(description))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("cart", Some(cartQuery.toParamString(cart))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("externalOrderId", Some(externalOrderIdQuery.toParamString(externalOrderId))), ("externalPaymentId", Some(externalPaymentIdQuery.toParamString(externalPaymentId))), ("remoteRefType", Some(remoteRefTypeQuery.toParamString(remoteRefType))), ("externalDate", Some(externalDateQuery.toParamString(externalDate))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrderResponse](req)

    } yield resp
  }

  def searchOrders(appKey: String, deviceId: String, accountId: Long, start: Integer = 0, limit: Integer = 20, descending: Boolean = true, activeOnly: Boolean = false, ignoreCustomerFilter: Boolean = false, orderItemTypes: String, orderItemIds: String, orderCustomTypes: String, orderCustomIds: String, sortField: String = ID, offerTypes: String, specialOfferTypes: String, categoryIds: String, filterIds: String, offerAudienceIds: String, transactionAudienceIds: String, offerIds: String, offerLocationIds: String, retailerIds: String, retailerLocationIds: String, statuses: String, keyword: String, redeemableStartDate: Long, redeemableEndDate: Long, startedSince: Long, startedBefore: Long, endedSince: Long, endedBefore: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], ignoreCustomerFilterQuery: QueryParam[Boolean], orderItemTypesQuery: QueryParam[String], orderItemIdsQuery: QueryParam[String], orderCustomTypesQuery: QueryParam[String], orderCustomIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], offerTypesQuery: QueryParam[String], specialOfferTypesQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], filterIdsQuery: QueryParam[String], offerAudienceIdsQuery: QueryParam[String], transactionAudienceIdsQuery: QueryParam[String], offerIdsQuery: QueryParam[String], offerLocationIdsQuery: QueryParam[String], retailerIdsQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], statusesQuery: QueryParam[String], keywordQuery: QueryParam[String], redeemableStartDateQuery: QueryParam[Long], redeemableEndDateQuery: QueryParam[Long], startedSinceQuery: QueryParam[Long], startedBeforeQuery: QueryParam[Long], endedSinceQuery: QueryParam[Long], endedBeforeQuery: QueryParam[Long]): Task[List[OrderResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[OrderResponse]] = jsonOf[List[OrderResponse]]

    val path = "/order/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("ignoreCustomerFilter", Some(ignoreCustomerFilterQuery.toParamString(ignoreCustomerFilter))), ("orderItemTypes", Some(orderItemTypesQuery.toParamString(orderItemTypes))), ("orderItemIds", Some(orderItemIdsQuery.toParamString(orderItemIds))), ("orderCustomTypes", Some(orderCustomTypesQuery.toParamString(orderCustomTypes))), ("orderCustomIds", Some(orderCustomIdsQuery.toParamString(orderCustomIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("offerTypes", Some(offerTypesQuery.toParamString(offerTypes))), ("specialOfferTypes", Some(specialOfferTypesQuery.toParamString(specialOfferTypes))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("filterIds", Some(filterIdsQuery.toParamString(filterIds))), ("offerAudienceIds", Some(offerAudienceIdsQuery.toParamString(offerAudienceIds))), ("transactionAudienceIds", Some(transactionAudienceIdsQuery.toParamString(transactionAudienceIds))), ("offerIds", Some(offerIdsQuery.toParamString(offerIds))), ("offerLocationIds", Some(offerLocationIdsQuery.toParamString(offerLocationIds))), ("retailerIds", Some(retailerIdsQuery.toParamString(retailerIds))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("redeemableStartDate", Some(redeemableStartDateQuery.toParamString(redeemableStartDate))), ("redeemableEndDate", Some(redeemableEndDateQuery.toParamString(redeemableEndDate))), ("startedSince", Some(startedSinceQuery.toParamString(startedSince))), ("startedBefore", Some(startedBeforeQuery.toParamString(startedBefore))), ("endedSince", Some(endedSinceQuery.toParamString(endedSince))), ("endedBefore", Some(endedBeforeQuery.toParamString(endedBefore))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[OrderResponse]](req)

    } yield resp
  }

  def updateOrder(orderId: Long, appKey: String, cart: String, deviceId: String, accountId: Long, paymentTransactionId: Long, description: String, currencyType: String = CASH, paymentMethodId: Long, externalPaymentId: String, externalDate: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], orderIdQuery: QueryParam[Long], paymentTransactionIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], descriptionQuery: QueryParam[String], currencyTypeQuery: QueryParam[String], cartQuery: QueryParam[String], paymentMethodIdQuery: QueryParam[Long], externalPaymentIdQuery: QueryParam[String], externalDateQuery: QueryParam[Long]): Task[OrderResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[OrderResponse] = jsonOf[OrderResponse]

    val path = "/order/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("orderId", Some(orderIdQuery.toParamString(orderId))), ("paymentTransactionId", Some(paymentTransactionIdQuery.toParamString(paymentTransactionId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("description", Some(descriptionQuery.toParamString(description))), ("currencyType", Some(currencyTypeQuery.toParamString(currencyType))), ("cart", Some(cartQuery.toParamString(cart))), ("paymentMethodId", Some(paymentMethodIdQuery.toParamString(paymentMethodId))), ("externalPaymentId", Some(externalPaymentIdQuery.toParamString(externalPaymentId))), ("externalDate", Some(externalDateQuery.toParamString(externalDate))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[OrderResponse](req)

    } yield resp
  }

}
