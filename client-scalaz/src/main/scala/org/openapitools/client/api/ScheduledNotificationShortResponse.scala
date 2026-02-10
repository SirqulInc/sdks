package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ScheduledNotificationShortResponse._

case class ScheduledNotificationShortResponse (
  scheduledNotificationId: Option[Long],
active: Option[Boolean],
status: Option[Status],
`type`: Option[`Type`],
name: Option[String],
message: Option[String],
groupingId: Option[String],
scheduledDate: Option[Long],
startDate: Option[Long],
endDate: Option[Long])

object ScheduledNotificationShortResponse {
  import DateTimeCodecs._
  sealed trait Status
  case object `NEW` extends Status
  case object ERROR extends Status
  case object COMPLETE extends Status
  case object PROCESSING extends Status
  case object TEMPLATE extends Status

  object Status {
    def toStatus(s: String): Option[Status] = s match {
      case "`NEW`" => Some(`NEW`)
      case "ERROR" => Some(ERROR)
      case "COMPLETE" => Some(COMPLETE)
      case "PROCESSING" => Some(PROCESSING)
      case "TEMPLATE" => Some(TEMPLATE)
      case _ => None
    }

    def fromStatus(x: Status): String = x match {
      case `NEW` => "`NEW`"
      case ERROR => "ERROR"
      case COMPLETE => "COMPLETE"
      case PROCESSING => "PROCESSING"
      case TEMPLATE => "TEMPLATE"
    }
  }

  implicit val StatusEnumEncoder: EncodeJson[Status] =
    EncodeJson[Status](is => StringEncodeJson(Status.fromStatus(is)))

  implicit val StatusEnumDecoder: DecodeJson[Status] =
    DecodeJson.optionDecoder[Status](n => n.string.flatMap(jStr => Status.toStatus(jStr)), "Status failed to de-serialize")
  sealed trait `Type`
  case object HTTP extends `Type`
  case object SAVE extends `Type`
  case object EMAIL extends `Type`
  case object SMS extends `Type`
  case object APNS extends `Type`
  case object GCM extends `Type`
  case object PUSH extends `Type`
  case object MOBILENOTIFICATION extends `Type`

  object `Type` {
    def to`Type`(s: String): Option[`Type`] = s match {
      case "HTTP" => Some(HTTP)
      case "SAVE" => Some(SAVE)
      case "EMAIL" => Some(EMAIL)
      case "SMS" => Some(SMS)
      case "APNS" => Some(APNS)
      case "GCM" => Some(GCM)
      case "PUSH" => Some(PUSH)
      case "MOBILENOTIFICATION" => Some(MOBILENOTIFICATION)
      case _ => None
    }

    def from`Type`(x: `Type`): String = x match {
      case HTTP => "HTTP"
      case SAVE => "SAVE"
      case EMAIL => "EMAIL"
      case SMS => "SMS"
      case APNS => "APNS"
      case GCM => "GCM"
      case PUSH => "PUSH"
      case MOBILENOTIFICATION => "MOBILENOTIFICATION"
    }
  }

  implicit val `Type`EnumEncoder: EncodeJson[`Type`] =
    EncodeJson[`Type`](is => StringEncodeJson(`Type`.from`Type`(is)))

  implicit val `Type`EnumDecoder: DecodeJson[`Type`] =
    DecodeJson.optionDecoder[`Type`](n => n.string.flatMap(jStr => `Type`.to`Type`(jStr)), "`Type` failed to de-serialize")

  implicit val ScheduledNotificationShortResponseCodecJson: CodecJson[ScheduledNotificationShortResponse] = CodecJson.derive[ScheduledNotificationShortResponse]
  implicit val ScheduledNotificationShortResponseDecoder: EntityDecoder[ScheduledNotificationShortResponse] = jsonOf[ScheduledNotificationShortResponse]
  implicit val ScheduledNotificationShortResponseEncoder: EntityEncoder[ScheduledNotificationShortResponse] = jsonEncoderOf[ScheduledNotificationShortResponse]
}
