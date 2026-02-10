package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiBatchTopicsResponse._

case class OrsonAiBatchTopicsResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
status: Option[String],
error: Option[String],
result: Option[OrsonAiTopicsResponse])

object OrsonAiBatchTopicsResponse {
  import DateTimeCodecs._

  implicit val OrsonAiBatchTopicsResponseCodecJson: CodecJson[OrsonAiBatchTopicsResponse] = CodecJson.derive[OrsonAiBatchTopicsResponse]
  implicit val OrsonAiBatchTopicsResponseDecoder: EntityDecoder[OrsonAiBatchTopicsResponse] = jsonOf[OrsonAiBatchTopicsResponse]
  implicit val OrsonAiBatchTopicsResponseEncoder: EntityEncoder[OrsonAiBatchTopicsResponse] = jsonEncoderOf[OrsonAiBatchTopicsResponse]
}
