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

import org.openapitools.client.api.ConnectionGroupResponse
import org.openapitools.client.api.ConnectionInfoResponse
import org.openapitools.client.api.ConnectionListResponse
import org.openapitools.client.api.ConnectionResponse
import org.openapitools.client.api.SirqulResponse

object ConnectionApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addConnectionToGroup(host: String, returnNulls: Boolean, groupId: Long, deviceId: String, accountId: Long, connectionId: Long, connectionAccountId: Long, pendingId: Long, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], pendingIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/connection/group/addConnection"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionId", Some(connectionIdQuery.toParamString(connectionId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("pendingId", Some(pendingIdQuery.toParamString(pendingId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def addConnectionsToGroup(host: String, connectionGroupId: Long, deviceId: String, accountId: Long, connectionIds: String, connectionAccountIds: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], connectionGroupIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/connection/group/addConnections"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("connectionGroupId", Some(connectionGroupIdQuery.toParamString(connectionGroupId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def addSubGroups(host: String, returnNulls: Boolean, groupId: Long, subGroupIds: String, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], subGroupIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ConnectionGroupResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionGroupResponse] = jsonOf[ConnectionGroupResponse]

    val path = "/consumer/connection/group/addSubGroup"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("subGroupIds", Some(subGroupIdsQuery.toParamString(subGroupIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionGroupResponse](req)

    } yield resp
  }

  def createOrUpdateConnection(host: String, deviceId: String, accountId: Long, connectionId: Long, connectionAccountId: Long, pendingId: Long, groupId: Long, gameType: String, appKey: String, isTrusted: Boolean, ignoreFriendRequest: Boolean, isContact: Boolean, isBlocked: Boolean, isFollowing: Boolean, connectionResponse: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], pendingIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], isTrustedQuery: QueryParam[Boolean], ignoreFriendRequestQuery: QueryParam[Boolean], isContactQuery: QueryParam[Boolean], isBlockedQuery: QueryParam[Boolean], isFollowingQuery: QueryParam[Boolean], connectionResponseQuery: QueryParam[Boolean]): Task[ConnectionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionResponse] = jsonOf[ConnectionResponse]

    val path = "/consumer/connection/add"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionId", Some(connectionIdQuery.toParamString(connectionId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("pendingId", Some(pendingIdQuery.toParamString(pendingId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("isTrusted", Some(isTrustedQuery.toParamString(isTrusted))), ("ignoreFriendRequest", Some(ignoreFriendRequestQuery.toParamString(ignoreFriendRequest))), ("isContact", Some(isContactQuery.toParamString(isContact))), ("isBlocked", Some(isBlockedQuery.toParamString(isBlocked))), ("isFollowing", Some(isFollowingQuery.toParamString(isFollowing))), ("connectionResponse", Some(connectionResponseQuery.toParamString(connectionResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionResponse](req)

    } yield resp
  }

  def createOrUpdateGroup(host: String, returnNulls: Boolean, deviceId: String, accountId: Long, name: String, groupId: Long, assetId: Long, connections: String, description: String, canViewProfileInfo: Boolean, canViewGameInfo: Boolean, canViewFriendInfo: Boolean, active: Boolean, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], groupIdQuery: QueryParam[Long], assetIdQuery: QueryParam[Long], connectionsQuery: QueryParam[String], descriptionQuery: QueryParam[String], canViewProfileInfoQuery: QueryParam[Boolean], canViewGameInfoQuery: QueryParam[Boolean], canViewFriendInfoQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/connection/group"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("connections", Some(connectionsQuery.toParamString(connections))), ("description", Some(descriptionQuery.toParamString(description))), ("canViewProfileInfo", Some(canViewProfileInfoQuery.toParamString(canViewProfileInfo))), ("canViewGameInfo", Some(canViewGameInfoQuery.toParamString(canViewGameInfo))), ("canViewFriendInfo", Some(canViewFriendInfoQuery.toParamString(canViewFriendInfo))), ("active", Some(activeQuery.toParamString(active))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def followAccept(host: String, accountId: Long, connectionAccountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/follow/accept"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def followReject(host: String, accountId: Long, connectionAccountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/follow/reject"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def followRemove(host: String, accountId: Long, connectionAccountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/follow/remove"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def followRequest(host: String, accountId: Long, connectionAccountId: Long, appKey: String, approvalNeeded: Boolean = true)(implicit accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], approvalNeededQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/follow/request"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("approvalNeeded", Some(approvalNeededQuery.toParamString(approvalNeeded))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def friendAccept(host: String, friendAccountId: Long, notifyFriend: Boolean, deviceId: String, accountId: Long, gameType: String, appKey: String, notificationMessage: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], friendAccountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], notifyFriendQuery: QueryParam[Boolean], notificationMessageQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/friend/accept"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("friendAccountId", Some(friendAccountIdQuery.toParamString(friendAccountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("notifyFriend", Some(notifyFriendQuery.toParamString(notifyFriend))), ("notificationMessage", Some(notificationMessageQuery.toParamString(notificationMessage))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def friendReject(host: String, friendAccountId: Long, deviceId: String, accountId: Long, gameType: String, appKey: String, notifyFriend: Boolean, notificationMessage: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], friendAccountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], notifyFriendQuery: QueryParam[Boolean], notificationMessageQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/friend/reject"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("friendAccountId", Some(friendAccountIdQuery.toParamString(friendAccountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("notifyFriend", Some(notifyFriendQuery.toParamString(notifyFriend))), ("notificationMessage", Some(notificationMessageQuery.toParamString(notificationMessage))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def friendRemove(host: String, friendAccountId: Long, deviceId: String, accountId: Long, notifyFriend: Boolean, removeFromGroups: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], friendAccountIdQuery: QueryParam[Long], notifyFriendQuery: QueryParam[Boolean], removeFromGroupsQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/friend/remove"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("friendAccountId", Some(friendAccountIdQuery.toParamString(friendAccountId))), ("notifyFriend", Some(notifyFriendQuery.toParamString(notifyFriend))), ("removeFromGroups", Some(removeFromGroupsQuery.toParamString(removeFromGroups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def friendRequest(host: String, friendAccountId: Long, deviceId: String, accountId: Long, gameType: String, appKey: String, notificationMessage: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], friendAccountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], notificationMessageQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/friend/request"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("friendAccountId", Some(friendAccountIdQuery.toParamString(friendAccountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("notificationMessage", Some(notificationMessageQuery.toParamString(notificationMessage))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getConnectionSentFriendRequests(host: String, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long]): Task[ConnectionListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionListResponse] = jsonOf[ConnectionListResponse]

    val path = "/consumer/connection/getRequested"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionListResponse](req)

    } yield resp
  }

  def getConnections(host: String, returnNulls: Boolean, filter: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, deviceId: String, accountId: Long, connectionAccountId: Long, q: String, keyword: String, i: Integer, l: Integer, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], filterQuery: QueryParam[String], qQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ConnectionListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionListResponse] = jsonOf[ConnectionListResponse]

    val path = "/consumer/connection/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("filter", Some(filterQuery.toParamString(filter))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionListResponse](req)

    } yield resp
  }

  def getGroupDetails(host: String, combineConnections: Boolean, deviceId: String, accountId: Long, groupId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], combineConnectionsQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ConnectionGroupResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionGroupResponse] = jsonOf[ConnectionGroupResponse]

    val path = "/consumer/connection/group/details/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("combineConnections", Some(combineConnectionsQuery.toParamString(combineConnections))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionGroupResponse](req)

    } yield resp
  }

  def groupSearch(host: String, sortField: String, descending: Boolean, activeOnly: Boolean, start: Integer, limit: Integer, deviceId: String, accountId: Long, latitude: Double, longitude: Double, keyword: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ConnectionInfoResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ConnectionInfoResponse]] = jsonOf[List[ConnectionInfoResponse]]

    val path = "/connection/group/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ConnectionInfoResponse]](req)

    } yield resp
  }

  def removeConnectionFromGroup(host: String, returnNulls: Boolean, groupId: Long, deviceId: String, accountId: Long, connectionId: Long, connectionAccountId: Long, pendingId: Long, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], pendingIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/connection/group/removeConnection"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionId", Some(connectionIdQuery.toParamString(connectionId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("pendingId", Some(pendingIdQuery.toParamString(pendingId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeConnectionsFromGroup(host: String, connectionGroupId: Long, deviceId: String, accountId: Long, connectionIds: String, connectionAccountIds: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], connectionGroupIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/connection/group/removeConnections"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("connectionGroupId", Some(connectionGroupIdQuery.toParamString(connectionGroupId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeGroup(host: String, returnNulls: Boolean, groupId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/connection/group/remove"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeSubGroups(host: String, returnNulls: Boolean, groupId: Long, subGroupIds: String, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], subGroupIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/connection/group/removeSubGroup"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("subGroupIds", Some(subGroupIdsQuery.toParamString(subGroupIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchConnections(host: String, returnNulls: Boolean, start: Integer, limit: Integer, deviceId: String, accountId: Long, q: String, keyword: String, latitude: Double, longitude: Double, gameType: String, appKey: String, i: Integer, l: Integer, sortField: String, hasLocation: Boolean)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], sortFieldQuery: QueryParam[String], hasLocationQuery: QueryParam[Boolean]): Task[ConnectionListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionListResponse] = jsonOf[ConnectionListResponse]

    val path = "/connection/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("hasLocation", Some(hasLocationQuery.toParamString(hasLocation))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionListResponse](req)

    } yield resp
  }

}

class HttpServiceConnectionApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addConnectionToGroup(returnNulls: Boolean, groupId: Long, deviceId: String, accountId: Long, connectionId: Long, connectionAccountId: Long, pendingId: Long, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], pendingIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/connection/group/addConnection"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionId", Some(connectionIdQuery.toParamString(connectionId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("pendingId", Some(pendingIdQuery.toParamString(pendingId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def addConnectionsToGroup(connectionGroupId: Long, deviceId: String, accountId: Long, connectionIds: String, connectionAccountIds: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], connectionGroupIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/connection/group/addConnections"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("connectionGroupId", Some(connectionGroupIdQuery.toParamString(connectionGroupId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def addSubGroups(returnNulls: Boolean, groupId: Long, subGroupIds: String, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], subGroupIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ConnectionGroupResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionGroupResponse] = jsonOf[ConnectionGroupResponse]

    val path = "/consumer/connection/group/addSubGroup"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("subGroupIds", Some(subGroupIdsQuery.toParamString(subGroupIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionGroupResponse](req)

    } yield resp
  }

  def createOrUpdateConnection(deviceId: String, accountId: Long, connectionId: Long, connectionAccountId: Long, pendingId: Long, groupId: Long, gameType: String, appKey: String, isTrusted: Boolean, ignoreFriendRequest: Boolean, isContact: Boolean, isBlocked: Boolean, isFollowing: Boolean, connectionResponse: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], pendingIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], isTrustedQuery: QueryParam[Boolean], ignoreFriendRequestQuery: QueryParam[Boolean], isContactQuery: QueryParam[Boolean], isBlockedQuery: QueryParam[Boolean], isFollowingQuery: QueryParam[Boolean], connectionResponseQuery: QueryParam[Boolean]): Task[ConnectionResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionResponse] = jsonOf[ConnectionResponse]

    val path = "/consumer/connection/add"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionId", Some(connectionIdQuery.toParamString(connectionId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("pendingId", Some(pendingIdQuery.toParamString(pendingId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("isTrusted", Some(isTrustedQuery.toParamString(isTrusted))), ("ignoreFriendRequest", Some(ignoreFriendRequestQuery.toParamString(ignoreFriendRequest))), ("isContact", Some(isContactQuery.toParamString(isContact))), ("isBlocked", Some(isBlockedQuery.toParamString(isBlocked))), ("isFollowing", Some(isFollowingQuery.toParamString(isFollowing))), ("connectionResponse", Some(connectionResponseQuery.toParamString(connectionResponse))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionResponse](req)

    } yield resp
  }

  def createOrUpdateGroup(returnNulls: Boolean, deviceId: String, accountId: Long, name: String, groupId: Long, assetId: Long, connections: String, description: String, canViewProfileInfo: Boolean, canViewGameInfo: Boolean, canViewFriendInfo: Boolean, active: Boolean, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], nameQuery: QueryParam[String], groupIdQuery: QueryParam[Long], assetIdQuery: QueryParam[Long], connectionsQuery: QueryParam[String], descriptionQuery: QueryParam[String], canViewProfileInfoQuery: QueryParam[Boolean], canViewGameInfoQuery: QueryParam[Boolean], canViewFriendInfoQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/connection/group"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("name", Some(nameQuery.toParamString(name))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("connections", Some(connectionsQuery.toParamString(connections))), ("description", Some(descriptionQuery.toParamString(description))), ("canViewProfileInfo", Some(canViewProfileInfoQuery.toParamString(canViewProfileInfo))), ("canViewGameInfo", Some(canViewGameInfoQuery.toParamString(canViewGameInfo))), ("canViewFriendInfo", Some(canViewFriendInfoQuery.toParamString(canViewFriendInfo))), ("active", Some(activeQuery.toParamString(active))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def followAccept(accountId: Long, connectionAccountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/follow/accept"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def followReject(accountId: Long, connectionAccountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/follow/reject"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def followRemove(accountId: Long, connectionAccountId: Long, appKey: String)(implicit accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/follow/remove"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def followRequest(accountId: Long, connectionAccountId: Long, appKey: String, approvalNeeded: Boolean = true)(implicit accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], approvalNeededQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/follow/request"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("approvalNeeded", Some(approvalNeededQuery.toParamString(approvalNeeded))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def friendAccept(friendAccountId: Long, notifyFriend: Boolean, deviceId: String, accountId: Long, gameType: String, appKey: String, notificationMessage: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], friendAccountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], notifyFriendQuery: QueryParam[Boolean], notificationMessageQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/friend/accept"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("friendAccountId", Some(friendAccountIdQuery.toParamString(friendAccountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("notifyFriend", Some(notifyFriendQuery.toParamString(notifyFriend))), ("notificationMessage", Some(notificationMessageQuery.toParamString(notificationMessage))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def friendReject(friendAccountId: Long, deviceId: String, accountId: Long, gameType: String, appKey: String, notifyFriend: Boolean, notificationMessage: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], friendAccountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], notifyFriendQuery: QueryParam[Boolean], notificationMessageQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/friend/reject"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("friendAccountId", Some(friendAccountIdQuery.toParamString(friendAccountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("notifyFriend", Some(notifyFriendQuery.toParamString(notifyFriend))), ("notificationMessage", Some(notificationMessageQuery.toParamString(notificationMessage))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def friendRemove(friendAccountId: Long, deviceId: String, accountId: Long, notifyFriend: Boolean, removeFromGroups: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], friendAccountIdQuery: QueryParam[Long], notifyFriendQuery: QueryParam[Boolean], removeFromGroupsQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/friend/remove"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("friendAccountId", Some(friendAccountIdQuery.toParamString(friendAccountId))), ("notifyFriend", Some(notifyFriendQuery.toParamString(notifyFriend))), ("removeFromGroups", Some(removeFromGroupsQuery.toParamString(removeFromGroups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def friendRequest(friendAccountId: Long, deviceId: String, accountId: Long, gameType: String, appKey: String, notificationMessage: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], friendAccountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], notificationMessageQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/friend/request"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("friendAccountId", Some(friendAccountIdQuery.toParamString(friendAccountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("notificationMessage", Some(notificationMessageQuery.toParamString(notificationMessage))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getConnectionSentFriendRequests(deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long]): Task[ConnectionListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionListResponse] = jsonOf[ConnectionListResponse]

    val path = "/consumer/connection/getRequested"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionListResponse](req)

    } yield resp
  }

  def getConnections(returnNulls: Boolean, filter: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, deviceId: String, accountId: Long, connectionAccountId: Long, q: String, keyword: String, i: Integer, l: Integer, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], filterQuery: QueryParam[String], qQuery: QueryParam[String], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ConnectionListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionListResponse] = jsonOf[ConnectionListResponse]

    val path = "/consumer/connection/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("filter", Some(filterQuery.toParamString(filter))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionListResponse](req)

    } yield resp
  }

  def getGroupDetails(combineConnections: Boolean, deviceId: String, accountId: Long, groupId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], combineConnectionsQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ConnectionGroupResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionGroupResponse] = jsonOf[ConnectionGroupResponse]

    val path = "/consumer/connection/group/details/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("combineConnections", Some(combineConnectionsQuery.toParamString(combineConnections))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionGroupResponse](req)

    } yield resp
  }

  def groupSearch(sortField: String, descending: Boolean, activeOnly: Boolean, start: Integer, limit: Integer, deviceId: String, accountId: Long, latitude: Double, longitude: Double, keyword: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[ConnectionInfoResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[ConnectionInfoResponse]] = jsonOf[List[ConnectionInfoResponse]]

    val path = "/connection/group/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[ConnectionInfoResponse]](req)

    } yield resp
  }

  def removeConnectionFromGroup(returnNulls: Boolean, groupId: Long, deviceId: String, accountId: Long, connectionId: Long, connectionAccountId: Long, pendingId: Long, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], pendingIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/connection/group/removeConnection"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionId", Some(connectionIdQuery.toParamString(connectionId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("pendingId", Some(pendingIdQuery.toParamString(pendingId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeConnectionsFromGroup(connectionGroupId: Long, deviceId: String, accountId: Long, connectionIds: String, connectionAccountIds: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], connectionGroupIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/connection/group/removeConnections"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("connectionGroupId", Some(connectionGroupIdQuery.toParamString(connectionGroupId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeGroup(returnNulls: Boolean, groupId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/connection/group/remove"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeSubGroups(returnNulls: Boolean, groupId: Long, subGroupIds: String, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], groupIdQuery: QueryParam[Long], subGroupIdsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/connection/group/removeSubGroup"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("groupId", Some(groupIdQuery.toParamString(groupId))), ("subGroupIds", Some(subGroupIdsQuery.toParamString(subGroupIds))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchConnections(returnNulls: Boolean, start: Integer, limit: Integer, deviceId: String, accountId: Long, q: String, keyword: String, latitude: Double, longitude: Double, gameType: String, appKey: String, i: Integer, l: Integer, sortField: String, hasLocation: Boolean)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], sortFieldQuery: QueryParam[String], hasLocationQuery: QueryParam[Boolean]): Task[ConnectionListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ConnectionListResponse] = jsonOf[ConnectionListResponse]

    val path = "/connection/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("hasLocation", Some(hasLocationQuery.toParamString(hasLocation))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ConnectionListResponse](req)

    } yield resp
  }

}
