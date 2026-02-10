package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PlacementResponse._

case class PlacementResponse (
  placementId: Option[Long],
name: Option[String],
description: Option[String],
size: Option[Size],
height: Option[Integer],
width: Option[Integer],
refreshInterval: Option[Integer],
appName: Option[String],
appKey: Option[String],
active: Option[Boolean],
defaultImage: Option[AssetShortResponse])

object PlacementResponse {
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

  implicit val PlacementResponseCodecJson: CodecJson[PlacementResponse] = CodecJson.derive[PlacementResponse]
  implicit val PlacementResponseDecoder: EntityDecoder[PlacementResponse] = jsonOf[PlacementResponse]
  implicit val PlacementResponseEncoder: EntityEncoder[PlacementResponse] = jsonEncoderOf[PlacementResponse]
}
