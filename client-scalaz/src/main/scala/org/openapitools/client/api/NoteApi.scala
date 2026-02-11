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
import java.io.File
import org.openapitools.client.api.NoteResponse
import org.openapitools.client.api.SirqulResponse

object NoteApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def batchOperation(host: String, notableId: Long, notableType: String, deviceId: String, accountId: Long, batchOperation: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], notableIdQuery: QueryParam[Long], notableTypeQuery: QueryParam[String], batchOperationQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/note/batch"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notableId", Some(notableIdQuery.toParamString(notableId))), ("notableType", Some(notableTypeQuery.toParamString(notableType))), ("batchOperation", Some(batchOperationQuery.toParamString(batchOperation))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def createNote(host: String, comment: String, deviceId: String, accountId: Long, notableType: String, notableId: Long, noteType: String, assetIds: String, tags: String, permissionableType: String, permissionableId: Long, appKey: String, locationDescription: String, latitude: Double, longitude: Double, metaData: String, receiverAccountIds: String, returnFullResponse: Boolean, initializeAsset: Boolean, assetReturnNulls: Boolean, assetAlbumId: Long, assetCollectionId: Long, assetAddToDefaultAlbum: String, assetAddToMediaLibrary: Boolean, assetVersionCode: Integer, assetVersionName: String, assetMetaData: String, assetCaption: String, assetMedia: File, assetMediaUrl: String, assetMediaString: String, assetMediaStringFileName: String, assetMediaStringContentType: String, assetAttachedMedia: File, assetAttachedMediaUrl: String, assetAttachedMediaString: String, assetAttachedMediaStringFileName: String, assetAttachedMediaStringContentType: String, assetLocationDescription: String, assetApp: String, assetSearchTags: String, assetLatitude: Double, assetLongitude: BigDecimal)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], notableTypeQuery: QueryParam[String], notableIdQuery: QueryParam[Long], commentQuery: QueryParam[String], noteTypeQuery: QueryParam[String], assetIdsQuery: QueryParam[String], tagsQuery: QueryParam[String], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], receiverAccountIdsQuery: QueryParam[String], returnFullResponseQuery: QueryParam[Boolean], initializeAssetQuery: QueryParam[Boolean], assetReturnNullsQuery: QueryParam[Boolean], assetAlbumIdQuery: QueryParam[Long], assetCollectionIdQuery: QueryParam[Long], assetAddToDefaultAlbumQuery: QueryParam[String], assetAddToMediaLibraryQuery: QueryParam[Boolean], assetVersionCodeQuery: QueryParam[Integer], assetVersionNameQuery: QueryParam[String], assetMetaDataQuery: QueryParam[String], assetCaptionQuery: QueryParam[String], assetMediaQuery: QueryParam[File], assetMediaUrlQuery: QueryParam[String], assetMediaStringQuery: QueryParam[String], assetMediaStringFileNameQuery: QueryParam[String], assetMediaStringContentTypeQuery: QueryParam[String], assetAttachedMediaQuery: QueryParam[File], assetAttachedMediaUrlQuery: QueryParam[String], assetAttachedMediaStringQuery: QueryParam[String], assetAttachedMediaStringFileNameQuery: QueryParam[String], assetAttachedMediaStringContentTypeQuery: QueryParam[String], assetLocationDescriptionQuery: QueryParam[String], assetAppQuery: QueryParam[String], assetSearchTagsQuery: QueryParam[String], assetLatitudeQuery: QueryParam[Double], assetLongitudeQuery: QueryParam[BigDecimal]): Task[NoteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NoteResponse] = jsonOf[NoteResponse]

    val path = "/note/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notableType", Some(notableTypeQuery.toParamString(notableType))), ("notableId", Some(notableIdQuery.toParamString(notableId))), ("comment", Some(commentQuery.toParamString(comment))), ("noteType", Some(noteTypeQuery.toParamString(noteType))), ("assetIds", Some(assetIdsQuery.toParamString(assetIds))), ("tags", Some(tagsQuery.toParamString(tags))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("receiverAccountIds", Some(receiverAccountIdsQuery.toParamString(receiverAccountIds))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("initializeAsset", Some(initializeAssetQuery.toParamString(initializeAsset))), ("assetReturnNulls", Some(assetReturnNullsQuery.toParamString(assetReturnNulls))), ("assetAlbumId", Some(assetAlbumIdQuery.toParamString(assetAlbumId))), ("assetCollectionId", Some(assetCollectionIdQuery.toParamString(assetCollectionId))), ("assetAddToDefaultAlbum", Some(assetAddToDefaultAlbumQuery.toParamString(assetAddToDefaultAlbum))), ("assetAddToMediaLibrary", Some(assetAddToMediaLibraryQuery.toParamString(assetAddToMediaLibrary))), ("assetVersionCode", Some(assetVersionCodeQuery.toParamString(assetVersionCode))), ("assetVersionName", Some(assetVersionNameQuery.toParamString(assetVersionName))), ("assetMetaData", Some(assetMetaDataQuery.toParamString(assetMetaData))), ("assetCaption", Some(assetCaptionQuery.toParamString(assetCaption))), ("assetMedia", Some(assetMediaQuery.toParamString(assetMedia))), ("assetMediaUrl", Some(assetMediaUrlQuery.toParamString(assetMediaUrl))), ("assetMediaString", Some(assetMediaStringQuery.toParamString(assetMediaString))), ("assetMediaStringFileName", Some(assetMediaStringFileNameQuery.toParamString(assetMediaStringFileName))), ("assetMediaStringContentType", Some(assetMediaStringContentTypeQuery.toParamString(assetMediaStringContentType))), ("assetAttachedMedia", Some(assetAttachedMediaQuery.toParamString(assetAttachedMedia))), ("assetAttachedMediaUrl", Some(assetAttachedMediaUrlQuery.toParamString(assetAttachedMediaUrl))), ("assetAttachedMediaString", Some(assetAttachedMediaStringQuery.toParamString(assetAttachedMediaString))), ("assetAttachedMediaStringFileName", Some(assetAttachedMediaStringFileNameQuery.toParamString(assetAttachedMediaStringFileName))), ("assetAttachedMediaStringContentType", Some(assetAttachedMediaStringContentTypeQuery.toParamString(assetAttachedMediaStringContentType))), ("assetLocationDescription", Some(assetLocationDescriptionQuery.toParamString(assetLocationDescription))), ("assetApp", Some(assetAppQuery.toParamString(assetApp))), ("assetSearchTags", Some(assetSearchTagsQuery.toParamString(assetSearchTags))), ("assetLatitude", Some(assetLatitudeQuery.toParamString(assetLatitude))), ("assetLongitude", Some(assetLongitudeQuery.toParamString(assetLongitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NoteResponse](req)

    } yield resp
  }

  def deleteNote(host: String, noteId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double, appKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], noteIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/note/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("noteId", Some(noteIdQuery.toParamString(noteId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getNote(host: String, noteId: Long, deviceId: String, accountId: Long, returnFullResponse: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], returnFullResponseQuery: QueryParam[Boolean], noteIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/note/get"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("noteId", Some(noteIdQuery.toParamString(noteId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchNotes(host: String, deviceId: String, accountId: Long, notableType: String, notableId: Long, noteTypes: String, appKey: String, keyword: String, flagCountMinimum: Long, flagsExceedThreshold: Boolean, includeInactive: Boolean, sortField: String, descending: Boolean, returnFullResponse: Boolean, updatedSince: Long, updatedBefore: Long, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], notableTypeQuery: QueryParam[String], notableIdQuery: QueryParam[Long], noteTypesQuery: QueryParam[String], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], flagCountMinimumQuery: QueryParam[Long], flagsExceedThresholdQuery: QueryParam[Boolean], includeInactiveQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], returnFullResponseQuery: QueryParam[Boolean], updatedSinceQuery: QueryParam[Long], updatedBeforeQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[NoteResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[NoteResponse]] = jsonOf[List[NoteResponse]]

    val path = "/note/search"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notableType", Some(notableTypeQuery.toParamString(notableType))), ("notableId", Some(notableIdQuery.toParamString(notableId))), ("noteTypes", Some(noteTypesQuery.toParamString(noteTypes))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("flagCountMinimum", Some(flagCountMinimumQuery.toParamString(flagCountMinimum))), ("flagsExceedThreshold", Some(flagsExceedThresholdQuery.toParamString(flagsExceedThreshold))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("updatedSince", Some(updatedSinceQuery.toParamString(updatedSince))), ("updatedBefore", Some(updatedBeforeQuery.toParamString(updatedBefore))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[NoteResponse]](req)

    } yield resp
  }

  def updateNote(host: String, noteId: Long, deviceId: String, accountId: Long, comment: String, noteType: String, assetIds: String, tags: String, permissionableType: String, permissionableId: Long, appKey: String, locationDescription: String, latitude: Double, longitude: Double, metaData: String, returnFullResponse: Boolean, active: Boolean, updateAsset: Boolean, assetReturnNulls: Boolean, assetAlbumId: Long, assetCollectionId: Long, assetAddToDefaultAlbum: String, assetAddToMediaLibrary: Boolean, assetVersionCode: Integer, assetVersionName: String, assetMetaData: String, assetCaption: String, assetMedia: File, assetMediaUrl: String, assetMediaString: String, assetMediaStringFileName: String, assetMediaStringContentType: String, assetAttachedMedia: File, assetAttachedMediaUrl: String, assetAttachedMediaString: String, assetAttachedMediaStringFileName: String, assetAttachedMediaStringContentType: String, assetLocationDescription: String, assetApp: String, assetSearchTags: String, assetLatitude: Double, assetLongitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], noteIdQuery: QueryParam[Long], commentQuery: QueryParam[String], noteTypeQuery: QueryParam[String], assetIdsQuery: QueryParam[String], tagsQuery: QueryParam[String], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], returnFullResponseQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], updateAssetQuery: QueryParam[Boolean], assetReturnNullsQuery: QueryParam[Boolean], assetAlbumIdQuery: QueryParam[Long], assetCollectionIdQuery: QueryParam[Long], assetAddToDefaultAlbumQuery: QueryParam[String], assetAddToMediaLibraryQuery: QueryParam[Boolean], assetVersionCodeQuery: QueryParam[Integer], assetVersionNameQuery: QueryParam[String], assetMetaDataQuery: QueryParam[String], assetCaptionQuery: QueryParam[String], assetMediaQuery: QueryParam[File], assetMediaUrlQuery: QueryParam[String], assetMediaStringQuery: QueryParam[String], assetMediaStringFileNameQuery: QueryParam[String], assetMediaStringContentTypeQuery: QueryParam[String], assetAttachedMediaQuery: QueryParam[File], assetAttachedMediaUrlQuery: QueryParam[String], assetAttachedMediaStringQuery: QueryParam[String], assetAttachedMediaStringFileNameQuery: QueryParam[String], assetAttachedMediaStringContentTypeQuery: QueryParam[String], assetLocationDescriptionQuery: QueryParam[String], assetAppQuery: QueryParam[String], assetSearchTagsQuery: QueryParam[String], assetLatitudeQuery: QueryParam[Double], assetLongitudeQuery: QueryParam[Double]): Task[NoteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NoteResponse] = jsonOf[NoteResponse]

    val path = "/note/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("noteId", Some(noteIdQuery.toParamString(noteId))), ("comment", Some(commentQuery.toParamString(comment))), ("noteType", Some(noteTypeQuery.toParamString(noteType))), ("assetIds", Some(assetIdsQuery.toParamString(assetIds))), ("tags", Some(tagsQuery.toParamString(tags))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("active", Some(activeQuery.toParamString(active))), ("updateAsset", Some(updateAssetQuery.toParamString(updateAsset))), ("assetReturnNulls", Some(assetReturnNullsQuery.toParamString(assetReturnNulls))), ("assetAlbumId", Some(assetAlbumIdQuery.toParamString(assetAlbumId))), ("assetCollectionId", Some(assetCollectionIdQuery.toParamString(assetCollectionId))), ("assetAddToDefaultAlbum", Some(assetAddToDefaultAlbumQuery.toParamString(assetAddToDefaultAlbum))), ("assetAddToMediaLibrary", Some(assetAddToMediaLibraryQuery.toParamString(assetAddToMediaLibrary))), ("assetVersionCode", Some(assetVersionCodeQuery.toParamString(assetVersionCode))), ("assetVersionName", Some(assetVersionNameQuery.toParamString(assetVersionName))), ("assetMetaData", Some(assetMetaDataQuery.toParamString(assetMetaData))), ("assetCaption", Some(assetCaptionQuery.toParamString(assetCaption))), ("assetMedia", Some(assetMediaQuery.toParamString(assetMedia))), ("assetMediaUrl", Some(assetMediaUrlQuery.toParamString(assetMediaUrl))), ("assetMediaString", Some(assetMediaStringQuery.toParamString(assetMediaString))), ("assetMediaStringFileName", Some(assetMediaStringFileNameQuery.toParamString(assetMediaStringFileName))), ("assetMediaStringContentType", Some(assetMediaStringContentTypeQuery.toParamString(assetMediaStringContentType))), ("assetAttachedMedia", Some(assetAttachedMediaQuery.toParamString(assetAttachedMedia))), ("assetAttachedMediaUrl", Some(assetAttachedMediaUrlQuery.toParamString(assetAttachedMediaUrl))), ("assetAttachedMediaString", Some(assetAttachedMediaStringQuery.toParamString(assetAttachedMediaString))), ("assetAttachedMediaStringFileName", Some(assetAttachedMediaStringFileNameQuery.toParamString(assetAttachedMediaStringFileName))), ("assetAttachedMediaStringContentType", Some(assetAttachedMediaStringContentTypeQuery.toParamString(assetAttachedMediaStringContentType))), ("assetLocationDescription", Some(assetLocationDescriptionQuery.toParamString(assetLocationDescription))), ("assetApp", Some(assetAppQuery.toParamString(assetApp))), ("assetSearchTags", Some(assetSearchTagsQuery.toParamString(assetSearchTags))), ("assetLatitude", Some(assetLatitudeQuery.toParamString(assetLatitude))), ("assetLongitude", Some(assetLongitudeQuery.toParamString(assetLongitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NoteResponse](req)

    } yield resp
  }

}

class HttpServiceNoteApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def batchOperation(notableId: Long, notableType: String, deviceId: String, accountId: Long, batchOperation: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], notableIdQuery: QueryParam[Long], notableTypeQuery: QueryParam[String], batchOperationQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/note/batch"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notableId", Some(notableIdQuery.toParamString(notableId))), ("notableType", Some(notableTypeQuery.toParamString(notableType))), ("batchOperation", Some(batchOperationQuery.toParamString(batchOperation))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def createNote(comment: String, deviceId: String, accountId: Long, notableType: String, notableId: Long, noteType: String, assetIds: String, tags: String, permissionableType: String, permissionableId: Long, appKey: String, locationDescription: String, latitude: Double, longitude: Double, metaData: String, receiverAccountIds: String, returnFullResponse: Boolean, initializeAsset: Boolean, assetReturnNulls: Boolean, assetAlbumId: Long, assetCollectionId: Long, assetAddToDefaultAlbum: String, assetAddToMediaLibrary: Boolean, assetVersionCode: Integer, assetVersionName: String, assetMetaData: String, assetCaption: String, assetMedia: File, assetMediaUrl: String, assetMediaString: String, assetMediaStringFileName: String, assetMediaStringContentType: String, assetAttachedMedia: File, assetAttachedMediaUrl: String, assetAttachedMediaString: String, assetAttachedMediaStringFileName: String, assetAttachedMediaStringContentType: String, assetLocationDescription: String, assetApp: String, assetSearchTags: String, assetLatitude: Double, assetLongitude: BigDecimal)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], notableTypeQuery: QueryParam[String], notableIdQuery: QueryParam[Long], commentQuery: QueryParam[String], noteTypeQuery: QueryParam[String], assetIdsQuery: QueryParam[String], tagsQuery: QueryParam[String], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], receiverAccountIdsQuery: QueryParam[String], returnFullResponseQuery: QueryParam[Boolean], initializeAssetQuery: QueryParam[Boolean], assetReturnNullsQuery: QueryParam[Boolean], assetAlbumIdQuery: QueryParam[Long], assetCollectionIdQuery: QueryParam[Long], assetAddToDefaultAlbumQuery: QueryParam[String], assetAddToMediaLibraryQuery: QueryParam[Boolean], assetVersionCodeQuery: QueryParam[Integer], assetVersionNameQuery: QueryParam[String], assetMetaDataQuery: QueryParam[String], assetCaptionQuery: QueryParam[String], assetMediaQuery: QueryParam[File], assetMediaUrlQuery: QueryParam[String], assetMediaStringQuery: QueryParam[String], assetMediaStringFileNameQuery: QueryParam[String], assetMediaStringContentTypeQuery: QueryParam[String], assetAttachedMediaQuery: QueryParam[File], assetAttachedMediaUrlQuery: QueryParam[String], assetAttachedMediaStringQuery: QueryParam[String], assetAttachedMediaStringFileNameQuery: QueryParam[String], assetAttachedMediaStringContentTypeQuery: QueryParam[String], assetLocationDescriptionQuery: QueryParam[String], assetAppQuery: QueryParam[String], assetSearchTagsQuery: QueryParam[String], assetLatitudeQuery: QueryParam[Double], assetLongitudeQuery: QueryParam[BigDecimal]): Task[NoteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NoteResponse] = jsonOf[NoteResponse]

    val path = "/note/create"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notableType", Some(notableTypeQuery.toParamString(notableType))), ("notableId", Some(notableIdQuery.toParamString(notableId))), ("comment", Some(commentQuery.toParamString(comment))), ("noteType", Some(noteTypeQuery.toParamString(noteType))), ("assetIds", Some(assetIdsQuery.toParamString(assetIds))), ("tags", Some(tagsQuery.toParamString(tags))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("receiverAccountIds", Some(receiverAccountIdsQuery.toParamString(receiverAccountIds))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("initializeAsset", Some(initializeAssetQuery.toParamString(initializeAsset))), ("assetReturnNulls", Some(assetReturnNullsQuery.toParamString(assetReturnNulls))), ("assetAlbumId", Some(assetAlbumIdQuery.toParamString(assetAlbumId))), ("assetCollectionId", Some(assetCollectionIdQuery.toParamString(assetCollectionId))), ("assetAddToDefaultAlbum", Some(assetAddToDefaultAlbumQuery.toParamString(assetAddToDefaultAlbum))), ("assetAddToMediaLibrary", Some(assetAddToMediaLibraryQuery.toParamString(assetAddToMediaLibrary))), ("assetVersionCode", Some(assetVersionCodeQuery.toParamString(assetVersionCode))), ("assetVersionName", Some(assetVersionNameQuery.toParamString(assetVersionName))), ("assetMetaData", Some(assetMetaDataQuery.toParamString(assetMetaData))), ("assetCaption", Some(assetCaptionQuery.toParamString(assetCaption))), ("assetMedia", Some(assetMediaQuery.toParamString(assetMedia))), ("assetMediaUrl", Some(assetMediaUrlQuery.toParamString(assetMediaUrl))), ("assetMediaString", Some(assetMediaStringQuery.toParamString(assetMediaString))), ("assetMediaStringFileName", Some(assetMediaStringFileNameQuery.toParamString(assetMediaStringFileName))), ("assetMediaStringContentType", Some(assetMediaStringContentTypeQuery.toParamString(assetMediaStringContentType))), ("assetAttachedMedia", Some(assetAttachedMediaQuery.toParamString(assetAttachedMedia))), ("assetAttachedMediaUrl", Some(assetAttachedMediaUrlQuery.toParamString(assetAttachedMediaUrl))), ("assetAttachedMediaString", Some(assetAttachedMediaStringQuery.toParamString(assetAttachedMediaString))), ("assetAttachedMediaStringFileName", Some(assetAttachedMediaStringFileNameQuery.toParamString(assetAttachedMediaStringFileName))), ("assetAttachedMediaStringContentType", Some(assetAttachedMediaStringContentTypeQuery.toParamString(assetAttachedMediaStringContentType))), ("assetLocationDescription", Some(assetLocationDescriptionQuery.toParamString(assetLocationDescription))), ("assetApp", Some(assetAppQuery.toParamString(assetApp))), ("assetSearchTags", Some(assetSearchTagsQuery.toParamString(assetSearchTags))), ("assetLatitude", Some(assetLatitudeQuery.toParamString(assetLatitude))), ("assetLongitude", Some(assetLongitudeQuery.toParamString(assetLongitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NoteResponse](req)

    } yield resp
  }

  def deleteNote(noteId: Long, deviceId: String, accountId: Long, latitude: Double, longitude: Double, appKey: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], noteIdQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], appKeyQuery: QueryParam[String]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/note/delete"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("noteId", Some(noteIdQuery.toParamString(noteId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("appKey", Some(appKeyQuery.toParamString(appKey))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getNote(noteId: Long, deviceId: String, accountId: Long, returnFullResponse: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], returnFullResponseQuery: QueryParam[Boolean], noteIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/note/get"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("noteId", Some(noteIdQuery.toParamString(noteId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchNotes(deviceId: String, accountId: Long, notableType: String, notableId: Long, noteTypes: String, appKey: String, keyword: String, flagCountMinimum: Long, flagsExceedThreshold: Boolean, includeInactive: Boolean, sortField: String, descending: Boolean, returnFullResponse: Boolean, updatedSince: Long, updatedBefore: Long, start: Integer, limit: Integer)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], notableTypeQuery: QueryParam[String], notableIdQuery: QueryParam[Long], noteTypesQuery: QueryParam[String], appKeyQuery: QueryParam[String], keywordQuery: QueryParam[String], flagCountMinimumQuery: QueryParam[Long], flagsExceedThresholdQuery: QueryParam[Boolean], includeInactiveQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], returnFullResponseQuery: QueryParam[Boolean], updatedSinceQuery: QueryParam[Long], updatedBeforeQuery: QueryParam[Long], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer]): Task[List[NoteResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[NoteResponse]] = jsonOf[List[NoteResponse]]

    val path = "/note/search"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("notableType", Some(notableTypeQuery.toParamString(notableType))), ("notableId", Some(notableIdQuery.toParamString(notableId))), ("noteTypes", Some(noteTypesQuery.toParamString(noteTypes))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("flagCountMinimum", Some(flagCountMinimumQuery.toParamString(flagCountMinimum))), ("flagsExceedThreshold", Some(flagsExceedThresholdQuery.toParamString(flagsExceedThreshold))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("updatedSince", Some(updatedSinceQuery.toParamString(updatedSince))), ("updatedBefore", Some(updatedBeforeQuery.toParamString(updatedBefore))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[NoteResponse]](req)

    } yield resp
  }

  def updateNote(noteId: Long, deviceId: String, accountId: Long, comment: String, noteType: String, assetIds: String, tags: String, permissionableType: String, permissionableId: Long, appKey: String, locationDescription: String, latitude: Double, longitude: Double, metaData: String, returnFullResponse: Boolean, active: Boolean, updateAsset: Boolean, assetReturnNulls: Boolean, assetAlbumId: Long, assetCollectionId: Long, assetAddToDefaultAlbum: String, assetAddToMediaLibrary: Boolean, assetVersionCode: Integer, assetVersionName: String, assetMetaData: String, assetCaption: String, assetMedia: File, assetMediaUrl: String, assetMediaString: String, assetMediaStringFileName: String, assetMediaStringContentType: String, assetAttachedMedia: File, assetAttachedMediaUrl: String, assetAttachedMediaString: String, assetAttachedMediaStringFileName: String, assetAttachedMediaStringContentType: String, assetLocationDescription: String, assetApp: String, assetSearchTags: String, assetLatitude: Double, assetLongitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], noteIdQuery: QueryParam[Long], commentQuery: QueryParam[String], noteTypeQuery: QueryParam[String], assetIdsQuery: QueryParam[String], tagsQuery: QueryParam[String], permissionableTypeQuery: QueryParam[String], permissionableIdQuery: QueryParam[Long], appKeyQuery: QueryParam[String], locationDescriptionQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], metaDataQuery: QueryParam[String], returnFullResponseQuery: QueryParam[Boolean], activeQuery: QueryParam[Boolean], updateAssetQuery: QueryParam[Boolean], assetReturnNullsQuery: QueryParam[Boolean], assetAlbumIdQuery: QueryParam[Long], assetCollectionIdQuery: QueryParam[Long], assetAddToDefaultAlbumQuery: QueryParam[String], assetAddToMediaLibraryQuery: QueryParam[Boolean], assetVersionCodeQuery: QueryParam[Integer], assetVersionNameQuery: QueryParam[String], assetMetaDataQuery: QueryParam[String], assetCaptionQuery: QueryParam[String], assetMediaQuery: QueryParam[File], assetMediaUrlQuery: QueryParam[String], assetMediaStringQuery: QueryParam[String], assetMediaStringFileNameQuery: QueryParam[String], assetMediaStringContentTypeQuery: QueryParam[String], assetAttachedMediaQuery: QueryParam[File], assetAttachedMediaUrlQuery: QueryParam[String], assetAttachedMediaStringQuery: QueryParam[String], assetAttachedMediaStringFileNameQuery: QueryParam[String], assetAttachedMediaStringContentTypeQuery: QueryParam[String], assetLocationDescriptionQuery: QueryParam[String], assetAppQuery: QueryParam[String], assetSearchTagsQuery: QueryParam[String], assetLatitudeQuery: QueryParam[Double], assetLongitudeQuery: QueryParam[Double]): Task[NoteResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[NoteResponse] = jsonOf[NoteResponse]

    val path = "/note/update"

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("noteId", Some(noteIdQuery.toParamString(noteId))), ("comment", Some(commentQuery.toParamString(comment))), ("noteType", Some(noteTypeQuery.toParamString(noteType))), ("assetIds", Some(assetIdsQuery.toParamString(assetIds))), ("tags", Some(tagsQuery.toParamString(tags))), ("permissionableType", Some(permissionableTypeQuery.toParamString(permissionableType))), ("permissionableId", Some(permissionableIdQuery.toParamString(permissionableId))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("returnFullResponse", Some(returnFullResponseQuery.toParamString(returnFullResponse))), ("active", Some(activeQuery.toParamString(active))), ("updateAsset", Some(updateAssetQuery.toParamString(updateAsset))), ("assetReturnNulls", Some(assetReturnNullsQuery.toParamString(assetReturnNulls))), ("assetAlbumId", Some(assetAlbumIdQuery.toParamString(assetAlbumId))), ("assetCollectionId", Some(assetCollectionIdQuery.toParamString(assetCollectionId))), ("assetAddToDefaultAlbum", Some(assetAddToDefaultAlbumQuery.toParamString(assetAddToDefaultAlbum))), ("assetAddToMediaLibrary", Some(assetAddToMediaLibraryQuery.toParamString(assetAddToMediaLibrary))), ("assetVersionCode", Some(assetVersionCodeQuery.toParamString(assetVersionCode))), ("assetVersionName", Some(assetVersionNameQuery.toParamString(assetVersionName))), ("assetMetaData", Some(assetMetaDataQuery.toParamString(assetMetaData))), ("assetCaption", Some(assetCaptionQuery.toParamString(assetCaption))), ("assetMedia", Some(assetMediaQuery.toParamString(assetMedia))), ("assetMediaUrl", Some(assetMediaUrlQuery.toParamString(assetMediaUrl))), ("assetMediaString", Some(assetMediaStringQuery.toParamString(assetMediaString))), ("assetMediaStringFileName", Some(assetMediaStringFileNameQuery.toParamString(assetMediaStringFileName))), ("assetMediaStringContentType", Some(assetMediaStringContentTypeQuery.toParamString(assetMediaStringContentType))), ("assetAttachedMedia", Some(assetAttachedMediaQuery.toParamString(assetAttachedMedia))), ("assetAttachedMediaUrl", Some(assetAttachedMediaUrlQuery.toParamString(assetAttachedMediaUrl))), ("assetAttachedMediaString", Some(assetAttachedMediaStringQuery.toParamString(assetAttachedMediaString))), ("assetAttachedMediaStringFileName", Some(assetAttachedMediaStringFileNameQuery.toParamString(assetAttachedMediaStringFileName))), ("assetAttachedMediaStringContentType", Some(assetAttachedMediaStringContentTypeQuery.toParamString(assetAttachedMediaStringContentType))), ("assetLocationDescription", Some(assetLocationDescriptionQuery.toParamString(assetLocationDescription))), ("assetApp", Some(assetAppQuery.toParamString(assetApp))), ("assetSearchTags", Some(assetSearchTagsQuery.toParamString(assetSearchTags))), ("assetLatitude", Some(assetLatitudeQuery.toParamString(assetLatitude))), ("assetLongitude", Some(assetLongitudeQuery.toParamString(assetLongitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[NoteResponse](req)

    } yield resp
  }

}
