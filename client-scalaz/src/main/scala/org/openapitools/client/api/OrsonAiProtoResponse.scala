package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiProtoResponse._

case class OrsonAiProtoResponse (
  rawResponse: Option[String],
assetResponse: Option[AssetShortResponse])

object OrsonAiProtoResponse {
  import DateTimeCodecs._

  implicit val OrsonAiProtoResponseCodecJson: CodecJson[OrsonAiProtoResponse] = CodecJson.derive[OrsonAiProtoResponse]
  implicit val OrsonAiProtoResponseDecoder: EntityDecoder[OrsonAiProtoResponse] = jsonOf[OrsonAiProtoResponse]
  implicit val OrsonAiProtoResponseEncoder: EntityEncoder[OrsonAiProtoResponse] = jsonEncoderOf[OrsonAiProtoResponse]
}
