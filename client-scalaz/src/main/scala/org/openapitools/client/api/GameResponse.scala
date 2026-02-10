package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GameResponse._

case class GameResponse (
  action: Option[Action],
highestAppVersion: Option[String],
gameId: Option[Long],
gameType: Option[String],
packs: Option[PackListResponse],
scores: Option[ScoreListResponse],
owner: Option[AccountShortResponse],
userPermissionsList: Option[UserPermissionsListResponse],
rules: Option[RuleListResponse],
results: Option[List[NameStringValueResponse]],
ticketsEarned: Option[Long],
title: Option[String],
description: Option[String],
authorOverride: Option[String],
icon: Option[AssetShortResponse],
image: Option[AssetShortResponse],
sequenceType: Option[String],
updatedDate: Option[Long],
startDate: Option[Long],
endDate: Option[Long],
appKey: Option[String])

object GameResponse {
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

  implicit val GameResponseCodecJson: CodecJson[GameResponse] = CodecJson.derive[GameResponse]
  implicit val GameResponseDecoder: EntityDecoder[GameResponse] = jsonOf[GameResponse]
  implicit val GameResponseEncoder: EntityEncoder[GameResponse] = jsonEncoderOf[GameResponse]
}
