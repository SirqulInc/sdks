package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OfferTransactionStatusResponse._

case class OfferTransactionStatusResponse (
  id: Option[Long],
active: Option[Boolean],
name: Option[String],
description: Option[String],
code: Option[Integer],
role: Option[String],
applications: Option[List[ApplicationShortResponse]])

object OfferTransactionStatusResponse {
  import DateTimeCodecs._

  implicit val OfferTransactionStatusResponseCodecJson: CodecJson[OfferTransactionStatusResponse] = CodecJson.derive[OfferTransactionStatusResponse]
  implicit val OfferTransactionStatusResponseDecoder: EntityDecoder[OfferTransactionStatusResponse] = jsonOf[OfferTransactionStatusResponse]
  implicit val OfferTransactionStatusResponseEncoder: EntityEncoder[OfferTransactionStatusResponse] = jsonEncoderOf[OfferTransactionStatusResponse]
}
