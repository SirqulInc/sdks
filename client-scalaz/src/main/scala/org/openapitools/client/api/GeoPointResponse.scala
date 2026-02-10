package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GeoPointResponse._

case class GeoPointResponse (
  objectId: Option[String],
latitude: Option[Double],
longitude: Option[Double],
altitude: Option[Double],
locationDescription: Option[String],
locatableId: Option[Long],
locatableObjectId: Option[String],
locatableObjectName: Option[String],
locatableDisplay: Option[String],
asset: Option[AssetShortResponse],
distance: Option[Double])

object GeoPointResponse {
  import DateTimeCodecs._

  implicit val GeoPointResponseCodecJson: CodecJson[GeoPointResponse] = CodecJson.derive[GeoPointResponse]
  implicit val GeoPointResponseDecoder: EntityDecoder[GeoPointResponse] = jsonOf[GeoPointResponse]
  implicit val GeoPointResponseEncoder: EntityEncoder[GeoPointResponse] = jsonEncoderOf[GeoPointResponse]
}
