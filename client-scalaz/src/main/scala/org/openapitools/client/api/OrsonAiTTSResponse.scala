package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiTTSResponse._

case class OrsonAiTTSResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
asset: Option[AssetShortResponse])

object OrsonAiTTSResponse {
  import DateTimeCodecs._

  implicit val OrsonAiTTSResponseCodecJson: CodecJson[OrsonAiTTSResponse] = CodecJson.derive[OrsonAiTTSResponse]
  implicit val OrsonAiTTSResponseDecoder: EntityDecoder[OrsonAiTTSResponse] = jsonOf[OrsonAiTTSResponse]
  implicit val OrsonAiTTSResponseEncoder: EntityEncoder[OrsonAiTTSResponse] = jsonEncoderOf[OrsonAiTTSResponse]
}
