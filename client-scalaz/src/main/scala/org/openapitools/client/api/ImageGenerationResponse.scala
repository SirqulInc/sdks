package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ImageGenerationResponse._

case class ImageGenerationResponse (
  created: Option[Long],
data: Option[List[UrlResponse]])

object ImageGenerationResponse {
  import DateTimeCodecs._

  implicit val ImageGenerationResponseCodecJson: CodecJson[ImageGenerationResponse] = CodecJson.derive[ImageGenerationResponse]
  implicit val ImageGenerationResponseDecoder: EntityDecoder[ImageGenerationResponse] = jsonOf[ImageGenerationResponse]
  implicit val ImageGenerationResponseEncoder: EntityEncoder[ImageGenerationResponse] = jsonEncoderOf[ImageGenerationResponse]
}
