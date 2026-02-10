package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AlbumContestResponse._

case class AlbumContestResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
albumContestId: Option[Long],
contestType: Option[String],
owner: Option[AccountShortResponse],
title: Option[String],
description: Option[String],
visibility: Option[Visibility],
startDate: Option[Long],
endDate: Option[Long],
likeCount: Option[Long],
dislikeCount: Option[Long],
commentsCount: Option[Integer],
userCount: Option[Integer],
comments: Option[List[NoteFullResponse]],
likes: Option[List[LikeResponse]],
connectionGroups: Option[List[ConnectionGroupShortResponse]],
connections: Option[List[ConnectionResponse]],
hasLiked: Option[Boolean],
userPermissions: Option[Permissions],
publicPermissions: Option[Permissions],
album1: Option[AlbumFullResponse],
album2: Option[AlbumFullResponse],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
distance: Option[Double],
dateCreated: Option[Long],
dateUpdated: Option[Long],
approvalStatus: Option[ApprovalStatus],
voteCount: Option[Long],
returning: Option[String])

object AlbumContestResponse {
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

  implicit val AlbumContestResponseCodecJson: CodecJson[AlbumContestResponse] = CodecJson.derive[AlbumContestResponse]
  implicit val AlbumContestResponseDecoder: EntityDecoder[AlbumContestResponse] = jsonOf[AlbumContestResponse]
  implicit val AlbumContestResponseEncoder: EntityEncoder[AlbumContestResponse] = jsonEncoderOf[AlbumContestResponse]
}
