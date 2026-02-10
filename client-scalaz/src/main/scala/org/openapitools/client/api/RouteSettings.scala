package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RouteSettings._

case class RouteSettings (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
description: Option[String],
setting: Option[String],
settingType: Option[SettingType],
program: Option[Program],
hub: Option[ServiceHub])

object RouteSettings {
  import DateTimeCodecs._
  sealed trait SettingType
  case object FLOAT extends SettingType
  case object DOUBLE extends SettingType
  case object INTEGER extends SettingType
  case object LONG extends SettingType
  case object BOOLEAN extends SettingType
  case object STRING extends SettingType

  object SettingType {
    def toSettingType(s: String): Option[SettingType] = s match {
      case "FLOAT" => Some(FLOAT)
      case "DOUBLE" => Some(DOUBLE)
      case "INTEGER" => Some(INTEGER)
      case "LONG" => Some(LONG)
      case "BOOLEAN" => Some(BOOLEAN)
      case "STRING" => Some(STRING)
      case _ => None
    }

    def fromSettingType(x: SettingType): String = x match {
      case FLOAT => "FLOAT"
      case DOUBLE => "DOUBLE"
      case INTEGER => "INTEGER"
      case LONG => "LONG"
      case BOOLEAN => "BOOLEAN"
      case STRING => "STRING"
    }
  }

  implicit val SettingTypeEnumEncoder: EncodeJson[SettingType] =
    EncodeJson[SettingType](is => StringEncodeJson(SettingType.fromSettingType(is)))

  implicit val SettingTypeEnumDecoder: DecodeJson[SettingType] =
    DecodeJson.optionDecoder[SettingType](n => n.string.flatMap(jStr => SettingType.toSettingType(jStr)), "SettingType failed to de-serialize")

  implicit val RouteSettingsCodecJson: CodecJson[RouteSettings] = CodecJson.derive[RouteSettings]
  implicit val RouteSettingsDecoder: EntityDecoder[RouteSettings] = jsonOf[RouteSettings]
  implicit val RouteSettingsEncoder: EntityEncoder[RouteSettings] = jsonEncoderOf[RouteSettings]
}
