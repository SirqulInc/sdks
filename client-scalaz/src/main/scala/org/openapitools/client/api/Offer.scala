package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Offer._

case class Offer (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
testField: Option[String],
billableEntity: Option[BillableEntity],
offerLocations: Option[List[OfferLocation]],
missions: Option[List[Mission]],
activated: Option[OffsetDateTime],
expires: Option[OffsetDateTime],
redeemableStart: Option[OffsetDateTime],
redeemableEnd: Option[OffsetDateTime],
title: Option[String],
subTitle: Option[String],
`type`: Option[`Type`],
specialOfferType: Option[SpecialOfferType],
details: Option[String],
subDetails: Option[String],
finePrint: Option[String],
getThereNowNotification: Option[String],
maxPrints: Option[Integer],
viewLimit: Option[Integer],
featured: Option[Boolean],
replaced: Option[Boolean],
showRemaining: Option[Boolean],
showRedeemed: Option[Boolean],
parentOffer: Option[Offer],
artwork: Option[Asset],
offerImage1: Option[Asset],
offerImage2: Option[Asset],
offerImage3: Option[Asset],
offerImage4: Option[Asset],
offerImage5: Option[Asset],
barCode: Option[Asset],
barCodeType: Option[BarCodeType],
barCodeEntry: Option[String],
categories: Option[List[Category]],
filters: Option[List[Filter]],
ticketType: Option[String],
allocateTickets: Option[Boolean],
ticketPriceType: Option[String],
ticketPrice: Option[Long],
fullPrice: Option[Double],
discountPrice: Option[Double],
availableLimit: Option[Integer],
availableLimitPerUser: Option[Integer],
addedLimit: Option[Integer],
usedCount: Option[Integer],
addedCount: Option[Integer],
removedCount: Option[Integer],
viewedCount: Option[Integer],
clickedCount: Option[Integer],
offerVisibility: Option[OfferVisibility],
offerProcessorId: Option[OfferProcessorId],
externalId: Option[String],
externalUrl: Option[String],
externalUntrackedUrl: Option[String],
sqootId: Option[Long],
sqootUrl: Option[String],
sqootCategorySlug: Option[String],
sqootCategoryName: Option[String],
yipitId: Option[Long],
redeemAuthOptions: Option[String],
publisher: Option[String],
product: Option[Product],
media: Option[Media],
event: Option[Event],
device: Option[Device],
notes: Option[List[Note]],
noteCount: Option[Long],
favoriteCount: Option[Long],
hasRatings: Option[Boolean],
likes: Option[List[YayOrNay]],
likeCount: Option[Long],
dislikeCount: Option[Long],
availabilitySummary: Option[String],
flags: Option[List[Flag]],
flagCount: Option[Long],
flagThreshold: Option[FlagThreshold],
savings: Option[Double],
clickStream: Option[Double],
ticketCount: Option[Long],
display: Option[String],
appKey: Option[String],
categoryTree: Option[String],
filterTree: Option[String],
indexable: Option[Boolean],
billableId: Option[Long],
subType: Option[String],
contentName: Option[String],
defaultThreshold: Option[Long],
contentAsset: Option[Asset],
owner: Option[Account],
secondaryType: Option[String],
discountPercentage: Option[Double])

object Offer {
  import DateTimeCodecs._
  sealed trait `Type`
  case object VOUCHER extends `Type`
  case object COUPON extends `Type`
  case object PRODUCT extends `Type`
  case object MEDIA extends `Type`
  case object EVENT extends `Type`
  case object DEVICE extends `Type`

  object `Type` {
    def to`Type`(s: String): Option[`Type`] = s match {
      case "VOUCHER" => Some(VOUCHER)
      case "COUPON" => Some(COUPON)
      case "PRODUCT" => Some(PRODUCT)
      case "MEDIA" => Some(MEDIA)
      case "EVENT" => Some(EVENT)
      case "DEVICE" => Some(DEVICE)
      case _ => None
    }

    def from`Type`(x: `Type`): String = x match {
      case VOUCHER => "VOUCHER"
      case COUPON => "COUPON"
      case PRODUCT => "PRODUCT"
      case MEDIA => "MEDIA"
      case EVENT => "EVENT"
      case DEVICE => "DEVICE"
    }
  }

  implicit val `Type`EnumEncoder: EncodeJson[`Type`] =
    EncodeJson[`Type`](is => StringEncodeJson(`Type`.from`Type`(is)))

  implicit val `Type`EnumDecoder: DecodeJson[`Type`] =
    DecodeJson.optionDecoder[`Type`](n => n.string.flatMap(jStr => `Type`.to`Type`(jStr)), "`Type` failed to de-serialize")
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
  sealed trait BarCodeType
  case object NONE extends BarCodeType
  case object UPC extends BarCodeType
  case object CODE128 extends BarCodeType
  case object QR extends BarCodeType
  case object CUSTOMMEDIA extends BarCodeType

  object BarCodeType {
    def toBarCodeType(s: String): Option[BarCodeType] = s match {
      case "NONE" => Some(NONE)
      case "UPC" => Some(UPC)
      case "CODE128" => Some(CODE128)
      case "QR" => Some(QR)
      case "CUSTOMMEDIA" => Some(CUSTOMMEDIA)
      case _ => None
    }

    def fromBarCodeType(x: BarCodeType): String = x match {
      case NONE => "NONE"
      case UPC => "UPC"
      case CODE128 => "CODE128"
      case QR => "QR"
      case CUSTOMMEDIA => "CUSTOMMEDIA"
    }
  }

  implicit val BarCodeTypeEnumEncoder: EncodeJson[BarCodeType] =
    EncodeJson[BarCodeType](is => StringEncodeJson(BarCodeType.fromBarCodeType(is)))

  implicit val BarCodeTypeEnumDecoder: DecodeJson[BarCodeType] =
    DecodeJson.optionDecoder[BarCodeType](n => n.string.flatMap(jStr => BarCodeType.toBarCodeType(jStr)), "BarCodeType failed to de-serialize")
  sealed trait OfferVisibility
  case object PUBLIC extends OfferVisibility
  case object LISTABLE extends OfferVisibility
  case object REWARDABLE extends OfferVisibility
  case object TRIGGERABLE extends OfferVisibility
  case object `PRIVATE` extends OfferVisibility

  object OfferVisibility {
    def toOfferVisibility(s: String): Option[OfferVisibility] = s match {
      case "PUBLIC" => Some(PUBLIC)
      case "LISTABLE" => Some(LISTABLE)
      case "REWARDABLE" => Some(REWARDABLE)
      case "TRIGGERABLE" => Some(TRIGGERABLE)
      case "`PRIVATE`" => Some(`PRIVATE`)
      case _ => None
    }

    def fromOfferVisibility(x: OfferVisibility): String = x match {
      case PUBLIC => "PUBLIC"
      case LISTABLE => "LISTABLE"
      case REWARDABLE => "REWARDABLE"
      case TRIGGERABLE => "TRIGGERABLE"
      case `PRIVATE` => "`PRIVATE`"
    }
  }

  implicit val OfferVisibilityEnumEncoder: EncodeJson[OfferVisibility] =
    EncodeJson[OfferVisibility](is => StringEncodeJson(OfferVisibility.fromOfferVisibility(is)))

  implicit val OfferVisibilityEnumDecoder: DecodeJson[OfferVisibility] =
    DecodeJson.optionDecoder[OfferVisibility](n => n.string.flatMap(jStr => OfferVisibility.toOfferVisibility(jStr)), "OfferVisibility failed to de-serialize")
  sealed trait OfferProcessorId
  case object SQOOT extends OfferProcessorId
  case object YIPIT extends OfferProcessorId
  case object API extends OfferProcessorId
  case object CSV extends OfferProcessorId

  object OfferProcessorId {
    def toOfferProcessorId(s: String): Option[OfferProcessorId] = s match {
      case "SQOOT" => Some(SQOOT)
      case "YIPIT" => Some(YIPIT)
      case "API" => Some(API)
      case "CSV" => Some(CSV)
      case _ => None
    }

    def fromOfferProcessorId(x: OfferProcessorId): String = x match {
      case SQOOT => "SQOOT"
      case YIPIT => "YIPIT"
      case API => "API"
      case CSV => "CSV"
    }
  }

  implicit val OfferProcessorIdEnumEncoder: EncodeJson[OfferProcessorId] =
    EncodeJson[OfferProcessorId](is => StringEncodeJson(OfferProcessorId.fromOfferProcessorId(is)))

  implicit val OfferProcessorIdEnumDecoder: DecodeJson[OfferProcessorId] =
    DecodeJson.optionDecoder[OfferProcessorId](n => n.string.flatMap(jStr => OfferProcessorId.toOfferProcessorId(jStr)), "OfferProcessorId failed to de-serialize")

  implicit val OfferCodecJson: CodecJson[Offer] = CodecJson.derive[Offer]
  implicit val OfferDecoder: EntityDecoder[Offer] = jsonOf[Offer]
  implicit val OfferEncoder: EntityEncoder[Offer] = jsonEncoderOf[Offer]
}
