package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RetailerLocationShortResponse._

case class RetailerLocationShortResponse (
  retailerLocationId: Option[Long],
name: Option[String],
contact: Option[ContactInfoResponse],
latitude: Option[Double],
longitude: Option[Double],
active: Option[Boolean],
favoriteId: Option[Long],
favorite: Option[Boolean])

object RetailerLocationShortResponse {
  import DateTimeCodecs._

  implicit val RetailerLocationShortResponseCodecJson: CodecJson[RetailerLocationShortResponse] = CodecJson.derive[RetailerLocationShortResponse]
  implicit val RetailerLocationShortResponseDecoder: EntityDecoder[RetailerLocationShortResponse] = jsonOf[RetailerLocationShortResponse]
  implicit val RetailerLocationShortResponseEncoder: EntityEncoder[RetailerLocationShortResponse] = jsonEncoderOf[RetailerLocationShortResponse]
}
