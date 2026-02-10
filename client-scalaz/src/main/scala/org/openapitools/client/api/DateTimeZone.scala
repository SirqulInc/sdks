package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DateTimeZone._

case class DateTimeZone (
  id: Option[String],
fixed: Option[Boolean])

object DateTimeZone {
  import DateTimeCodecs._

  implicit val DateTimeZoneCodecJson: CodecJson[DateTimeZone] = CodecJson.derive[DateTimeZone]
  implicit val DateTimeZoneDecoder: EntityDecoder[DateTimeZone] = jsonOf[DateTimeZone]
  implicit val DateTimeZoneEncoder: EntityEncoder[DateTimeZone] = jsonEncoderOf[DateTimeZone]
}
