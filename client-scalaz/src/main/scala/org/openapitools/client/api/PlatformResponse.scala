package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PlatformResponse._

case class PlatformResponse (
  deviceId: Option[Long],
active: Option[Boolean],
name: Option[String],
display: Option[String],
minimum: Option[Long],
maximum: Option[Long],
downloadUrl: Option[String],
description: Option[String])

object PlatformResponse {
  import DateTimeCodecs._

  implicit val PlatformResponseCodecJson: CodecJson[PlatformResponse] = CodecJson.derive[PlatformResponse]
  implicit val PlatformResponseDecoder: EntityDecoder[PlatformResponse] = jsonOf[PlatformResponse]
  implicit val PlatformResponseEncoder: EntityEncoder[PlatformResponse] = jsonEncoderOf[PlatformResponse]
}
