package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AudienceDevice._

case class AudienceDevice (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
minimum: Option[Long],
maximum: Option[Long])

object AudienceDevice {
  import DateTimeCodecs._

  implicit val AudienceDeviceCodecJson: CodecJson[AudienceDevice] = CodecJson.derive[AudienceDevice]
  implicit val AudienceDeviceDecoder: EntityDecoder[AudienceDevice] = jsonOf[AudienceDevice]
  implicit val AudienceDeviceEncoder: EntityEncoder[AudienceDevice] = jsonEncoderOf[AudienceDevice]
}
