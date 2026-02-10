package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import BaseOfferResponse._

case class BaseOfferResponse (
  title: Option[String],
details: Option[String],
subTitle: Option[String],
activated: Option[Long],
expiration: Option[Long],
redeemableStart: Option[Long],
redeemableEnd: Option[Long],
offerType: Option[String],
offerVisibility: Option[String],
favorite: Option[Boolean],
deleted: Option[Long],
fullPrice: Option[Double],
discountPrice: Option[Double],
image: Option[String],
image1: Option[String],
image2: Option[String],
image3: Option[String],
image4: Option[String],
image5: Option[String],
images: Option[List[AssetResponse]],
barcode: Option[String],
externalUrl: Option[String],
active: Option[Boolean],
subDetails: Option[String],
externalRedeemOptions: Option[String],
publisher: Option[String],
viewedCount: Option[Integer],
clickedCount: Option[Integer],
addedLimit: Option[Integer],
addedCount: Option[Integer],
usedCount: Option[Integer],
removedCount: Option[Integer],
ticketsReward: Option[Long],
ticketsRewardType: Option[String],
specialOfferType: Option[SpecialOfferType],
likeCount: Option[Long],
dislikeCount: Option[Long],
favoriteCount: Option[Long],
noteCount: Option[Long],
billableEntityId: Option[Long],
responsibleAccountId: Option[Long],
availabilitySummary: Option[String],
flagCount: Option[Long],
flagThreshold: Option[Long],
externalId: Option[String],
parentOffer: Option[BaseOfferResponse])

object BaseOfferResponse {
  import DateTimeCodecs._
  sealed trait SpecialOfferType
  case object ALL extends SpecialOfferType
  case object RESERVABLE extends SpecialOfferType
  case object REGULAROFFER extends SpecialOfferType
  case object ACTNOW extends SpecialOfferType
  case object GETTHERENOW extends SpecialOfferType
  case object SQOOT extends SpecialOfferType
  case object TICKETS extends SpecialOfferType
  case object YIPIT extends SpecialOfferType

  object SpecialOfferType {
    def toSpecialOfferType(s: String): Option[SpecialOfferType] = s match {
      case "ALL" => Some(ALL)
      case "RESERVABLE" => Some(RESERVABLE)
      case "REGULAROFFER" => Some(REGULAROFFER)
      case "ACTNOW" => Some(ACTNOW)
      case "GETTHERENOW" => Some(GETTHERENOW)
      case "SQOOT" => Some(SQOOT)
      case "TICKETS" => Some(TICKETS)
      case "YIPIT" => Some(YIPIT)
      case _ => None
    }

    def fromSpecialOfferType(x: SpecialOfferType): String = x match {
      case ALL => "ALL"
      case RESERVABLE => "RESERVABLE"
      case REGULAROFFER => "REGULAROFFER"
      case ACTNOW => "ACTNOW"
      case GETTHERENOW => "GETTHERENOW"
      case SQOOT => "SQOOT"
      case TICKETS => "TICKETS"
      case YIPIT => "YIPIT"
    }
  }

  implicit val SpecialOfferTypeEnumEncoder: EncodeJson[SpecialOfferType] =
    EncodeJson[SpecialOfferType](is => StringEncodeJson(SpecialOfferType.fromSpecialOfferType(is)))

  implicit val SpecialOfferTypeEnumDecoder: DecodeJson[SpecialOfferType] =
    DecodeJson.optionDecoder[SpecialOfferType](n => n.string.flatMap(jStr => SpecialOfferType.toSpecialOfferType(jStr)), "SpecialOfferType failed to de-serialize")

  implicit val BaseOfferResponseCodecJson: CodecJson[BaseOfferResponse] = CodecJson.derive[BaseOfferResponse]
  implicit val BaseOfferResponseDecoder: EntityDecoder[BaseOfferResponse] = jsonOf[BaseOfferResponse]
  implicit val BaseOfferResponseEncoder: EntityEncoder[BaseOfferResponse] = jsonEncoderOf[BaseOfferResponse]
}
