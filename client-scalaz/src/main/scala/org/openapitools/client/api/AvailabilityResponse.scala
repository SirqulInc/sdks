package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AvailabilityResponse._

case class AvailabilityResponse (
  availabilityId: Option[Long],
startDate: Option[Long],
endDate: Option[Long],
dayOfWeek: Option[Integer],
startTime: Option[Long],
endTime: Option[Long],
timeZone: Option[String],
deleted: Option[Boolean])

object AvailabilityResponse {
  import DateTimeCodecs._

  implicit val AvailabilityResponseCodecJson: CodecJson[AvailabilityResponse] = CodecJson.derive[AvailabilityResponse]
  implicit val AvailabilityResponseDecoder: EntityDecoder[AvailabilityResponse] = jsonOf[AvailabilityResponse]
  implicit val AvailabilityResponseEncoder: EntityEncoder[AvailabilityResponse] = jsonEncoderOf[AvailabilityResponse]
}
