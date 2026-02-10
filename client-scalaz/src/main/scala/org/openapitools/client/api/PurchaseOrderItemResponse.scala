package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PurchaseOrderItemResponse._

case class PurchaseOrderItemResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
purchaseOrderItemId: Option[Long],
created: Option[Long],
updated: Option[Long],
customer: Option[AccountShortResponse],
orderItemType: Option[String],
orderItemId: Option[Long],
orderCustomType: Option[String],
orderCustomId: Option[String],
retailerLocationId: Option[Long],
amount: Option[Double],
tax: Option[Double],
comment: Option[String],
returning: Option[String])

object PurchaseOrderItemResponse {
  import DateTimeCodecs._

  implicit val PurchaseOrderItemResponseCodecJson: CodecJson[PurchaseOrderItemResponse] = CodecJson.derive[PurchaseOrderItemResponse]
  implicit val PurchaseOrderItemResponseDecoder: EntityDecoder[PurchaseOrderItemResponse] = jsonOf[PurchaseOrderItemResponse]
  implicit val PurchaseOrderItemResponseEncoder: EntityEncoder[PurchaseOrderItemResponse] = jsonEncoderOf[PurchaseOrderItemResponse]
}
