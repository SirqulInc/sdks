package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import UrlResponse._

case class UrlResponse (
  url: Option[String],
asset: Option[AssetShortResponse])

object UrlResponse {
  import DateTimeCodecs._

  implicit val UrlResponseCodecJson: CodecJson[UrlResponse] = CodecJson.derive[UrlResponse]
  implicit val UrlResponseDecoder: EntityDecoder[UrlResponse] = jsonOf[UrlResponse]
  implicit val UrlResponseEncoder: EntityEncoder[UrlResponse] = jsonEncoderOf[UrlResponse]
}
