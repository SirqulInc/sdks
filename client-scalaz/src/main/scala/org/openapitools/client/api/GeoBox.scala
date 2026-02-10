package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GeoBox._

case class GeoBox (
  north: Option[Double],
east: Option[Double],
south: Option[Double],
west: Option[Double])

object GeoBox {
  import DateTimeCodecs._

  implicit val GeoBoxCodecJson: CodecJson[GeoBox] = CodecJson.derive[GeoBox]
  implicit val GeoBoxDecoder: EntityDecoder[GeoBox] = jsonOf[GeoBox]
  implicit val GeoBoxEncoder: EntityEncoder[GeoBox] = jsonEncoderOf[GeoBox]
}
