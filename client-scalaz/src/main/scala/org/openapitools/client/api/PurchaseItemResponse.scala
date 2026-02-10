package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PurchaseItemResponse._

case class PurchaseItemResponse (
  id: Option[Long],
name: Option[String],
description: Option[String],
tickets: Option[Integer],
coverAsset: Option[AssetShortResponse],
promoAsset: Option[AssetShortResponse],
giftable: Option[Boolean],
assetable: Option[Boolean],
gameType: Option[String],
price: Option[Float],
purchaseType: Option[String],
purchaseCode: Option[String],
purchaseLimit: Option[Integer],
quantity: Option[Integer],
serviceAction: Option[ServiceAction],
appName: Option[String])

object PurchaseItemResponse {
  import DateTimeCodecs._
  sealed trait ServiceAction
  case object DAYPREMIUM extends ServiceAction
  case object WEEKPREMIUM extends ServiceAction
  case object MONTHPREMIUM extends ServiceAction
  case object YEARPREMIUM extends ServiceAction
  case object LIFETIMEPREMIUM extends ServiceAction
  case object ADDTICKET extends ServiceAction
  case object ADDGIFT extends ServiceAction
  case object ADDPOINTS extends ServiceAction

  object ServiceAction {
    def toServiceAction(s: String): Option[ServiceAction] = s match {
      case "DAYPREMIUM" => Some(DAYPREMIUM)
      case "WEEKPREMIUM" => Some(WEEKPREMIUM)
      case "MONTHPREMIUM" => Some(MONTHPREMIUM)
      case "YEARPREMIUM" => Some(YEARPREMIUM)
      case "LIFETIMEPREMIUM" => Some(LIFETIMEPREMIUM)
      case "ADDTICKET" => Some(ADDTICKET)
      case "ADDGIFT" => Some(ADDGIFT)
      case "ADDPOINTS" => Some(ADDPOINTS)
      case _ => None
    }

    def fromServiceAction(x: ServiceAction): String = x match {
      case DAYPREMIUM => "DAYPREMIUM"
      case WEEKPREMIUM => "WEEKPREMIUM"
      case MONTHPREMIUM => "MONTHPREMIUM"
      case YEARPREMIUM => "YEARPREMIUM"
      case LIFETIMEPREMIUM => "LIFETIMEPREMIUM"
      case ADDTICKET => "ADDTICKET"
      case ADDGIFT => "ADDGIFT"
      case ADDPOINTS => "ADDPOINTS"
    }
  }

  implicit val ServiceActionEnumEncoder: EncodeJson[ServiceAction] =
    EncodeJson[ServiceAction](is => StringEncodeJson(ServiceAction.fromServiceAction(is)))

  implicit val ServiceActionEnumDecoder: DecodeJson[ServiceAction] =
    DecodeJson.optionDecoder[ServiceAction](n => n.string.flatMap(jStr => ServiceAction.toServiceAction(jStr)), "ServiceAction failed to de-serialize")

  implicit val PurchaseItemResponseCodecJson: CodecJson[PurchaseItemResponse] = CodecJson.derive[PurchaseItemResponse]
  implicit val PurchaseItemResponseDecoder: EntityDecoder[PurchaseItemResponse] = jsonOf[PurchaseItemResponse]
  implicit val PurchaseItemResponseEncoder: EntityEncoder[PurchaseItemResponse] = jsonEncoderOf[PurchaseItemResponse]
}
