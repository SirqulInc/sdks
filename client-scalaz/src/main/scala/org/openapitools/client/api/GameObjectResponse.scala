package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GameObjectResponse._

case class GameObjectResponse (
  action: Option[Action],
gameObjectId: Option[Long],
gameType: Option[String],
ticketsEarned: Option[Long],
scores: Option[ScoreListResponse],
tickets: Option[TicketListResponse],
items: Option[List[NameStringValueResponse]],
allocateTickets: Option[Boolean])

object GameObjectResponse {
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

  implicit val GameObjectResponseCodecJson: CodecJson[GameObjectResponse] = CodecJson.derive[GameObjectResponse]
  implicit val GameObjectResponseDecoder: EntityDecoder[GameObjectResponse] = jsonOf[GameObjectResponse]
  implicit val GameObjectResponseEncoder: EntityEncoder[GameObjectResponse] = jsonEncoderOf[GameObjectResponse]
}
