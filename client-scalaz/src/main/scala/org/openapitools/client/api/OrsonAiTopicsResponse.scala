package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiTopicsResponse._

case class OrsonAiTopicsResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
topics: Option[List[OrsonAiTopicResponse]])

object OrsonAiTopicsResponse {
  import DateTimeCodecs._

  implicit val OrsonAiTopicsResponseCodecJson: CodecJson[OrsonAiTopicsResponse] = CodecJson.derive[OrsonAiTopicsResponse]
  implicit val OrsonAiTopicsResponseDecoder: EntityDecoder[OrsonAiTopicsResponse] = jsonOf[OrsonAiTopicsResponse]
  implicit val OrsonAiTopicsResponseEncoder: EntityEncoder[OrsonAiTopicsResponse] = jsonEncoderOf[OrsonAiTopicsResponse]
}
