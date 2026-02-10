package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MediaResponse._

case class MediaResponse (
  mediaType: Option[String],
duration: Option[Integer],
author: Option[String],
releaseDate: Option[Long])

object MediaResponse {
  import DateTimeCodecs._

  implicit val MediaResponseCodecJson: CodecJson[MediaResponse] = CodecJson.derive[MediaResponse]
  implicit val MediaResponseDecoder: EntityDecoder[MediaResponse] = jsonOf[MediaResponse]
  implicit val MediaResponseEncoder: EntityEncoder[MediaResponse] = jsonEncoderOf[MediaResponse]
}
