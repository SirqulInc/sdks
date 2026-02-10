package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RetailerResponse._

case class RetailerResponse (
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
counts: Option[RetailerCountResponse])

object RetailerResponse {
  import DateTimeCodecs._

  implicit val RetailerResponseCodecJson: CodecJson[RetailerResponse] = CodecJson.derive[RetailerResponse]
  implicit val RetailerResponseDecoder: EntityDecoder[RetailerResponse] = jsonOf[RetailerResponse]
  implicit val RetailerResponseEncoder: EntityEncoder[RetailerResponse] = jsonEncoderOf[RetailerResponse]
}
