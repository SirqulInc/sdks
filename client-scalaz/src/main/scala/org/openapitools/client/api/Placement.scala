package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Placement._

case class Placement (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
application: Option[Application],
name: Option[String],
description: Option[String],
size: Option[Size],
clickType: Option[ClickType],
height: Option[Integer],
width: Option[Integer],
refreshInterval: Option[Integer],
defaultImage: Option[Asset])

object Placement {
  import DateTimeCodecs._
  sealed trait Size
  case object CONFIG extends Size
  case object BANNER extends Size
  case object LEADERBOARD extends Size
  case object SKYSCRAPER extends Size
  case object VIDEO extends Size
  case object ZIP extends Size
  case object INTERSTITIAL extends Size
  case object CUSTOM1 extends Size
  case object CUSTOM2 extends Size
  case object CUSTOM3 extends Size
  case object CUSTOM4 extends Size
  case object CUSTOM5 extends Size
  case object CUSTOM6 extends Size
  case object CUSTOM7 extends Size
  case object CUSTOM8 extends Size
  case object CUSTOM9 extends Size
  case object CUSTOM10 extends Size

  object Size {
    def toSize(s: String): Option[Size] = s match {
      case "CONFIG" => Some(CONFIG)
      case "BANNER" => Some(BANNER)
      case "LEADERBOARD" => Some(LEADERBOARD)
      case "SKYSCRAPER" => Some(SKYSCRAPER)
      case "VIDEO" => Some(VIDEO)
      case "ZIP" => Some(ZIP)
      case "INTERSTITIAL" => Some(INTERSTITIAL)
      case "CUSTOM1" => Some(CUSTOM1)
      case "CUSTOM2" => Some(CUSTOM2)
      case "CUSTOM3" => Some(CUSTOM3)
      case "CUSTOM4" => Some(CUSTOM4)
      case "CUSTOM5" => Some(CUSTOM5)
      case "CUSTOM6" => Some(CUSTOM6)
      case "CUSTOM7" => Some(CUSTOM7)
      case "CUSTOM8" => Some(CUSTOM8)
      case "CUSTOM9" => Some(CUSTOM9)
      case "CUSTOM10" => Some(CUSTOM10)
      case _ => None
    }

    def fromSize(x: Size): String = x match {
      case CONFIG => "CONFIG"
      case BANNER => "BANNER"
      case LEADERBOARD => "LEADERBOARD"
      case SKYSCRAPER => "SKYSCRAPER"
      case VIDEO => "VIDEO"
      case ZIP => "ZIP"
      case INTERSTITIAL => "INTERSTITIAL"
      case CUSTOM1 => "CUSTOM1"
      case CUSTOM2 => "CUSTOM2"
      case CUSTOM3 => "CUSTOM3"
      case CUSTOM4 => "CUSTOM4"
      case CUSTOM5 => "CUSTOM5"
      case CUSTOM6 => "CUSTOM6"
      case CUSTOM7 => "CUSTOM7"
      case CUSTOM8 => "CUSTOM8"
      case CUSTOM9 => "CUSTOM9"
      case CUSTOM10 => "CUSTOM10"
    }
  }

  implicit val SizeEnumEncoder: EncodeJson[Size] =
    EncodeJson[Size](is => StringEncodeJson(Size.fromSize(is)))

  implicit val SizeEnumDecoder: DecodeJson[Size] =
    DecodeJson.optionDecoder[Size](n => n.string.flatMap(jStr => Size.toSize(jStr)), "Size failed to de-serialize")
  sealed trait ClickType
  case object CONFIG extends ClickType
  case object PURCHASE extends ClickType
  case object BANNER extends ClickType
  case object LEADERBOARD extends ClickType
  case object SKYSCRAPER extends ClickType
  case object VIDEO extends ClickType
  case object ZIP extends ClickType
  case object FULL extends ClickType
  case object CUSTOM1 extends ClickType
  case object CUSTOM2 extends ClickType
  case object CUSTOM3 extends ClickType
  case object CUSTOM4 extends ClickType
  case object CUSTOM5 extends ClickType
  case object CUSTOM6 extends ClickType
  case object CUSTOM7 extends ClickType
  case object CUSTOM8 extends ClickType
  case object CUSTOM9 extends ClickType
  case object CUSTOM10 extends ClickType

  object ClickType {
    def toClickType(s: String): Option[ClickType] = s match {
      case "CONFIG" => Some(CONFIG)
      case "PURCHASE" => Some(PURCHASE)
      case "BANNER" => Some(BANNER)
      case "LEADERBOARD" => Some(LEADERBOARD)
      case "SKYSCRAPER" => Some(SKYSCRAPER)
      case "VIDEO" => Some(VIDEO)
      case "ZIP" => Some(ZIP)
      case "FULL" => Some(FULL)
      case "CUSTOM1" => Some(CUSTOM1)
      case "CUSTOM2" => Some(CUSTOM2)
      case "CUSTOM3" => Some(CUSTOM3)
      case "CUSTOM4" => Some(CUSTOM4)
      case "CUSTOM5" => Some(CUSTOM5)
      case "CUSTOM6" => Some(CUSTOM6)
      case "CUSTOM7" => Some(CUSTOM7)
      case "CUSTOM8" => Some(CUSTOM8)
      case "CUSTOM9" => Some(CUSTOM9)
      case "CUSTOM10" => Some(CUSTOM10)
      case _ => None
    }

    def fromClickType(x: ClickType): String = x match {
      case CONFIG => "CONFIG"
      case PURCHASE => "PURCHASE"
      case BANNER => "BANNER"
      case LEADERBOARD => "LEADERBOARD"
      case SKYSCRAPER => "SKYSCRAPER"
      case VIDEO => "VIDEO"
      case ZIP => "ZIP"
      case FULL => "FULL"
      case CUSTOM1 => "CUSTOM1"
      case CUSTOM2 => "CUSTOM2"
      case CUSTOM3 => "CUSTOM3"
      case CUSTOM4 => "CUSTOM4"
      case CUSTOM5 => "CUSTOM5"
      case CUSTOM6 => "CUSTOM6"
      case CUSTOM7 => "CUSTOM7"
      case CUSTOM8 => "CUSTOM8"
      case CUSTOM9 => "CUSTOM9"
      case CUSTOM10 => "CUSTOM10"
    }
  }

  implicit val ClickTypeEnumEncoder: EncodeJson[ClickType] =
    EncodeJson[ClickType](is => StringEncodeJson(ClickType.fromClickType(is)))

  implicit val ClickTypeEnumDecoder: DecodeJson[ClickType] =
    DecodeJson.optionDecoder[ClickType](n => n.string.flatMap(jStr => ClickType.toClickType(jStr)), "ClickType failed to de-serialize")

  implicit val PlacementCodecJson: CodecJson[Placement] = CodecJson.derive[Placement]
  implicit val PlacementDecoder: EntityDecoder[Placement] = jsonOf[Placement]
  implicit val PlacementEncoder: EntityEncoder[Placement] = jsonEncoderOf[Placement]
}
