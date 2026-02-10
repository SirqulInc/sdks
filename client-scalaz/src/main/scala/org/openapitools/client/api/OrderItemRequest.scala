package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrderItemRequest._

case class OrderItemRequest (
  orderItemType: Option[OrderItemType],
orderItemId: Option[Long],
offerName: Option[String],
orderCustomType: Option[String],
orderCustomId: Option[String],
retailerLocationId: Option[Long],
quantity: Option[Integer],
amount: Option[Double],
tax: Option[Double],
reserveStartDate: Option[Long],
reserveEndDate: Option[Long],
message: Option[String])

object OrderItemRequest {
  import DateTimeCodecs._
  sealed trait OrderItemType
  case object OFFER extends OrderItemType
  case object CUSTOM extends OrderItemType

  object OrderItemType {
    def toOrderItemType(s: String): Option[OrderItemType] = s match {
      case "OFFER" => Some(OFFER)
      case "CUSTOM" => Some(CUSTOM)
      case _ => None
    }

    def fromOrderItemType(x: OrderItemType): String = x match {
      case OFFER => "OFFER"
      case CUSTOM => "CUSTOM"
    }
  }

  implicit val OrderItemTypeEnumEncoder: EncodeJson[OrderItemType] =
    EncodeJson[OrderItemType](is => StringEncodeJson(OrderItemType.fromOrderItemType(is)))

  implicit val OrderItemTypeEnumDecoder: DecodeJson[OrderItemType] =
    DecodeJson.optionDecoder[OrderItemType](n => n.string.flatMap(jStr => OrderItemType.toOrderItemType(jStr)), "OrderItemType failed to de-serialize")

  implicit val OrderItemRequestCodecJson: CodecJson[OrderItemRequest] = CodecJson.derive[OrderItemRequest]
  implicit val OrderItemRequestDecoder: EntityDecoder[OrderItemRequest] = jsonOf[OrderItemRequest]
  implicit val OrderItemRequestEncoder: EntityEncoder[OrderItemRequest] = jsonEncoderOf[OrderItemRequest]
}
