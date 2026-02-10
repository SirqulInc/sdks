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

import org.openapitools.client.api.AlbumFullResponse
import org.openapitools.client.api.AlbumResponse
import org.openapitools.client.api.BigDecimal
import java.io.File
import org.openapitools.client.api.SearchResponse
import org.openapitools.client.api.SirqulResponse

object AlbumApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addAlbumCollection(host: String, version: BigDecimal, title: String, coverAssetNullable: Boolean, includeCoverInAssetList: Boolean, publicRead: Boolean, publicWrite: Boolean, publicDelete: Boolean, publicAdd: Boolean, anonymous: Boolean, deviceId: String, accountId: Long, assetsToAdd: String, media: File, mediaURL: String, assetId: Long, attachedMedia: File, attachedMediaURL: String, startDate: Long, endDate: Long, tags: String, description: String, albumType: String, albumTypeId: Long, subType: String, latitude: Double, longitude: Double, locationDescription: String, visibility: String, gameType: String, appKey: String, cellPhone: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, fullAddress: String, metaData: String, categoryIds: String, categoryFilterIds: String, audienceIds: String, includeAllAppUsersAsMembers: Boolean, includeAudiencesAsMembers: Boolean, audienceOperator: String, approvalStatus: String, linkedObjectType: String, linkedObjectId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], titleQuery: QueryParam[String], assetsToAddQuery: QueryParam[String], mediaQuery: QueryParam[File], mediaURLQuery: QueryParam[String], assetIdQuery: QueryParam[Long], attachedMediaQuery: QueryParam[File], attachedMediaURLQuery: QueryParam[String], coverAssetNullableQuery: QueryParam[Boolean], includeCoverInAssetListQuery: QueryParam[Boolean], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tagsQuery: QueryParam[String], descriptionQuery: QueryParam[String], albumTypeQuery: QueryParam[String], albumTypeIdQuery: QueryParam[Long], subTypeQuery: QueryParam[String], publicReadQuery: QueryParam[Boolean], publicWriteQuery: QueryParam[Boolean], publicDeleteQuery: QueryParam[Boolean], publicAddQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], locationDescriptionQuery: QueryParam[String], visibilityQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], fullAddressQuery: QueryParam[String], anonymousQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], categoryFilterIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], includeAllAppUsersAsMembersQuery: QueryParam[Boolean], includeAudiencesAsMembersQuery: QueryParam[Boolean], audienceOperatorQuery: QueryParam[String], approvalStatusQuery: QueryParam[String], linkedObjectTypeQuery: QueryParam[String], linkedObjectIdQuery: QueryParam[Long]): Task[SearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SearchResponse] = jsonOf[SearchResponse]

    val path = "/api/{version}/album/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("title", Some(titleQuery.toParamString(title))), ("assetsToAdd", Some(assetsToAddQuery.toParamString(assetsToAdd))), ("media", Some(mediaQuery.toParamString(media))), ("mediaURL", Some(mediaURLQuery.toParamString(mediaURL))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("attachedMedia", Some(attachedMediaQuery.toParamString(attachedMedia))), ("attachedMediaURL", Some(attachedMediaURLQuery.toParamString(attachedMediaURL))), ("coverAssetNullable", Some(coverAssetNullableQuery.toParamString(coverAssetNullable))), ("includeCoverInAssetList", Some(includeCoverInAssetListQuery.toParamString(includeCoverInAssetList))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tags", Some(tagsQuery.toParamString(tags))), ("description", Some(descriptionQuery.toParamString(description))), ("albumType", Some(albumTypeQuery.toParamString(albumType))), ("albumTypeId", Some(albumTypeIdQuery.toParamString(albumTypeId))), ("subType", Some(subTypeQuery.toParamString(subType))), ("publicRead", Some(publicReadQuery.toParamString(publicRead))), ("publicWrite", Some(publicWriteQuery.toParamString(publicWrite))), ("publicDelete", Some(publicDeleteQuery.toParamString(publicDelete))), ("publicAdd", Some(publicAddQuery.toParamString(publicAdd))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("fullAddress", Some(fullAddressQuery.toParamString(fullAddress))), ("anonymous", Some(anonymousQuery.toParamString(anonymous))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("categoryFilterIds", Some(categoryFilterIdsQuery.toParamString(categoryFilterIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("includeAllAppUsersAsMembers", Some(includeAllAppUsersAsMembersQuery.toParamString(includeAllAppUsersAsMembers))), ("includeAudiencesAsMembers", Some(includeAudiencesAsMembersQuery.toParamString(includeAudiencesAsMembers))), ("audienceOperator", Some(audienceOperatorQuery.toParamString(audienceOperator))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))), ("linkedObjectType", Some(linkedObjectTypeQuery.toParamString(linkedObjectType))), ("linkedObjectId", Some(linkedObjectIdQuery.toParamString(linkedObjectId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SearchResponse](req)

    } yield resp
  }

  def addAlbumUsers(host: String, version: BigDecimal, albumId: Long, includeFriendGroup: Boolean, deviceId: String, accountId: Long, read: Boolean, write: Boolean, delete: Boolean, add: Boolean, connections: String, connectionGroups: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], readQuery: QueryParam[Boolean], writeQuery: QueryParam[Boolean], deleteQuery: QueryParam[Boolean], addQuery: QueryParam[Boolean], connectionsQuery: QueryParam[String], connectionGroupsQuery: QueryParam[String], includeFriendGroupQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/album/user/add".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("read", Some(readQuery.toParamString(read))), ("write", Some(writeQuery.toParamString(write))), ("delete", Some(deleteQuery.toParamString(delete))), ("add", Some(addQuery.toParamString(add))), ("connections", Some(connectionsQuery.toParamString(connections))), ("connectionGroups", Some(connectionGroupsQuery.toParamString(connectionGroups))), ("includeFriendGroup", Some(includeFriendGroupQuery.toParamString(includeFriendGroup))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def approveAlbum(host: String, version: BigDecimal, albumId: Long, deviceId: String, accountId: Long, approvalStatus: String, verified: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], approvalStatusQuery: QueryParam[String], verifiedQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/album/approve".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))), ("verified", Some(verifiedQuery.toParamString(verified))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAlbumCollection(host: String, version: BigDecimal, returnNulls: Boolean, albumId: Long, deviceId: String, accountId: Long, likePreviewSize: Integer, assetPreviewSize: Integer, notePreviewSize: Integer, connectionPreviewSize: Integer, audiencePreviewSize: Integer)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], likePreviewSizeQuery: QueryParam[Integer], assetPreviewSizeQuery: QueryParam[Integer], notePreviewSizeQuery: QueryParam[Integer], connectionPreviewSizeQuery: QueryParam[Integer], audiencePreviewSizeQuery: QueryParam[Integer]): Task[AlbumFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumFullResponse] = jsonOf[AlbumFullResponse]

    val path = "/api/{version}/album/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("likePreviewSize", Some(likePreviewSizeQuery.toParamString(likePreviewSize))), ("assetPreviewSize", Some(assetPreviewSizeQuery.toParamString(assetPreviewSize))), ("notePreviewSize", Some(notePreviewSizeQuery.toParamString(notePreviewSize))), ("connectionPreviewSize", Some(connectionPreviewSizeQuery.toParamString(connectionPreviewSize))), ("audiencePreviewSize", Some(audiencePreviewSizeQuery.toParamString(audiencePreviewSize))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumFullResponse](req)

    } yield resp
  }

  def leaveAlbum(host: String, version: BigDecimal, albumId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/album/user/leave".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeAlbum(host: String, version: BigDecimal, albumId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/album/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeAlbumUsers(host: String, version: BigDecimal, albumId: Long, removeFriendGroup: Boolean, deviceId: String, accountId: Long, connections: String, connectionGroups: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], connectionsQuery: QueryParam[String], connectionGroupsQuery: QueryParam[String], removeFriendGroupQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/album/user/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("connections", Some(connectionsQuery.toParamString(connections))), ("connectionGroups", Some(connectionGroupsQuery.toParamString(connectionGroups))), ("removeFriendGroup", Some(removeFriendGroupQuery.toParamString(removeFriendGroup))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchAlbums(host: String, version: BigDecimal, filter: String, albumTypeId: Long, subType: String, includeInactive: Boolean, sortField: String, descending: Boolean, start: Integer, limit: Integer, range: Double, includeLiked: Boolean, includeFavorited: Boolean, includePermissions: Boolean, likePreviewSize: Integer, assetPreviewSize: Integer, notePreviewSize: Integer, connectionPreviewSize: Integer, audiencePreviewSize: Integer, deviceId: String, accountId: Long, connectionAccountId: Long, ownerId: Long, albumIds: String, excludeAlbumIds: String, mediaId: Long, keyword: String, albumType: String, limitPerAlbumType: Integer, dateCreated: Long, updatedSince: Long, updatedBefore: Long, createdSince: Long, createdBefore: Long, startedSince: Long, startedBefore: Long, endedSince: Long, endedBefore: Long, latitude: Double, longitude: Double, appKey: String, categoryIds: String, categoryFilterIds: String, audienceIds: String, excludeAudienceIds: String, includeCompletable: Boolean, includeRating: Boolean, searchMode: String, stackSearch: Boolean, stackWindowSize: Integer, minStackPerPage: Integer, stackPaginationIdentifier: String, stackDetails: Boolean, flagCountMinimum: Long, removeFlaggedContent: Boolean = true, verifiedFilter: Boolean, linkedObjectType: String, linkedObjectId: Long, orderAudienceId: Long, ignoreDefaultAppFilter: Boolean, searchExpression: String, generateAlbums: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], ownerIdQuery: QueryParam[Long], albumIdsQuery: QueryParam[String], excludeAlbumIdsQuery: QueryParam[String], mediaIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], filterQuery: QueryParam[String], albumTypeQuery: QueryParam[String], albumTypeIdQuery: QueryParam[Long], subTypeQuery: QueryParam[String], includeInactiveQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], limitPerAlbumTypeQuery: QueryParam[Integer], dateCreatedQuery: QueryParam[Long], updatedSinceQuery: QueryParam[Long], updatedBeforeQuery: QueryParam[Long], createdSinceQuery: QueryParam[Long], createdBeforeQuery: QueryParam[Long], startedSinceQuery: QueryParam[Long], startedBeforeQuery: QueryParam[Long], endedSinceQuery: QueryParam[Long], endedBeforeQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], rangeQuery: QueryParam[Double], appKeyQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], categoryFilterIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], excludeAudienceIdsQuery: QueryParam[String], includeLikedQuery: QueryParam[Boolean], includeFavoritedQuery: QueryParam[Boolean], includePermissionsQuery: QueryParam[Boolean], includeCompletableQuery: QueryParam[Boolean], includeRatingQuery: QueryParam[Boolean], likePreviewSizeQuery: QueryParam[Integer], assetPreviewSizeQuery: QueryParam[Integer], notePreviewSizeQuery: QueryParam[Integer], connectionPreviewSizeQuery: QueryParam[Integer], audiencePreviewSizeQuery: QueryParam[Integer], searchModeQuery: QueryParam[String], stackSearchQuery: QueryParam[Boolean], stackWindowSizeQuery: QueryParam[Integer], minStackPerPageQuery: QueryParam[Integer], stackPaginationIdentifierQuery: QueryParam[String], stackDetailsQuery: QueryParam[Boolean], flagCountMinimumQuery: QueryParam[Long], removeFlaggedContentQuery: QueryParam[Boolean], verifiedFilterQuery: QueryParam[Boolean], linkedObjectTypeQuery: QueryParam[String], linkedObjectIdQuery: QueryParam[Long], orderAudienceIdQuery: QueryParam[Long], ignoreDefaultAppFilterQuery: QueryParam[Boolean], searchExpressionQuery: QueryParam[String], generateAlbumsQuery: QueryParam[Boolean]): Task[List[AlbumFullResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AlbumFullResponse]] = jsonOf[List[AlbumFullResponse]]

    val path = "/api/{version}/album/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("albumIds", Some(albumIdsQuery.toParamString(albumIds))), ("excludeAlbumIds", Some(excludeAlbumIdsQuery.toParamString(excludeAlbumIds))), ("mediaId", Some(mediaIdQuery.toParamString(mediaId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("filter", Some(filterQuery.toParamString(filter))), ("albumType", Some(albumTypeQuery.toParamString(albumType))), ("albumTypeId", Some(albumTypeIdQuery.toParamString(albumTypeId))), ("subType", Some(subTypeQuery.toParamString(subType))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("limitPerAlbumType", Some(limitPerAlbumTypeQuery.toParamString(limitPerAlbumType))), ("dateCreated", Some(dateCreatedQuery.toParamString(dateCreated))), ("updatedSince", Some(updatedSinceQuery.toParamString(updatedSince))), ("updatedBefore", Some(updatedBeforeQuery.toParamString(updatedBefore))), ("createdSince", Some(createdSinceQuery.toParamString(createdSince))), ("createdBefore", Some(createdBeforeQuery.toParamString(createdBefore))), ("startedSince", Some(startedSinceQuery.toParamString(startedSince))), ("startedBefore", Some(startedBeforeQuery.toParamString(startedBefore))), ("endedSince", Some(endedSinceQuery.toParamString(endedSince))), ("endedBefore", Some(endedBeforeQuery.toParamString(endedBefore))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("range", Some(rangeQuery.toParamString(range))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("categoryFilterIds", Some(categoryFilterIdsQuery.toParamString(categoryFilterIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("excludeAudienceIds", Some(excludeAudienceIdsQuery.toParamString(excludeAudienceIds))), ("includeLiked", Some(includeLikedQuery.toParamString(includeLiked))), ("includeFavorited", Some(includeFavoritedQuery.toParamString(includeFavorited))), ("includePermissions", Some(includePermissionsQuery.toParamString(includePermissions))), ("includeCompletable", Some(includeCompletableQuery.toParamString(includeCompletable))), ("includeRating", Some(includeRatingQuery.toParamString(includeRating))), ("likePreviewSize", Some(likePreviewSizeQuery.toParamString(likePreviewSize))), ("assetPreviewSize", Some(assetPreviewSizeQuery.toParamString(assetPreviewSize))), ("notePreviewSize", Some(notePreviewSizeQuery.toParamString(notePreviewSize))), ("connectionPreviewSize", Some(connectionPreviewSizeQuery.toParamString(connectionPreviewSize))), ("audiencePreviewSize", Some(audiencePreviewSizeQuery.toParamString(audiencePreviewSize))), ("searchMode", Some(searchModeQuery.toParamString(searchMode))), ("stackSearch", Some(stackSearchQuery.toParamString(stackSearch))), ("stackWindowSize", Some(stackWindowSizeQuery.toParamString(stackWindowSize))), ("minStackPerPage", Some(minStackPerPageQuery.toParamString(minStackPerPage))), ("stackPaginationIdentifier", Some(stackPaginationIdentifierQuery.toParamString(stackPaginationIdentifier))), ("stackDetails", Some(stackDetailsQuery.toParamString(stackDetails))), ("flagCountMinimum", Some(flagCountMinimumQuery.toParamString(flagCountMinimum))), ("removeFlaggedContent", Some(removeFlaggedContentQuery.toParamString(removeFlaggedContent))), ("verifiedFilter", Some(verifiedFilterQuery.toParamString(verifiedFilter))), ("linkedObjectType", Some(linkedObjectTypeQuery.toParamString(linkedObjectType))), ("linkedObjectId", Some(linkedObjectIdQuery.toParamString(linkedObjectId))), ("orderAudienceId", Some(orderAudienceIdQuery.toParamString(orderAudienceId))), ("ignoreDefaultAppFilter", Some(ignoreDefaultAppFilterQuery.toParamString(ignoreDefaultAppFilter))), ("searchExpression", Some(searchExpressionQuery.toParamString(searchExpression))), ("generateAlbums", Some(generateAlbumsQuery.toParamString(generateAlbums))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AlbumFullResponse]](req)

    } yield resp
  }

  def updateAlbumCollection(host: String, version: BigDecimal, albumId: Long, deviceId: String, accountId: Long, assetsToAdd: String, assetsToRemove: String, assetId: Long, media: File, mediaURL: String, active: Boolean, title: String, startDate: Long, endDate: Long, tags: String, description: String, albumType: String, albumTypeId: Long, subType: String, publicRead: Boolean, publicWrite: Boolean, publicDelete: Boolean, publicAdd: Boolean, latitude: Double, longitude: Double, locationDescription: String, visibility: String, cellPhone: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, fullAddress: String, anonymous: Boolean, metaData: String, categoryIds: String, categoryFilterIds: String, audienceIds: String, audienceIdsToAdd: String, audienceIdsToRemove: String, includeAllAppUsersAsMembers: Boolean, includeAudiencesAsMembers: Boolean, audienceOperator: String, linkedObjectType: String, linkedObjectId: Long, indexNow: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], assetsToAddQuery: QueryParam[String], assetsToRemoveQuery: QueryParam[String], assetIdQuery: QueryParam[Long], mediaQuery: QueryParam[File], mediaURLQuery: QueryParam[String], activeQuery: QueryParam[Boolean], titleQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tagsQuery: QueryParam[String], descriptionQuery: QueryParam[String], albumTypeQuery: QueryParam[String], albumTypeIdQuery: QueryParam[Long], subTypeQuery: QueryParam[String], publicReadQuery: QueryParam[Boolean], publicWriteQuery: QueryParam[Boolean], publicDeleteQuery: QueryParam[Boolean], publicAddQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], locationDescriptionQuery: QueryParam[String], visibilityQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], fullAddressQuery: QueryParam[String], anonymousQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], categoryFilterIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String], includeAllAppUsersAsMembersQuery: QueryParam[Boolean], includeAudiencesAsMembersQuery: QueryParam[Boolean], audienceOperatorQuery: QueryParam[String], linkedObjectTypeQuery: QueryParam[String], linkedObjectIdQuery: QueryParam[Long], indexNowQuery: QueryParam[Boolean]): Task[AlbumResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumResponse] = jsonOf[AlbumResponse]

    val path = "/api/{version}/album/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("assetsToAdd", Some(assetsToAddQuery.toParamString(assetsToAdd))), ("assetsToRemove", Some(assetsToRemoveQuery.toParamString(assetsToRemove))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("media", Some(mediaQuery.toParamString(media))), ("mediaURL", Some(mediaURLQuery.toParamString(mediaURL))), ("active", Some(activeQuery.toParamString(active))), ("title", Some(titleQuery.toParamString(title))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tags", Some(tagsQuery.toParamString(tags))), ("description", Some(descriptionQuery.toParamString(description))), ("albumType", Some(albumTypeQuery.toParamString(albumType))), ("albumTypeId", Some(albumTypeIdQuery.toParamString(albumTypeId))), ("subType", Some(subTypeQuery.toParamString(subType))), ("publicRead", Some(publicReadQuery.toParamString(publicRead))), ("publicWrite", Some(publicWriteQuery.toParamString(publicWrite))), ("publicDelete", Some(publicDeleteQuery.toParamString(publicDelete))), ("publicAdd", Some(publicAddQuery.toParamString(publicAdd))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("fullAddress", Some(fullAddressQuery.toParamString(fullAddress))), ("anonymous", Some(anonymousQuery.toParamString(anonymous))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("categoryFilterIds", Some(categoryFilterIdsQuery.toParamString(categoryFilterIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))), ("includeAllAppUsersAsMembers", Some(includeAllAppUsersAsMembersQuery.toParamString(includeAllAppUsersAsMembers))), ("includeAudiencesAsMembers", Some(includeAudiencesAsMembersQuery.toParamString(includeAudiencesAsMembers))), ("audienceOperator", Some(audienceOperatorQuery.toParamString(audienceOperator))), ("linkedObjectType", Some(linkedObjectTypeQuery.toParamString(linkedObjectType))), ("linkedObjectId", Some(linkedObjectIdQuery.toParamString(linkedObjectId))), ("indexNow", Some(indexNowQuery.toParamString(indexNow))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumResponse](req)

    } yield resp
  }

}

class HttpServiceAlbumApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def addAlbumCollection(version: BigDecimal, title: String, coverAssetNullable: Boolean, includeCoverInAssetList: Boolean, publicRead: Boolean, publicWrite: Boolean, publicDelete: Boolean, publicAdd: Boolean, anonymous: Boolean, deviceId: String, accountId: Long, assetsToAdd: String, media: File, mediaURL: String, assetId: Long, attachedMedia: File, attachedMediaURL: String, startDate: Long, endDate: Long, tags: String, description: String, albumType: String, albumTypeId: Long, subType: String, latitude: Double, longitude: Double, locationDescription: String, visibility: String, gameType: String, appKey: String, cellPhone: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, fullAddress: String, metaData: String, categoryIds: String, categoryFilterIds: String, audienceIds: String, includeAllAppUsersAsMembers: Boolean, includeAudiencesAsMembers: Boolean, audienceOperator: String, approvalStatus: String, linkedObjectType: String, linkedObjectId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], titleQuery: QueryParam[String], assetsToAddQuery: QueryParam[String], mediaQuery: QueryParam[File], mediaURLQuery: QueryParam[String], assetIdQuery: QueryParam[Long], attachedMediaQuery: QueryParam[File], attachedMediaURLQuery: QueryParam[String], coverAssetNullableQuery: QueryParam[Boolean], includeCoverInAssetListQuery: QueryParam[Boolean], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tagsQuery: QueryParam[String], descriptionQuery: QueryParam[String], albumTypeQuery: QueryParam[String], albumTypeIdQuery: QueryParam[Long], subTypeQuery: QueryParam[String], publicReadQuery: QueryParam[Boolean], publicWriteQuery: QueryParam[Boolean], publicDeleteQuery: QueryParam[Boolean], publicAddQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], locationDescriptionQuery: QueryParam[String], visibilityQuery: QueryParam[String], gameTypeQuery: QueryParam[String], appKeyQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], fullAddressQuery: QueryParam[String], anonymousQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], categoryFilterIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], includeAllAppUsersAsMembersQuery: QueryParam[Boolean], includeAudiencesAsMembersQuery: QueryParam[Boolean], audienceOperatorQuery: QueryParam[String], approvalStatusQuery: QueryParam[String], linkedObjectTypeQuery: QueryParam[String], linkedObjectIdQuery: QueryParam[Long]): Task[SearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SearchResponse] = jsonOf[SearchResponse]

    val path = "/api/{version}/album/create".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("title", Some(titleQuery.toParamString(title))), ("assetsToAdd", Some(assetsToAddQuery.toParamString(assetsToAdd))), ("media", Some(mediaQuery.toParamString(media))), ("mediaURL", Some(mediaURLQuery.toParamString(mediaURL))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("attachedMedia", Some(attachedMediaQuery.toParamString(attachedMedia))), ("attachedMediaURL", Some(attachedMediaURLQuery.toParamString(attachedMediaURL))), ("coverAssetNullable", Some(coverAssetNullableQuery.toParamString(coverAssetNullable))), ("includeCoverInAssetList", Some(includeCoverInAssetListQuery.toParamString(includeCoverInAssetList))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tags", Some(tagsQuery.toParamString(tags))), ("description", Some(descriptionQuery.toParamString(description))), ("albumType", Some(albumTypeQuery.toParamString(albumType))), ("albumTypeId", Some(albumTypeIdQuery.toParamString(albumTypeId))), ("subType", Some(subTypeQuery.toParamString(subType))), ("publicRead", Some(publicReadQuery.toParamString(publicRead))), ("publicWrite", Some(publicWriteQuery.toParamString(publicWrite))), ("publicDelete", Some(publicDeleteQuery.toParamString(publicDelete))), ("publicAdd", Some(publicAddQuery.toParamString(publicAdd))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("gameType", Some(gameTypeQuery.toParamString(gameType))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("fullAddress", Some(fullAddressQuery.toParamString(fullAddress))), ("anonymous", Some(anonymousQuery.toParamString(anonymous))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("categoryFilterIds", Some(categoryFilterIdsQuery.toParamString(categoryFilterIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("includeAllAppUsersAsMembers", Some(includeAllAppUsersAsMembersQuery.toParamString(includeAllAppUsersAsMembers))), ("includeAudiencesAsMembers", Some(includeAudiencesAsMembersQuery.toParamString(includeAudiencesAsMembers))), ("audienceOperator", Some(audienceOperatorQuery.toParamString(audienceOperator))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))), ("linkedObjectType", Some(linkedObjectTypeQuery.toParamString(linkedObjectType))), ("linkedObjectId", Some(linkedObjectIdQuery.toParamString(linkedObjectId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SearchResponse](req)

    } yield resp
  }

  def addAlbumUsers(version: BigDecimal, albumId: Long, includeFriendGroup: Boolean, deviceId: String, accountId: Long, read: Boolean, write: Boolean, delete: Boolean, add: Boolean, connections: String, connectionGroups: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], readQuery: QueryParam[Boolean], writeQuery: QueryParam[Boolean], deleteQuery: QueryParam[Boolean], addQuery: QueryParam[Boolean], connectionsQuery: QueryParam[String], connectionGroupsQuery: QueryParam[String], includeFriendGroupQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/album/user/add".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("read", Some(readQuery.toParamString(read))), ("write", Some(writeQuery.toParamString(write))), ("delete", Some(deleteQuery.toParamString(delete))), ("add", Some(addQuery.toParamString(add))), ("connections", Some(connectionsQuery.toParamString(connections))), ("connectionGroups", Some(connectionGroupsQuery.toParamString(connectionGroups))), ("includeFriendGroup", Some(includeFriendGroupQuery.toParamString(includeFriendGroup))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def approveAlbum(version: BigDecimal, albumId: Long, deviceId: String, accountId: Long, approvalStatus: String, verified: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], approvalStatusQuery: QueryParam[String], verifiedQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/album/approve".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("approvalStatus", Some(approvalStatusQuery.toParamString(approvalStatus))), ("verified", Some(verifiedQuery.toParamString(verified))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def getAlbumCollection(version: BigDecimal, returnNulls: Boolean, albumId: Long, deviceId: String, accountId: Long, likePreviewSize: Integer, assetPreviewSize: Integer, notePreviewSize: Integer, connectionPreviewSize: Integer, audiencePreviewSize: Integer)(implicit returnNullsQuery: QueryParam[Boolean], deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], likePreviewSizeQuery: QueryParam[Integer], assetPreviewSizeQuery: QueryParam[Integer], notePreviewSizeQuery: QueryParam[Integer], connectionPreviewSizeQuery: QueryParam[Integer], audiencePreviewSizeQuery: QueryParam[Integer]): Task[AlbumFullResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumFullResponse] = jsonOf[AlbumFullResponse]

    val path = "/api/{version}/album/get".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("returnNulls", Some(returnNullsQuery.toParamString(returnNulls))), ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("likePreviewSize", Some(likePreviewSizeQuery.toParamString(likePreviewSize))), ("assetPreviewSize", Some(assetPreviewSizeQuery.toParamString(assetPreviewSize))), ("notePreviewSize", Some(notePreviewSizeQuery.toParamString(notePreviewSize))), ("connectionPreviewSize", Some(connectionPreviewSizeQuery.toParamString(connectionPreviewSize))), ("audiencePreviewSize", Some(audiencePreviewSizeQuery.toParamString(audiencePreviewSize))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumFullResponse](req)

    } yield resp
  }

  def leaveAlbum(version: BigDecimal, albumId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/album/user/leave".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeAlbum(version: BigDecimal, albumId: Long, deviceId: String, accountId: Long)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/album/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def removeAlbumUsers(version: BigDecimal, albumId: Long, removeFriendGroup: Boolean, deviceId: String, accountId: Long, connections: String, connectionGroups: String)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], connectionsQuery: QueryParam[String], connectionGroupsQuery: QueryParam[String], removeFriendGroupQuery: QueryParam[Boolean]): Task[SirqulResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]

    val path = "/api/{version}/album/user/delete".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("connections", Some(connectionsQuery.toParamString(connections))), ("connectionGroups", Some(connectionGroupsQuery.toParamString(connectionGroups))), ("removeFriendGroup", Some(removeFriendGroupQuery.toParamString(removeFriendGroup))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[SirqulResponse](req)

    } yield resp
  }

  def searchAlbums(version: BigDecimal, filter: String, albumTypeId: Long, subType: String, includeInactive: Boolean, sortField: String, descending: Boolean, start: Integer, limit: Integer, range: Double, includeLiked: Boolean, includeFavorited: Boolean, includePermissions: Boolean, likePreviewSize: Integer, assetPreviewSize: Integer, notePreviewSize: Integer, connectionPreviewSize: Integer, audiencePreviewSize: Integer, deviceId: String, accountId: Long, connectionAccountId: Long, ownerId: Long, albumIds: String, excludeAlbumIds: String, mediaId: Long, keyword: String, albumType: String, limitPerAlbumType: Integer, dateCreated: Long, updatedSince: Long, updatedBefore: Long, createdSince: Long, createdBefore: Long, startedSince: Long, startedBefore: Long, endedSince: Long, endedBefore: Long, latitude: Double, longitude: Double, appKey: String, categoryIds: String, categoryFilterIds: String, audienceIds: String, excludeAudienceIds: String, includeCompletable: Boolean, includeRating: Boolean, searchMode: String, stackSearch: Boolean, stackWindowSize: Integer, minStackPerPage: Integer, stackPaginationIdentifier: String, stackDetails: Boolean, flagCountMinimum: Long, removeFlaggedContent: Boolean = true, verifiedFilter: Boolean, linkedObjectType: String, linkedObjectId: Long, orderAudienceId: Long, ignoreDefaultAppFilter: Boolean, searchExpression: String, generateAlbums: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], connectionAccountIdQuery: QueryParam[Long], ownerIdQuery: QueryParam[Long], albumIdsQuery: QueryParam[String], excludeAlbumIdsQuery: QueryParam[String], mediaIdQuery: QueryParam[Long], keywordQuery: QueryParam[String], filterQuery: QueryParam[String], albumTypeQuery: QueryParam[String], albumTypeIdQuery: QueryParam[Long], subTypeQuery: QueryParam[String], includeInactiveQuery: QueryParam[Boolean], sortFieldQuery: QueryParam[String], descendingQuery: QueryParam[Boolean], startQuery: QueryParam[Integer], limitQuery: QueryParam[Integer], limitPerAlbumTypeQuery: QueryParam[Integer], dateCreatedQuery: QueryParam[Long], updatedSinceQuery: QueryParam[Long], updatedBeforeQuery: QueryParam[Long], createdSinceQuery: QueryParam[Long], createdBeforeQuery: QueryParam[Long], startedSinceQuery: QueryParam[Long], startedBeforeQuery: QueryParam[Long], endedSinceQuery: QueryParam[Long], endedBeforeQuery: QueryParam[Long], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], rangeQuery: QueryParam[Double], appKeyQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], categoryFilterIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], excludeAudienceIdsQuery: QueryParam[String], includeLikedQuery: QueryParam[Boolean], includeFavoritedQuery: QueryParam[Boolean], includePermissionsQuery: QueryParam[Boolean], includeCompletableQuery: QueryParam[Boolean], includeRatingQuery: QueryParam[Boolean], likePreviewSizeQuery: QueryParam[Integer], assetPreviewSizeQuery: QueryParam[Integer], notePreviewSizeQuery: QueryParam[Integer], connectionPreviewSizeQuery: QueryParam[Integer], audiencePreviewSizeQuery: QueryParam[Integer], searchModeQuery: QueryParam[String], stackSearchQuery: QueryParam[Boolean], stackWindowSizeQuery: QueryParam[Integer], minStackPerPageQuery: QueryParam[Integer], stackPaginationIdentifierQuery: QueryParam[String], stackDetailsQuery: QueryParam[Boolean], flagCountMinimumQuery: QueryParam[Long], removeFlaggedContentQuery: QueryParam[Boolean], verifiedFilterQuery: QueryParam[Boolean], linkedObjectTypeQuery: QueryParam[String], linkedObjectIdQuery: QueryParam[Long], orderAudienceIdQuery: QueryParam[Long], ignoreDefaultAppFilterQuery: QueryParam[Boolean], searchExpressionQuery: QueryParam[String], generateAlbumsQuery: QueryParam[Boolean]): Task[List[AlbumFullResponse]] = {
    implicit val returnTypeDecoder: EntityDecoder[List[AlbumFullResponse]] = jsonOf[List[AlbumFullResponse]]

    val path = "/api/{version}/album/search".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("connectionAccountId", Some(connectionAccountIdQuery.toParamString(connectionAccountId))), ("ownerId", Some(ownerIdQuery.toParamString(ownerId))), ("albumIds", Some(albumIdsQuery.toParamString(albumIds))), ("excludeAlbumIds", Some(excludeAlbumIdsQuery.toParamString(excludeAlbumIds))), ("mediaId", Some(mediaIdQuery.toParamString(mediaId))), ("keyword", Some(keywordQuery.toParamString(keyword))), ("filter", Some(filterQuery.toParamString(filter))), ("albumType", Some(albumTypeQuery.toParamString(albumType))), ("albumTypeId", Some(albumTypeIdQuery.toParamString(albumTypeId))), ("subType", Some(subTypeQuery.toParamString(subType))), ("includeInactive", Some(includeInactiveQuery.toParamString(includeInactive))), ("sortField", Some(sortFieldQuery.toParamString(sortField))), ("descending", Some(descendingQuery.toParamString(descending))), ("start", Some(startQuery.toParamString(start))), ("limit", Some(limitQuery.toParamString(limit))), ("limitPerAlbumType", Some(limitPerAlbumTypeQuery.toParamString(limitPerAlbumType))), ("dateCreated", Some(dateCreatedQuery.toParamString(dateCreated))), ("updatedSince", Some(updatedSinceQuery.toParamString(updatedSince))), ("updatedBefore", Some(updatedBeforeQuery.toParamString(updatedBefore))), ("createdSince", Some(createdSinceQuery.toParamString(createdSince))), ("createdBefore", Some(createdBeforeQuery.toParamString(createdBefore))), ("startedSince", Some(startedSinceQuery.toParamString(startedSince))), ("startedBefore", Some(startedBeforeQuery.toParamString(startedBefore))), ("endedSince", Some(endedSinceQuery.toParamString(endedSince))), ("endedBefore", Some(endedBeforeQuery.toParamString(endedBefore))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("range", Some(rangeQuery.toParamString(range))), ("appKey", Some(appKeyQuery.toParamString(appKey))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("categoryFilterIds", Some(categoryFilterIdsQuery.toParamString(categoryFilterIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("excludeAudienceIds", Some(excludeAudienceIdsQuery.toParamString(excludeAudienceIds))), ("includeLiked", Some(includeLikedQuery.toParamString(includeLiked))), ("includeFavorited", Some(includeFavoritedQuery.toParamString(includeFavorited))), ("includePermissions", Some(includePermissionsQuery.toParamString(includePermissions))), ("includeCompletable", Some(includeCompletableQuery.toParamString(includeCompletable))), ("includeRating", Some(includeRatingQuery.toParamString(includeRating))), ("likePreviewSize", Some(likePreviewSizeQuery.toParamString(likePreviewSize))), ("assetPreviewSize", Some(assetPreviewSizeQuery.toParamString(assetPreviewSize))), ("notePreviewSize", Some(notePreviewSizeQuery.toParamString(notePreviewSize))), ("connectionPreviewSize", Some(connectionPreviewSizeQuery.toParamString(connectionPreviewSize))), ("audiencePreviewSize", Some(audiencePreviewSizeQuery.toParamString(audiencePreviewSize))), ("searchMode", Some(searchModeQuery.toParamString(searchMode))), ("stackSearch", Some(stackSearchQuery.toParamString(stackSearch))), ("stackWindowSize", Some(stackWindowSizeQuery.toParamString(stackWindowSize))), ("minStackPerPage", Some(minStackPerPageQuery.toParamString(minStackPerPage))), ("stackPaginationIdentifier", Some(stackPaginationIdentifierQuery.toParamString(stackPaginationIdentifier))), ("stackDetails", Some(stackDetailsQuery.toParamString(stackDetails))), ("flagCountMinimum", Some(flagCountMinimumQuery.toParamString(flagCountMinimum))), ("removeFlaggedContent", Some(removeFlaggedContentQuery.toParamString(removeFlaggedContent))), ("verifiedFilter", Some(verifiedFilterQuery.toParamString(verifiedFilter))), ("linkedObjectType", Some(linkedObjectTypeQuery.toParamString(linkedObjectType))), ("linkedObjectId", Some(linkedObjectIdQuery.toParamString(linkedObjectId))), ("orderAudienceId", Some(orderAudienceIdQuery.toParamString(orderAudienceId))), ("ignoreDefaultAppFilter", Some(ignoreDefaultAppFilterQuery.toParamString(ignoreDefaultAppFilter))), ("searchExpression", Some(searchExpressionQuery.toParamString(searchExpression))), ("generateAlbums", Some(generateAlbumsQuery.toParamString(generateAlbums))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[List[AlbumFullResponse]](req)

    } yield resp
  }

  def updateAlbumCollection(version: BigDecimal, albumId: Long, deviceId: String, accountId: Long, assetsToAdd: String, assetsToRemove: String, assetId: Long, media: File, mediaURL: String, active: Boolean, title: String, startDate: Long, endDate: Long, tags: String, description: String, albumType: String, albumTypeId: Long, subType: String, publicRead: Boolean, publicWrite: Boolean, publicDelete: Boolean, publicAdd: Boolean, latitude: Double, longitude: Double, locationDescription: String, visibility: String, cellPhone: String, streetAddress: String, streetAddress2: String, city: String, state: String, postalCode: String, fullAddress: String, anonymous: Boolean, metaData: String, categoryIds: String, categoryFilterIds: String, audienceIds: String, audienceIdsToAdd: String, audienceIdsToRemove: String, includeAllAppUsersAsMembers: Boolean, includeAudiencesAsMembers: Boolean, audienceOperator: String, linkedObjectType: String, linkedObjectId: Long, indexNow: Boolean)(implicit deviceIdQuery: QueryParam[String], accountIdQuery: QueryParam[Long], albumIdQuery: QueryParam[Long], assetsToAddQuery: QueryParam[String], assetsToRemoveQuery: QueryParam[String], assetIdQuery: QueryParam[Long], mediaQuery: QueryParam[File], mediaURLQuery: QueryParam[String], activeQuery: QueryParam[Boolean], titleQuery: QueryParam[String], startDateQuery: QueryParam[Long], endDateQuery: QueryParam[Long], tagsQuery: QueryParam[String], descriptionQuery: QueryParam[String], albumTypeQuery: QueryParam[String], albumTypeIdQuery: QueryParam[Long], subTypeQuery: QueryParam[String], publicReadQuery: QueryParam[Boolean], publicWriteQuery: QueryParam[Boolean], publicDeleteQuery: QueryParam[Boolean], publicAddQuery: QueryParam[Boolean], latitudeQuery: QueryParam[Double], longitudeQuery: QueryParam[Double], locationDescriptionQuery: QueryParam[String], visibilityQuery: QueryParam[String], cellPhoneQuery: QueryParam[String], streetAddressQuery: QueryParam[String], streetAddress2Query: QueryParam[String], cityQuery: QueryParam[String], stateQuery: QueryParam[String], postalCodeQuery: QueryParam[String], fullAddressQuery: QueryParam[String], anonymousQuery: QueryParam[Boolean], metaDataQuery: QueryParam[String], categoryIdsQuery: QueryParam[String], categoryFilterIdsQuery: QueryParam[String], audienceIdsQuery: QueryParam[String], audienceIdsToAddQuery: QueryParam[String], audienceIdsToRemoveQuery: QueryParam[String], includeAllAppUsersAsMembersQuery: QueryParam[Boolean], includeAudiencesAsMembersQuery: QueryParam[Boolean], audienceOperatorQuery: QueryParam[String], linkedObjectTypeQuery: QueryParam[String], linkedObjectIdQuery: QueryParam[Long], indexNowQuery: QueryParam[Boolean]): Task[AlbumResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[AlbumResponse] = jsonOf[AlbumResponse]

    val path = "/api/{version}/album/update".replaceAll("\\{" + "version" + "\\}",escape(version.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("deviceId", Some(deviceIdQuery.toParamString(deviceId))), ("accountId", Some(accountIdQuery.toParamString(accountId))), ("albumId", Some(albumIdQuery.toParamString(albumId))), ("assetsToAdd", Some(assetsToAddQuery.toParamString(assetsToAdd))), ("assetsToRemove", Some(assetsToRemoveQuery.toParamString(assetsToRemove))), ("assetId", Some(assetIdQuery.toParamString(assetId))), ("media", Some(mediaQuery.toParamString(media))), ("mediaURL", Some(mediaURLQuery.toParamString(mediaURL))), ("active", Some(activeQuery.toParamString(active))), ("title", Some(titleQuery.toParamString(title))), ("startDate", Some(startDateQuery.toParamString(startDate))), ("endDate", Some(endDateQuery.toParamString(endDate))), ("tags", Some(tagsQuery.toParamString(tags))), ("description", Some(descriptionQuery.toParamString(description))), ("albumType", Some(albumTypeQuery.toParamString(albumType))), ("albumTypeId", Some(albumTypeIdQuery.toParamString(albumTypeId))), ("subType", Some(subTypeQuery.toParamString(subType))), ("publicRead", Some(publicReadQuery.toParamString(publicRead))), ("publicWrite", Some(publicWriteQuery.toParamString(publicWrite))), ("publicDelete", Some(publicDeleteQuery.toParamString(publicDelete))), ("publicAdd", Some(publicAddQuery.toParamString(publicAdd))), ("latitude", Some(latitudeQuery.toParamString(latitude))), ("longitude", Some(longitudeQuery.toParamString(longitude))), ("locationDescription", Some(locationDescriptionQuery.toParamString(locationDescription))), ("visibility", Some(visibilityQuery.toParamString(visibility))), ("cellPhone", Some(cellPhoneQuery.toParamString(cellPhone))), ("streetAddress", Some(streetAddressQuery.toParamString(streetAddress))), ("streetAddress2", Some(streetAddress2Query.toParamString(streetAddress2))), ("city", Some(cityQuery.toParamString(city))), ("state", Some(stateQuery.toParamString(state))), ("postalCode", Some(postalCodeQuery.toParamString(postalCode))), ("fullAddress", Some(fullAddressQuery.toParamString(fullAddress))), ("anonymous", Some(anonymousQuery.toParamString(anonymous))), ("metaData", Some(metaDataQuery.toParamString(metaData))), ("categoryIds", Some(categoryIdsQuery.toParamString(categoryIds))), ("categoryFilterIds", Some(categoryFilterIdsQuery.toParamString(categoryFilterIds))), ("audienceIds", Some(audienceIdsQuery.toParamString(audienceIds))), ("audienceIdsToAdd", Some(audienceIdsToAddQuery.toParamString(audienceIdsToAdd))), ("audienceIdsToRemove", Some(audienceIdsToRemoveQuery.toParamString(audienceIdsToRemove))), ("includeAllAppUsersAsMembers", Some(includeAllAppUsersAsMembersQuery.toParamString(includeAllAppUsersAsMembers))), ("includeAudiencesAsMembers", Some(includeAudiencesAsMembersQuery.toParamString(includeAudiencesAsMembers))), ("audienceOperator", Some(audienceOperatorQuery.toParamString(audienceOperator))), ("linkedObjectType", Some(linkedObjectTypeQuery.toParamString(linkedObjectType))), ("linkedObjectId", Some(linkedObjectIdQuery.toParamString(linkedObjectId))), ("indexNow", Some(indexNowQuery.toParamString(indexNow))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[AlbumResponse](req)

    } yield resp
  }

}
