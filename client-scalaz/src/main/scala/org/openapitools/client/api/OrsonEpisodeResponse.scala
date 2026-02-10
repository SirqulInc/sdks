package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonEpisodeResponse._

case class OrsonEpisodeResponse (
  id: Option[String],
status: Option[String],
statusDescription: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
renders: Option[List[OrsonRenderResponse]])

object OrsonEpisodeResponse {
  import DateTimeCodecs._

  implicit val OrsonEpisodeResponseCodecJson: CodecJson[OrsonEpisodeResponse] = CodecJson.derive[OrsonEpisodeResponse]
  implicit val OrsonEpisodeResponseDecoder: EntityDecoder[OrsonEpisodeResponse] = jsonOf[OrsonEpisodeResponse]
  implicit val OrsonEpisodeResponseEncoder: EntityEncoder[OrsonEpisodeResponse] = jsonEncoderOf[OrsonEpisodeResponse]
}
