package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AudienceDeviceVersionRange._

case class AudienceDeviceVersionRange (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
device: Option[AudienceDevice],
minimum: Option[Long],
maximum: Option[Long])

object AudienceDeviceVersionRange {
  import DateTimeCodecs._

  implicit val AudienceDeviceVersionRangeCodecJson: CodecJson[AudienceDeviceVersionRange] = CodecJson.derive[AudienceDeviceVersionRange]
  implicit val AudienceDeviceVersionRangeDecoder: EntityDecoder[AudienceDeviceVersionRange] = jsonOf[AudienceDeviceVersionRange]
  implicit val AudienceDeviceVersionRangeEncoder: EntityEncoder[AudienceDeviceVersionRange] = jsonEncoderOf[AudienceDeviceVersionRange]
}
