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

import org.openapitools.client.api.BidResponse
import org.openapitools.client.api.SirqulResponse

object BidApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createBid(host: String, biddableType: String, biddableId: Long, amountPerView: Double, amountPerAction: Double, budgetAmount: Double, budgetSchedule: String, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], biddableTypeQuery: QueryParam[String], biddableIdQuery: QueryParam[Long], amountPerViewQuery: QueryParam[Double], amountPerActionQuery: QueryParam[Double], budgetAmountQuery: QueryParam[Double], budgetScheduleQuery: QueryParam[String]): Task[BidResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BidResponse] = jsonOf[BidResponse]

    val path = "/bid/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("biddableType", Some(biddableTypeQuery.toParamString(biddableType))), ("biddableId", Some(biddableIdQuery.toParamString(biddableId))), ("amountPerView", Some(amountPerViewQuery.toParamString(amountPerView))), ("amountPerAction", Some(amountPerActionQuery.toParamString(amountPerAction))), ("budgetAmount", Some(budgetAmountQuery.toParamString(budgetAmount))), ("budgetSchedule", Some(budgetScheduleQuery.toParamString(budgetSchedule))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BidResponse](req)

    } yield resp
  }

  def deleteBid(host: String, bidId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], bidIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/bid/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("bidId", Some(bidIdQuery.toParamString(bidId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getBid(host: String, bidId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], bidIdQuery: QueryParam[Long]): Task[BidResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BidResponse] = jsonOf[BidResponse]

    val path = "/bid/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("bidId", Some(bidIdQuery.toParamString(bidId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BidResponse](req)

    } yield resp
  }

  def updateBid(host: String, bidId: Long, deviceId: String, accountId: Long, amountPerView: Double, amountPerAction: Double, budgetAmount: Double, budgetSchedule: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], bidIdQuery: QueryParam[Long], amountPerViewQuery: QueryParam[Double], amountPerActionQuery: QueryParam[Double], budgetAmountQuery: QueryParam[Double], budgetScheduleQuery: QueryParam[String]): Task[BidResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BidResponse] = jsonOf[BidResponse]

    val path = "/bid/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("bidId", Some(bidIdQuery.toParamString(bidId))), ("amountPerView", Some(amountPerViewQuery.toParamString(amountPerView))), ("amountPerAction", Some(amountPerActionQuery.toParamString(amountPerAction))), ("budgetAmount", Some(budgetAmountQuery.toParamString(budgetAmount))), ("budgetSchedule", Some(budgetScheduleQuery.toParamString(budgetSchedule))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BidResponse](req)

    } yield resp
  }

}

class HttpServiceBidApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createBid(biddableType: String, biddableId: Long, amountPerView: Double, amountPerAction: Double, budgetAmount: Double, budgetSchedule: String, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], biddableTypeQuery: QueryParam[String], biddableIdQuery: QueryParam[Long], amountPerViewQuery: QueryParam[Double], amountPerActionQuery: QueryParam[Double], budgetAmountQuery: QueryParam[Double], budgetScheduleQuery: QueryParam[String]): Task[BidResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BidResponse] = jsonOf[BidResponse]

    val path = "/bid/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("biddableType", Some(biddableTypeQuery.toParamString(biddableType))), ("biddableId", Some(biddableIdQuery.toParamString(biddableId))), ("amountPerView", Some(amountPerViewQuery.toParamString(amountPerView))), ("amountPerAction", Some(amountPerActionQuery.toParamString(amountPerAction))), ("budgetAmount", Some(budgetAmountQuery.toParamString(budgetAmount))), ("budgetSchedule", Some(budgetScheduleQuery.toParamString(budgetSchedule))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BidResponse](req)

    } yield resp
  }

  def deleteBid(bidId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], bidIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/bid/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("bidId", Some(bidIdQuery.toParamString(bidId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getBid(bidId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], bidIdQuery: QueryParam[Long]): Task[BidResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BidResponse] = jsonOf[BidResponse]

    val path = "/bid/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("bidId", Some(bidIdQuery.toParamString(bidId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BidResponse](req)

    } yield resp
  }

  def updateBid(bidId: Long, deviceId: String, accountId: Long, amountPerView: Double, amountPerAction: Double, budgetAmount: Double, budgetSchedule: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], bidIdQuery: QueryParam[Long], amountPerViewQuery: QueryParam[Double], amountPerActionQuery: QueryParam[Double], budgetAmountQuery: QueryParam[Double], budgetScheduleQuery: QueryParam[String]): Task[BidResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BidResponse] = jsonOf[BidResponse]

    val path = "/bid/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("bidId", Some(bidIdQuery.toParamString(bidId))), ("amountPerView", Some(amountPerViewQuery.toParamString(amountPerView))), ("amountPerAction", Some(amountPerActionQuery.toParamString(amountPerAction))), ("budgetAmount", Some(budgetAmountQuery.toParamString(budgetAmount))), ("budgetSchedule", Some(budgetScheduleQuery.toParamString(budgetSchedule))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BidResponse](req)

    } yield resp
  }

}
