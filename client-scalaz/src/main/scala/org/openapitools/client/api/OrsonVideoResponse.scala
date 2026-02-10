package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonVideoResponse._

case class OrsonVideoResponse (
  uri: Option[String],
expires: Option[String])

object OrsonVideoResponse {
  import DateTimeCodecs._

  implicit val OrsonVideoResponseCodecJson: CodecJson[OrsonVideoResponse] = CodecJson.derive[OrsonVideoResponse]
  implicit val OrsonVideoResponseDecoder: EntityDecoder[OrsonVideoResponse] = jsonOf[OrsonVideoResponse]
  implicit val OrsonVideoResponseEncoder: EntityEncoder[OrsonVideoResponse] = jsonEncoderOf[OrsonVideoResponse]
}
