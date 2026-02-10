package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Media._

case class Media (
  mediaType: Option[MediaType],
condition: Option[Condition],
isbn: Option[String],
asin: Option[String],
catalogNumbers: Option[List[String]],
duration: Option[Integer],
author: Option[String],
releaseDate: Option[Long],
availabilityDate: Option[Long],
parentalRating: Option[String],
collections: Option[List[Album]],
collectionCount: Option[Integer])

object Media {
  import DateTimeCodecs._
  sealed trait MediaType
  case object APK extends MediaType
  case object APPLICATION extends MediaType
  case object IMAGE extends MediaType
  case object AUDIO extends MediaType
  case object VIDEO extends MediaType
  case object MULTIPART extends MediaType
  case object BARCODE extends MediaType
  case object TEXT extends MediaType
  case object OTHER extends MediaType

  object MediaType {
    def toMediaType(s: String): Option[MediaType] = s match {
      case "APK" => Some(APK)
      case "APPLICATION" => Some(APPLICATION)
      case "IMAGE" => Some(IMAGE)
      case "AUDIO" => Some(AUDIO)
      case "VIDEO" => Some(VIDEO)
      case "MULTIPART" => Some(MULTIPART)
      case "BARCODE" => Some(BARCODE)
      case "TEXT" => Some(TEXT)
      case "OTHER" => Some(OTHER)
      case _ => None
    }

    def fromMediaType(x: MediaType): String = x match {
      case APK => "APK"
      case APPLICATION => "APPLICATION"
      case IMAGE => "IMAGE"
      case AUDIO => "AUDIO"
      case VIDEO => "VIDEO"
      case MULTIPART => "MULTIPART"
      case BARCODE => "BARCODE"
      case TEXT => "TEXT"
      case OTHER => "OTHER"
    }
  }

  implicit val MediaTypeEnumEncoder: EncodeJson[MediaType] =
    EncodeJson[MediaType](is => StringEncodeJson(MediaType.fromMediaType(is)))

  implicit val MediaTypeEnumDecoder: DecodeJson[MediaType] =
    DecodeJson.optionDecoder[MediaType](n => n.string.flatMap(jStr => MediaType.toMediaType(jStr)), "MediaType failed to de-serialize")
  sealed trait Condition
  case object `NEW` extends Condition
  case object USED extends Condition
  case object REFURBISHED extends Condition
  case object OTHER extends Condition

  object Condition {
    def toCondition(s: String): Option[Condition] = s match {
      case "`NEW`" => Some(`NEW`)
      case "USED" => Some(USED)
      case "REFURBISHED" => Some(REFURBISHED)
      case "OTHER" => Some(OTHER)
      case _ => None
    }

    def fromCondition(x: Condition): String = x match {
      case `NEW` => "`NEW`"
      case USED => "USED"
      case REFURBISHED => "REFURBISHED"
      case OTHER => "OTHER"
    }
  }

  implicit val ConditionEnumEncoder: EncodeJson[Condition] =
    EncodeJson[Condition](is => StringEncodeJson(Condition.fromCondition(is)))

  implicit val ConditionEnumDecoder: DecodeJson[Condition] =
    DecodeJson.optionDecoder[Condition](n => n.string.flatMap(jStr => Condition.toCondition(jStr)), "Condition failed to de-serialize")

  implicit val MediaCodecJson: CodecJson[Media] = CodecJson.derive[Media]
  implicit val MediaDecoder: EntityDecoder[Media] = jsonOf[Media]
  implicit val MediaEncoder: EntityEncoder[Media] = jsonEncoderOf[Media]
}
