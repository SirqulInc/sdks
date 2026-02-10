package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import DateTimeRange._

case class DateTimeRange (
  start: Option[OffsetDateTime],
end: Option[OffsetDateTime],
interval: Option[Interval])

object DateTimeRange {
  import DateTimeCodecs._

  implicit val DateTimeRangeCodecJson: CodecJson[DateTimeRange] = CodecJson.derive[DateTimeRange]
  implicit val DateTimeRangeDecoder: EntityDecoder[DateTimeRange] = jsonOf[DateTimeRange]
  implicit val DateTimeRangeEncoder: EntityEncoder[DateTimeRange] = jsonEncoderOf[DateTimeRange]
}
