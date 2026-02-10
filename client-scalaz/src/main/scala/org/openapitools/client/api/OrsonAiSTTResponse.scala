package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiSTTResponse._

case class OrsonAiSTTResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
text: Option[String])

object OrsonAiSTTResponse {
  import DateTimeCodecs._

  implicit val OrsonAiSTTResponseCodecJson: CodecJson[OrsonAiSTTResponse] = CodecJson.derive[OrsonAiSTTResponse]
  implicit val OrsonAiSTTResponseDecoder: EntityDecoder[OrsonAiSTTResponse] = jsonOf[OrsonAiSTTResponse]
  implicit val OrsonAiSTTResponseEncoder: EntityEncoder[OrsonAiSTTResponse] = jsonEncoderOf[OrsonAiSTTResponse]
}
