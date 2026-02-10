package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PaymentTransactionResponse._

case class PaymentTransactionResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
paymentTransactionId: Option[Long],
customer: Option[AccountShortResponse],
promoCode: Option[String],
remoteRefId: Option[String],
currencyType: Option[String],
amount: Option[Double],
tax: Option[Double],
offerTransactions: Option[List[OfferTransactionResponse]],
orderItems: Option[List[PurchaseOrderItemResponse]],
externalPaymentId: Option[String],
metadata: Option[String],
created: Option[Long],
updated: Option[Long],
returning: Option[String])

object PaymentTransactionResponse {
  import DateTimeCodecs._

  implicit val PaymentTransactionResponseCodecJson: CodecJson[PaymentTransactionResponse] = CodecJson.derive[PaymentTransactionResponse]
  implicit val PaymentTransactionResponseDecoder: EntityDecoder[PaymentTransactionResponse] = jsonOf[PaymentTransactionResponse]
  implicit val PaymentTransactionResponseEncoder: EntityEncoder[PaymentTransactionResponse] = jsonEncoderOf[PaymentTransactionResponse]
}
