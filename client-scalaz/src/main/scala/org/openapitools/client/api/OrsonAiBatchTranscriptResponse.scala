package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiBatchTranscriptResponse._

case class OrsonAiBatchTranscriptResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
status: Option[String],
error: Option[String],
result: Option[String])

object OrsonAiBatchTranscriptResponse {
  import DateTimeCodecs._

  implicit val OrsonAiBatchTranscriptResponseCodecJson: CodecJson[OrsonAiBatchTranscriptResponse] = CodecJson.derive[OrsonAiBatchTranscriptResponse]
  implicit val OrsonAiBatchTranscriptResponseDecoder: EntityDecoder[OrsonAiBatchTranscriptResponse] = jsonOf[OrsonAiBatchTranscriptResponse]
  implicit val OrsonAiBatchTranscriptResponseEncoder: EntityEncoder[OrsonAiBatchTranscriptResponse] = jsonEncoderOf[OrsonAiBatchTranscriptResponse]
}
