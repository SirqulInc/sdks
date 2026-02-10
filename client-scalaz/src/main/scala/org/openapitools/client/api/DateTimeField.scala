package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DateTimeField._

case class DateTimeField (
  name: Option[String],
`type`: Option[DateTimeFieldType],
supported: Option[Boolean],
minimumValue: Option[Integer],
maximumValue: Option[Integer],
durationField: Option[DurationField],
leapDurationField: Option[DurationField],
rangeDurationField: Option[DurationField],
lenient: Option[Boolean])

object DateTimeField {
  import DateTimeCodecs._

  implicit val DateTimeFieldCodecJson: CodecJson[DateTimeField] = CodecJson.derive[DateTimeField]
  implicit val DateTimeFieldDecoder: EntityDecoder[DateTimeField] = jsonOf[DateTimeField]
  implicit val DateTimeFieldEncoder: EntityEncoder[DateTimeField] = jsonEncoderOf[DateTimeField]
}
