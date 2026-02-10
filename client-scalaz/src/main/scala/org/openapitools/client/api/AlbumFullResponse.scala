package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AlbumFullResponse._

case class AlbumFullResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
albumId: Option[Long],
albumType: Option[String],
ownerId: Option[Long],
owner: Option[AccountShortResponse],
title: Option[String],
description: Option[String],
coverAsset: Option[AssetResponse],
tags: Option[String],
visibility: Option[Visibility],
startDate: Option[Long],
endDate: Option[Long],
assetCount: Option[Integer],
likeCount: Option[Long],
dislikeCount: Option[Long],
commentsCount: Option[Long],
userCount: Option[Integer],
notifications: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
distance: Option[Double],
dateCreated: Option[Long],
dateUpdated: Option[Long],
cellPhone: Option[String],
fullAddress: Option[String],
approvalStatus: Option[ApprovalStatus],
favoriteCount: Option[Long],
liked: Option[Boolean],
favorite: Option[Boolean],
favoriteId: Option[Long],
anonymous: Option[Boolean],
flagCount: Option[Long],
viewedCount: Option[Long],
clickedCount: Option[Long],
sharedCount: Option[Long],
assets: Option[List[AssetResponse]],
comments: Option[List[NoteFullResponse]],
likes: Option[List[LikeResponse]],
connectionGroups: Option[List[ConnectionGroupShortResponse]],
connections: Option[List[ConnectionResponse]],
hasLiked: Option[Boolean],
hasDisliked: Option[Boolean],
userPermissions: Option[Permissions],
publicPermissions: Option[Permissions],
returning: Option[String])

object AlbumFullResponse {
  import DateTimeCodecs._
  sealed trait Visibility
  case object PUBLIC extends Visibility
  case object `PRIVATE` extends Visibility
  case object FRIENDS extends Visibility

  object Visibility {
    def toVisibility(s: String): Option[Visibility] = s match {
      case "PUBLIC" => Some(PUBLIC)
      case "`PRIVATE`" => Some(`PRIVATE`)
      case "FRIENDS" => Some(FRIENDS)
      case _ => None
    }

    def fromVisibility(x: Visibility): String = x match {
      case PUBLIC => "PUBLIC"
      case `PRIVATE` => "`PRIVATE`"
      case FRIENDS => "FRIENDS"
    }
  }

  implicit val VisibilityEnumEncoder: EncodeJson[Visibility] =
    EncodeJson[Visibility](is => StringEncodeJson(Visibility.fromVisibility(is)))

  implicit val VisibilityEnumDecoder: DecodeJson[Visibility] =
    DecodeJson.optionDecoder[Visibility](n => n.string.flatMap(jStr => Visibility.toVisibility(jStr)), "Visibility failed to de-serialize")
  sealed trait ApprovalStatus
  case object PENDING extends ApprovalStatus
  case object REJECTED extends ApprovalStatus
  case object APPROVED extends ApprovalStatus
  case object FEATURED extends ApprovalStatus

  object ApprovalStatus {
    def toApprovalStatus(s: String): Option[ApprovalStatus] = s match {
      case "PENDING" => Some(PENDING)
      case "REJECTED" => Some(REJECTED)
      case "APPROVED" => Some(APPROVED)
      case "FEATURED" => Some(FEATURED)
      case _ => None
    }

    def fromApprovalStatus(x: ApprovalStatus): String = x match {
      case PENDING => "PENDING"
      case REJECTED => "REJECTED"
      case APPROVED => "APPROVED"
      case FEATURED => "FEATURED"
    }
  }

  implicit val ApprovalStatusEnumEncoder: EncodeJson[ApprovalStatus] =
    EncodeJson[ApprovalStatus](is => StringEncodeJson(ApprovalStatus.fromApprovalStatus(is)))

  implicit val ApprovalStatusEnumDecoder: DecodeJson[ApprovalStatus] =
    DecodeJson.optionDecoder[ApprovalStatus](n => n.string.flatMap(jStr => ApprovalStatus.toApprovalStatus(jStr)), "ApprovalStatus failed to de-serialize")

  implicit val AlbumFullResponseCodecJson: CodecJson[AlbumFullResponse] = CodecJson.derive[AlbumFullResponse]
  implicit val AlbumFullResponseDecoder: EntityDecoder[AlbumFullResponse] = jsonOf[AlbumFullResponse]
  implicit val AlbumFullResponseEncoder: EntityEncoder[AlbumFullResponse] = jsonEncoderOf[AlbumFullResponse]
}
