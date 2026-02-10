package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiBatchEmotionsResponse._

case class OrsonAiBatchEmotionsResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
status: Option[String],
error: Option[String],
result: Option[OrsonAiEmotionsResponse])

object OrsonAiBatchEmotionsResponse {
  import DateTimeCodecs._

  implicit val OrsonAiBatchEmotionsResponseCodecJson: CodecJson[OrsonAiBatchEmotionsResponse] = CodecJson.derive[OrsonAiBatchEmotionsResponse]
  implicit val OrsonAiBatchEmotionsResponseDecoder: EntityDecoder[OrsonAiBatchEmotionsResponse] = jsonOf[OrsonAiBatchEmotionsResponse]
  implicit val OrsonAiBatchEmotionsResponseEncoder: EntityEncoder[OrsonAiBatchEmotionsResponse] = jsonEncoderOf[OrsonAiBatchEmotionsResponse]
}
