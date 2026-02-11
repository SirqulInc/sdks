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

import java.io.File
import org.openapitools.client.api.PurchaseItemListResponse
import org.openapitools.client.api.SirqulResponse
import org.openapitools.client.api.ThemeDescriptorResponse

object ThemeDescriptorApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addOrUpdateThemeDescriptor(host: String, publicRead: Boolean, publicWrite: Boolean, publicDelete: Boolean, publicAdd: Boolean, visibility: String, includeFriendGroup: Boolean, completeWithDefaultValues: Boolean, deviceId: String, accountId: Long, gameType: String, themeDescriptorId: Long, title: String, description: String, connectionIdsToAdd: String, connectionGroupIdsToAdd: String, appVersion: String, colorValueJson: String, stringReplacerJson: String, customJsonObjects: String, iconImage: File, sceneAtlasImage: File, bgImage: File, bgSound: File, musicSelection: String, locationDescription: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], themeDescriptorIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], publicReadQuery: QueryParam[Boolean], publicWriteQuery: QueryParam[Boolean], publicDeleteQuery: QueryParam[Boolean], publicAddQuery: QueryParam[Boolean], visibilityQuery: QueryParam[String], connectionIdsToAddQuery: QueryParam[String], connectionGroupIdsToAddQuery: QueryParam[String], includeFriendGroupQuery: QueryParam[Boolean], appVersionQuery: QueryParam[String], colorValueJsonQuery: QueryParam[String], stringReplacerJsonQuery: QueryParam[String], customJsonObjectsQuery: QueryParam[String], iconImageQuery: QueryParam[File], sceneAtlasImageQuery: QueryParam[File], bgImageQuery: QueryParam[File], bgSoundQuery: QueryParam[File], musicSelectionQuery: QueryParam[String], completeWithDefaultValuesQuery: QueryParam[Boolean], locationDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ThemeDescriptorResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ThemeDescriptorResponse] = jsonOf[ThemeDescriptorResponse]

    val path = "/consumer/theme"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("themeDescriptorId", Some(themeDescriptorIdQuery.toParamString(themeDescriptorId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("publicRead", Some(publicReadQuery.toParamString(publicRead))), ("publicWrite", Some(publicWriteQuery.toParamString(publicWrite))), ("publicDelete", Some(publicDeleteQuery.toParamString(publicDelete))), ("publicAdd", Some(publicAddQuery.toParamString(publicAdd))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("connectionIdsToAdd", Some(connectionIdsToAddQuery.toParamString(connectionIdsToAdd))), ("connectionGroupIdsToAdd", Some(connectionGroupIdsToAddQuery.toParamString(connectionGroupIdsToAdd))), ("includeFriendGroup", Some(includeFriendGroupQuery.toParamString(includeFriendGroup))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("colorValueJson", Some(colorValueJsonQuery.toParamString(colorValueJson))), ("stringReplacerJson", Some(stringReplacerJsonQuery.toParamString(stringReplacerJson))), ("customJsonObjects", Some(customJsonObjectsQuery.toParamString(customJsonObjects))), ("iconImage", Some(iconImageQuery.toParamString(iconImage))), ("sceneAtlasImage", Some(sceneAtlasImageQuery.toParamString(sceneAtlasImage))), ("bgImage", Some(bgImageQuery.toParamString(bgImage))), ("bgSound", Some(bgSoundQuery.toParamString(bgSound))), ("musicSelection", Some(musicSelectionQuery.toParamString(musicSelection))), ("completeWithDefaultValues", Some(completeWithDefaultValuesQuery.toParamString(completeWithDefaultValues))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ThemeDescriptorResponse](req)

    } yield resp
  }

  def getThemeDescriptor(host: String, themeDescriptorId: Long, deviceId: String, accountId: Long, gameType: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], themeDescriptorIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[PurchaseItemListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PurchaseItemListResponse] = jsonOf[PurchaseItemListResponse]

    val path = "/consumer/theme/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("themeDescriptorId", Some(themeDescriptorIdQuery.toParamString(themeDescriptorId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PurchaseItemListResponse](req)

    } yield resp
  }

  def getThemeDescriptors(host: String, filter: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, deviceId: String, accountId: Long, gameType: String, contestType: String, ownerId: Long, q: String, keyword: String, i: Integer, l: Integer, dateCreated: Long, appVersion: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], contestTypeQuery: QueryParam[String], ownerIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], filterQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], dateCreatedQuery: QueryParam[Long], appVersionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[PurchaseItemListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PurchaseItemListResponse] = jsonOf[PurchaseItemListResponse]

    val path = "/consumer/theme/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("contestType", Some(contestTypeQuery.toParamString(contestType))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("filter", Some(filterQuery.toParamString(filter))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("dateCreated", Some(dateCreatedQuery.toParamString(dateCreated))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PurchaseItemListResponse](req)

    } yield resp
  }

  def removeThemeDescriptor(host: String, themeDescriptorId: Long, deviceId: String, accountId: Long, gameType: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], themeDescriptorIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/theme/remove"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("themeDescriptorId", Some(themeDescriptorIdQuery.toParamString(themeDescriptorId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceThemeDescriptorApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addOrUpdateThemeDescriptor(publicRead: Boolean, publicWrite: Boolean, publicDelete: Boolean, publicAdd: Boolean, visibility: String, includeFriendGroup: Boolean, completeWithDefaultValues: Boolean, deviceId: String, accountId: Long, gameType: String, themeDescriptorId: Long, title: String, description: String, connectionIdsToAdd: String, connectionGroupIdsToAdd: String, appVersion: String, colorValueJson: String, stringReplacerJson: String, customJsonObjects: String, iconImage: File, sceneAtlasImage: File, bgImage: File, bgSound: File, musicSelection: String, locationDescription: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], themeDescriptorIdQuery: QueryParam[Long], titleQuery: QueryParam[String], descriptionQuery: QueryParam[String], publicReadQuery: QueryParam[Boolean], publicWriteQuery: QueryParam[Boolean], publicDeleteQuery: QueryParam[Boolean], publicAddQuery: QueryParam[Boolean], visibilityQuery: QueryParam[String], connectionIdsToAddQuery: QueryParam[String], connectionGroupIdsToAddQuery: QueryParam[String], includeFriendGroupQuery: QueryParam[Boolean], appVersionQuery: QueryParam[String], colorValueJsonQuery: QueryParam[String], stringReplacerJsonQuery: QueryParam[String], customJsonObjectsQuery: QueryParam[String], iconImageQuery: QueryParam[File], sceneAtlasImageQuery: QueryParam[File], bgImageQuery: QueryParam[File], bgSoundQuery: QueryParam[File], musicSelectionQuery: QueryParam[String], completeWithDefaultValuesQuery: QueryParam[Boolean], locationDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[ThemeDescriptorResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[ThemeDescriptorResponse] = jsonOf[ThemeDescriptorResponse]

    val path = "/consumer/theme"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("themeDescriptorId", Some(themeDescriptorIdQuery.toParamString(themeDescriptorId))), ("title", Some(titleQuery.toParamString(title))), ("description", Some(descriptionQuery.toParamString(description))), ("publicRead", Some(publicReadQuery.toParamString(publicRead))), ("publicWrite", Some(publicWriteQuery.toParamString(publicWrite))), ("publicDelete", Some(publicDeleteQuery.toParamString(publicDelete))), ("publicAdd", Some(publicAddQuery.toParamString(publicAdd))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("connectionIdsToAdd", Some(connectionIdsToAddQuery.toParamString(connectionIdsToAdd))), ("connectionGroupIdsToAdd", Some(connectionGroupIdsToAddQuery.toParamString(connectionGroupIdsToAdd))), ("includeFriendGroup", Some(includeFriendGroupQuery.toParamString(includeFriendGroup))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("colorValueJson", Some(colorValueJsonQuery.toParamString(colorValueJson))), ("stringReplacerJson", Some(stringReplacerJsonQuery.toParamString(stringReplacerJson))), ("customJsonObjects", Some(customJsonObjectsQuery.toParamString(customJsonObjects))), ("iconImage", Some(iconImageQuery.toParamString(iconImage))), ("sceneAtlasImage", Some(sceneAtlasImageQuery.toParamString(sceneAtlasImage))), ("bgImage", Some(bgImageQuery.toParamString(bgImage))), ("bgSound", Some(bgSoundQuery.toParamString(bgSound))), ("musicSelection", Some(musicSelectionQuery.toParamString(musicSelection))), ("completeWithDefaultValues", Some(completeWithDefaultValuesQuery.toParamString(completeWithDefaultValues))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ThemeDescriptorResponse](req)

    } yield resp
  }

  def getThemeDescriptor(themeDescriptorId: Long, deviceId: String, accountId: Long, gameType: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], themeDescriptorIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[PurchaseItemListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PurchaseItemListResponse] = jsonOf[PurchaseItemListResponse]

    val path = "/consumer/theme/get"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("themeDescriptorId", Some(themeDescriptorIdQuery.toParamString(themeDescriptorId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PurchaseItemListResponse](req)

    } yield resp
  }

  def getThemeDescriptors(filter: String, sortField: String, descending: Boolean, start: Integer, limit: Integer, deviceId: String, accountId: Long, gameType: String, contestType: String, ownerId: Long, q: String, keyword: String, i: Integer, l: Integer, dateCreated: Long, appVersion: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], contestTypeQuery: QueryParam[String], ownerIdQuery: QueryParam[Long], qQuery: QueryParam[String], keywordQuery: QueryParam[String], filterQuery: QueryParam[String], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], iQuery: QueryParam[Integer], startQuery: QueryParam[Integer], lQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], dateCreatedQuery: QueryParam[Long], appVersionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[PurchaseItemListResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[PurchaseItemListResponse] = jsonOf[PurchaseItemListResponse]

    val path = "/consumer/theme/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("contestType", Some(contestTypeQuery.toParamString(contestType))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("q", Some(qQuery.toParamString(q))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("filter", Some(filterQuery.toParamString(filter))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("i", Some(_iQuery.toParamString(_i))), ("start", Some(startQuery.toParamString(start))), ("l", Some(_lQuery.toParamString(_l))), ("limit", Some(limitQuery.toParamString(limit))), ("dateCreated", Some(dateCreatedQuery.toParamString(dateCreated))), ("appVersion", Some(appVersionQuery.toParamString(appVersion))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[PurchaseItemListResponse](req)

    } yield resp
  }

  def removeThemeDescriptor(themeDescriptorId: Long, deviceId: String, accountId: Long, gameType: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], gameTypeQuery: QueryParam[String], themeDescriptorIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/consumer/theme/remove"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("themeDescriptorId", Some(themeDescriptorIdQuery.toParamString(themeDescriptorId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
