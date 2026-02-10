package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Trip._

case class Trip (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
owner: Option[Account],
pickupLocation: Option[Location],
pickupTime: Option[OffsetDateTime],
dropOffLocation: Option[Location],
dropOffTime: Option[OffsetDateTime],
shipments: Option[List[Shipment]],
recurrence: Option[Recurrence],
timeZone: Option[String],
route: Option[Route],
preference: Option[Preference],
notifications: Option[String],
matches: Option[List[Trip]],
ownerConnection: Option[Connection],
originalId: Option[Long])

object Trip {
  import DateTimeCodecs._
  sealed trait Preference
  case object DRIVE extends Preference
  case object FLEXIBLE extends Preference
  case object RIDE extends Preference

  object Preference {
    def toPreference(s: String): Option[Preference] = s match {
      case "DRIVE" => Some(DRIVE)
      case "FLEXIBLE" => Some(FLEXIBLE)
      case "RIDE" => Some(RIDE)
      case _ => None
    }

    def fromPreference(x: Preference): String = x match {
      case DRIVE => "DRIVE"
      case FLEXIBLE => "FLEXIBLE"
      case RIDE => "RIDE"
    }
  }

  implicit val PreferenceEnumEncoder: EncodeJson[Preference] =
    EncodeJson[Preference](is => StringEncodeJson(Preference.fromPreference(is)))

  implicit val PreferenceEnumDecoder: DecodeJson[Preference] =
    DecodeJson.optionDecoder[Preference](n => n.string.flatMap(jStr => Preference.toPreference(jStr)), "Preference failed to de-serialize")

  implicit val TripCodecJson: CodecJson[Trip] = CodecJson.derive[Trip]
  implicit val TripDecoder: EntityDecoder[Trip] = jsonOf[Trip]
  implicit val TripEncoder: EntityEncoder[Trip] = jsonEncoderOf[Trip]
}
