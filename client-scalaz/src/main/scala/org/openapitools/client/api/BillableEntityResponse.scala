package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import BillableEntityResponse._

case class BillableEntityResponse (
  billableEntityId: Option[Long],
name: Option[String],
responsible: Option[ProfileShortResponse],
contact: Option[ContactInfoResponse],
subscription: Option[SubscriptionResponse],
payment: Option[PaymentTypesResponse])

object BillableEntityResponse {
  import DateTimeCodecs._

  implicit val BillableEntityResponseCodecJson: CodecJson[BillableEntityResponse] = CodecJson.derive[BillableEntityResponse]
  implicit val BillableEntityResponseDecoder: EntityDecoder[BillableEntityResponse] = jsonOf[BillableEntityResponse]
  implicit val BillableEntityResponseEncoder: EntityEncoder[BillableEntityResponse] = jsonEncoderOf[BillableEntityResponse]
}
