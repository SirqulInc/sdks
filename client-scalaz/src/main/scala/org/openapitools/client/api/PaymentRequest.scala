package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PaymentRequest._

case class PaymentRequest (
  appKey: Option[String],
clientPaymentId: Option[String],
minAgeYears: Option[Integer],
invoice: Option[Invoice],
biometrics: Option[BiometricRequest],
orderItems: Option[List[OrderItemRequest]],
acceptedBilling: Option[Boolean])

object PaymentRequest {
  import DateTimeCodecs._

  implicit val PaymentRequestCodecJson: CodecJson[PaymentRequest] = CodecJson.derive[PaymentRequest]
  implicit val PaymentRequestDecoder: EntityDecoder[PaymentRequest] = jsonOf[PaymentRequest]
  implicit val PaymentRequestEncoder: EntityEncoder[PaymentRequest] = jsonEncoderOf[PaymentRequest]
}
