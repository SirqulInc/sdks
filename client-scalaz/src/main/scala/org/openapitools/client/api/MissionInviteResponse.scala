package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MissionInviteResponse._

case class MissionInviteResponse (
  id: Option[Long],
status: Option[Status],
title: Option[String],
description: Option[String],
owner: Option[AccountShortResponse],
permissionableId: Option[Long],
permissionableType: Option[String],
ranked: Option[Boolean],
rewarded: Option[Boolean],
startDate: Option[Long],
endDate: Option[Long],
updated: Option[Long],
buyBackAvailable: Option[Boolean],
inviteStatus: Option[InviteStatus])

object MissionInviteResponse {
  import DateTimeCodecs._
  sealed trait Status
  case object AVAILABLE extends Status
  case object PENDING extends Status
  case object UPDATED extends Status
  case object ACCEPTED extends Status
  case object ACTIVE extends Status
  case object BUYBACK extends Status
  case object FAILED extends Status
  case object QUIT extends Status
  case object COMPLETED extends Status
  case object PENDINGREVIEW extends Status
  case object REJECTED extends Status

  object Status {
    def toStatus(s: String): Option[Status] = s match {
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

    def fromStatus(x: Status): String = x match {
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

  implicit val StatusEnumEncoder: EncodeJson[Status] =
    EncodeJson[Status](is => StringEncodeJson(Status.fromStatus(is)))

  implicit val StatusEnumDecoder: DecodeJson[Status] =
    DecodeJson.optionDecoder[Status](n => n.string.flatMap(jStr => Status.toStatus(jStr)), "Status failed to de-serialize")
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

  implicit val MissionInviteResponseCodecJson: CodecJson[MissionInviteResponse] = CodecJson.derive[MissionInviteResponse]
  implicit val MissionInviteResponseDecoder: EntityDecoder[MissionInviteResponse] = jsonOf[MissionInviteResponse]
  implicit val MissionInviteResponseEncoder: EntityEncoder[MissionInviteResponse] = jsonEncoderOf[MissionInviteResponse]
}
