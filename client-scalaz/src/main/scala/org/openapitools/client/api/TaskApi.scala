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
import org.openapitools.client.api.TaskResponse

object TaskApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createTask(host: String, version: BigDecimal, accountId: Long, name: String, appKey: String, groupingId: String, endpointURL: String, payload: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, visibility: String, active: Boolean = true)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], endpointURLQuery: QueryParam[String], payloadQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TaskResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TaskResponse] = jsonOf[TaskResponse]

    val path = "/api/{version}/task/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("payload", Some(payloadQuery.toParamString(payload))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TaskResponse](req)

    } yield resp
  }

  def deleteTask(host: String, version: BigDecimal, accountId: Long, taskId: Long)(implicit accountIdQuery: QueryParam[Long], taskIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/task/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("taskId", Some(taskIdQuery.toParamString(taskId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getTask(host: String, version: BigDecimal, accountId: Long, taskId: Long)(implicit accountIdQuery: QueryParam[Long], taskIdQuery: QueryParam[Long]): Task[TaskResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TaskResponse] = jsonOf[TaskResponse]

    val path = "/api/{version}/task/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("taskId", Some(taskIdQuery.toParamString(taskId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TaskResponse](req)

    } yield resp
  }

  def searchTasks(host: String, version: BigDecimal, accountId: Long, groupingId: String, filter: String = MINE, statuses: String = NEW,ERROR,COMPLETE,PROCESSING, templateTypes: String, appKey: String, keyword: String, sortField: String = CREATED, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true)(implicit accountIdQuery: QueryParam[Long], groupingIdQuery: QueryParam[String], filterQuery: QueryParam[String], statusesQuery: QueryParam[String], templateTypesQuery: QueryParam[String], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[TaskResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[TaskResponse]] = jsonOf[List[TaskResponse]]

    val path = "/api/{version}/task/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[List[TaskResponse]](req)

    } yield resp
  }

  def updateTask(host: String, version: BigDecimal, taskId: Long, accountId: Long, name: String, appKey: String, groupingId: String, endpointURL: String, payload: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, visibility: String, active: Boolean)(implicit taskIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], endpointURLQuery: QueryParam[String], payloadQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TaskResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TaskResponse] = jsonOf[TaskResponse]

    val path = "/api/{version}/task/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("taskId", Some(taskIdQuery.toParamString(taskId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("payload", Some(payloadQuery.toParamString(payload))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TaskResponse](req)

    } yield resp
  }

}

class HttpServiceTaskApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createTask(version: BigDecimal, accountId: Long, name: String, appKey: String, groupingId: String, endpointURL: String, payload: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, visibility: String, active: Boolean = true)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], endpointURLQuery: QueryParam[String], payloadQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TaskResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TaskResponse] = jsonOf[TaskResponse]

    val path = "/api/{version}/task/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("payload", Some(payloadQuery.toParamString(payload))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TaskResponse](req)

    } yield resp
  }

  def deleteTask(version: BigDecimal, accountId: Long, taskId: Long)(implicit accountIdQuery: QueryParam[Long], taskIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/task/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("taskId", Some(taskIdQuery.toParamString(taskId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getTask(version: BigDecimal, accountId: Long, taskId: Long)(implicit accountIdQuery: QueryParam[Long], taskIdQuery: QueryParam[Long]): Task[TaskResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TaskResponse] = jsonOf[TaskResponse]

    val path = "/api/{version}/task/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("taskId", Some(taskIdQuery.toParamString(taskId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TaskResponse](req)

    } yield resp
  }

  def searchTasks(version: BigDecimal, accountId: Long, groupingId: String, filter: String = MINE, statuses: String = NEW,ERROR,COMPLETE,PROCESSING, templateTypes: String, appKey: String, keyword: String, sortField: String = CREATED, descending: Boolean = true, start: Integer = 0, limit: Integer = 20, activeOnly: Boolean = true)(implicit accountIdQuery: QueryParam[Long], groupingIdQuery: QueryParam[String], filterQuery: QueryParam[String], statusesQuery: QueryParam[String], templateTypesQuery: QueryParam[String], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean]): Task[List[TaskResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[TaskResponse]] = jsonOf[List[TaskResponse]]

    val path = "/api/{version}/task/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

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
      resp          <- client.expect[List[TaskResponse]](req)

    } yield resp
  }

  def updateTask(version: BigDecimal, taskId: Long, accountId: Long, name: String, appKey: String, groupingId: String, endpointURL: String, payload: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, visibility: String, active: Boolean)(implicit taskIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], endpointURLQuery: QueryParam[String], payloadQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[TaskResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[TaskResponse] = jsonOf[TaskResponse]

    val path = "/api/{version}/task/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("taskId", Some(taskIdQuery.toParamString(taskId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("payload", Some(payloadQuery.toParamString(payload))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[TaskResponse](req)

    } yield resp
  }

}
