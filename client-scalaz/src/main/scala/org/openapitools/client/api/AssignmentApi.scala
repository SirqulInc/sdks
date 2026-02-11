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

import org.openapitools.client.api.AccountMiniResponse
import org.openapitools.client.api.AssignmentResponse
import org.openapitools.client.api.AssignmentStatusResponse
import org.openapitools.client.api.SirqulResponse

object AssignmentApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def assigmentAssigneeAccountSearch(host: String, accountId: Long, keyword: String)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String]): Task[List[AccountMiniResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AccountMiniResponse]] = jsonOf[List[AccountMiniResponse]]

    val path = "/assignment/assignee/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AccountMiniResponse]](req)

    } yield resp
  }

  def assignmentCreate(host: String, accountId: Long, name: String, assigneeAccountId: Long, description: String, retailerLocationId: Long, tags: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], assigneeAccountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], tagsQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[AssignmentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentResponse] = jsonOf[AssignmentResponse]

    val path = "/assignment/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("assigneeAccountId", Some(assigneeAccountIdQuery.toParamString(assigneeAccountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("tags", Some(tagsQuery.toParamString(tags))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentResponse](req)

    } yield resp
  }

  def assignmentDelete(host: String, accountId: Long, assignmentId: Long)(implicit accountIdQuery: QueryParam[Long], assignmentIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/assignment/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentId", Some(assignmentIdQuery.toParamString(assignmentId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def assignmentGet(host: String, accountId: Long, assignmentId: Long)(implicit accountIdQuery: QueryParam[Long], assignmentIdQuery: QueryParam[Long]): Task[AssignmentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentResponse] = jsonOf[AssignmentResponse]

    val path = "/assignment/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentId", Some(assignmentIdQuery.toParamString(assignmentId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentResponse](req)

    } yield resp
  }

  def assignmentSearch(host: String, accountId: Long, sortField: String, descending: Boolean, activeOnly: Boolean, start: Integer, limit: Integer, creatorAccountId: Long, assigneeAccountIds: String, retailerLocationIds: String, currentStatusType: String, keyword: String)(implicit accountIdQuery: QueryParam[Long], creatorAccountIdQuery: QueryParam[Long], assigneeAccountIdsQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], currentStatusTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[AssignmentResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AssignmentResponse]] = jsonOf[List[AssignmentResponse]]

    val path = "/assignment/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creatorAccountId", Some(creatorAccountIdQuery.toParamString(creatorAccountId))), ("assigneeAccountIds", Some(assigneeAccountIdsQuery.toParamString(assigneeAccountIds))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("currentStatusType", Some(currentStatusTypeQuery.toParamString(currentStatusType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AssignmentResponse]](req)

    } yield resp
  }

  def assignmentStatusCreate(host: String, accountId: Long, assignmentId: Long, scheduledNotificationId: Long, toDo: String, connection: String, method: String, status: String, closure: String, message: String, followUp: Long, active: Boolean)(implicit accountIdQuery: QueryParam[Long], assignmentIdQuery: QueryParam[Long], scheduledNotificationIdQuery: QueryParam[Long], toDoQuery: QueryParam[String], connectionQuery: QueryParam[String], methodQuery: QueryParam[String], statusQuery: QueryParam[String], closureQuery: QueryParam[String], messageQuery: QueryParam[String], followUpQuery: QueryParam[Long], activeQuery: QueryParam[Boolean]): Task[AssignmentStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentStatusResponse] = jsonOf[AssignmentStatusResponse]

    val path = "/assignment/status/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentId", Some(assignmentIdQuery.toParamString(assignmentId))), ("scheduledNotificationId", Some(scheduledNotificationIdQuery.toParamString(scheduledNotificationId))), ("toDo", Some(toDoQuery.toParamString(toDo))), ("connection", Some(connectionQuery.toParamString(connection))), ("method", Some(methodQuery.toParamString(method))), ("status", Some(statusQuery.toParamString(status))), ("closure", Some(closureQuery.toParamString(closure))), ("message", Some(messageQuery.toParamString(message))), ("followUp", Some(followUpQuery.toParamString(followUp))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentStatusResponse](req)

    } yield resp
  }

  def assignmentStatusDelete(host: String, accountId: Long, assignmentStatusId: Long)(implicit accountIdQuery: QueryParam[Long], assignmentStatusIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/assignment/status/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentStatusId", Some(assignmentStatusIdQuery.toParamString(assignmentStatusId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def assignmentStatusGet(host: String, accountId: Long, assignmentStatusId: Long)(implicit accountIdQuery: QueryParam[Long], assignmentStatusIdQuery: QueryParam[Long]): Task[AssignmentStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentStatusResponse] = jsonOf[AssignmentStatusResponse]

    val path = "/assignment/status/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentStatusId", Some(assignmentStatusIdQuery.toParamString(assignmentStatusId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentStatusResponse](req)

    } yield resp
  }

  def assignmentStatusSearch(host: String, accountId: Long, sortField: String, descending: Boolean, activeOnly: Boolean, start: Integer, limit: Integer, assignmentId: Long, creatorAccountId: Long, assigneeAccountId: Long, retailerLocationId: Long, statusType: String, keyword: String)(implicit accountIdQuery: QueryParam[Long], assignmentIdQuery: QueryParam[Long], creatorAccountIdQuery: QueryParam[Long], assigneeAccountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], statusTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[AssignmentStatusResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AssignmentStatusResponse]] = jsonOf[List[AssignmentStatusResponse]]

    val path = "/assignment/status/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentId", Some(assignmentIdQuery.toParamString(assignmentId))), ("creatorAccountId", Some(creatorAccountIdQuery.toParamString(creatorAccountId))), ("assigneeAccountId", Some(assigneeAccountIdQuery.toParamString(assigneeAccountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("statusType", Some(statusTypeQuery.toParamString(statusType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AssignmentStatusResponse]](req)

    } yield resp
  }

  def assignmentStatusUpdate(host: String, accountId: Long, assignmentStatusId: Long, scheduledNotificationId: Long, toDo: String, connection: String, method: String, status: String, closure: String, message: String, followUp: Long, active: Boolean)(implicit accountIdQuery: QueryParam[Long], assignmentStatusIdQuery: QueryParam[Long], scheduledNotificationIdQuery: QueryParam[Long], toDoQuery: QueryParam[String], connectionQuery: QueryParam[String], methodQuery: QueryParam[String], statusQuery: QueryParam[String], closureQuery: QueryParam[String], messageQuery: QueryParam[String], followUpQuery: QueryParam[Long], activeQuery: QueryParam[Boolean]): Task[AssignmentStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentStatusResponse] = jsonOf[AssignmentStatusResponse]

    val path = "/assignment/status/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentStatusId", Some(assignmentStatusIdQuery.toParamString(assignmentStatusId))), ("scheduledNotificationId", Some(scheduledNotificationIdQuery.toParamString(scheduledNotificationId))), ("toDo", Some(toDoQuery.toParamString(toDo))), ("connection", Some(connectionQuery.toParamString(connection))), ("method", Some(methodQuery.toParamString(method))), ("status", Some(statusQuery.toParamString(status))), ("closure", Some(closureQuery.toParamString(closure))), ("message", Some(messageQuery.toParamString(message))), ("followUp", Some(followUpQuery.toParamString(followUp))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentStatusResponse](req)

    } yield resp
  }

  def assignmentUpdate(host: String, accountId: Long, assignmentId: Long, name: String, description: String, assigneeAccountId: Long, retailerLocationId: Long, tags: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], assignmentIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], assigneeAccountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], tagsQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[AssignmentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentResponse] = jsonOf[AssignmentResponse]

    val path = "/assignment/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentId", Some(assignmentIdQuery.toParamString(assignmentId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("assigneeAccountId", Some(assigneeAccountIdQuery.toParamString(assigneeAccountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("tags", Some(tagsQuery.toParamString(tags))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentResponse](req)

    } yield resp
  }

}

class HttpServiceAssignmentApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def assigmentAssigneeAccountSearch(accountId: Long, keyword: String)(implicit accountIdQuery: QueryParam[Long], keywordQuery: QueryParam[String]): Task[List[AccountMiniResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AccountMiniResponse]] = jsonOf[List[AccountMiniResponse]]

    val path = "/assignment/assignee/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("keyword", Some(keywordQuery.toParamString(keyword))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AccountMiniResponse]](req)

    } yield resp
  }

  def assignmentCreate(accountId: Long, name: String, assigneeAccountId: Long, description: String, retailerLocationId: Long, tags: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], assigneeAccountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], tagsQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[AssignmentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentResponse] = jsonOf[AssignmentResponse]

    val path = "/assignment/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("assigneeAccountId", Some(assigneeAccountIdQuery.toParamString(assigneeAccountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("tags", Some(tagsQuery.toParamString(tags))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentResponse](req)

    } yield resp
  }

  def assignmentDelete(accountId: Long, assignmentId: Long)(implicit accountIdQuery: QueryParam[Long], assignmentIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/assignment/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentId", Some(assignmentIdQuery.toParamString(assignmentId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def assignmentGet(accountId: Long, assignmentId: Long)(implicit accountIdQuery: QueryParam[Long], assignmentIdQuery: QueryParam[Long]): Task[AssignmentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentResponse] = jsonOf[AssignmentResponse]

    val path = "/assignment/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentId", Some(assignmentIdQuery.toParamString(assignmentId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentResponse](req)

    } yield resp
  }

  def assignmentSearch(accountId: Long, sortField: String, descending: Boolean, activeOnly: Boolean, start: Integer, limit: Integer, creatorAccountId: Long, assigneeAccountIds: String, retailerLocationIds: String, currentStatusType: String, keyword: String)(implicit accountIdQuery: QueryParam[Long], creatorAccountIdQuery: QueryParam[Long], assigneeAccountIdsQuery: QueryParam[String], retailerLocationIdsQuery: QueryParam[String], currentStatusTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[AssignmentResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AssignmentResponse]] = jsonOf[List[AssignmentResponse]]

    val path = "/assignment/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("creatorAccountId", Some(creatorAccountIdQuery.toParamString(creatorAccountId))), ("assigneeAccountIds", Some(assigneeAccountIdsQuery.toParamString(assigneeAccountIds))), ("retailerLocationIds", Some(retailerLocationIdsQuery.toParamString(retailerLocationIds))), ("currentStatusType", Some(currentStatusTypeQuery.toParamString(currentStatusType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AssignmentResponse]](req)

    } yield resp
  }

  def assignmentStatusCreate(accountId: Long, assignmentId: Long, scheduledNotificationId: Long, toDo: String, connection: String, method: String, status: String, closure: String, message: String, followUp: Long, active: Boolean)(implicit accountIdQuery: QueryParam[Long], assignmentIdQuery: QueryParam[Long], scheduledNotificationIdQuery: QueryParam[Long], toDoQuery: QueryParam[String], connectionQuery: QueryParam[String], methodQuery: QueryParam[String], statusQuery: QueryParam[String], closureQuery: QueryParam[String], messageQuery: QueryParam[String], followUpQuery: QueryParam[Long], activeQuery: QueryParam[Boolean]): Task[AssignmentStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentStatusResponse] = jsonOf[AssignmentStatusResponse]

    val path = "/assignment/status/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentId", Some(assignmentIdQuery.toParamString(assignmentId))), ("scheduledNotificationId", Some(scheduledNotificationIdQuery.toParamString(scheduledNotificationId))), ("toDo", Some(toDoQuery.toParamString(toDo))), ("connection", Some(connectionQuery.toParamString(connection))), ("method", Some(methodQuery.toParamString(method))), ("status", Some(statusQuery.toParamString(status))), ("closure", Some(closureQuery.toParamString(closure))), ("message", Some(messageQuery.toParamString(message))), ("followUp", Some(followUpQuery.toParamString(followUp))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentStatusResponse](req)

    } yield resp
  }

  def assignmentStatusDelete(accountId: Long, assignmentStatusId: Long)(implicit accountIdQuery: QueryParam[Long], assignmentStatusIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/assignment/status/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentStatusId", Some(assignmentStatusIdQuery.toParamString(assignmentStatusId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def assignmentStatusGet(accountId: Long, assignmentStatusId: Long)(implicit accountIdQuery: QueryParam[Long], assignmentStatusIdQuery: QueryParam[Long]): Task[AssignmentStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentStatusResponse] = jsonOf[AssignmentStatusResponse]

    val path = "/assignment/status/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentStatusId", Some(assignmentStatusIdQuery.toParamString(assignmentStatusId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentStatusResponse](req)

    } yield resp
  }

  def assignmentStatusSearch(accountId: Long, sortField: String, descending: Boolean, activeOnly: Boolean, start: Integer, limit: Integer, assignmentId: Long, creatorAccountId: Long, assigneeAccountId: Long, retailerLocationId: Long, statusType: String, keyword: String)(implicit accountIdQuery: QueryParam[Long], assignmentIdQuery: QueryParam[Long], creatorAccountIdQuery: QueryParam[Long], assigneeAccountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], statusTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[AssignmentStatusResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AssignmentStatusResponse]] = jsonOf[List[AssignmentStatusResponse]]

    val path = "/assignment/status/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentId", Some(assignmentIdQuery.toParamString(assignmentId))), ("creatorAccountId", Some(creatorAccountIdQuery.toParamString(creatorAccountId))), ("assigneeAccountId", Some(assigneeAccountIdQuery.toParamString(assigneeAccountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("statusType", Some(statusTypeQuery.toParamString(statusType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AssignmentStatusResponse]](req)

    } yield resp
  }

  def assignmentStatusUpdate(accountId: Long, assignmentStatusId: Long, scheduledNotificationId: Long, toDo: String, connection: String, method: String, status: String, closure: String, message: String, followUp: Long, active: Boolean)(implicit accountIdQuery: QueryParam[Long], assignmentStatusIdQuery: QueryParam[Long], scheduledNotificationIdQuery: QueryParam[Long], toDoQuery: QueryParam[String], connectionQuery: QueryParam[String], methodQuery: QueryParam[String], statusQuery: QueryParam[String], closureQuery: QueryParam[String], messageQuery: QueryParam[String], followUpQuery: QueryParam[Long], activeQuery: QueryParam[Boolean]): Task[AssignmentStatusResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentStatusResponse] = jsonOf[AssignmentStatusResponse]

    val path = "/assignment/status/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentStatusId", Some(assignmentStatusIdQuery.toParamString(assignmentStatusId))), ("scheduledNotificationId", Some(scheduledNotificationIdQuery.toParamString(scheduledNotificationId))), ("toDo", Some(toDoQuery.toParamString(toDo))), ("connection", Some(connectionQuery.toParamString(connection))), ("method", Some(methodQuery.toParamString(method))), ("status", Some(statusQuery.toParamString(status))), ("closure", Some(closureQuery.toParamString(closure))), ("message", Some(messageQuery.toParamString(message))), ("followUp", Some(followUpQuery.toParamString(followUp))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentStatusResponse](req)

    } yield resp
  }

  def assignmentUpdate(accountId: Long, assignmentId: Long, name: String, description: String, assigneeAccountId: Long, retailerLocationId: Long, tags: String, active: Boolean)(implicit accountIdQuery: QueryParam[Long], assignmentIdQuery: QueryParam[Long], nameQuery: QueryParam[String], descriptionQuery: QueryParam[String], assigneeAccountIdQuery: QueryParam[Long], retailerLocationIdQuery: QueryParam[Long], tagsQuery: QueryParam[String], activeQuery: QueryParam[Boolean]): Task[AssignmentResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssignmentResponse] = jsonOf[AssignmentResponse]

    val path = "/assignment/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assignmentId", Some(assignmentIdQuery.toParamString(assignmentId))), ("name", Some(nameQuery.toParamString(name))), ("description", Some(descriptionQuery.toParamString(description))), ("assigneeAccountId", Some(assigneeAccountIdQuery.toParamString(assigneeAccountId))), ("retailerLocationId", Some(retailerLocationIdQuery.toParamString(retailerLocationId))), ("tags", Some(tagsQuery.toParamString(tags))), ("active", Some(activeQuery.toParamString(active))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssignmentResponse](req)

    } yield resp
  }

}
