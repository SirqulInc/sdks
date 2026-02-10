package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TimeSlotResponse._

case class TimeSlotResponse (
  scheduledDate: Option[Long],
startTime: Option[Long],
endTime: Option[Long],
dayOfWeek: Option[Integer],
timeZone: Option[String],
reservationCount: Option[Integer],
reservations: Option[List[AccountShortResponse]])

object TimeSlotResponse {
  import DateTimeCodecs._

  implicit val TimeSlotResponseCodecJson: CodecJson[TimeSlotResponse] = CodecJson.derive[TimeSlotResponse]
  implicit val TimeSlotResponseDecoder: EntityDecoder[TimeSlotResponse] = jsonOf[TimeSlotResponse]
  implicit val TimeSlotResponseEncoder: EntityEncoder[TimeSlotResponse] = jsonEncoderOf[TimeSlotResponse]
}
