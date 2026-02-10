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
import org.openapitools.client.api.ScheduledNotificationFullResponse
import org.openapitools.client.api.SirqulResponse

object ScheduledNotificationApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createScheduledNotification(host: String, version: BigDecimal, accountId: Long, name: String, `type`: String, message: String, contentId: Long, contentName: String, `contentType`: String, parentId: Long, parentType: String, appKey: String, groupingId: String, connectionGroupIds: String, connectionAccountIds: String, audienceId: Long, audienceIds: String, albumIds: String, reportId: Long, reportParams: String, endpointURL: String, payload: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, cronType: String, metaData: String, conditionalInput: String, templateType: String, visibility: String, active: Boolean, sendNow: Boolean, eventType: String = CUSTOM, deepLinkURI: String, sendToAll: Boolean)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], `type`Query: QueryParam[String], messageQuery: QueryParam[String], contentIdQuery: QueryParam[Long], contentNameQuery: QueryParam[String], `contentType`Query: QueryParam[String], parentIdQuery: QueryParam[Long], parentTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], audienceIdQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], albumIdsQuery: QueryParam[String], reportIdQuery: QueryParam[Long], reportParamsQuery: QueryParam[String], endpointURLQuery: QueryParam[String], payloadQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], cronTypeQuery: QueryParam[String], metaDataQuery: QueryParam[String], conditionalInputQuery: QueryParam[String], templateTypeQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean], sendNowQuery: QueryParam[Boolean], eventTypeQuery: QueryParam[String], deepLinkURIQuery: QueryParam[String], sendToAllQuery: QueryParam[Boolean]): Task[ScheduledNotificationFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScheduledNotificationFullResponse] = jsonOf[ScheduledNotificationFullResponse]

    val path = "/api/{version}/notification/schedule/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("`type`", Some(typeQuery.toParamString(type))), ("message", Some(messageQuery.toParamString(message))), ("contentId", Some(contentIdQuery.toParamString(contentId))), ("contentName", Some(contentNameQuery.toParamString(contentName))), ("`contentType`", Some(contentTypeQuery.toParamString(contentType))), ("parentId", Some(parentIdQuery.toParamString(parentId))), ("parentType", Some(parentTypeQuery.toParamString(parentType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("albumIds", Some(albumIdsQuery.toParamString(albumIds))), ("reportId", Some(reportIdQuery.toParamString(reportId))), ("reportParams", Some(reportParamsQuery.toParamString(reportParams))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("payload", Some(payloadQuery.toParamString(payload))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("cronType", Some(cronTypeQuery.toParamString(cronType))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("conditionalInput", Some(conditionalInputQuery.toParamString(conditionalInput))), ("templateType", Some(templateTypeQuery.toParamString(templateType))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))), ("sendNow", Some(sendNowQuery.toParamString(sendNow))), ("eventType", Some(eventTypeQuery.toParamString(eventType))), ("deepLinkURI", Some(deepLinkURIQuery.toParamString(deepLinkURI))), ("sendToAll", Some(sendToAllQuery.toParamString(sendToAll))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScheduledNotificationFullResponse](req)

    } yield resp
  }

  def deleteScheduledNotification(host: String, version: BigDecimal, accountId: Long, scheduledNotificationId: Long, deleteByGroupingId: Boolean)(implicit accountIdQuery: QueryParam[Long], scheduledNotificationIdQuery: QueryParam[Long], deleteByGroupingIdQuery: QueryParam[Boolean]): Task[ScheduledNotificationFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScheduledNotificationFullResponse] = jsonOf[ScheduledNotificationFullResponse]

    val path = "/api/{version}/notification/schedule/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("scheduledNotificationId", Some(scheduledNotificationIdQuery.toParamString(scheduledNotificationId))), ("deleteByGroupingId", Some(deleteByGroupingIdQuery.toParamString(deleteByGroupingId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScheduledNotificationFullResponse](req)

    } yield resp
  }

  def getScheduledNotification(host: String, version: BigDecimal, accountId: Long, scheduledNotificationId: Long)(implicit accountIdQuery: QueryParam[Long], scheduledNotificationIdQuery: QueryParam[Long]): Task[ScheduledNotificationFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScheduledNotificationFullResponse] = jsonOf[ScheduledNotificationFullResponse]

    val path = "/api/{version}/notification/schedule/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("scheduledNotificationId", Some(scheduledNotificationIdQuery.toParamString(scheduledNotificationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScheduledNotificationFullResponse](req)

    } yield resp
  }

  def scheduleNotificationListings(host: String, version: BigDecimal, accountId: Long, appKey: String, reportName: String, message: String, offset: Integer, recipientReportId: Long, reportParams: String, `type`: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], reportNameQuery: QueryParam[String], reportParamsQuery: QueryParam[String], messageQuery: QueryParam[String], offsetQuery: QueryParam[Integer], `type`Query: QueryParam[String], recipientReportIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/notification/schedule/generate".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("reportName", Some(reportNameQuery.toParamString(reportName))), ("reportParams", Some(reportParamsQuery.toParamString(reportParams))), ("message", Some(messageQuery.toParamString(message))), ("offset", Some(offsetQuery.toParamString(offset))), ("`type`", Some(typeQuery.toParamString(type))), ("recipientReportId", Some(recipientReportIdQuery.toParamString(recipientReportId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchScheduledNotifications(host: String, version: BigDecimal, accountId: Long, groupingId: String, audienceId: Long, filter: String, types: String, contentIds: String, `contentTypes`: String, parentIds: String, parentTypes: String, statuses: String, templateTypes: String, appKey: String, keyword: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, groupByGroupingId: Boolean, returnAudienceAccountCount: Boolean)(implicit accountIdQuery: QueryParam[Long], groupingIdQuery: QueryParam[String], audienceIdQuery: QueryParam[Long], filterQuery: QueryParam[String], typesQuery: QueryParam[String], contentIdsQuery: QueryParam[String], `contentTypes`Query: QueryParam[String], parentIdsQuery: QueryParam[String], parentTypesQuery: QueryParam[String], statusesQuery: QueryParam[String], templateTypesQuery: QueryParam[String], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], groupByGroupingIdQuery: QueryParam[Boolean], returnAudienceAccountCountQuery: QueryParam[Boolean]): Task[ScheduledNotificationFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScheduledNotificationFullResponse] = jsonOf[ScheduledNotificationFullResponse]

    val path = "/api/{version}/notification/schedule/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("filter", Some(filterQuery.toParamString(filter))), ("types", Some(typesQuery.toParamString(types))), ("contentIds", Some(contentIdsQuery.toParamString(contentIds))), ("`contentTypes`", Some(contentTypesQuery.toParamString(contentTypes))), ("parentIds", Some(parentIdsQuery.toParamString(parentIds))), ("parentTypes", Some(parentTypesQuery.toParamString(parentTypes))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("templateTypes", Some(templateTypesQuery.toParamString(templateTypes))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("groupByGroupingId", Some(groupByGroupingIdQuery.toParamString(groupByGroupingId))), ("returnAudienceAccountCount", Some(returnAudienceAccountCountQuery.toParamString(returnAudienceAccountCount))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScheduledNotificationFullResponse](req)

    } yield resp
  }

  def updateScheduledNotification(host: String, version: BigDecimal, scheduledNotificationId: Long, accountId: Long, name: String, `type`: String, message: String, payload: String, contentId: Long, contentName: String, `contentType`: String, parentId: Long, parentType: String, appKey: String, groupingId: String, connectionGroupIds: String, connectionAccountIds: String, audienceId: Long, audienceIds: String, albumIds: String, reportId: Long, reportParams: String, endpointURL: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, cronType: String, metaData: String, conditionalInput: String, templateType: String, visibility: String, active: Boolean, errorMessage: String, status: String, updateByGroupingId: Boolean, sendNow: Boolean, eventType: String = CUSTOM, deepLinkURI: String, sendToAll: Boolean)(implicit scheduledNotificationIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], `type`Query: QueryParam[String], messageQuery: QueryParam[String], payloadQuery: QueryParam[String], contentIdQuery: QueryParam[Long], contentNameQuery: QueryParam[String], `contentType`Query: QueryParam[String], parentIdQuery: QueryParam[Long], parentTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], audienceIdQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], albumIdsQuery: QueryParam[String], reportIdQuery: QueryParam[Long], reportParamsQuery: QueryParam[String], endpointURLQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], cronTypeQuery: QueryParam[String], metaDataQuery: QueryParam[String], conditionalInputQuery: QueryParam[String], templateTypeQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean], errorMessageQuery: QueryParam[String], statusQuery: QueryParam[String], updateByGroupingIdQuery: QueryParam[Boolean], sendNowQuery: QueryParam[Boolean], eventTypeQuery: QueryParam[String], deepLinkURIQuery: QueryParam[String], sendToAllQuery: QueryParam[Boolean]): Task[ScheduledNotificationFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScheduledNotificationFullResponse] = jsonOf[ScheduledNotificationFullResponse]

    val path = "/api/{version}/notification/schedule/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("scheduledNotificationId", Some(scheduledNotificationIdQuery.toParamString(scheduledNotificationId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("`type`", Some(typeQuery.toParamString(type))), ("message", Some(messageQuery.toParamString(message))), ("payload", Some(payloadQuery.toParamString(payload))), ("contentId", Some(contentIdQuery.toParamString(contentId))), ("contentName", Some(contentNameQuery.toParamString(contentName))), ("`contentType`", Some(contentTypeQuery.toParamString(contentType))), ("parentId", Some(parentIdQuery.toParamString(parentId))), ("parentType", Some(parentTypeQuery.toParamString(parentType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("albumIds", Some(albumIdsQuery.toParamString(albumIds))), ("reportId", Some(reportIdQuery.toParamString(reportId))), ("reportParams", Some(reportParamsQuery.toParamString(reportParams))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("cronType", Some(cronTypeQuery.toParamString(cronType))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("conditionalInput", Some(conditionalInputQuery.toParamString(conditionalInput))), ("templateType", Some(templateTypeQuery.toParamString(templateType))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))), ("errorMessage", Some(errorMessageQuery.toParamString(errorMessage))), ("status", Some(statusQuery.toParamString(status))), ("updateByGroupingId", Some(updateByGroupingIdQuery.toParamString(updateByGroupingId))), ("sendNow", Some(sendNowQuery.toParamString(sendNow))), ("eventType", Some(eventTypeQuery.toParamString(eventType))), ("deepLinkURI", Some(deepLinkURIQuery.toParamString(deepLinkURI))), ("sendToAll", Some(sendToAllQuery.toParamString(sendToAll))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScheduledNotificationFullResponse](req)

    } yield resp
  }

}

class HttpServiceScheduledNotificationApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createScheduledNotification(version: BigDecimal, accountId: Long, name: String, `type`: String, message: String, contentId: Long, contentName: String, `contentType`: String, parentId: Long, parentType: String, appKey: String, groupingId: String, connectionGroupIds: String, connectionAccountIds: String, audienceId: Long, audienceIds: String, albumIds: String, reportId: Long, reportParams: String, endpointURL: String, payload: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, cronType: String, metaData: String, conditionalInput: String, templateType: String, visibility: String, active: Boolean, sendNow: Boolean, eventType: String = CUSTOM, deepLinkURI: String, sendToAll: Boolean)(implicit accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], `type`Query: QueryParam[String], messageQuery: QueryParam[String], contentIdQuery: QueryParam[Long], contentNameQuery: QueryParam[String], `contentType`Query: QueryParam[String], parentIdQuery: QueryParam[Long], parentTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], audienceIdQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], albumIdsQuery: QueryParam[String], reportIdQuery: QueryParam[Long], reportParamsQuery: QueryParam[String], endpointURLQuery: QueryParam[String], payloadQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], cronTypeQuery: QueryParam[String], metaDataQuery: QueryParam[String], conditionalInputQuery: QueryParam[String], templateTypeQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean], sendNowQuery: QueryParam[Boolean], eventTypeQuery: QueryParam[String], deepLinkURIQuery: QueryParam[String], sendToAllQuery: QueryParam[Boolean]): Task[ScheduledNotificationFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScheduledNotificationFullResponse] = jsonOf[ScheduledNotificationFullResponse]

    val path = "/api/{version}/notification/schedule/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("`type`", Some(typeQuery.toParamString(type))), ("message", Some(messageQuery.toParamString(message))), ("contentId", Some(contentIdQuery.toParamString(contentId))), ("contentName", Some(contentNameQuery.toParamString(contentName))), ("`contentType`", Some(contentTypeQuery.toParamString(contentType))), ("parentId", Some(parentIdQuery.toParamString(parentId))), ("parentType", Some(parentTypeQuery.toParamString(parentType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("albumIds", Some(albumIdsQuery.toParamString(albumIds))), ("reportId", Some(reportIdQuery.toParamString(reportId))), ("reportParams", Some(reportParamsQuery.toParamString(reportParams))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("payload", Some(payloadQuery.toParamString(payload))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("cronType", Some(cronTypeQuery.toParamString(cronType))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("conditionalInput", Some(conditionalInputQuery.toParamString(conditionalInput))), ("templateType", Some(templateTypeQuery.toParamString(templateType))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))), ("sendNow", Some(sendNowQuery.toParamString(sendNow))), ("eventType", Some(eventTypeQuery.toParamString(eventType))), ("deepLinkURI", Some(deepLinkURIQuery.toParamString(deepLinkURI))), ("sendToAll", Some(sendToAllQuery.toParamString(sendToAll))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScheduledNotificationFullResponse](req)

    } yield resp
  }

  def deleteScheduledNotification(version: BigDecimal, accountId: Long, scheduledNotificationId: Long, deleteByGroupingId: Boolean)(implicit accountIdQuery: QueryParam[Long], scheduledNotificationIdQuery: QueryParam[Long], deleteByGroupingIdQuery: QueryParam[Boolean]): Task[ScheduledNotificationFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScheduledNotificationFullResponse] = jsonOf[ScheduledNotificationFullResponse]

    val path = "/api/{version}/notification/schedule/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("scheduledNotificationId", Some(scheduledNotificationIdQuery.toParamString(scheduledNotificationId))), ("deleteByGroupingId", Some(deleteByGroupingIdQuery.toParamString(deleteByGroupingId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScheduledNotificationFullResponse](req)

    } yield resp
  }

  def getScheduledNotification(version: BigDecimal, accountId: Long, scheduledNotificationId: Long)(implicit accountIdQuery: QueryParam[Long], scheduledNotificationIdQuery: QueryParam[Long]): Task[ScheduledNotificationFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScheduledNotificationFullResponse] = jsonOf[ScheduledNotificationFullResponse]

    val path = "/api/{version}/notification/schedule/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("scheduledNotificationId", Some(scheduledNotificationIdQuery.toParamString(scheduledNotificationId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScheduledNotificationFullResponse](req)

    } yield resp
  }

  def scheduleNotificationListings(version: BigDecimal, accountId: Long, appKey: String, reportName: String, message: String, offset: Integer, recipientReportId: Long, reportParams: String, `type`: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], reportNameQuery: QueryParam[String], reportParamsQuery: QueryParam[String], messageQuery: QueryParam[String], offsetQuery: QueryParam[Integer], `type`Query: QueryParam[String], recipientReportIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/notification/schedule/generate".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("reportName", Some(reportNameQuery.toParamString(reportName))), ("reportParams", Some(reportParamsQuery.toParamString(reportParams))), ("message", Some(messageQuery.toParamString(message))), ("offset", Some(offsetQuery.toParamString(offset))), ("`type`", Some(typeQuery.toParamString(type))), ("recipientReportId", Some(recipientReportIdQuery.toParamString(recipientReportId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchScheduledNotifications(version: BigDecimal, accountId: Long, groupingId: String, audienceId: Long, filter: String, types: String, contentIds: String, `contentTypes`: String, parentIds: String, parentTypes: String, statuses: String, templateTypes: String, appKey: String, keyword: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, activeOnly: Boolean, groupByGroupingId: Boolean, returnAudienceAccountCount: Boolean)(implicit accountIdQuery: QueryParam[Long], groupingIdQuery: QueryParam[String], audienceIdQuery: QueryParam[Long], filterQuery: QueryParam[String], typesQuery: QueryParam[String], contentIdsQuery: QueryParam[String], `contentTypes`Query: QueryParam[String], parentIdsQuery: QueryParam[String], parentTypesQuery: QueryParam[String], statusesQuery: QueryParam[String], templateTypesQuery: QueryParam[String], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], activeOnlyQuery: QueryParam[Boolean], groupByGroupingIdQuery: QueryParam[Boolean], returnAudienceAccountCountQuery: QueryParam[Boolean]): Task[ScheduledNotificationFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScheduledNotificationFullResponse] = jsonOf[ScheduledNotificationFullResponse]

    val path = "/api/{version}/notification/schedule/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("filter", Some(filterQuery.toParamString(filter))), ("types", Some(typesQuery.toParamString(types))), ("contentIds", Some(contentIdsQuery.toParamString(contentIds))), ("`contentTypes`", Some(contentTypesQuery.toParamString(contentTypes))), ("parentIds", Some(parentIdsQuery.toParamString(parentIds))), ("parentTypes", Some(parentTypesQuery.toParamString(parentTypes))), ("statuses", Some(statusesQuery.toParamString(statuses))), ("templateTypes", Some(templateTypesQuery.toParamString(templateTypes))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("groupByGroupingId", Some(groupByGroupingIdQuery.toParamString(groupByGroupingId))), ("returnAudienceAccountCount", Some(returnAudienceAccountCountQuery.toParamString(returnAudienceAccountCount))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScheduledNotificationFullResponse](req)

    } yield resp
  }

  def updateScheduledNotification(version: BigDecimal, scheduledNotificationId: Long, accountId: Long, name: String, `type`: String, message: String, payload: String, contentId: Long, contentName: String, `contentType`: String, parentId: Long, parentType: String, appKey: String, groupingId: String, connectionGroupIds: String, connectionAccountIds: String, audienceId: Long, audienceIds: String, albumIds: String, reportId: Long, reportParams: String, endpointURL: String, scheduledDate: Long, startDate: Long, endDate: Long, cronExpression: String, cronType: String, metaData: String, conditionalInput: String, templateType: String, visibility: String, active: Boolean, errorMessage: String, status: String, updateByGroupingId: Boolean, sendNow: Boolean, eventType: String = CUSTOM, deepLinkURI: String, sendToAll: Boolean)(implicit scheduledNotificationIdQuery: QueryParam[Long], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], `type`Query: QueryParam[String], messageQuery: QueryParam[String], payloadQuery: QueryParam[String], contentIdQuery: QueryParam[Long], contentNameQuery: QueryParam[String], `contentType`Query: QueryParam[String], parentIdQuery: QueryParam[Long], parentTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], groupingIdQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], audienceIdQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], albumIdsQuery: QueryParam[String], reportIdQuery: QueryParam[Long], reportParamsQuery: QueryParam[String], endpointURLQuery: QueryParam[String], scheduledDateQuery: QueryParam[Long], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], cronExpressionQuery: QueryParam[String], cronTypeQuery: QueryParam[String], metaDataQuery: QueryParam[String], conditionalInputQuery: QueryParam[String], templateTypeQuery: QueryParam[String], visibilityQuery: QueryParam[String], activeQuery: QueryParam[Boolean], errorMessageQuery: QueryParam[String], statusQuery: QueryParam[String], updateByGroupingIdQuery: QueryParam[Boolean], sendNowQuery: QueryParam[Boolean], eventTypeQuery: QueryParam[String], deepLinkURIQuery: QueryParam[String], sendToAllQuery: QueryParam[Boolean]): Task[ScheduledNotificationFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ScheduledNotificationFullResponse] = jsonOf[ScheduledNotificationFullResponse]

    val path = "/api/{version}/notification/schedule/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("scheduledNotificationId", Some(scheduledNotificationIdQuery.toParamString(scheduledNotificationId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("`type`", Some(typeQuery.toParamString(type))), ("message", Some(messageQuery.toParamString(message))), ("payload", Some(payloadQuery.toParamString(payload))), ("contentId", Some(contentIdQuery.toParamString(contentId))), ("contentName", Some(contentNameQuery.toParamString(contentName))), ("`contentType`", Some(contentTypeQuery.toParamString(contentType))), ("parentId", Some(parentIdQuery.toParamString(parentId))), ("parentType", Some(parentTypeQuery.toParamString(parentType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("groupingId", Some(groupingIdQuery.toParamString(groupingId))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("albumIds", Some(albumIdsQuery.toParamString(albumIds))), ("reportId", Some(reportIdQuery.toParamString(reportId))), ("reportParams", Some(reportParamsQuery.toParamString(reportParams))), ("endpointURL", Some(endpointURLQuery.toParamString(endpointURL))), ("scheduledDate", Some(scheduledDateQuery.toParamString(scheduledDate))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("cronExpression", Some(cronExpressionQuery.toParamString(cronExpression))), ("cronType", Some(cronTypeQuery.toParamString(cronType))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("conditionalInput", Some(conditionalInputQuery.toParamString(conditionalInput))), ("templateType", Some(templateTypeQuery.toParamString(templateType))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("active", Some(activeQuery.toParamString(active))), ("errorMessage", Some(errorMessageQuery.toParamString(errorMessage))), ("status", Some(statusQuery.toParamString(status))), ("updateByGroupingId", Some(updateByGroupingIdQuery.toParamString(updateByGroupingId))), ("sendNow", Some(sendNowQuery.toParamString(sendNow))), ("eventType", Some(eventTypeQuery.toParamString(eventType))), ("deepLinkURI", Some(deepLinkURIQuery.toParamString(deepLinkURI))), ("sendToAll", Some(sendToAllQuery.toParamString(sendToAll))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScheduledNotificationFullResponse](req)

    } yield resp
  }

}
