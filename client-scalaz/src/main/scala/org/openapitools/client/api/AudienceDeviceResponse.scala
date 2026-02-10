package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AudienceDeviceResponse._

case class AudienceDeviceResponse (
  deviceId: Option[Long],
active: Option[Boolean],
name: Option[String],
display: Option[String],
minimum: Option[Long],
maximum: Option[Long])

object AudienceDeviceResponse {
  import DateTimeCodecs._

  implicit val AudienceDeviceResponseCodecJson: CodecJson[AudienceDeviceResponse] = CodecJson.derive[AudienceDeviceResponse]
  implicit val AudienceDeviceResponseDecoder: EntityDecoder[AudienceDeviceResponse] = jsonOf[AudienceDeviceResponse]
  implicit val AudienceDeviceResponseEncoder: EntityEncoder[AudienceDeviceResponse] = jsonEncoderOf[AudienceDeviceResponse]
}
