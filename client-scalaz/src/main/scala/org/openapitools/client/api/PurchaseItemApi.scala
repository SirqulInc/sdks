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
import org.openapitools.client.api.PurchaseItemFullResponse
import org.openapitools.client.api.PurchaseItemResponse
import org.openapitools.client.api.SirqulResponse

object PurchaseItemApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createPurchaseItem(host: String, version: BigDecimal, appKey: String, name: String, purchaseType: String, deviceId: String, accountId: Long, description: String, tickets: Integer, price: Float, purchaseCode: String, secretKey: String, purchaseLimit: Integer = 0, serviceAction: String, coverAssetId: Long, promoAssetId: Long, giftable: Boolean, assetable: Boolean, allocateTickets: Boolean = false, ticketType: String, points: Long, offerLocationId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], ticketsQuery: QueryParam[Integer], priceQuery: QueryParam[Float], purchaseTypeQuery: QueryParam[String], purchaseCodeQuery: QueryParam[String], secretKeyQuery: QueryParam[String], purchaseLimitQuery: QueryParam[Integer], serviceActionQuery: QueryParam[String], coverAssetIdQuery: QueryParam[Long], promoAssetIdQuery: QueryParam[Long], giftableQuery: QueryParam[Boolean], assetableQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long]): Task[PurchaseItemFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PurchaseItemFullResponse] = jsonOf[PurchaseItemFullResponse]

    val path = "/api/{version}/purchase/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("tickets", Some(ticketsQuery.toParamString(tickets))), ("price", Some(priceQuery.toParamString(price))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("purchaseCode", Some(purchaseCodeQuery.toParamString(purchaseCode))), ("secretKey", Some(secretKeyQuery.toParamString(secretKey))), ("purchaseLimit", Some(purchaseLimitQuery.toParamString(purchaseLimit))), ("serviceAction", Some(serviceActionQuery.toParamString(serviceAction))), ("coverAssetId", Some(coverAssetIdQuery.toParamString(coverAssetId))), ("promoAssetId", Some(promoAssetIdQuery.toParamString(promoAssetId))), ("giftable", Some(giftableQuery.toParamString(giftable))), ("assetable", Some(assetableQuery.toParamString(assetable))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PurchaseItemFullResponse](req)

    } yield resp
  }

  def deletePurchaseItem(host: String, version: BigDecimal, purchaseItemId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], purchaseItemIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/purchase/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("purchaseItemId", Some(purchaseItemIdQuery.toParamString(purchaseItemId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getPurchaseItem(host: String, version: BigDecimal, purchaseItemId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], purchaseItemIdQuery: QueryParam[Long]): Task[PurchaseItemFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PurchaseItemFullResponse] = jsonOf[PurchaseItemFullResponse]

    val path = "/api/{version}/purchase/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("purchaseItemId", Some(purchaseItemIdQuery.toParamString(purchaseItemId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PurchaseItemFullResponse](req)

    } yield resp
  }

  def searchPurchaseItems(host: String, version: BigDecimal, deviceId: String, accountId: Long, appKey: String, filterByBillable: Boolean = false, purchaseType: String, serviceAction: String, keyword: String, sortField: String = NAME, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], filterByBillableQuery: QueryParam[Boolean], purchaseTypeQuery: QueryParam[String], serviceActionQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[PurchaseItemResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PurchaseItemResponse]] = jsonOf[List[PurchaseItemResponse]]

    val path = "/api/{version}/purchase/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("filterByBillable", Some(filterByBillableQuery.toParamString(filterByBillable))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("serviceAction", Some(serviceActionQuery.toParamString(serviceAction))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PurchaseItemResponse]](req)

    } yield resp
  }

  def updatePurchaseItem(host: String, version: BigDecimal, purchaseItemId: Long, deviceId: String, accountId: Long, name: String, description: String, tickets: Integer, price: Float, purchaseType: String, purchaseCode: String, secretKey: String, purchaseLimit: Integer, serviceAction: String, coverAssetId: Long, promoAssetId: Long, giftable: Boolean, assetable: Boolean, active: Boolean, allocateTickets: Boolean = false, ticketType: String, points: Long, offerLocationId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], purchaseItemIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], ticketsQuery: QueryParam[Integer], priceQuery: QueryParam[Float], purchaseTypeQuery: QueryParam[String], purchaseCodeQuery: QueryParam[String], secretKeyQuery: QueryParam[String], purchaseLimitQuery: QueryParam[Integer], serviceActionQuery: QueryParam[String], coverAssetIdQuery: QueryParam[Long], promoAssetIdQuery: QueryParam[Long], giftableQuery: QueryParam[Boolean], assetableQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long]): Task[PurchaseItemFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PurchaseItemFullResponse] = jsonOf[PurchaseItemFullResponse]

    val path = "/api/{version}/purchase/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("purchaseItemId", Some(purchaseItemIdQuery.toParamString(purchaseItemId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("tickets", Some(ticketsQuery.toParamString(tickets))), ("price", Some(priceQuery.toParamString(price))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("purchaseCode", Some(purchaseCodeQuery.toParamString(purchaseCode))), ("secretKey", Some(secretKeyQuery.toParamString(secretKey))), ("purchaseLimit", Some(purchaseLimitQuery.toParamString(purchaseLimit))), ("serviceAction", Some(serviceActionQuery.toParamString(serviceAction))), ("coverAssetId", Some(coverAssetIdQuery.toParamString(coverAssetId))), ("promoAssetId", Some(promoAssetIdQuery.toParamString(promoAssetId))), ("giftable", Some(giftableQuery.toParamString(giftable))), ("assetable", Some(assetableQuery.toParamString(assetable))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PurchaseItemFullResponse](req)

    } yield resp
  }

}

class HttpServicePurchaseItemApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createPurchaseItem(version: BigDecimal, appKey: String, name: String, purchaseType: String, deviceId: String, accountId: Long, description: String, tickets: Integer, price: Float, purchaseCode: String, secretKey: String, purchaseLimit: Integer = 0, serviceAction: String, coverAssetId: Long, promoAssetId: Long, giftable: Boolean, assetable: Boolean, allocateTickets: Boolean = false, ticketType: String, points: Long, offerLocationId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], ticketsQuery: QueryParam[Integer], priceQuery: QueryParam[Float], purchaseTypeQuery: QueryParam[String], purchaseCodeQuery: QueryParam[String], secretKeyQuery: QueryParam[String], purchaseLimitQuery: QueryParam[Integer], serviceActionQuery: QueryParam[String], coverAssetIdQuery: QueryParam[Long], promoAssetIdQuery: QueryParam[Long], giftableQuery: QueryParam[Boolean], assetableQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long]): Task[PurchaseItemFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PurchaseItemFullResponse] = jsonOf[PurchaseItemFullResponse]

    val path = "/api/{version}/purchase/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("tickets", Some(ticketsQuery.toParamString(tickets))), ("price", Some(priceQuery.toParamString(price))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("purchaseCode", Some(purchaseCodeQuery.toParamString(purchaseCode))), ("secretKey", Some(secretKeyQuery.toParamString(secretKey))), ("purchaseLimit", Some(purchaseLimitQuery.toParamString(purchaseLimit))), ("serviceAction", Some(serviceActionQuery.toParamString(serviceAction))), ("coverAssetId", Some(coverAssetIdQuery.toParamString(coverAssetId))), ("promoAssetId", Some(promoAssetIdQuery.toParamString(promoAssetId))), ("giftable", Some(giftableQuery.toParamString(giftable))), ("assetable", Some(assetableQuery.toParamString(assetable))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PurchaseItemFullResponse](req)

    } yield resp
  }

  def deletePurchaseItem(version: BigDecimal, purchaseItemId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], purchaseItemIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/purchase/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("purchaseItemId", Some(purchaseItemIdQuery.toParamString(purchaseItemId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getPurchaseItem(version: BigDecimal, purchaseItemId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], purchaseItemIdQuery: QueryParam[Long]): Task[PurchaseItemFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PurchaseItemFullResponse] = jsonOf[PurchaseItemFullResponse]

    val path = "/api/{version}/purchase/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("purchaseItemId", Some(purchaseItemIdQuery.toParamString(purchaseItemId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PurchaseItemFullResponse](req)

    } yield resp
  }

  def searchPurchaseItems(version: BigDecimal, deviceId: String, accountId: Long, appKey: String, filterByBillable: Boolean = false, purchaseType: String, serviceAction: String, keyword: String, sortField: String = NAME, descending: Boolean = false, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], filterByBillableQuery: QueryParam[Boolean], purchaseTypeQuery: QueryParam[String], serviceActionQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[PurchaseItemResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[PurchaseItemResponse]] = jsonOf[List[PurchaseItemResponse]]

    val path = "/api/{version}/purchase/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("filterByBillable", Some(filterByBillableQuery.toParamString(filterByBillable))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("serviceAction", Some(serviceActionQuery.toParamString(serviceAction))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[PurchaseItemResponse]](req)

    } yield resp
  }

  def updatePurchaseItem(version: BigDecimal, purchaseItemId: Long, deviceId: String, accountId: Long, name: String, description: String, tickets: Integer, price: Float, purchaseType: String, purchaseCode: String, secretKey: String, purchaseLimit: Integer, serviceAction: String, coverAssetId: Long, promoAssetId: Long, giftable: Boolean, assetable: Boolean, active: Boolean, allocateTickets: Boolean = false, ticketType: String, points: Long, offerLocationId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], purchaseItemIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], ticketsQuery: QueryParam[Integer], priceQuery: QueryParam[Float], purchaseTypeQuery: QueryParam[String], purchaseCodeQuery: QueryParam[String], secretKeyQuery: QueryParam[String], purchaseLimitQuery: QueryParam[Integer], serviceActionQuery: QueryParam[String], coverAssetIdQuery: QueryParam[Long], promoAssetIdQuery: QueryParam[Long], giftableQuery: QueryParam[Boolean], assetableQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], allocateTicketsQuery: QueryParam[Boolean], ticketTypeQuery: QueryParam[String], pointsQuery: QueryParam[Long], offerLocationIdQuery: QueryParam[Long]): Task[PurchaseItemFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PurchaseItemFullResponse] = jsonOf[PurchaseItemFullResponse]

    val path = "/api/{version}/purchase/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("purchaseItemId", Some(purchaseItemIdQuery.toParamString(purchaseItemId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("tickets", Some(ticketsQuery.toParamString(tickets))), ("price", Some(priceQuery.toParamString(price))), ("purchaseType", Some(purchaseTypeQuery.toParamString(purchaseType))), ("purchaseCode", Some(purchaseCodeQuery.toParamString(purchaseCode))), ("secretKey", Some(secretKeyQuery.toParamString(secretKey))), ("purchaseLimit", Some(purchaseLimitQuery.toParamString(purchaseLimit))), ("serviceAction", Some(serviceActionQuery.toParamString(serviceAction))), ("coverAssetId", Some(coverAssetIdQuery.toParamString(coverAssetId))), ("promoAssetId", Some(promoAssetIdQuery.toParamString(promoAssetId))), ("giftable", Some(giftableQuery.toParamString(giftable))), ("assetable", Some(assetableQuery.toParamString(assetable))), ("active", Some(activeQuery.toParamString(active))), ("allocateTickets", Some(allocateTicketsQuery.toParamString(allocateTickets))), ("ticketType", Some(ticketTypeQuery.toParamString(ticketType))), ("points", Some(pointsQuery.toParamString(points))), ("offerLocationId", Some(offerLocationIdQuery.toParamString(offerLocationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PurchaseItemFullResponse](req)

    } yield resp
  }

}
