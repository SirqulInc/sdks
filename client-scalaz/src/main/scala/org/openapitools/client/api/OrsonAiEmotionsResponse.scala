package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiEmotionsResponse._

case class OrsonAiEmotionsResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
status: Option[String],
error: Option[String],
audioEmotions: Option[List[String]],
visualEmotions: Option[List[OrsonAiVisualEmotionResponse]])

object OrsonAiEmotionsResponse {
  import DateTimeCodecs._

  implicit val OrsonAiEmotionsResponseCodecJson: CodecJson[OrsonAiEmotionsResponse] = CodecJson.derive[OrsonAiEmotionsResponse]
  implicit val OrsonAiEmotionsResponseDecoder: EntityDecoder[OrsonAiEmotionsResponse] = jsonOf[OrsonAiEmotionsResponse]
  implicit val OrsonAiEmotionsResponseEncoder: EntityEncoder[OrsonAiEmotionsResponse] = jsonEncoderOf[OrsonAiEmotionsResponse]
}
