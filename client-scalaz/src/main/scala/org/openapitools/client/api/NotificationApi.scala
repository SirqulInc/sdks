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

import org.openapitools.client.api.BlockedNotificationResponse
import org.openapitools.client.api.NotificationMessageListResponse
import org.openapitools.client.api.NotificationRecipientResponse
import org.openapitools.client.api.NotificationRecipientResponseListResponse
import org.openapitools.client.api.NotificationTemplateResponse
import org.openapitools.client.api.SirqulResponse

object NotificationApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createNotificationTemplate(host: String, accountId: Long, conduit: String, title: String, body: String, appKey: String, event: String, tags: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], eventQuery: QueryParam[String], conduitQuery: QueryParam[String], titleQuery: QueryParam[String], bodyQuery: QueryParam[String], tagsQuery: QueryParam[String]): Task[NotificationTemplateResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationTemplateResponse] = jsonOf[NotificationTemplateResponse]

    val path = "/notification/template/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("event", Some(eventQuery.toParamString(event))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("title", Some(titleQuery.toParamString(title))), ("body", Some(bodyQuery.toParamString(body))), ("tags", Some(tagsQuery.toParamString(tags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationTemplateResponse](req)

    } yield resp
  }

  def createOrUpdateBlockedNotifications(host: String, appKey: String, data: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], dataQuery: QueryParam[String]): Task[BlockedNotificationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BlockedNotificationResponse] = jsonOf[BlockedNotificationResponse]

    val path = "/notification/blocked/batch"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("data", Some(dataQuery.toParamString(data))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BlockedNotificationResponse](req)

    } yield resp
  }

  def deleteNotificationTemplate(host: String, accountId: Long, notificationTemplateId: Long)(implicit accountIdQuery: QueryParam[Long], notificationTemplateIdQuery: QueryParam[Long]): Task[NotificationTemplateResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationTemplateResponse] = jsonOf[NotificationTemplateResponse]

    val path = "/notification/template/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notificationTemplateId", Some(notificationTemplateIdQuery.toParamString(notificationTemplateId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationTemplateResponse](req)

    } yield resp
  }

  def getNotificationTemplate(host: String, accountId: Long, notificationTemplateId: Long)(implicit accountIdQuery: QueryParam[Long], notificationTemplateIdQuery: QueryParam[Long]): Task[NotificationTemplateResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationTemplateResponse] = jsonOf[NotificationTemplateResponse]

    val path = "/notification/template/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notificationTemplateId", Some(notificationTemplateIdQuery.toParamString(notificationTemplateId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationTemplateResponse](req)

    } yield resp
  }

  def getNotifications(host: String, deviceId: String, accountId: Long, connectionAccountId: Long, appKey: String, eventType: String, contentIds: String, `contentTypes`: String, parentIds: String, parentTypes: String, actionCategory: String, conduits: String, keyword: String, returnReadMessages: Boolean, markAsRead: Boolean, fromDate: Long, latitude: Double, longitude: Double, returnSent: Boolean, ignoreFlagged: Boolean, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], eventTypeQuery: QueryParam[String], contentIdsQuery: QueryParam[String], `contentTypes`Query: QueryParam[String], parentIdsQuery: QueryParam[String], parentTypesQuery: QueryParam[String], actionCategoryQuery: QueryParam[String], conduitsQuery: QueryParam[String], keywordQuery: QueryParam[String], returnReadMessagesQuery: QueryParam[Boolean], markAsReadQuery: QueryParam[Boolean], fromDateQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnSentQuery: QueryParam[Boolean], ignoreFlaggedQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[NotificationMessageListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationMessageListResponse] = jsonOf[NotificationMessageListResponse]

    val path = "/notification/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("eventType", Some(eventTypeQuery.toParamString(eventType))), ("contentIds", Some(contentIdsQuery.toParamString(contentIds))), ("`contentTypes`", Some(contentTypesQuery.toParamString(contentTypes))), ("parentIds", Some(parentIdsQuery.toParamString(parentIds))), ("parentTypes", Some(parentTypesQuery.toParamString(parentTypes))), ("actionCategory", Some(actionCategoryQuery.toParamString(actionCategory))), ("conduits", Some(conduitsQuery.toParamString(conduits))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("returnReadMessages", Some(returnReadMessagesQuery.toParamString(returnReadMessages))), ("markAsRead", Some(markAsReadQuery.toParamString(markAsRead))), ("fromDate", Some(fromDateQuery.toParamString(fromDate))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnSent", Some(returnSentQuery.toParamString(returnSent))), ("ignoreFlagged", Some(ignoreFlaggedQuery.toParamString(ignoreFlagged))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationMessageListResponse](req)

    } yield resp
  }

  def registerNotificationToken(host: String, token: String, pushType: String, deviceId: String, accountId: Long, environment: String, appKey: String, gameType: String, active: Boolean, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], tokenQuery: QueryParam[String], pushTypeQuery: QueryParam[String], environmentQuery: QueryParam[String], appKeyQuery: QueryParam[String], gameTypeQuery: QueryParam[String], activeQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/notification/token"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("token", Some(tokenQuery.toParamString(token))), ("pushType", Some(pushTypeQuery.toParamString(pushType))), ("environment", Some(environmentQuery.toParamString(environment))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("active", Some(activeQuery.toParamString(active))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchBlockedNotifications(host: String, appKey: String, accountId: Long, searchTags: String, events: String, conduits: String, customTypes: String, `contentTypes`: String, contentIds: String, sortField: String, descending: Boolean, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], searchTagsQuery: QueryParam[String], eventsQuery: QueryParam[String], conduitsQuery: QueryParam[String], customTypesQuery: QueryParam[String], `contentTypes`Query: QueryParam[String], contentIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[BlockedNotificationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BlockedNotificationResponse] = jsonOf[BlockedNotificationResponse]

    val path = "/notification/blocked/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("events", Some(eventsQuery.toParamString(events))), ("conduits", Some(conduitsQuery.toParamString(conduits))), ("customTypes", Some(customTypesQuery.toParamString(customTypes))), ("`contentTypes`", Some(contentTypesQuery.toParamString(contentTypes))), ("contentIds", Some(contentIdsQuery.toParamString(contentIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BlockedNotificationResponse](req)

    } yield resp
  }

  def searchNotificationTemplate(host: String, accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, appKey: String, event: String, conduit: String, globalOnly: Boolean, reservedOnly: Boolean, keyword: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], eventQuery: QueryParam[String], conduitQuery: QueryParam[String], globalOnlyQuery: QueryParam[Boolean], reservedOnlyQuery: QueryParam[Boolean], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[NotificationTemplateResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationTemplateResponse] = jsonOf[NotificationTemplateResponse]

    val path = "/notification/template/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("event", Some(eventQuery.toParamString(event))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("globalOnly", Some(globalOnlyQuery.toParamString(globalOnly))), ("reservedOnly", Some(reservedOnlyQuery.toParamString(reservedOnly))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationTemplateResponse](req)

    } yield resp
  }

  def searchRecipients(host: String, sortField: String, deviceId: String, accountId: Long, appKey: String, conduit: String, keyword: String, audienceId: Long, audienceIds: String, connectionGroupIds: String, recipientAccountIds: String, descending: Boolean, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], conduitQuery: QueryParam[String], keywordQuery: QueryParam[String], audienceIdQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], recipientAccountIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[NotificationRecipientResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[NotificationRecipientResponse]] = jsonOf[List[NotificationRecipientResponse]]

    val path = "/notification/recipient/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("recipientAccountIds", Some(recipientAccountIdsQuery.toParamString(recipientAccountIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[NotificationRecipientResponse]](req)

    } yield resp
  }

  def searchRecipientsCount(host: String, deviceId: String, accountId: Long, appKey: String, conduit: String, keyword: String, audienceId: Long, audienceIds: String, connectionGroupIds: String, sortField: String, descending: Boolean, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], conduitQuery: QueryParam[String], keywordQuery: QueryParam[String], audienceIdQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[NotificationRecipientResponseListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationRecipientResponseListResponse] = jsonOf[NotificationRecipientResponseListResponse]

    val path = "/notification/recipient/search/count"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationRecipientResponseListResponse](req)

    } yield resp
  }

  def sendBatchNotifications(host: String, accountId: Long, appKey: String, customMessage: String, conduit: String, contentId: Long, contentName: String, `contentType`: String, parentId: Long, parentType: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], conduitQuery: QueryParam[String], customMessageQuery: QueryParam[String], contentIdQuery: QueryParam[Long], contentNameQuery: QueryParam[String], `contentType`Query: QueryParam[String], parentIdQuery: QueryParam[Long], parentTypeQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/notification/batch"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("customMessage", Some(customMessageQuery.toParamString(customMessage))), ("contentId", Some(contentIdQuery.toParamString(contentId))), ("contentName", Some(contentNameQuery.toParamString(contentName))), ("`contentType`", Some(contentTypeQuery.toParamString(contentType))), ("parentId", Some(parentIdQuery.toParamString(parentId))), ("parentType", Some(parentTypeQuery.toParamString(parentType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def sendCustomNotifications(host: String, deviceId: String, accountId: Long, receiverAccountIds: String, includeFriendGroup: Boolean, appKey: String, gameType: String, conduit: String, contentId: Long, contentName: String, `contentType`: String, parentId: Long, parentType: String, actionCategory: String, subject: String, customMessage: String, friendOnlyAPNS: Boolean, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], receiverAccountIdsQuery: QueryParam[String], includeFriendGroupQuery: QueryParam[Boolean], appKeyQuery: QueryParam[String], gameTypeQuery: QueryParam[String], conduitQuery: QueryParam[String], contentIdQuery: QueryParam[Long], contentNameQuery: QueryParam[String], `contentType`Query: QueryParam[String], parentIdQuery: QueryParam[Long], parentTypeQuery: QueryParam[String], actionCategoryQuery: QueryParam[String], subjectQuery: QueryParam[String], customMessageQuery: QueryParam[String], friendOnlyAPNSQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/notification/custom"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("receiverAccountIds", Some(receiverAccountIdsQuery.toParamString(receiverAccountIds))), ("includeFriendGroup", Some(includeFriendGroupQuery.toParamString(includeFriendGroup))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("contentId", Some(contentIdQuery.toParamString(contentId))), ("contentName", Some(contentNameQuery.toParamString(contentName))), ("`contentType`", Some(contentTypeQuery.toParamString(contentType))), ("parentId", Some(parentIdQuery.toParamString(parentId))), ("parentType", Some(parentTypeQuery.toParamString(parentType))), ("actionCategory", Some(actionCategoryQuery.toParamString(actionCategory))), ("subject", Some(subjectQuery.toParamString(subject))), ("customMessage", Some(customMessageQuery.toParamString(customMessage))), ("friendOnlyAPNS", Some(friendOnlyAPNSQuery.toParamString(friendOnlyAPNS))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateNotificationTemplate(host: String, accountId: Long, notificationTemplateId: Long, title: String, body: String, tags: String)(implicit accountIdQuery: QueryParam[Long], notificationTemplateIdQuery: QueryParam[Long], titleQuery: QueryParam[String], bodyQuery: QueryParam[String], tagsQuery: QueryParam[String]): Task[NotificationTemplateResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationTemplateResponse] = jsonOf[NotificationTemplateResponse]

    val path = "/notification/template/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notificationTemplateId", Some(notificationTemplateIdQuery.toParamString(notificationTemplateId))), ("title", Some(titleQuery.toParamString(title))), ("body", Some(bodyQuery.toParamString(body))), ("tags", Some(tagsQuery.toParamString(tags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationTemplateResponse](req)

    } yield resp
  }

}

class HttpServiceNotificationApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createNotificationTemplate(accountId: Long, conduit: String, title: String, body: String, appKey: String, event: String, tags: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], eventQuery: QueryParam[String], conduitQuery: QueryParam[String], titleQuery: QueryParam[String], bodyQuery: QueryParam[String], tagsQuery: QueryParam[String]): Task[NotificationTemplateResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationTemplateResponse] = jsonOf[NotificationTemplateResponse]

    val path = "/notification/template/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("event", Some(eventQuery.toParamString(event))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("title", Some(titleQuery.toParamString(title))), ("body", Some(bodyQuery.toParamString(body))), ("tags", Some(tagsQuery.toParamString(tags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationTemplateResponse](req)

    } yield resp
  }

  def createOrUpdateBlockedNotifications(appKey: String, data: String, accountId: Long)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], dataQuery: QueryParam[String]): Task[BlockedNotificationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BlockedNotificationResponse] = jsonOf[BlockedNotificationResponse]

    val path = "/notification/blocked/batch"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("data", Some(dataQuery.toParamString(data))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BlockedNotificationResponse](req)

    } yield resp
  }

  def deleteNotificationTemplate(accountId: Long, notificationTemplateId: Long)(implicit accountIdQuery: QueryParam[Long], notificationTemplateIdQuery: QueryParam[Long]): Task[NotificationTemplateResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationTemplateResponse] = jsonOf[NotificationTemplateResponse]

    val path = "/notification/template/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notificationTemplateId", Some(notificationTemplateIdQuery.toParamString(notificationTemplateId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationTemplateResponse](req)

    } yield resp
  }

  def getNotificationTemplate(accountId: Long, notificationTemplateId: Long)(implicit accountIdQuery: QueryParam[Long], notificationTemplateIdQuery: QueryParam[Long]): Task[NotificationTemplateResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationTemplateResponse] = jsonOf[NotificationTemplateResponse]

    val path = "/notification/template/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notificationTemplateId", Some(notificationTemplateIdQuery.toParamString(notificationTemplateId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationTemplateResponse](req)

    } yield resp
  }

  def getNotifications(deviceId: String, accountId: Long, connectionAccountId: Long, appKey: String, eventType: String, contentIds: String, `contentTypes`: String, parentIds: String, parentTypes: String, actionCategory: String, conduits: String, keyword: String, returnReadMessages: Boolean, markAsRead: Boolean, fromDate: Long, latitude: Double, longitude: Double, returnSent: Boolean, ignoreFlagged: Boolean, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], eventTypeQuery: QueryParam[String], contentIdsQuery: QueryParam[String], `contentTypes`Query: QueryParam[String], parentIdsQuery: QueryParam[String], parentTypesQuery: QueryParam[String], actionCategoryQuery: QueryParam[String], conduitsQuery: QueryParam[String], keywordQuery: QueryParam[String], returnReadMessagesQuery: QueryParam[Boolean], markAsReadQuery: QueryParam[Boolean], fromDateQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], returnSentQuery: QueryParam[Boolean], ignoreFlaggedQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[NotificationMessageListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationMessageListResponse] = jsonOf[NotificationMessageListResponse]

    val path = "/notification/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("eventType", Some(eventTypeQuery.toParamString(eventType))), ("contentIds", Some(contentIdsQuery.toParamString(contentIds))), ("`contentTypes`", Some(contentTypesQuery.toParamString(contentTypes))), ("parentIds", Some(parentIdsQuery.toParamString(parentIds))), ("parentTypes", Some(parentTypesQuery.toParamString(parentTypes))), ("actionCategory", Some(actionCategoryQuery.toParamString(actionCategory))), ("conduits", Some(conduitsQuery.toParamString(conduits))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("returnReadMessages", Some(returnReadMessagesQuery.toParamString(returnReadMessages))), ("markAsRead", Some(markAsReadQuery.toParamString(markAsRead))), ("fromDate", Some(fromDateQuery.toParamString(fromDate))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("returnSent", Some(returnSentQuery.toParamString(returnSent))), ("ignoreFlagged", Some(ignoreFlaggedQuery.toParamString(ignoreFlagged))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationMessageListResponse](req)

    } yield resp
  }

  def registerNotificationToken(token: String, pushType: String, deviceId: String, accountId: Long, environment: String, appKey: String, gameType: String, active: Boolean, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], tokenQuery: QueryParam[String], pushTypeQuery: QueryParam[String], environmentQuery: QueryParam[String], appKeyQuery: QueryParam[String], gameTypeQuery: QueryParam[String], activeQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/notification/token"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("token", Some(tokenQuery.toParamString(token))), ("pushType", Some(pushTypeQuery.toParamString(pushType))), ("environment", Some(environmentQuery.toParamString(environment))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("active", Some(activeQuery.toParamString(active))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchBlockedNotifications(appKey: String, accountId: Long, searchTags: String, events: String, conduits: String, customTypes: String, `contentTypes`: String, contentIds: String, sortField: String, descending: Boolean, start: Integer, limit: Integer)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], searchTagsQuery: QueryParam[String], eventsQuery: QueryParam[String], conduitsQuery: QueryParam[String], customTypesQuery: QueryParam[String], `contentTypes`Query: QueryParam[String], contentIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[BlockedNotificationResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[BlockedNotificationResponse] = jsonOf[BlockedNotificationResponse]

    val path = "/notification/blocked/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("events", Some(eventsQuery.toParamString(events))), ("conduits", Some(conduitsQuery.toParamString(conduits))), ("customTypes", Some(customTypesQuery.toParamString(customTypes))), ("`contentTypes`", Some(contentTypesQuery.toParamString(contentTypes))), ("contentIds", Some(contentIdsQuery.toParamString(contentIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[BlockedNotificationResponse](req)

    } yield resp
  }

  def searchNotificationTemplate(accountId: Long, sortField: String, descending: Boolean, start: Integer, limit: Integer, appKey: String, event: String, conduit: String, globalOnly: Boolean, reservedOnly: Boolean, keyword: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], eventQuery: QueryParam[String], conduitQuery: QueryParam[String], globalOnlyQuery: QueryParam[Boolean], reservedOnlyQuery: QueryParam[Boolean], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[NotificationTemplateResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationTemplateResponse] = jsonOf[NotificationTemplateResponse]

    val path = "/notification/template/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("event", Some(eventQuery.toParamString(event))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("globalOnly", Some(globalOnlyQuery.toParamString(globalOnly))), ("reservedOnly", Some(reservedOnlyQuery.toParamString(reservedOnly))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationTemplateResponse](req)

    } yield resp
  }

  def searchRecipients(sortField: String, deviceId: String, accountId: Long, appKey: String, conduit: String, keyword: String, audienceId: Long, audienceIds: String, connectionGroupIds: String, recipientAccountIds: String, descending: Boolean, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], conduitQuery: QueryParam[String], keywordQuery: QueryParam[String], audienceIdQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], recipientAccountIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[NotificationRecipientResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[NotificationRecipientResponse]] = jsonOf[List[NotificationRecipientResponse]]

    val path = "/notification/recipient/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("recipientAccountIds", Some(recipientAccountIdsQuery.toParamString(recipientAccountIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[NotificationRecipientResponse]](req)

    } yield resp
  }

  def searchRecipientsCount(deviceId: String, accountId: Long, appKey: String, conduit: String, keyword: String, audienceId: Long, audienceIds: String, connectionGroupIds: String, sortField: String, descending: Boolean, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], conduitQuery: QueryParam[String], keywordQuery: QueryParam[String], audienceIdQuery: QueryParam[Long], audienceIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[NotificationRecipientResponseListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationRecipientResponseListResponse] = jsonOf[NotificationRecipientResponseListResponse]

    val path = "/notification/recipient/search/count"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("audienceId", Some(audienceIdQuery.toParamString(audienceId))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationRecipientResponseListResponse](req)

    } yield resp
  }

  def sendBatchNotifications(accountId: Long, appKey: String, customMessage: String, conduit: String, contentId: Long, contentName: String, `contentType`: String, parentId: Long, parentType: String)(implicit accountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], conduitQuery: QueryParam[String], customMessageQuery: QueryParam[String], contentIdQuery: QueryParam[Long], contentNameQuery: QueryParam[String], `contentType`Query: QueryParam[String], parentIdQuery: QueryParam[Long], parentTypeQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/notification/batch"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("customMessage", Some(customMessageQuery.toParamString(customMessage))), ("contentId", Some(contentIdQuery.toParamString(contentId))), ("contentName", Some(contentNameQuery.toParamString(contentName))), ("`contentType`", Some(contentTypeQuery.toParamString(contentType))), ("parentId", Some(parentIdQuery.toParamString(parentId))), ("parentType", Some(parentTypeQuery.toParamString(parentType))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def sendCustomNotifications(deviceId: String, accountId: Long, receiverAccountIds: String, includeFriendGroup: Boolean, appKey: String, gameType: String, conduit: String, contentId: Long, contentName: String, `contentType`: String, parentId: Long, parentType: String, actionCategory: String, subject: String, customMessage: String, friendOnlyAPNS: Boolean, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], receiverAccountIdsQuery: QueryParam[String], includeFriendGroupQuery: QueryParam[Boolean], appKeyQuery: QueryParam[String], gameTypeQuery: QueryParam[String], conduitQuery: QueryParam[String], contentIdQuery: QueryParam[Long], contentNameQuery: QueryParam[String], `contentType`Query: QueryParam[String], parentIdQuery: QueryParam[Long], parentTypeQuery: QueryParam[String], actionCategoryQuery: QueryParam[String], subjectQuery: QueryParam[String], customMessageQuery: QueryParam[String], friendOnlyAPNSQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/notification/custom"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("receiverAccountIds", Some(receiverAccountIdsQuery.toParamString(receiverAccountIds))), ("includeFriendGroup", Some(includeFriendGroupQuery.toParamString(includeFriendGroup))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("conduit", Some(conduitQuery.toParamString(conduit))), ("contentId", Some(contentIdQuery.toParamString(contentId))), ("contentName", Some(contentNameQuery.toParamString(contentName))), ("`contentType`", Some(contentTypeQuery.toParamString(contentType))), ("parentId", Some(parentIdQuery.toParamString(parentId))), ("parentType", Some(parentTypeQuery.toParamString(parentType))), ("actionCategory", Some(actionCategoryQuery.toParamString(actionCategory))), ("subject", Some(subjectQuery.toParamString(subject))), ("customMessage", Some(customMessageQuery.toParamString(customMessage))), ("friendOnlyAPNS", Some(friendOnlyAPNSQuery.toParamString(friendOnlyAPNS))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def updateNotificationTemplate(accountId: Long, notificationTemplateId: Long, title: String, body: String, tags: String)(implicit accountIdQuery: QueryParam[Long], notificationTemplateIdQuery: QueryParam[Long], titleQuery: QueryParam[String], bodyQuery: QueryParam[String], tagsQuery: QueryParam[String]): Task[NotificationTemplateResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NotificationTemplateResponse] = jsonOf[NotificationTemplateResponse]

    val path = "/notification/template/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notificationTemplateId", Some(notificationTemplateIdQuery.toParamString(notificationTemplateId))), ("title", Some(titleQuery.toParamString(title))), ("body", Some(bodyQuery.toParamString(body))), ("tags", Some(tagsQuery.toParamString(tags))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NotificationTemplateResponse](req)

    } yield resp
  }

}
