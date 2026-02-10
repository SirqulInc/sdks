package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RetailerShortResponse._

case class RetailerShortResponse (
  retailerId: Option[Long],
name: Option[String],
facebookUrl: Option[String],
twitterUrl: Option[String],
active: Option[Boolean],
contact: Option[ContactInfoResponse],
logo: Option[AssetShortResponse],
picture1: Option[AssetShortResponse],
picture2: Option[AssetShortResponse],
latitude: Option[Double],
longitude: Option[Double],
visibility: Option[String])

object RetailerShortResponse {
  import DateTimeCodecs._

  implicit val RetailerShortResponseCodecJson: CodecJson[RetailerShortResponse] = CodecJson.derive[RetailerShortResponse]
  implicit val RetailerShortResponseDecoder: EntityDecoder[RetailerShortResponse] = jsonOf[RetailerShortResponse]
  implicit val RetailerShortResponseEncoder: EntityEncoder[RetailerShortResponse] = jsonEncoderOf[RetailerShortResponse]
}
