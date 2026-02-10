package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Album._

case class Album (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
owner: Option[Account],
title: Option[String],
application: Option[Application],
approvalStatus: Option[ApprovalStatus],
publicPermissions: Option[Permissions],
userPermissions: Option[List[UserPermissions]],
visibility: Option[Visibility],
notes: Option[List[Note]],
noteCount: Option[Long],
likes: Option[List[YayOrNay]],
likeCount: Option[Long],
dislikeCount: Option[Long],
flags: Option[List[Flag]],
flagCount: Option[Long],
flagThreshold: Option[FlagThreshold],
description: Option[String],
albumType: Option[String],
assets: Option[List[Asset]],
coverAsset: Option[Asset],
tags: Option[String],
startDate: Option[OffsetDateTime],
endDate: Option[OffsetDateTime],
contactInfo: Option[ContactInfo],
assetCount: Option[Long],
favoriteCount: Option[Long],
viewedCount: Option[Long],
clickedCount: Option[Long],
sharedCount: Option[Long],
anonymous: Option[Boolean],
ownerUsername: Option[String],
display: Option[String],
appKey: Option[String],
billableId: Option[Long],
subType: Option[String],
contentAsset: Option[Asset],
secondaryType: Option[String],
contentName: Option[String],
applicationTitle: Option[String],
shortTitle: Option[String],
defaultThreshold: Option[Long])

object Album {
  import DateTimeCodecs._
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

  implicit val AlbumCodecJson: CodecJson[Album] = CodecJson.derive[Album]
  implicit val AlbumDecoder: EntityDecoder[Album] = jsonOf[Album]
  implicit val AlbumEncoder: EntityEncoder[Album] = jsonEncoderOf[Album]
}
