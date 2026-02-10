package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Direction._

case class Direction (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
distance: Option[String],
duration: Option[String],
endLatitude: Option[Double],
endLongitude: Option[Double],
startLatitude: Option[Double],
startLongitude: Option[Double],
instruction: Option[String],
polyline: Option[String],
progressStatus: Option[ProgressStatus],
highlight: Option[Boolean])

object Direction {
  import DateTimeCodecs._
  sealed trait ProgressStatus
  case object PENDING extends ProgressStatus
  case object COMPLETE extends ProgressStatus
  case object INVALID extends ProgressStatus

  object ProgressStatus {
    def toProgressStatus(s: String): Option[ProgressStatus] = s match {
      case "PENDING" => Some(PENDING)
      case "COMPLETE" => Some(COMPLETE)
      case "INVALID" => Some(INVALID)
      case _ => None
    }

    def fromProgressStatus(x: ProgressStatus): String = x match {
      case PENDING => "PENDING"
      case COMPLETE => "COMPLETE"
      case INVALID => "INVALID"
    }
  }

  implicit val ProgressStatusEnumEncoder: EncodeJson[ProgressStatus] =
    EncodeJson[ProgressStatus](is => StringEncodeJson(ProgressStatus.fromProgressStatus(is)))

  implicit val ProgressStatusEnumDecoder: DecodeJson[ProgressStatus] =
    DecodeJson.optionDecoder[ProgressStatus](n => n.string.flatMap(jStr => ProgressStatus.toProgressStatus(jStr)), "ProgressStatus failed to de-serialize")

  implicit val DirectionCodecJson: CodecJson[Direction] = CodecJson.derive[Direction]
  implicit val DirectionDecoder: EntityDecoder[Direction] = jsonOf[Direction]
  implicit val DirectionEncoder: EntityEncoder[Direction] = jsonEncoderOf[Direction]
}
