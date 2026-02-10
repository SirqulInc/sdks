package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PaymentTypesResponse._

case class PaymentTypesResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
creditCardOnFile: Option[Boolean],
creditCardNumber: Option[String],
creditCardExpirationMonth: Option[String],
creditCardExpirationYear: Option[String],
pointsOnFile: Option[Boolean],
pointsAmount: Option[Double],
account: Option[AccountShortResponse],
firstName: Option[String],
lastName: Option[String],
address: Option[String],
city: Option[String],
state: Option[String],
postalCode: Option[String],
phone: Option[String],
provider: Option[String],
paymentMethodId: Option[Long],
validated: Option[Boolean],
accountNumber: Option[String],
bankName: Option[String],
routingNumber: Option[String],
isDefaultPaymentMethod: Option[Boolean],
accountName: Option[String],
paymentMethodNickname: Option[String],
taxId: Option[String],
returning: Option[String])

object PaymentTypesResponse {
  import DateTimeCodecs._

  implicit val PaymentTypesResponseCodecJson: CodecJson[PaymentTypesResponse] = CodecJson.derive[PaymentTypesResponse]
  implicit val PaymentTypesResponseDecoder: EntityDecoder[PaymentTypesResponse] = jsonOf[PaymentTypesResponse]
  implicit val PaymentTypesResponseEncoder: EntityEncoder[PaymentTypesResponse] = jsonEncoderOf[PaymentTypesResponse]
}
