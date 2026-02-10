package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import OfferShortResponse._

case class OfferShortResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
offerLocationId: Option[Long],
offerId: Option[Long],
retailerId: Option[Long],
transactionId: Option[Long],
favoriteId: Option[Long],
offerName: Option[String],
subTitle: Option[String],
locationName: Option[String],
starts: Option[OffsetDateTime],
expires: Option[OffsetDateTime],
activated: Option[Long],
expiration: Option[Long],
redeemableStart: Option[Long],
redeemableEnd: Option[Long],
distance: Option[Double],
offerType: Option[String],
longitude: Option[Double],
latitude: Option[Double],
favorite: Option[Boolean],
fullPrice: Option[Double],
discountPrice: Option[Double],
estimatedValue: Option[Double],
voucherDiscountPrice: Option[Double],
missionListResponse: Option[MissionListResponse],
image: Option[String],
image1: Option[String],
image2: Option[String],
image3: Option[String],
image4: Option[String],
image5: Option[String],
images: Option[List[AssetResponse]],
barcode: Option[String],
externalUrl: Option[String],
sqootUrl: Option[String],
active: Option[Boolean],
location: Option[RetailerLocationResponse],
subDetails: Option[String],
externalRedeemAuth: Option[Integer],
externalRedeemOptions: Option[String],
publisher: Option[String],
product: Option[ProductResponse],
event: Option[EventResponse],
media: Option[MediaResponse],
viewedCount: Option[Integer],
clickedCount: Option[Integer],
addedLimit: Option[Integer],
addedCount: Option[Integer],
usedCount: Option[Integer],
removedCount: Option[Integer],
locationAddedCount: Option[Integer],
barcodeEntry: Option[String],
barcodeType: Option[BarcodeType],
ticketsReward: Option[Long],
ticketsRewardType: Option[String],
specialOfferType: Option[SpecialOfferType],
likeCount: Option[Long],
dislikeCount: Option[Long],
favoriteCount: Option[Long],
noteCount: Option[Long],
logId: Option[Long],
billableEntityId: Option[Long],
responsibleAccountId: Option[Long],
availabilitySummary: Option[String],
externalId: Option[String],
parentOffer: Option[OfferShortResponse],
returning: Option[String])

object OfferShortResponse {
  import DateTimeCodecs._
  sealed trait BarcodeType
  case object NONE extends BarcodeType
  case object UPC extends BarcodeType
  case object CODE128 extends BarcodeType
  case object QR extends BarcodeType
  case object CUSTOMMEDIA extends BarcodeType

  object BarcodeType {
    def toBarcodeType(s: String): Option[BarcodeType] = s match {
      case "NONE" => Some(NONE)
      case "UPC" => Some(UPC)
      case "CODE128" => Some(CODE128)
      case "QR" => Some(QR)
      case "CUSTOMMEDIA" => Some(CUSTOMMEDIA)
      case _ => None
    }

    def fromBarcodeType(x: BarcodeType): String = x match {
      case NONE => "NONE"
      case UPC => "UPC"
      case CODE128 => "CODE128"
      case QR => "QR"
      case CUSTOMMEDIA => "CUSTOMMEDIA"
    }
  }

  implicit val BarcodeTypeEnumEncoder: EncodeJson[BarcodeType] =
    EncodeJson[BarcodeType](is => StringEncodeJson(BarcodeType.fromBarcodeType(is)))

  implicit val BarcodeTypeEnumDecoder: DecodeJson[BarcodeType] =
    DecodeJson.optionDecoder[BarcodeType](n => n.string.flatMap(jStr => BarcodeType.toBarcodeType(jStr)), "BarcodeType failed to de-serialize")
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

  implicit val OfferShortResponseCodecJson: CodecJson[OfferShortResponse] = CodecJson.derive[OfferShortResponse]
  implicit val OfferShortResponseDecoder: EntityDecoder[OfferShortResponse] = jsonOf[OfferShortResponse]
  implicit val OfferShortResponseEncoder: EntityEncoder[OfferShortResponse] = jsonEncoderOf[OfferShortResponse]
}
