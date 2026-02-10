package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Mission._

case class Mission (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
owner: Option[Account],
missionType: Option[MissionType],
title: Option[String],
description: Option[String],
costToPlay: Option[Integer],
costToPlayType: Option[String],
games: Option[List[Game]],
audiences: Option[List[Audience]],
startDate: Option[OffsetDateTime],
endDate: Option[OffsetDateTime],
sequenceType: Option[SequenceType],
authorOverride: Option[String],
icon: Option[Asset],
image: Option[Asset],
offers: Option[List[Offer]],
visibility: Option[Visibility],
task: Option[MissionTask],
points: Option[Long],
ticketType: Option[String],
ticketCount: Option[Long],
allocateTickets: Option[Boolean],
billableEntity: Option[BillableEntity],
balance: Option[Double],
startingLimit: Option[Integer],
availableLimit: Option[Integer],
inviteCount: Option[Integer],
acceptedCount: Option[Integer],
inviteStatus: Option[InviteStatus],
childCount: Option[Long],
secondsBetweenLevels: Option[Integer],
secondsBetweenPacks: Option[Integer],
maximumLevelLength: Option[Integer],
enableBuyBack: Option[Boolean],
activePack: Option[Pack],
minimumToPlay: Option[Integer],
fixedReward: Option[Boolean],
refunded: Option[Boolean],
notificationsCreated: Option[Boolean],
rewarded: Option[Boolean],
externalId: Option[Long],
advancedReporting: Option[Boolean],
splitReward: Option[SplitReward],
joinCode: Option[String],
firstPack: Option[Pack],
allGameLevels: Option[List[GameLevel]],
allPacks: Option[List[Pack]])

object Mission {
  import DateTimeCodecs._
  sealed trait MissionType
  case object PUBLIC extends MissionType
  case object SHARED extends MissionType
  case object TOURNAMENT extends MissionType
  case object POOLPLAY extends MissionType

  object MissionType {
    def toMissionType(s: String): Option[MissionType] = s match {
      case "PUBLIC" => Some(PUBLIC)
      case "SHARED" => Some(SHARED)
      case "TOURNAMENT" => Some(TOURNAMENT)
      case "POOLPLAY" => Some(POOLPLAY)
      case _ => None
    }

    def fromMissionType(x: MissionType): String = x match {
      case PUBLIC => "PUBLIC"
      case SHARED => "SHARED"
      case TOURNAMENT => "TOURNAMENT"
      case POOLPLAY => "POOLPLAY"
    }
  }

  implicit val MissionTypeEnumEncoder: EncodeJson[MissionType] =
    EncodeJson[MissionType](is => StringEncodeJson(MissionType.fromMissionType(is)))

  implicit val MissionTypeEnumDecoder: DecodeJson[MissionType] =
    DecodeJson.optionDecoder[MissionType](n => n.string.flatMap(jStr => MissionType.toMissionType(jStr)), "MissionType failed to de-serialize")
  sealed trait SequenceType
  case object FIRSTAVAILABLE extends SequenceType
  case object ALLAVAILABLE extends SequenceType

  object SequenceType {
    def toSequenceType(s: String): Option[SequenceType] = s match {
      case "FIRSTAVAILABLE" => Some(FIRSTAVAILABLE)
      case "ALLAVAILABLE" => Some(ALLAVAILABLE)
      case _ => None
    }

    def fromSequenceType(x: SequenceType): String = x match {
      case FIRSTAVAILABLE => "FIRSTAVAILABLE"
      case ALLAVAILABLE => "ALLAVAILABLE"
    }
  }

  implicit val SequenceTypeEnumEncoder: EncodeJson[SequenceType] =
    EncodeJson[SequenceType](is => StringEncodeJson(SequenceType.fromSequenceType(is)))

  implicit val SequenceTypeEnumDecoder: DecodeJson[SequenceType] =
    DecodeJson.optionDecoder[SequenceType](n => n.string.flatMap(jStr => SequenceType.toSequenceType(jStr)), "SequenceType failed to de-serialize")
  sealed trait Visibility
  case object PUBLIC extends Visibility
  case object LISTABLE extends Visibility
  case object REWARDABLE extends Visibility
  case object TRIGGERABLE extends Visibility
  case object `PRIVATE` extends Visibility

  object Visibility {
    def toVisibility(s: String): Option[Visibility] = s match {
      case "PUBLIC" => Some(PUBLIC)
      case "LISTABLE" => Some(LISTABLE)
      case "REWARDABLE" => Some(REWARDABLE)
      case "TRIGGERABLE" => Some(TRIGGERABLE)
      case "`PRIVATE`" => Some(`PRIVATE`)
      case _ => None
    }

    def fromVisibility(x: Visibility): String = x match {
      case PUBLIC => "PUBLIC"
      case LISTABLE => "LISTABLE"
      case REWARDABLE => "REWARDABLE"
      case TRIGGERABLE => "TRIGGERABLE"
      case `PRIVATE` => "`PRIVATE`"
    }
  }

  implicit val VisibilityEnumEncoder: EncodeJson[Visibility] =
    EncodeJson[Visibility](is => StringEncodeJson(Visibility.fromVisibility(is)))

  implicit val VisibilityEnumDecoder: DecodeJson[Visibility] =
    DecodeJson.optionDecoder[Visibility](n => n.string.flatMap(jStr => Visibility.toVisibility(jStr)), "Visibility failed to de-serialize")
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
  sealed trait SplitReward
  case object EVEN extends SplitReward
  case object ALL extends SplitReward
  case object FIRST extends SplitReward
  case object RANDOM extends SplitReward

  object SplitReward {
    def toSplitReward(s: String): Option[SplitReward] = s match {
      case "EVEN" => Some(EVEN)
      case "ALL" => Some(ALL)
      case "FIRST" => Some(FIRST)
      case "RANDOM" => Some(RANDOM)
      case _ => None
    }

    def fromSplitReward(x: SplitReward): String = x match {
      case EVEN => "EVEN"
      case ALL => "ALL"
      case FIRST => "FIRST"
      case RANDOM => "RANDOM"
    }
  }

  implicit val SplitRewardEnumEncoder: EncodeJson[SplitReward] =
    EncodeJson[SplitReward](is => StringEncodeJson(SplitReward.fromSplitReward(is)))

  implicit val SplitRewardEnumDecoder: DecodeJson[SplitReward] =
    DecodeJson.optionDecoder[SplitReward](n => n.string.flatMap(jStr => SplitReward.toSplitReward(jStr)), "SplitReward failed to de-serialize")

  implicit val MissionCodecJson: CodecJson[Mission] = CodecJson.derive[Mission]
  implicit val MissionDecoder: EntityDecoder[Mission] = jsonOf[Mission]
  implicit val MissionEncoder: EntityEncoder[Mission] = jsonEncoderOf[Mission]
}
