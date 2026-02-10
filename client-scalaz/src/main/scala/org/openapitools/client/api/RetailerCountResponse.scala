package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RetailerCountResponse._

case class RetailerCountResponse (
  locations: Option[Integer],
transactions: Option[Integer],
offers: Option[Integer])

object RetailerCountResponse {
  import DateTimeCodecs._

  implicit val RetailerCountResponseCodecJson: CodecJson[RetailerCountResponse] = CodecJson.derive[RetailerCountResponse]
  implicit val RetailerCountResponseDecoder: EntityDecoder[RetailerCountResponse] = jsonOf[RetailerCountResponse]
  implicit val RetailerCountResponseEncoder: EntityEncoder[RetailerCountResponse] = jsonEncoderOf[RetailerCountResponse]
}
