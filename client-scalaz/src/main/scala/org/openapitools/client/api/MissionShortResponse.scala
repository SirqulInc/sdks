package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MissionShortResponse._

case class MissionShortResponse (
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
joinCode: Option[String])

object MissionShortResponse {
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

  implicit val MissionShortResponseCodecJson: CodecJson[MissionShortResponse] = CodecJson.derive[MissionShortResponse]
  implicit val MissionShortResponseDecoder: EntityDecoder[MissionShortResponse] = jsonOf[MissionShortResponse]
  implicit val MissionShortResponseEncoder: EntityEncoder[MissionShortResponse] = jsonEncoderOf[MissionShortResponse]
}
