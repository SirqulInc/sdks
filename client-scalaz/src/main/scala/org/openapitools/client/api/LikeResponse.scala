package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LikeResponse._

case class LikeResponse (
  account: Option[AccountShortResponse])

object LikeResponse {
  import DateTimeCodecs._

  implicit val LikeResponseCodecJson: CodecJson[LikeResponse] = CodecJson.derive[LikeResponse]
  implicit val LikeResponseDecoder: EntityDecoder[LikeResponse] = jsonOf[LikeResponse]
  implicit val LikeResponseEncoder: EntityEncoder[LikeResponse] = jsonEncoderOf[LikeResponse]
}
