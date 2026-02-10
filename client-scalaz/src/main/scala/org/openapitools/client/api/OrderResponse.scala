package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrderResponse._

case class OrderResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
orderId: Option[Long],
application: Option[ApplicationMiniResponse],
customer: Option[AccountShortResponse],
amount: Option[Double],
purchases: Option[Double],
credits: Option[Double],
payments: Option[List[PaymentTransactionResponse]],
externalOrderId: Option[String],
created: Option[Long],
updated: Option[Long],
externalDate: Option[Long],
description: Option[String],
returning: Option[String])

object OrderResponse {
  import DateTimeCodecs._

  implicit val OrderResponseCodecJson: CodecJson[OrderResponse] = CodecJson.derive[OrderResponse]
  implicit val OrderResponseDecoder: EntityDecoder[OrderResponse] = jsonOf[OrderResponse]
  implicit val OrderResponseEncoder: EntityEncoder[OrderResponse] = jsonEncoderOf[OrderResponse]
}
