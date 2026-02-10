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

import org.openapitools.client.api.AssetFullResponse
import org.openapitools.client.api.AssetResponse
import org.openapitools.client.api.AssetShortResponse
import org.openapitools.client.api.BigDecimal
import java.io.File
import org.openapitools.client.api.SirqulResponse

object AssetApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def assetDownload(host: String, version: BigDecimal, filename: String): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/asset/download/{filename}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "filename" + "\\}",escape(filename.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def assetMorph(host: String, version: BigDecimal, offerId: Long, adSize: String, creativeId: Long, width: Integer, height: Integer, backgroundSize: String, template: String)(implicit offerIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long], adSizeQuery: QueryParam[String], widthQuery: QueryParam[Integer], heightQuery: QueryParam[Integer], backgroundSizeQuery: QueryParam[String], templateQuery: QueryParam[String]): Task[AssetShortResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssetShortResponse] = jsonOf[AssetShortResponse]

    val path = "/api/{version}/asset/morph".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("offerId", Some(offerIdQuery.toParamString(offerId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))), ("adSize", Some(adSizeQuery.toParamString(adSize))), ("width", Some(widthQuery.toParamString(width))), ("height", Some(heightQuery.toParamString(height))), ("backgroundSize", Some(backgroundSizeQuery.toParamString(backgroundSize))), ("template", Some(templateQuery.toParamString(template))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssetShortResponse](req)

    } yield resp
  }

  def createAsset(host: String, version: BigDecimal, returnNulls: Boolean, deviceId: String, accountId: Long, albumId: Long, collectionId: Long, addToDefaultAlbum: String, addToMediaLibrary: Boolean, versionCode: Integer, versionName: String, metaData: String, caption: String, assetType: String, approvalStatus: String, assignedAccountId: Long, media: File, mediaUrl: String, mediaString: String, mediaStringFileName: String, mediaStringContentType: String, mediaHeight: Integer, mediaWidth: Integer, attachedMedia: File, attachedMediaUrl: String, attachedMediaString: String, attachedMediaStringFileName: String, attachedMediaStringContentType: String, attachedMediaHeight: Integer, attachedMediaWidth: Integer, locationDescription: String, app: String, appKey: String, searchTags: String, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], collectionIdQuery: QueryParam[Long], addToDefaultAlbumQuery: QueryParam[String], addToMediaLibraryQuery: QueryParam[Boolean], versionCodeQuery: QueryParam[Integer], versionNameQuery: QueryParam[String], metaDataQuery: QueryParam[String], captionQuery: QueryParam[String], assetTypeQuery: QueryParam[String], approvalStatusQuery: QueryParam[String], assignedAccountIdQuery: QueryParam[Long], mediaQuery: QueryParam[File], mediaUrlQuery: QueryParam[String], mediaStringQuery: QueryParam[String], mediaStringFileNameQuery: QueryParam[String], mediaStringContentTypeQuery: QueryParam[String], mediaHeightQuery: QueryParam[Integer], mediaWidthQuery: QueryParam[Integer], attachedMediaQuery: QueryParam[File], attachedMediaUrlQuery: QueryParam[String], attachedMediaStringQuery: QueryParam[String], attachedMediaStringFileNameQuery: QueryParam[String], attachedMediaStringContentTypeQuery: QueryParam[String], attachedMediaHeightQuery: QueryParam[Integer], attachedMediaWidthQuery: QueryParam[Integer], locationDescriptionQuery: QueryParam[String], appQuery: QueryParam[String], appKeyQuery: QueryParam[String], searchTagsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[AssetResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssetResponse] = jsonOf[AssetResponse]

    val path = "/api/{version}/asset/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("collectionId", Some(collectionIdQuery.toParamString(collectionId))), ("addToDefaultAlbum", Some(addToDefaultAlbumQuery.toParamString(addToDefaultAlbum))), ("addToMediaLibrary", Some(addToMediaLibraryQuery.toParamString(addToMediaLibrary))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("versionName", Some(versionNameQuery.toParamString(versionName))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("caption", Some(captionQuery.toParamString(caption))), ("assetType", Some(assetTypeQuery.toParamString(assetType))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))), ("assignedAccountId", Some(assignedAccountIdQuery.toParamString(assignedAccountId))), ("media", Some(mediaQuery.toParamString(media))), ("mediaUrl", Some(mediaUrlQuery.toParamString(mediaUrl))), ("mediaString", Some(mediaStringQuery.toParamString(mediaString))), ("mediaStringFileName", Some(mediaStringFileNameQuery.toParamString(mediaStringFileName))), ("mediaStringContentType", Some(mediaStringContentTypeQuery.toParamString(mediaStringContentType))), ("mediaHeight", Some(mediaHeightQuery.toParamString(mediaHeight))), ("mediaWidth", Some(mediaWidthQuery.toParamString(mediaWidth))), ("attachedMedia", Some(attachedMediaQuery.toParamString(attachedMedia))), ("attachedMediaUrl", Some(attachedMediaUrlQuery.toParamString(attachedMediaUrl))), ("attachedMediaString", Some(attachedMediaStringQuery.toParamString(attachedMediaString))), ("attachedMediaStringFileName", Some(attachedMediaStringFileNameQuery.toParamString(attachedMediaStringFileName))), ("attachedMediaStringContentType", Some(attachedMediaStringContentTypeQuery.toParamString(attachedMediaStringContentType))), ("attachedMediaHeight", Some(attachedMediaHeightQuery.toParamString(attachedMediaHeight))), ("attachedMediaWidth", Some(attachedMediaWidthQuery.toParamString(attachedMediaWidth))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("app", Some(appQuery.toParamString(app))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssetResponse](req)

    } yield resp
  }

  def deleteAsset(host: String, version: BigDecimal, assetId: String, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], assetIdQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/asset/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAsset(host: String, version: BigDecimal, assetId: Long, deviceId: String, accountId: Long, noteDescending: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], assetIdQuery: QueryParam[Long], noteDescendingQuery: QueryParam[Boolean]): Task[AssetFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssetFullResponse] = jsonOf[AssetFullResponse]

    val path = "/api/{version}/asset/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("noteDescending", Some(noteDescendingQuery.toParamString(noteDescending))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssetFullResponse](req)

    } yield resp
  }

  def removeAsset(host: String, version: BigDecimal, assetId: String, deviceId: String, accountId: Long, albumId: Long, collectionId: Long, removeFromDefaultAlbums: Boolean, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], collectionIdQuery: QueryParam[Long], assetIdQuery: QueryParam[String], removeFromDefaultAlbumsQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/asset/remove".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("collectionId", Some(collectionIdQuery.toParamString(collectionId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("removeFromDefaultAlbums", Some(removeFromDefaultAlbumsQuery.toParamString(removeFromDefaultAlbums))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchAssets(host: String, version: BigDecimal, deviceId: String, accountId: Long, albumIds: String, assetIds: String, appKey: String, mediaType: String, mimeType: String, keyword: String, versionCode: Integer, versionName: String, updatedSince: Long, updatedBefore: Long, sortField: String, descending: Boolean, searchMediaLibrary: Boolean, filterByBillable: Boolean, activeOnly: Boolean, returnApp: Boolean, start: Integer, limit: Integer, searchMode: String, assetType: String, approvalStatus: String, assignedAccountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdsQuery: QueryParam[String], assetIdsQuery: QueryParam[String], appKeyQuery: QueryParam[String], mediaTypeQuery: QueryParam[String], mimeTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], versionCodeQuery: QueryParam[Integer], versionNameQuery: QueryParam[String], updatedSinceQuery: QueryParam[Long], updatedBeforeQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], searchMediaLibraryQuery: QueryParam[Boolean], filterByBillableQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], returnAppQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], searchModeQuery: QueryParam[String], assetTypeQuery: QueryParam[String], approvalStatusQuery: QueryParam[String], assignedAccountIdQuery: QueryParam[Long]): Task[List[AssetResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AssetResponse]] = jsonOf[List[AssetResponse]]

    val path = "/api/{version}/asset/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumIds", Some(albumIdsQuery.toParamString(albumIds))), ("assetIds", Some(assetIdsQuery.toParamString(assetIds))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("mediaType", Some(mediaTypeQuery.toParamString(mediaType))), ("mimeType", Some(mimeTypeQuery.toParamString(mimeType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("versionName", Some(versionNameQuery.toParamString(versionName))), ("updatedSince", Some(updatedSinceQuery.toParamString(updatedSince))), ("updatedBefore", Some(updatedBeforeQuery.toParamString(updatedBefore))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("searchMediaLibrary", Some(searchMediaLibraryQuery.toParamString(searchMediaLibrary))), ("filterByBillable", Some(filterByBillableQuery.toParamString(filterByBillable))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnApp", Some(returnAppQuery.toParamString(returnApp))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("searchMode", Some(searchModeQuery.toParamString(searchMode))), ("assetType", Some(assetTypeQuery.toParamString(assetType))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))), ("assignedAccountId", Some(assignedAccountIdQuery.toParamString(assignedAccountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AssetResponse]](req)

    } yield resp
  }

  def updateAsset(host: String, version: BigDecimal, assetId: Long, deviceId: String, accountId: Long, albumId: Long, attachedAssetId: Long, versionCode: Integer, versionName: String, metaData: String, caption: String, assetType: String, approvalStatus: String, assignedAccountId: Long, media: File, mediaUrl: String, mediaString: String, mediaStringFileName: String, mediaStringContentType: String, mediaHeight: Integer, mediaWidth: Integer, attachedMedia: File, attachedMediaUrl: String, attachedMediaString: String, attachedMediaStringFileName: String, attachedMediaStringContentType: String, attachedMediaHeight: Integer, attachedMediaWidth: Integer, locationDescription: String, searchTags: String, appKey: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], assetIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], attachedAssetIdQuery: QueryParam[Long], versionCodeQuery: QueryParam[Integer], versionNameQuery: QueryParam[String], metaDataQuery: QueryParam[String], captionQuery: QueryParam[String], assetTypeQuery: QueryParam[String], approvalStatusQuery: QueryParam[String], assignedAccountIdQuery: QueryParam[Long], mediaQuery: QueryParam[File], mediaUrlQuery: QueryParam[String], mediaStringQuery: QueryParam[String], mediaStringFileNameQuery: QueryParam[String], mediaStringContentTypeQuery: QueryParam[String], mediaHeightQuery: QueryParam[Integer], mediaWidthQuery: QueryParam[Integer], attachedMediaQuery: QueryParam[File], attachedMediaUrlQuery: QueryParam[String], attachedMediaStringQuery: QueryParam[String], attachedMediaStringFileNameQuery: QueryParam[String], attachedMediaStringContentTypeQuery: QueryParam[String], attachedMediaHeightQuery: QueryParam[Integer], attachedMediaWidthQuery: QueryParam[Integer], locationDescriptionQuery: QueryParam[String], searchTagsQuery: QueryParam[String], appKeyQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/asset/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("attachedAssetId", Some(attachedAssetIdQuery.toParamString(attachedAssetId))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("versionName", Some(versionNameQuery.toParamString(versionName))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("caption", Some(captionQuery.toParamString(caption))), ("assetType", Some(assetTypeQuery.toParamString(assetType))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))), ("assignedAccountId", Some(assignedAccountIdQuery.toParamString(assignedAccountId))), ("media", Some(mediaQuery.toParamString(media))), ("mediaUrl", Some(mediaUrlQuery.toParamString(mediaUrl))), ("mediaString", Some(mediaStringQuery.toParamString(mediaString))), ("mediaStringFileName", Some(mediaStringFileNameQuery.toParamString(mediaStringFileName))), ("mediaStringContentType", Some(mediaStringContentTypeQuery.toParamString(mediaStringContentType))), ("mediaHeight", Some(mediaHeightQuery.toParamString(mediaHeight))), ("mediaWidth", Some(mediaWidthQuery.toParamString(mediaWidth))), ("attachedMedia", Some(attachedMediaQuery.toParamString(attachedMedia))), ("attachedMediaUrl", Some(attachedMediaUrlQuery.toParamString(attachedMediaUrl))), ("attachedMediaString", Some(attachedMediaStringQuery.toParamString(attachedMediaString))), ("attachedMediaStringFileName", Some(attachedMediaStringFileNameQuery.toParamString(attachedMediaStringFileName))), ("attachedMediaStringContentType", Some(attachedMediaStringContentTypeQuery.toParamString(attachedMediaStringContentType))), ("attachedMediaHeight", Some(attachedMediaHeightQuery.toParamString(attachedMediaHeight))), ("attachedMediaWidth", Some(attachedMediaWidthQuery.toParamString(attachedMediaWidth))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}

class HttpServiceAssetApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def assetDownload(version: BigDecimal, filename: String): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/asset/download/{filename}".replaceAll("\\{" + "version" + "\\}",escape(version.toString)).replaceAll("\\{" + "filename" + "\\}",escape(filename.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def assetMorph(version: BigDecimal, offerId: Long, adSize: String, creativeId: Long, width: Integer, height: Integer, backgroundSize: String, template: String)(implicit offerIdQuery: QueryParam[Long], creativeIdQuery: QueryParam[Long], adSizeQuery: QueryParam[String], widthQuery: QueryParam[Integer], heightQuery: QueryParam[Integer], backgroundSizeQuery: QueryParam[String], templateQuery: QueryParam[String]): Task[AssetShortResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssetShortResponse] = jsonOf[AssetShortResponse]

    val path = "/api/{version}/asset/morph".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("offerId", Some(offerIdQuery.toParamString(offerId))), ("creativeId", Some(creativeIdQuery.toParamString(creativeId))), ("adSize", Some(adSizeQuery.toParamString(adSize))), ("width", Some(widthQuery.toParamString(width))), ("height", Some(heightQuery.toParamString(height))), ("backgroundSize", Some(backgroundSizeQuery.toParamString(backgroundSize))), ("template", Some(templateQuery.toParamString(template))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssetShortResponse](req)

    } yield resp
  }

  def createAsset(version: BigDecimal, returnNulls: Boolean, deviceId: String, accountId: Long, albumId: Long, collectionId: Long, addToDefaultAlbum: String, addToMediaLibrary: Boolean, versionCode: Integer, versionName: String, metaData: String, caption: String, assetType: String, approvalStatus: String, assignedAccountId: Long, media: File, mediaUrl: String, mediaString: String, mediaStringFileName: String, mediaStringContentType: String, mediaHeight: Integer, mediaWidth: Integer, attachedMedia: File, attachedMediaUrl: String, attachedMediaString: String, attachedMediaStringFileName: String, attachedMediaStringContentType: String, attachedMediaHeight: Integer, attachedMediaWidth: Integer, locationDescription: String, app: String, appKey: String, searchTags: String, latitude: Double, longitude: Double)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], collectionIdQuery: QueryParam[Long], addToDefaultAlbumQuery: QueryParam[String], addToMediaLibraryQuery: QueryParam[Boolean], versionCodeQuery: QueryParam[Integer], versionNameQuery: QueryParam[String], metaDataQuery: QueryParam[String], captionQuery: QueryParam[String], assetTypeQuery: QueryParam[String], approvalStatusQuery: QueryParam[String], assignedAccountIdQuery: QueryParam[Long], mediaQuery: QueryParam[File], mediaUrlQuery: QueryParam[String], mediaStringQuery: QueryParam[String], mediaStringFileNameQuery: QueryParam[String], mediaStringContentTypeQuery: QueryParam[String], mediaHeightQuery: QueryParam[Integer], mediaWidthQuery: QueryParam[Integer], attachedMediaQuery: QueryParam[File], attachedMediaUrlQuery: QueryParam[String], attachedMediaStringQuery: QueryParam[String], attachedMediaStringFileNameQuery: QueryParam[String], attachedMediaStringContentTypeQuery: QueryParam[String], attachedMediaHeightQuery: QueryParam[Integer], attachedMediaWidthQuery: QueryParam[Integer], locationDescriptionQuery: QueryParam[String], appQuery: QueryParam[String], appKeyQuery: QueryParam[String], searchTagsQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[AssetResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssetResponse] = jsonOf[AssetResponse]

    val path = "/api/{version}/asset/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("collectionId", Some(collectionIdQuery.toParamString(collectionId))), ("addToDefaultAlbum", Some(addToDefaultAlbumQuery.toParamString(addToDefaultAlbum))), ("addToMediaLibrary", Some(addToMediaLibraryQuery.toParamString(addToMediaLibrary))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("versionName", Some(versionNameQuery.toParamString(versionName))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("caption", Some(captionQuery.toParamString(caption))), ("assetType", Some(assetTypeQuery.toParamString(assetType))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))), ("assignedAccountId", Some(assignedAccountIdQuery.toParamString(assignedAccountId))), ("media", Some(mediaQuery.toParamString(media))), ("mediaUrl", Some(mediaUrlQuery.toParamString(mediaUrl))), ("mediaString", Some(mediaStringQuery.toParamString(mediaString))), ("mediaStringFileName", Some(mediaStringFileNameQuery.toParamString(mediaStringFileName))), ("mediaStringContentType", Some(mediaStringContentTypeQuery.toParamString(mediaStringContentType))), ("mediaHeight", Some(mediaHeightQuery.toParamString(mediaHeight))), ("mediaWidth", Some(mediaWidthQuery.toParamString(mediaWidth))), ("attachedMedia", Some(attachedMediaQuery.toParamString(attachedMedia))), ("attachedMediaUrl", Some(attachedMediaUrlQuery.toParamString(attachedMediaUrl))), ("attachedMediaString", Some(attachedMediaStringQuery.toParamString(attachedMediaString))), ("attachedMediaStringFileName", Some(attachedMediaStringFileNameQuery.toParamString(attachedMediaStringFileName))), ("attachedMediaStringContentType", Some(attachedMediaStringContentTypeQuery.toParamString(attachedMediaStringContentType))), ("attachedMediaHeight", Some(attachedMediaHeightQuery.toParamString(attachedMediaHeight))), ("attachedMediaWidth", Some(attachedMediaWidthQuery.toParamString(attachedMediaWidth))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("app", Some(appQuery.toParamString(app))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssetResponse](req)

    } yield resp
  }

  def deleteAsset(version: BigDecimal, assetId: String, deviceId: String, accountId: Long, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], assetIdQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/asset/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAsset(version: BigDecimal, assetId: Long, deviceId: String, accountId: Long, noteDescending: Boolean = false)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], assetIdQuery: QueryParam[Long], noteDescendingQuery: QueryParam[Boolean]): Task[AssetFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AssetFullResponse] = jsonOf[AssetFullResponse]

    val path = "/api/{version}/asset/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("noteDescending", Some(noteDescendingQuery.toParamString(noteDescending))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AssetFullResponse](req)

    } yield resp
  }

  def removeAsset(version: BigDecimal, assetId: String, deviceId: String, accountId: Long, albumId: Long, collectionId: Long, removeFromDefaultAlbums: Boolean, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], collectionIdQuery: QueryParam[Long], assetIdQuery: QueryParam[String], removeFromDefaultAlbumsQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/asset/remove".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("collectionId", Some(collectionIdQuery.toParamString(collectionId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("removeFromDefaultAlbums", Some(removeFromDefaultAlbumsQuery.toParamString(removeFromDefaultAlbums))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchAssets(version: BigDecimal, deviceId: String, accountId: Long, albumIds: String, assetIds: String, appKey: String, mediaType: String, mimeType: String, keyword: String, versionCode: Integer, versionName: String, updatedSince: Long, updatedBefore: Long, sortField: String, descending: Boolean, searchMediaLibrary: Boolean, filterByBillable: Boolean, activeOnly: Boolean, returnApp: Boolean, start: Integer, limit: Integer, searchMode: String, assetType: String, approvalStatus: String, assignedAccountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdsQuery: QueryParam[String], assetIdsQuery: QueryParam[String], appKeyQuery: QueryParam[String], mediaTypeQuery: QueryParam[String], mimeTypeQuery: QueryParam[String], keywordQuery: QueryParam[String], versionCodeQuery: QueryParam[Integer], versionNameQuery: QueryParam[String], updatedSinceQuery: QueryParam[Long], updatedBeforeQuery: QueryParam[Long], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], searchMediaLibraryQuery: QueryParam[Boolean], filterByBillableQuery: QueryParam[Boolean], activeOnlyQuery: QueryParam[Boolean], returnAppQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], searchModeQuery: QueryParam[String], assetTypeQuery: QueryParam[String], approvalStatusQuery: QueryParam[String], assignedAccountIdQuery: QueryParam[Long]): Task[List[AssetResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AssetResponse]] = jsonOf[List[AssetResponse]]

    val path = "/api/{version}/asset/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumIds", Some(albumIdsQuery.toParamString(albumIds))), ("assetIds", Some(assetIdsQuery.toParamString(assetIds))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("mediaType", Some(mediaTypeQuery.toParamString(mediaType))), ("mimeType", Some(mimeTypeQuery.toParamString(mimeType))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("versionName", Some(versionNameQuery.toParamString(versionName))), ("updatedSince", Some(updatedSinceQuery.toParamString(updatedSince))), ("updatedBefore", Some(updatedBeforeQuery.toParamString(updatedBefore))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("searchMediaLibrary", Some(searchMediaLibraryQuery.toParamString(searchMediaLibrary))), ("filterByBillable", Some(filterByBillableQuery.toParamString(filterByBillable))), ("activeOnly", Some(activeOnlyQuery.toParamString(activeOnly))), ("returnApp", Some(returnAppQuery.toParamString(returnApp))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("searchMode", Some(searchModeQuery.toParamString(searchMode))), ("assetType", Some(assetTypeQuery.toParamString(assetType))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))), ("assignedAccountId", Some(assignedAccountIdQuery.toParamString(assignedAccountId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AssetResponse]](req)

    } yield resp
  }

  def updateAsset(version: BigDecimal, assetId: Long, deviceId: String, accountId: Long, albumId: Long, attachedAssetId: Long, versionCode: Integer, versionName: String, metaData: String, caption: String, assetType: String, approvalStatus: String, assignedAccountId: Long, media: File, mediaUrl: String, mediaString: String, mediaStringFileName: String, mediaStringContentType: String, mediaHeight: Integer, mediaWidth: Integer, attachedMedia: File, attachedMediaUrl: String, attachedMediaString: String, attachedMediaStringFileName: String, attachedMediaStringContentType: String, attachedMediaHeight: Integer, attachedMediaWidth: Integer, locationDescription: String, searchTags: String, appKey: String, latitude: Double, longitude: Double)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], assetIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], attachedAssetIdQuery: QueryParam[Long], versionCodeQuery: QueryParam[Integer], versionNameQuery: QueryParam[String], metaDataQuery: QueryParam[String], captionQuery: QueryParam[String], assetTypeQuery: QueryParam[String], approvalStatusQuery: QueryParam[String], assignedAccountIdQuery: QueryParam[Long], mediaQuery: QueryParam[File], mediaUrlQuery: QueryParam[String], mediaStringQuery: QueryParam[String], mediaStringFileNameQuery: QueryParam[String], mediaStringContentTypeQuery: QueryParam[String], mediaHeightQuery: QueryParam[Integer], mediaWidthQuery: QueryParam[Integer], attachedMediaQuery: QueryParam[File], attachedMediaUrlQuery: QueryParam[String], attachedMediaStringQuery: QueryParam[String], attachedMediaStringFileNameQuery: QueryParam[String], attachedMediaStringContentTypeQuery: QueryParam[String], attachedMediaHeightQuery: QueryParam[Integer], attachedMediaWidthQuery: QueryParam[Integer], locationDescriptionQuery: QueryParam[String], searchTagsQuery: QueryParam[String], appKeyQuery: QueryParam[String], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/asset/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("attachedAssetId", Some(attachedAssetIdQuery.toParamString(attachedAssetId))), ("versionCode", Some(versionCodeQuery.toParamString(versionCode))), ("versionName", Some(versionNameQuery.toParamString(versionName))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("caption", Some(captionQuery.toParamString(caption))), ("assetType", Some(assetTypeQuery.toParamString(assetType))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))), ("assignedAccountId", Some(assignedAccountIdQuery.toParamString(assignedAccountId))), ("media", Some(mediaQuery.toParamString(media))), ("mediaUrl", Some(mediaUrlQuery.toParamString(mediaUrl))), ("mediaString", Some(mediaStringQuery.toParamString(mediaString))), ("mediaStringFileName", Some(mediaStringFileNameQuery.toParamString(mediaStringFileName))), ("mediaStringContentType", Some(mediaStringContentTypeQuery.toParamString(mediaStringContentType))), ("mediaHeight", Some(mediaHeightQuery.toParamString(mediaHeight))), ("mediaWidth", Some(mediaWidthQuery.toParamString(mediaWidth))), ("attachedMedia", Some(attachedMediaQuery.toParamString(attachedMedia))), ("attachedMediaUrl", Some(attachedMediaUrlQuery.toParamString(attachedMediaUrl))), ("attachedMediaString", Some(attachedMediaStringQuery.toParamString(attachedMediaString))), ("attachedMediaStringFileName", Some(attachedMediaStringFileNameQuery.toParamString(attachedMediaStringFileName))), ("attachedMediaStringContentType", Some(attachedMediaStringContentTypeQuery.toParamString(attachedMediaStringContentType))), ("attachedMediaHeight", Some(attachedMediaHeightQuery.toParamString(attachedMediaHeight))), ("attachedMediaWidth", Some(attachedMediaWidthQuery.toParamString(attachedMediaWidth))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("searchTags", Some(searchTagsQuery.toParamString(searchTags))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

}
