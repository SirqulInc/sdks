package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiVoiceCanvasResponse._

case class OrsonAiVoiceCanvasResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
filenames: Option[List[String]])

object OrsonAiVoiceCanvasResponse {
  import DateTimeCodecs._

  implicit val OrsonAiVoiceCanvasResponseCodecJson: CodecJson[OrsonAiVoiceCanvasResponse] = CodecJson.derive[OrsonAiVoiceCanvasResponse]
  implicit val OrsonAiVoiceCanvasResponseDecoder: EntityDecoder[OrsonAiVoiceCanvasResponse] = jsonOf[OrsonAiVoiceCanvasResponse]
  implicit val OrsonAiVoiceCanvasResponseEncoder: EntityEncoder[OrsonAiVoiceCanvasResponse] = jsonEncoderOf[OrsonAiVoiceCanvasResponse]
}
