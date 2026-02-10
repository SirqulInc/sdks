package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Platform._

case class Platform (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
device: Option[AudienceDevice],
minimum: Option[Long],
maximum: Option[Long],
downloadUrl: Option[String],
description: Option[String])

object Platform {
  import DateTimeCodecs._

  implicit val PlatformCodecJson: CodecJson[Platform] = CodecJson.derive[Platform]
  implicit val PlatformDecoder: EntityDecoder[Platform] = jsonOf[Platform]
  implicit val PlatformEncoder: EntityEncoder[Platform] = jsonEncoderOf[Platform]
}
