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

import org.openapitools.client.api.ApplicationUsageResponse
import org.openapitools.client.api.BigDecimal
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.SubscriptionPlanResponse
import org.openapitools.client.api.SubscriptionResponse

object SubscriptionApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createSubscription(host: String, version: BigDecimal, accountId: Long, planId: Long, promoCode: String)(implicit accountIdQuery: QueryParam[Long], planIdQuery: QueryParam[Long], promoCodeQuery: QueryParam[String]): Task[SubscriptionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SubscriptionResponse] = jsonOf[SubscriptionResponse]

    val path = "/api/{version}/subscription/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("planId", Some(planIdQuery.toParamString(planId))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SubscriptionResponse](req)

    } yield resp
  }

  def deleteSubscription(host: String, version: BigDecimal, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/subscription/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getSubscription(host: String, version: BigDecimal, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[SubscriptionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SubscriptionResponse] = jsonOf[SubscriptionResponse]

    val path = "/api/{version}/subscription/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SubscriptionResponse](req)

    } yield resp
  }

  def getSubscriptionPlan(host: String, version: BigDecimal, planId: Long)(implicit planIdQuery: QueryParam[Long]): Task[SubscriptionPlanResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SubscriptionPlanResponse] = jsonOf[SubscriptionPlanResponse]

    val path = "/api/{version}/subscription/plan/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("planId", Some(planIdQuery.toParamString(planId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SubscriptionPlanResponse](req)

    } yield resp
  }

  def getSubscriptionPlans(host: String, version: BigDecimal, visible: Boolean, role: String)(implicit visibleQuery: QueryParam[Boolean], roleQuery: QueryParam[String]): Task[List[SubscriptionPlanResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[SubscriptionPlanResponse]] = jsonOf[List[SubscriptionPlanResponse]]

    val path = "/api/{version}/subscription/plan/list".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("visible", Some(visibleQuery.toParamString(visible))), ("role", Some(roleQuery.toParamString(role))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[SubscriptionPlanResponse]](req)

    } yield resp
  }

  def getSubscriptionUsage(host: String, version: BigDecimal, accountId: Long, applicationId: Long, start: Long, end: Long)(implicit accountIdQuery: QueryParam[Long], applicationIdQuery: QueryParam[Long], startQuery: QueryParam[Long], endQuery: QueryParam[Long]): Task[ApplicationUsageResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationUsageResponse] = jsonOf[ApplicationUsageResponse]

    val path = "/api/{version}/subscription/usage/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("applicationId", Some(applicationIdQuery.toParamString(applicationId))), ("start", Some(startQuery.toParamString(start))), ("end", Some(endQuery.toParamString(end))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationUsageResponse](req)

    } yield resp
  }

  def updateSubscription(host: String, version: BigDecimal, accountId: Long, planId: Long, promoCode: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], planIdQuery: QueryParam[Long], promoCodeQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[SubscriptionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SubscriptionResponse] = jsonOf[SubscriptionResponse]

    val path = "/api/{version}/subscription/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("planId", Some(planIdQuery.toParamString(planId))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SubscriptionResponse](req)

    } yield resp
  }

}

class HttpServiceSubscriptionApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createSubscription(version: BigDecimal, accountId: Long, planId: Long, promoCode: String)(implicit accountIdQuery: QueryParam[Long], planIdQuery: QueryParam[Long], promoCodeQuery: QueryParam[String]): Task[SubscriptionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SubscriptionResponse] = jsonOf[SubscriptionResponse]

    val path = "/api/{version}/subscription/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("planId", Some(planIdQuery.toParamString(planId))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SubscriptionResponse](req)

    } yield resp
  }

  def deleteSubscription(version: BigDecimal, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/subscription/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getSubscription(version: BigDecimal, accountId: Long)(implicit accountIdQuery: QueryParam[Long]): Task[SubscriptionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SubscriptionResponse] = jsonOf[SubscriptionResponse]

    val path = "/api/{version}/subscription/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SubscriptionResponse](req)

    } yield resp
  }

  def getSubscriptionPlan(version: BigDecimal, planId: Long)(implicit planIdQuery: QueryParam[Long]): Task[SubscriptionPlanResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SubscriptionPlanResponse] = jsonOf[SubscriptionPlanResponse]

    val path = "/api/{version}/subscription/plan/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("planId", Some(planIdQuery.toParamString(planId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SubscriptionPlanResponse](req)

    } yield resp
  }

  def getSubscriptionPlans(version: BigDecimal, visible: Boolean, role: String)(implicit visibleQuery: QueryParam[Boolean], roleQuery: QueryParam[String]): Task[List[SubscriptionPlanResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[SubscriptionPlanResponse]] = jsonOf[List[SubscriptionPlanResponse]]

    val path = "/api/{version}/subscription/plan/list".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("visible", Some(visibleQuery.toParamString(visible))), ("role", Some(roleQuery.toParamString(role))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[SubscriptionPlanResponse]](req)

    } yield resp
  }

  def getSubscriptionUsage(version: BigDecimal, accountId: Long, applicationId: Long, start: Long, end: Long)(implicit accountIdQuery: QueryParam[Long], applicationIdQuery: QueryParam[Long], startQuery: QueryParam[Long], endQuery: QueryParam[Long]): Task[ApplicationUsageResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ApplicationUsageResponse] = jsonOf[ApplicationUsageResponse]

    val path = "/api/{version}/subscription/usage/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("applicationId", Some(applicationIdQuery.toParamString(applicationId))), ("start", Some(startQuery.toParamString(start))), ("end", Some(endQuery.toParamString(end))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ApplicationUsageResponse](req)

    } yield resp
  }

  def updateSubscription(version: BigDecimal, accountId: Long, planId: Long, promoCode: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], planIdQuery: QueryParam[Long], promoCodeQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[SubscriptionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SubscriptionResponse] = jsonOf[SubscriptionResponse]

    val path = "/api/{version}/subscription/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("planId", Some(planIdQuery.toParamString(planId))), ("promoCode", Some(promoCodeQuery.toParamString(promoCode))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SubscriptionResponse](req)

    } yield resp
  }

}
