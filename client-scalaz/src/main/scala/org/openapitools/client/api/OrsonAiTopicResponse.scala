package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiTopicResponse._

case class OrsonAiTopicResponse (
  word: Option[String],
score: Option[Double])

object OrsonAiTopicResponse {
  import DateTimeCodecs._

  implicit val OrsonAiTopicResponseCodecJson: CodecJson[OrsonAiTopicResponse] = CodecJson.derive[OrsonAiTopicResponse]
  implicit val OrsonAiTopicResponseDecoder: EntityDecoder[OrsonAiTopicResponse] = jsonOf[OrsonAiTopicResponse]
  implicit val OrsonAiTopicResponseEncoder: EntityEncoder[OrsonAiTopicResponse] = jsonEncoderOf[OrsonAiTopicResponse]
}
