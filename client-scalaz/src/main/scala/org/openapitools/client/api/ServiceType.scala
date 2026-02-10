package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import org.joda.time.LocalTime

import ServiceType._

case class ServiceType (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
business: Option[Retailer],
hub: Option[ServiceHub],
name: Option[String],
additionalLoadTime: Option[Long],
pickupAddressOverride: Option[Address],
dropoffAddressOverride: Option[Address],
pickupStartTimeOverride: Option[LocalTime],
pickupEndTimeOverride: Option[LocalTime],
dropoffStartTimeOverride: Option[LocalTime],
dropoffEndTimeOverride: Option[LocalTime],
dateOverride: Option[DateOverride])

object ServiceType {
  import DateTimeCodecs._
  sealed trait DateOverride
  case object NONE extends DateOverride
  case object PICKUPSTART extends DateOverride
  case object PICKUPEND extends DateOverride
  case object DROPOFFSTART extends DateOverride
  case object DROPOFFEND extends DateOverride

  object DateOverride {
    def toDateOverride(s: String): Option[DateOverride] = s match {
      case "NONE" => Some(NONE)
      case "PICKUPSTART" => Some(PICKUPSTART)
      case "PICKUPEND" => Some(PICKUPEND)
      case "DROPOFFSTART" => Some(DROPOFFSTART)
      case "DROPOFFEND" => Some(DROPOFFEND)
      case _ => None
    }

    def fromDateOverride(x: DateOverride): String = x match {
      case NONE => "NONE"
      case PICKUPSTART => "PICKUPSTART"
      case PICKUPEND => "PICKUPEND"
      case DROPOFFSTART => "DROPOFFSTART"
      case DROPOFFEND => "DROPOFFEND"
    }
  }

  implicit val DateOverrideEnumEncoder: EncodeJson[DateOverride] =
    EncodeJson[DateOverride](is => StringEncodeJson(DateOverride.fromDateOverride(is)))

  implicit val DateOverrideEnumDecoder: DecodeJson[DateOverride] =
    DecodeJson.optionDecoder[DateOverride](n => n.string.flatMap(jStr => DateOverride.toDateOverride(jStr)), "DateOverride failed to de-serialize")

  implicit val ServiceTypeCodecJson: CodecJson[ServiceType] = CodecJson.derive[ServiceType]
  implicit val ServiceTypeDecoder: EntityDecoder[ServiceType] = jsonOf[ServiceType]
  implicit val ServiceTypeEncoder: EntityEncoder[ServiceType] = jsonEncoderOf[ServiceType]
}
