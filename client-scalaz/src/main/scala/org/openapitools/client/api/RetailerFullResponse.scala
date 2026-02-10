package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RetailerFullResponse._

case class RetailerFullResponse (
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
visibility: Option[String],
responsible: Option[ProfileShortResponse],
manager: Option[ProfileShortResponse],
billableEntity: Option[BillableEntityResponse],
counts: Option[RetailerCountResponse],
locations: Option[List[RetailerLocationShortResponse]])

object RetailerFullResponse {
  import DateTimeCodecs._

  implicit val RetailerFullResponseCodecJson: CodecJson[RetailerFullResponse] = CodecJson.derive[RetailerFullResponse]
  implicit val RetailerFullResponseDecoder: EntityDecoder[RetailerFullResponse] = jsonOf[RetailerFullResponse]
  implicit val RetailerFullResponseEncoder: EntityEncoder[RetailerFullResponse] = jsonEncoderOf[RetailerFullResponse]
}
