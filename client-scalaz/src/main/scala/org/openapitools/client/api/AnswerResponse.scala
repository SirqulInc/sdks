package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AnswerResponse._

case class AnswerResponse (
  answerId: Option[Long],
answer: Option[String],
correct: Option[Boolean],
image: Option[AssetShortResponse],
videoURL: Option[String])

object AnswerResponse {
  import DateTimeCodecs._

  implicit val AnswerResponseCodecJson: CodecJson[AnswerResponse] = CodecJson.derive[AnswerResponse]
  implicit val AnswerResponseDecoder: EntityDecoder[AnswerResponse] = jsonOf[AnswerResponse]
  implicit val AnswerResponseEncoder: EntityEncoder[AnswerResponse] = jsonEncoderOf[AnswerResponse]
}
