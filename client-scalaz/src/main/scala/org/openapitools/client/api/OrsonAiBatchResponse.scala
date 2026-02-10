package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiBatchResponse._

case class OrsonAiBatchResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
transcript: Option[OrsonAiBatchTranscriptResponse],
topics: Option[OrsonAiBatchTopicsResponse],
emotions: Option[OrsonAiBatchEmotionsResponse])

object OrsonAiBatchResponse {
  import DateTimeCodecs._

  implicit val OrsonAiBatchResponseCodecJson: CodecJson[OrsonAiBatchResponse] = CodecJson.derive[OrsonAiBatchResponse]
  implicit val OrsonAiBatchResponseDecoder: EntityDecoder[OrsonAiBatchResponse] = jsonOf[OrsonAiBatchResponse]
  implicit val OrsonAiBatchResponseEncoder: EntityEncoder[OrsonAiBatchResponse] = jsonEncoderOf[OrsonAiBatchResponse]
}
