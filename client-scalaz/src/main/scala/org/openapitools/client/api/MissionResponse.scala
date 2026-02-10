package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MissionResponse._

case class MissionResponse (
  action: Option[Action],
highestAppVersion: Option[String],
missionId: Option[Long],
ticketsEarned: Option[Long],
costToPlay: Option[Integer],
costToPlayType: Option[String],
owner: Option[AccountShortResponse],
title: Option[String],
description: Option[String],
authorOverride: Option[String],
icon: Option[AssetShortResponse],
image: Option[AssetShortResponse],
sequenceType: Option[String],
updatedDate: Option[Long],
startDate: Option[Long],
endDate: Option[Long],
missionType: Option[String],
active: Option[Boolean],
balance: Option[Double],
availableLimit: Option[Integer],
inviteCount: Option[Integer],
acceptedCount: Option[Integer],
childCount: Option[Long],
enableBuyBack: Option[Boolean],
minimumToPlay: Option[Integer],
rewarded: Option[Boolean],
refunded: Option[Boolean],
joinCode: Option[String],
rewards: Option[List[RewardResponse]],
games: Option[GameListResponse],
scores: Option[ScoreListResponse],
userPermissionsList: Option[UserPermissionsListResponse],
results: Option[List[NameStringValueResponse]],
inviteStatus: Option[InviteStatus],
audiences: Option[List[AudienceResponse]],
missionInviteId: Option[Long],
missionInvite: Option[MissionInviteResponse],
invitee: Option[AccountShortResponse],
formatType: Option[String],
creatives: Option[List[CreativeResponse]],
fixedReward: Option[Boolean],
allocateTickets: Option[Boolean],
ticketType: Option[String],
ticketCount: Option[Long],
points: Option[Long],
splitReward: Option[String],
secondsBetweenLevels: Option[Integer],
secondsBetweenPacks: Option[Integer],
advancedReporting: Option[Boolean])

object MissionResponse {
  import DateTimeCodecs._
  sealed trait Action
  case object DATA extends Action
  case object SAVE extends Action
  case object DELETE extends Action
  case object GET extends Action

  object Action {
    def toAction(s: String): Option[Action] = s match {
      case "DATA" => Some(DATA)
      case "SAVE" => Some(SAVE)
      case "DELETE" => Some(DELETE)
      case "GET" => Some(GET)
      case _ => None
    }

    def fromAction(x: Action): String = x match {
      case DATA => "DATA"
      case SAVE => "SAVE"
      case DELETE => "DELETE"
      case GET => "GET"
    }
  }

  implicit val ActionEnumEncoder: EncodeJson[Action] =
    EncodeJson[Action](is => StringEncodeJson(Action.fromAction(is)))

  implicit val ActionEnumDecoder: DecodeJson[Action] =
    DecodeJson.optionDecoder[Action](n => n.string.flatMap(jStr => Action.toAction(jStr)), "Action failed to de-serialize")
  sealed trait InviteStatus
  case object AVAILABLE extends InviteStatus
  case object PENDING extends InviteStatus
  case object UPDATED extends InviteStatus
  case object ACCEPTED extends InviteStatus
  case object ACTIVE extends InviteStatus
  case object BUYBACK extends InviteStatus
  case object FAILED extends InviteStatus
  case object QUIT extends InviteStatus
  case object COMPLETED extends InviteStatus
  case object PENDINGREVIEW extends InviteStatus
  case object REJECTED extends InviteStatus

  object InviteStatus {
    def toInviteStatus(s: String): Option[InviteStatus] = s match {
      case "AVAILABLE" => Some(AVAILABLE)
      case "PENDING" => Some(PENDING)
      case "UPDATED" => Some(UPDATED)
      case "ACCEPTED" => Some(ACCEPTED)
      case "ACTIVE" => Some(ACTIVE)
      case "BUYBACK" => Some(BUYBACK)
      case "FAILED" => Some(FAILED)
      case "QUIT" => Some(QUIT)
      case "COMPLETED" => Some(COMPLETED)
      case "PENDINGREVIEW" => Some(PENDINGREVIEW)
      case "REJECTED" => Some(REJECTED)
      case _ => None
    }

    def fromInviteStatus(x: InviteStatus): String = x match {
      case AVAILABLE => "AVAILABLE"
      case PENDING => "PENDING"
      case UPDATED => "UPDATED"
      case ACCEPTED => "ACCEPTED"
      case ACTIVE => "ACTIVE"
      case BUYBACK => "BUYBACK"
      case FAILED => "FAILED"
      case QUIT => "QUIT"
      case COMPLETED => "COMPLETED"
      case PENDINGREVIEW => "PENDINGREVIEW"
      case REJECTED => "REJECTED"
    }
  }

  implicit val InviteStatusEnumEncoder: EncodeJson[InviteStatus] =
    EncodeJson[InviteStatus](is => StringEncodeJson(InviteStatus.fromInviteStatus(is)))

  implicit val InviteStatusEnumDecoder: DecodeJson[InviteStatus] =
    DecodeJson.optionDecoder[InviteStatus](n => n.string.flatMap(jStr => InviteStatus.toInviteStatus(jStr)), "InviteStatus failed to de-serialize")

  implicit val MissionResponseCodecJson: CodecJson[MissionResponse] = CodecJson.derive[MissionResponse]
  implicit val MissionResponseDecoder: EntityDecoder[MissionResponse] = jsonOf[MissionResponse]
  implicit val MissionResponseEncoder: EntityEncoder[MissionResponse] = jsonEncoderOf[MissionResponse]
}
