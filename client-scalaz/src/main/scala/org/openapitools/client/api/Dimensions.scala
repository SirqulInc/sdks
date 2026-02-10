package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Dimensions._

case class Dimensions (
  width: Option[Double],
height: Option[Double],
depth: Option[Double],
volume: Option[Double])

object Dimensions {
  import DateTimeCodecs._

  implicit val DimensionsCodecJson: CodecJson[Dimensions] = CodecJson.derive[Dimensions]
  implicit val DimensionsDecoder: EntityDecoder[Dimensions] = jsonOf[Dimensions]
  implicit val DimensionsEncoder: EntityEncoder[Dimensions] = jsonEncoderOf[Dimensions]
}
