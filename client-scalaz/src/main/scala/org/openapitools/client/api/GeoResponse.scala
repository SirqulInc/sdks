package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GeoResponse._

case class GeoResponse (
  geoId: Option[String],
latitude: Option[Double],
longitude: Option[Double])

object GeoResponse {
  import DateTimeCodecs._

  implicit val GeoResponseCodecJson: CodecJson[GeoResponse] = CodecJson.derive[GeoResponse]
  implicit val GeoResponseDecoder: EntityDecoder[GeoResponse] = jsonOf[GeoResponse]
  implicit val GeoResponseEncoder: EntityEncoder[GeoResponse] = jsonEncoderOf[GeoResponse]
}
