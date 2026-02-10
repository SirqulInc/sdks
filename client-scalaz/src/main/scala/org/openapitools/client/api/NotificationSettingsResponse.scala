package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import NotificationSettingsResponse._

case class NotificationSettingsResponse (
  blockedNotifications: Option[Set[BlockedNotifications]])

object NotificationSettingsResponse {
  import DateTimeCodecs._
  sealed trait Set[BlockedNotifications]

  object Set[BlockedNotifications] {
    def toSet[BlockedNotifications](s: String): Option[Set[BlockedNotifications]] = s match {
      case _ => None
    }

    def fromSet[BlockedNotifications](x: Set[BlockedNotifications]): String = x match {
    }
  }

  implicit val Set[BlockedNotifications]EnumEncoder: EncodeJson[Set[BlockedNotifications]] =
    EncodeJson[Set[BlockedNotifications]](is => StringEncodeJson(Set[BlockedNotifications].fromSet[BlockedNotifications](is)))

  implicit val Set[BlockedNotifications]EnumDecoder: DecodeJson[Set[BlockedNotifications]] =
    DecodeJson.optionDecoder[Set[BlockedNotifications]](n => n.string.flatMap(jStr => Set[BlockedNotifications].toSet[BlockedNotifications](jStr)), "Set[BlockedNotifications] failed to de-serialize")

  implicit val NotificationSettingsResponseCodecJson: CodecJson[NotificationSettingsResponse] = CodecJson.derive[NotificationSettingsResponse]
  implicit val NotificationSettingsResponseDecoder: EntityDecoder[NotificationSettingsResponse] = jsonOf[NotificationSettingsResponse]
  implicit val NotificationSettingsResponseEncoder: EntityEncoder[NotificationSettingsResponse] = jsonEncoderOf[NotificationSettingsResponse]
}
