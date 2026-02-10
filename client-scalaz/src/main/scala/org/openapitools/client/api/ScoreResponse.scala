package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ScoreResponse._

case class ScoreResponse (
  action: Option[Action],
scoreId: Option[Long],
status: Option[Status],
points: Option[Integer],
timeTaken: Option[Integer],
ticketsEarned: Option[Long],
gameType: Option[String],
accountId: Option[Long],
accountDisplay: Option[String])

object ScoreResponse {
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
  sealed trait Status
  case object COMPLETED extends Status
  case object OWNERCREDIT extends Status
  case object SUMMATION extends Status
  case object TOURNAMENT extends Status

  object Status {
    def toStatus(s: String): Option[Status] = s match {
      case "COMPLETED" => Some(COMPLETED)
      case "OWNERCREDIT" => Some(OWNERCREDIT)
      case "SUMMATION" => Some(SUMMATION)
      case "TOURNAMENT" => Some(TOURNAMENT)
      case _ => None
    }

    def fromStatus(x: Status): String = x match {
      case COMPLETED => "COMPLETED"
      case OWNERCREDIT => "OWNERCREDIT"
      case SUMMATION => "SUMMATION"
      case TOURNAMENT => "TOURNAMENT"
    }
  }

  implicit val StatusEnumEncoder: EncodeJson[Status] =
    EncodeJson[Status](is => StringEncodeJson(Status.fromStatus(is)))

  implicit val StatusEnumDecoder: DecodeJson[Status] =
    DecodeJson.optionDecoder[Status](n => n.string.flatMap(jStr => Status.toStatus(jStr)), "Status failed to de-serialize")

  implicit val ScoreResponseCodecJson: CodecJson[ScoreResponse] = CodecJson.derive[ScoreResponse]
  implicit val ScoreResponseDecoder: EntityDecoder[ScoreResponse] = jsonOf[ScoreResponse]
  implicit val ScoreResponseEncoder: EntityEncoder[ScoreResponse] = jsonEncoderOf[ScoreResponse]
}
