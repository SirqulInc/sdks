package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Device._

case class Device (
  rebootTimeHour: Option[Integer],
rebootTimeMinute: Option[Integer],
idleTimeoutInSecond: Option[Integer],
serialNumber: Option[String],
udid: Option[String],
deviceType: Option[String],
devicePower: Option[Double],
deviceInterference: Option[Double],
lastHeartbeatSent: Option[OffsetDateTime],
lastDown: Option[OffsetDateTime],
lastUp: Option[OffsetDateTime],
lastNotificationSent: Option[OffsetDateTime],
health: Option[Health])

object Device {
  import DateTimeCodecs._
  sealed trait Health
  case object RUNNING extends Health
  case object WARNING extends Health
  case object DOWN extends Health

  object Health {
    def toHealth(s: String): Option[Health] = s match {
      case "RUNNING" => Some(RUNNING)
      case "WARNING" => Some(WARNING)
      case "DOWN" => Some(DOWN)
      case _ => None
    }

    def fromHealth(x: Health): String = x match {
      case RUNNING => "RUNNING"
      case WARNING => "WARNING"
      case DOWN => "DOWN"
    }
  }

  implicit val HealthEnumEncoder: EncodeJson[Health] =
    EncodeJson[Health](is => StringEncodeJson(Health.fromHealth(is)))

  implicit val HealthEnumDecoder: DecodeJson[Health] =
    DecodeJson.optionDecoder[Health](n => n.string.flatMap(jStr => Health.toHealth(jStr)), "Health failed to de-serialize")

  implicit val DeviceCodecJson: CodecJson[Device] = CodecJson.derive[Device]
  implicit val DeviceDecoder: EntityDecoder[Device] = jsonOf[Device]
  implicit val DeviceEncoder: EntityEncoder[Device] = jsonEncoderOf[Device]
}
