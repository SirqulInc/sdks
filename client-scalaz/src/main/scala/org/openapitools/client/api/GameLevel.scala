package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import GameLevel._

case class GameLevel (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
newOwnerId: Option[Long],
gameDifficulty: Option[GameDifficulty],
name: Option[String],
image: Option[Asset],
icon: Option[Asset],
description: Option[String],
startDate: Option[OffsetDateTime],
endDate: Option[OffsetDateTime],
randomizeGameObjects: Option[Boolean],
owner: Option[Account],
version: Option[AppVersion],
notes: Option[List[Note]],
noteCount: Option[Long],
likes: Option[List[YayOrNay]],
likeCount: Option[Long],
dislikeCount: Option[Long],
playCount: Option[Long],
downloadCount: Option[Long],
gameObjectCount: Option[Integer],
publicPermissions: Option[Permissions],
visibility: Option[Visibility],
userPermissions: Option[List[UserPermissions]],
flags: Option[List[Flag]],
flagCount: Option[Long],
flagThreshold: Option[FlagThreshold],
application: Option[Application],
assignMission: Option[Boolean],
authorOverride: Option[String],
splashTitle: Option[String],
splashMessage: Option[String],
winnerMessage: Option[String],
tutorial: Option[Tutorial],
approvalStatus: Option[ApprovalStatus],
nextLevel: Option[GameLevel],
offer: Option[Offer],
balance: Option[Double],
levelNumber: Option[Integer],
points: Option[Long],
ticketType: Option[String],
ticketCount: Option[Long],
allocateTickets: Option[Boolean],
applicationTitle: Option[String],
ownerUsername: Option[String],
likableNotificationModels: Option[List[Map[String, Any]]],
notableNotificationModels: Option[List[Map[String, Any]]],
published: Option[Boolean],
contentName: Option[String],
defaultThreshold: Option[Long],
contentAsset: Option[Asset],
`contentType`: Option[String])

object GameLevel {
  import DateTimeCodecs._
  sealed trait GameDifficulty
  case object VERYEASY extends GameDifficulty
  case object EASY extends GameDifficulty
  case object MEDIUM extends GameDifficulty
  case object HARD extends GameDifficulty
  case object VERYHARD extends GameDifficulty

  object GameDifficulty {
    def toGameDifficulty(s: String): Option[GameDifficulty] = s match {
      case "VERYEASY" => Some(VERYEASY)
      case "EASY" => Some(EASY)
      case "MEDIUM" => Some(MEDIUM)
      case "HARD" => Some(HARD)
      case "VERYHARD" => Some(VERYHARD)
      case _ => None
    }

    def fromGameDifficulty(x: GameDifficulty): String = x match {
      case VERYEASY => "VERYEASY"
      case EASY => "EASY"
      case MEDIUM => "MEDIUM"
      case HARD => "HARD"
      case VERYHARD => "VERYHARD"
    }
  }

  implicit val GameDifficultyEnumEncoder: EncodeJson[GameDifficulty] =
    EncodeJson[GameDifficulty](is => StringEncodeJson(GameDifficulty.fromGameDifficulty(is)))

  implicit val GameDifficultyEnumDecoder: DecodeJson[GameDifficulty] =
    DecodeJson.optionDecoder[GameDifficulty](n => n.string.flatMap(jStr => GameDifficulty.toGameDifficulty(jStr)), "GameDifficulty failed to de-serialize")
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

  implicit val GameLevelCodecJson: CodecJson[GameLevel] = CodecJson.derive[GameLevel]
  implicit val GameLevelDecoder: EntityDecoder[GameLevel] = jsonOf[GameLevel]
  implicit val GameLevelEncoder: EntityEncoder[GameLevel] = jsonEncoderOf[GameLevel]
}
