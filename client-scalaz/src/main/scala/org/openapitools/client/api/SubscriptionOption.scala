package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SubscriptionOption._

case class SubscriptionOption (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
price: Option[Double],
quantity: Option[Integer],
threshold: Option[Integer],
visible: Option[Boolean],
optionType: Option[OptionType],
offerType: Option[OfferType])

object SubscriptionOption {
  import DateTimeCodecs._
  sealed trait OptionType
  case object MISSION extends OptionType
  case object LOCATION extends OptionType
  case object OFFER extends OptionType
  case object NOTIFICATION extends OptionType
  case object REQUEST extends OptionType
  case object STORAGES3 extends OptionType
  case object STORAGEDB extends OptionType

  object OptionType {
    def toOptionType(s: String): Option[OptionType] = s match {
      case "MISSION" => Some(MISSION)
      case "LOCATION" => Some(LOCATION)
      case "OFFER" => Some(OFFER)
      case "NOTIFICATION" => Some(NOTIFICATION)
      case "REQUEST" => Some(REQUEST)
      case "STORAGES3" => Some(STORAGES3)
      case "STORAGEDB" => Some(STORAGEDB)
      case _ => None
    }

    def fromOptionType(x: OptionType): String = x match {
      case MISSION => "MISSION"
      case LOCATION => "LOCATION"
      case OFFER => "OFFER"
      case NOTIFICATION => "NOTIFICATION"
      case REQUEST => "REQUEST"
      case STORAGES3 => "STORAGES3"
      case STORAGEDB => "STORAGEDB"
    }
  }

  implicit val OptionTypeEnumEncoder: EncodeJson[OptionType] =
    EncodeJson[OptionType](is => StringEncodeJson(OptionType.fromOptionType(is)))

  implicit val OptionTypeEnumDecoder: DecodeJson[OptionType] =
    DecodeJson.optionDecoder[OptionType](n => n.string.flatMap(jStr => OptionType.toOptionType(jStr)), "OptionType failed to de-serialize")
  sealed trait OfferType
  case object VOUCHER extends OfferType
  case object COUPON extends OfferType
  case object PRODUCT extends OfferType
  case object MEDIA extends OfferType
  case object EVENT extends OfferType
  case object DEVICE extends OfferType

  object OfferType {
    def toOfferType(s: String): Option[OfferType] = s match {
      case "VOUCHER" => Some(VOUCHER)
      case "COUPON" => Some(COUPON)
      case "PRODUCT" => Some(PRODUCT)
      case "MEDIA" => Some(MEDIA)
      case "EVENT" => Some(EVENT)
      case "DEVICE" => Some(DEVICE)
      case _ => None
    }

    def fromOfferType(x: OfferType): String = x match {
      case VOUCHER => "VOUCHER"
      case COUPON => "COUPON"
      case PRODUCT => "PRODUCT"
      case MEDIA => "MEDIA"
      case EVENT => "EVENT"
      case DEVICE => "DEVICE"
    }
  }

  implicit val OfferTypeEnumEncoder: EncodeJson[OfferType] =
    EncodeJson[OfferType](is => StringEncodeJson(OfferType.fromOfferType(is)))

  implicit val OfferTypeEnumDecoder: DecodeJson[OfferType] =
    DecodeJson.optionDecoder[OfferType](n => n.string.flatMap(jStr => OfferType.toOfferType(jStr)), "OfferType failed to de-serialize")

  implicit val SubscriptionOptionCodecJson: CodecJson[SubscriptionOption] = CodecJson.derive[SubscriptionOption]
  implicit val SubscriptionOptionDecoder: EntityDecoder[SubscriptionOption] = jsonOf[SubscriptionOption]
  implicit val SubscriptionOptionEncoder: EntityEncoder[SubscriptionOption] = jsonEncoderOf[SubscriptionOption]
}
