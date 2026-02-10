package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiProdResponse._

case class OrsonAiProdResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String])

object OrsonAiProdResponse {
  import DateTimeCodecs._

  implicit val OrsonAiProdResponseCodecJson: CodecJson[OrsonAiProdResponse] = CodecJson.derive[OrsonAiProdResponse]
  implicit val OrsonAiProdResponseDecoder: EntityDecoder[OrsonAiProdResponse] = jsonOf[OrsonAiProdResponse]
  implicit val OrsonAiProdResponseEncoder: EntityEncoder[OrsonAiProdResponse] = jsonEncoderOf[OrsonAiProdResponse]
}
