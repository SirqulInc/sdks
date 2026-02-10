package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Participant._

case class Participant (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
account: Option[Account],
availableStart: Option[OffsetDateTime],
availableEnd: Option[OffsetDateTime],
color1: Option[String],
color2: Option[String],
`type`: Option[`Type`])

object Participant {
  import DateTimeCodecs._
  sealed trait `Type`
  case object TEAM extends `Type`
  case object LEAGUE extends `Type`
  case object SPORT extends `Type`

  object `Type` {
    def to`Type`(s: String): Option[`Type`] = s match {
      case "TEAM" => Some(TEAM)
      case "LEAGUE" => Some(LEAGUE)
      case "SPORT" => Some(SPORT)
      case _ => None
    }

    def from`Type`(x: `Type`): String = x match {
      case TEAM => "TEAM"
      case LEAGUE => "LEAGUE"
      case SPORT => "SPORT"
    }
  }

  implicit val `Type`EnumEncoder: EncodeJson[`Type`] =
    EncodeJson[`Type`](is => StringEncodeJson(`Type`.from`Type`(is)))

  implicit val `Type`EnumDecoder: DecodeJson[`Type`] =
    DecodeJson.optionDecoder[`Type`](n => n.string.flatMap(jStr => `Type`.to`Type`(jStr)), "`Type` failed to de-serialize")

  implicit val ParticipantCodecJson: CodecJson[Participant] = CodecJson.derive[Participant]
  implicit val ParticipantDecoder: EntityDecoder[Participant] = jsonOf[Participant]
  implicit val ParticipantEncoder: EntityEncoder[Participant] = jsonEncoderOf[Participant]
}
