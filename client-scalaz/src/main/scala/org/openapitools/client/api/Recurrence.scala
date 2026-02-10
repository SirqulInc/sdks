package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.LocalDate

import Recurrence._

case class Recurrence (
  frequency: Option[Frequency],
daysOfWeek: Option[List[Integer]],
start: Option[LocalDate],
count: Option[Integer],
until: Option[LocalDate])

object Recurrence {
  import DateTimeCodecs._
  sealed trait Frequency
  case object DAILY extends Frequency
  case object WEEKLY extends Frequency
  case object MONTHLY extends Frequency
  case object ANNUALLY extends Frequency
  case object WEEKDAYONLY extends Frequency

  object Frequency {
    def toFrequency(s: String): Option[Frequency] = s match {
      case "DAILY" => Some(DAILY)
      case "WEEKLY" => Some(WEEKLY)
      case "MONTHLY" => Some(MONTHLY)
      case "ANNUALLY" => Some(ANNUALLY)
      case "WEEKDAYONLY" => Some(WEEKDAYONLY)
      case _ => None
    }

    def fromFrequency(x: Frequency): String = x match {
      case DAILY => "DAILY"
      case WEEKLY => "WEEKLY"
      case MONTHLY => "MONTHLY"
      case ANNUALLY => "ANNUALLY"
      case WEEKDAYONLY => "WEEKDAYONLY"
    }
  }

  implicit val FrequencyEnumEncoder: EncodeJson[Frequency] =
    EncodeJson[Frequency](is => StringEncodeJson(Frequency.fromFrequency(is)))

  implicit val FrequencyEnumDecoder: DecodeJson[Frequency] =
    DecodeJson.optionDecoder[Frequency](n => n.string.flatMap(jStr => Frequency.toFrequency(jStr)), "Frequency failed to de-serialize")

  implicit val RecurrenceCodecJson: CodecJson[Recurrence] = CodecJson.derive[Recurrence]
  implicit val RecurrenceDecoder: EntityDecoder[Recurrence] = jsonOf[Recurrence]
  implicit val RecurrenceEncoder: EntityEncoder[Recurrence] = jsonEncoderOf[Recurrence]
}
