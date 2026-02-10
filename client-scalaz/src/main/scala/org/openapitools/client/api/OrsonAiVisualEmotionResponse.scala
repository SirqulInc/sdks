package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiVisualEmotionResponse._

case class OrsonAiVisualEmotionResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
userIndex: Option[Long],
emotion: Option[String],
probability: Option[Double])

object OrsonAiVisualEmotionResponse {
  import DateTimeCodecs._

  implicit val OrsonAiVisualEmotionResponseCodecJson: CodecJson[OrsonAiVisualEmotionResponse] = CodecJson.derive[OrsonAiVisualEmotionResponse]
  implicit val OrsonAiVisualEmotionResponseDecoder: EntityDecoder[OrsonAiVisualEmotionResponse] = jsonOf[OrsonAiVisualEmotionResponse]
  implicit val OrsonAiVisualEmotionResponseEncoder: EntityEncoder[OrsonAiVisualEmotionResponse] = jsonEncoderOf[OrsonAiVisualEmotionResponse]
}
