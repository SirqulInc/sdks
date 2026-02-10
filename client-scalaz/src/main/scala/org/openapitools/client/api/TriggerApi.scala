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
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.TriggerResponse

object TriggerApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createTrigger(host: String, version: BigDecimal, accountId: Long, name: String, appKey: String, groupingId: String, endpointURL: String, payload: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, conditionalInput: String, visibility: String, active: Boolean = true)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], endpointURLQuery: QueryParam[String], payloadQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], conditionalInputQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TriggerResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TriggerResponse] = jsonOf[TriggerResponse]

    val path = "/api/{version}/trigger/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("payload", Some(payloadQuery.toParamString(payload))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("conditionalInput", Some(conditionalInputQuery.toParamString(conditionalInput))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TriggerResponse](req)

    } yield resp
  }

  def deleteTrigger(host: String, version: BigDecimal, accountId: Long, triggerId: Long)(implicit accountIdQuery: QueryParam[Long], triggerIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/trigger/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("triggerId", Some(triggerIdQuery.toParamString(triggerId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getTrigger(host: String, version: BigDecimal, accountId: Long, triggerId: Long)(implicit accountIdQuery: QueryParam[Long], triggerIdQuery: QueryParam[Long]): Task[TriggerResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TriggerResponse] = jsonOf[TriggerResponse]

    val path = "/api/{version}/trigger/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("triggerId", Some(triggerIdQuery.toParamString(triggerId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TriggerResponse](req)

    } yield resp
  }

  def searchTriggers(host: String, version: BigDecimal, accountId: Long, groupingId: String, filter: String = MINE, statuses: String = NEW,ERROR,COMPLETE,PROCESSING, templateTypes: String, appKey: String, keyword: String, sortField: String = CREATED, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true)(implicit accountIdQuery: QueryParam[Long], groupingIdQuery: QueryParam[String], filterQuery: QueryParam[String], statusesQuery: QueryParam[String], templateTypesQuery: QueryParam[String], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[TriggerResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[TriggerResponse]] = jsonOf[List[TriggerResponse]]

    val path = "/api/{version}/trigger/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("filter", Some(filterQuery.toParamString(filter))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("templateTypes", Some(templateTypesQuery.toParamString(templateTypes))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[TriggerResponse]](req)

    } yield resp
  }

  def updateTrigger(host: String, version: BigDecimal, triggerId: Long, accountId: Long, name: String, appKey: String, groupingId: String, endpointURL: String, payload: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, conditionalInput: String, visibility: String, active: Boolean)(implicit triggerIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], endpointURLQuery: QueryParam[String], payloadQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], conditionalInputQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TriggerResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TriggerResponse] = jsonOf[TriggerResponse]

    val path = "/api/{version}/trigger/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("triggerId", Some(triggerIdQuery.toParamString(triggerId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("payload", Some(payloadQuery.toParamString(payload))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("conditionalInput", Some(conditionalInputQuery.toParamString(conditionalInput))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TriggerResponse](req)

    } yield resp
  }

}

class HttpServiceTriggerApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createTrigger(version: BigDecimal, accountId: Long, name: String, appKey: String, groupingId: String, endpointURL: String, payload: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, conditionalInput: String, visibility: String, active: Boolean = true)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], endpointURLQuery: QueryParam[String], payloadQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], conditionalInputQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TriggerResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TriggerResponse] = jsonOf[TriggerResponse]

    val path = "/api/{version}/trigger/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("payload", Some(payloadQuery.toParamString(payload))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("conditionalInput", Some(conditionalInputQuery.toParamString(conditionalInput))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TriggerResponse](req)

    } yield resp
  }

  def deleteTrigger(version: BigDecimal, accountId: Long, triggerId: Long)(implicit accountIdQuery: QueryParam[Long], triggerIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/trigger/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("triggerId", Some(triggerIdQuery.toParamString(triggerId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getTrigger(version: BigDecimal, accountId: Long, triggerId: Long)(implicit accountIdQuery: QueryParam[Long], triggerIdQuery: QueryParam[Long]): Task[TriggerResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TriggerResponse] = jsonOf[TriggerResponse]

    val path = "/api/{version}/trigger/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("triggerId", Some(triggerIdQuery.toParamString(triggerId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TriggerResponse](req)

    } yield resp
  }

  def searchTriggers(version: BigDecimal, accountId: Long, groupingId: String, filter: String = MINE, statuses: String = NEW,ERROR,COMPLETE,PROCESSING, templateTypes: String, appKey: String, keyword: String, sortField: String = CREATED, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true)(implicit accountIdQuery: QueryParam[Long], groupingIdQuery: QueryParam[String], filterQuery: QueryParam[String], statusesQuery: QueryParam[String], templateTypesQuery: QueryParam[String], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[TriggerResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[TriggerResponse]] = jsonOf[List[TriggerResponse]]

    val path = "/api/{version}/trigger/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("filter", Some(filterQuery.toParamString(filter))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("templateTypes", Some(templateTypesQuery.toParamString(templateTypes))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[TriggerResponse]](req)

    } yield resp
  }

  def updateTrigger(version: BigDecimal, triggerId: Long, accountId: Long, name: String, appKey: String, groupingId: String, endpointURL: String, payload: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, conditionalInput: String, visibility: String, active: Boolean)(implicit triggerIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], endpointURLQuery: QueryParam[String], payloadQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], conditionalInputQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TriggerResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TriggerResponse] = jsonOf[TriggerResponse]

    val path = "/api/{version}/trigger/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("triggerId", Some(triggerIdQuery.toParamString(triggerId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("payload", Some(payloadQuery.toParamString(payload))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("conditionalInput", Some(conditionalInputQuery.toParamString(conditionalInput))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TriggerResponse](req)

    } yield resp
  }

}
