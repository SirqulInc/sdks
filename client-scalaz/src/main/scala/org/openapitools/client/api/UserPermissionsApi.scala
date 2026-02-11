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

import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.UserPermissionsResponse

object UserPermissionsApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addUsersToPermissionable(host: String, permissionableType: String, permissionableId: Long, deviceId: String, accountId: Long, read: Boolean = true, write: Boolean = false, delete: Boolean = false, add: Boolean = false, connectionIds: String, connectionAccountIds: String, connectionGroupIds: String, pending: Boolean = false, admin: Boolean, includeFriendGroup: Boolean = false, latitude: Double, longitude: Double, audienceIds: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], readQuery: QueryParam[Boolean], writeQuery: QueryParam[Boolean], deleteQuery: QueryParam[Boolean], addQuery: QueryParam[Boolean], connectionIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], pendingQuery: QueryParam[Boolean], adminQuery: QueryParam[Boolean], includeFriendGroupQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], audienceIdsQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/permissions/add"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("read", Some(readQuery.toParamString(read))), ("write", Some(writeQuery.toParamString(write))), ("delete", Some(deleteQuery.toParamString(delete))), ("add", Some(addQuery.toParamString(add))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("pending", Some(pendingQuery.toParamString(pending))), ("admin", Some(adminQuery.toParamString(admin))), ("includeFriendGroup", Some(includeFriendGroupQuery.toParamString(includeFriendGroup))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def approvePermissionable(host: String, permissionableType: String, permissionableId: Long, deviceId: String, accountId: Long, approvalStatus: String = APPROVED)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], approvalStatusQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/permissionable/approve"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def leaveFromPermissionable(host: String, permissionableType: String, permissionableId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/permissions/leave"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeUsersFromPermissionable(host: String, permissionableType: String, permissionableId: Long, deviceId: String, accountId: Long, connectionIds: String, connectionAccountIds: String, connectionGroupIds: String, removeFriendGroup: Boolean = false, latitude: Double, longitude: Double, audienceIds: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], connectionIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], removeFriendGroupQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], audienceIdsQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/permissions/remove"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("removeFriendGroup", Some(removeFriendGroupQuery.toParamString(removeFriendGroup))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchPermissionables(host: String, deviceId: String, accountId: Long, connectionAccountId: Long, connectionAccountIds: String, permissionableType: String, permissionableId: Long, keyword: String, sortField: String, descending: Boolean, pending: Boolean, admin: Boolean, start: Integer = 0, limit: Integer = 20)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], connectionAccountIdsQuery: QueryParam[String], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], pendingQuery: QueryParam[Boolean], adminQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[UserPermissionsResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[UserPermissionsResponse]] = jsonOf[List[UserPermissionsResponse]]

    val path = "/permissions/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("pending", Some(pendingQuery.toParamString(pending))), ("admin", Some(adminQuery.toParamString(admin))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[UserPermissionsResponse]](req)

    } yield resp
  }

  def searchPermissionablesFollowingDistance(host: String, latitude: Double, longitude: Double, deviceId: String, accountId: Long, connectionAccountId: Long, connectionAccountIds: String, permissionableType: String, permissionableId: Long, searchRange: Double = 5, keyword: String, pending: Boolean, admin: Boolean, start: Integer = 0, limit: Integer = 20)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], connectionAccountIdsQuery: QueryParam[String], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], searchRangeQuery: QueryParam[Double], keywordQuery: QueryParam[String], pendingQuery: QueryParam[Boolean], adminQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[UserPermissionsResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[UserPermissionsResponse]] = jsonOf[List[UserPermissionsResponse]]

    val path = "/permissions/distancesearch"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("pending", Some(pendingQuery.toParamString(pending))), ("admin", Some(adminQuery.toParamString(admin))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[UserPermissionsResponse]](req)

    } yield resp
  }

}

class HttpServiceUserPermissionsApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addUsersToPermissionable(permissionableType: String, permissionableId: Long, deviceId: String, accountId: Long, read: Boolean = true, write: Boolean = false, delete: Boolean = false, add: Boolean = false, connectionIds: String, connectionAccountIds: String, connectionGroupIds: String, pending: Boolean = false, admin: Boolean, includeFriendGroup: Boolean = false, latitude: Double, longitude: Double, audienceIds: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], readQuery: QueryParam[Boolean], writeQuery: QueryParam[Boolean], deleteQuery: QueryParam[Boolean], addQuery: QueryParam[Boolean], connectionIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], pendingQuery: QueryParam[Boolean], adminQuery: QueryParam[Boolean], includeFriendGroupQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], audienceIdsQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/permissions/add"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("read", Some(readQuery.toParamString(read))), ("write", Some(writeQuery.toParamString(write))), ("delete", Some(deleteQuery.toParamString(delete))), ("add", Some(addQuery.toParamString(add))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("pending", Some(pendingQuery.toParamString(pending))), ("admin", Some(adminQuery.toParamString(admin))), ("includeFriendGroup", Some(includeFriendGroupQuery.toParamString(includeFriendGroup))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def approvePermissionable(permissionableType: String, permissionableId: Long, deviceId: String, accountId: Long, approvalStatus: String = APPROVED)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], approvalStatusQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/permissionable/approve"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def leaveFromPermissionable(permissionableType: String, permissionableId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/permissions/leave"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeUsersFromPermissionable(permissionableType: String, permissionableId: Long, deviceId: String, accountId: Long, connectionIds: String, connectionAccountIds: String, connectionGroupIds: String, removeFriendGroup: Boolean = false, latitude: Double, longitude: Double, audienceIds: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], connectionIdsQuery: QueryParam[String], connectionAccountIdsQuery: QueryParam[String], connectionGroupIdsQuery: QueryParam[String], removeFriendGroupQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], audienceIdsQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/permissions/remove"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("connectionIds", Some(connectionIdsQuery.toParamString(connectionIds))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("connectionGroupIds", Some(connectionGroupIdsQuery.toParamString(connectionGroupIds))), ("removeFriendGroup", Some(removeFriendGroupQuery.toParamString(removeFriendGroup))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchPermissionables(deviceId: String, accountId: Long, connectionAccountId: Long, connectionAccountIds: String, permissionableType: String, permissionableId: Long, keyword: String, sortField: String, descending: Boolean, pending: Boolean, admin: Boolean, start: Integer = 0, limit: Integer = 20)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], connectionAccountIdsQuery: QueryParam[String], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], pendingQuery: QueryParam[Boolean], adminQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[UserPermissionsResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[UserPermissionsResponse]] = jsonOf[List[UserPermissionsResponse]]

    val path = "/permissions/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("pending", Some(pendingQuery.toParamString(pending))), ("admin", Some(adminQuery.toParamString(admin))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[UserPermissionsResponse]](req)

    } yield resp
  }

  def searchPermissionablesFollowingDistance(latitude: Double, longitude: Double, deviceId: String, accountId: Long, connectionAccountId: Long, connectionAccountIds: String, permissionableType: String, permissionableId: Long, searchRange: Double = 5, keyword: String, pending: Boolean, admin: Boolean, start: Integer = 0, limit: Integer = 20)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], connectionAccountIdsQuery: QueryParam[String], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], searchRangeQuery: QueryParam[Double], keywordQuery: QueryParam[String], pendingQuery: QueryParam[Boolean], adminQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[UserPermissionsResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[UserPermissionsResponse]] = jsonOf[List[UserPermissionsResponse]]

    val path = "/permissions/distancesearch"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("connectionAccountIds", Some(connectionAccountIdsQuery.toParamString(connectionAccountIds))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("searchRange", Some(searchRangeQuery.toParamString(searchRange))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("pending", Some(pendingQuery.toParamString(pending))), ("admin", Some(adminQuery.toParamString(admin))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[UserPermissionsResponse]](req)

    } yield resp
  }

}
