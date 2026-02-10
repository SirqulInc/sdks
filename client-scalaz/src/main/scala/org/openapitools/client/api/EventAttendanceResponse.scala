package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import EventAttendanceResponse._

case class EventAttendanceResponse (
  event: Option[OfferShortResponse],
affiliatedCategories: Option[List[CategoryResponse]],
attendee: Option[AccountShortResponse],
friend: Option[Boolean])

object EventAttendanceResponse {
  import DateTimeCodecs._

  implicit val EventAttendanceResponseCodecJson: CodecJson[EventAttendanceResponse] = CodecJson.derive[EventAttendanceResponse]
  implicit val EventAttendanceResponseDecoder: EntityDecoder[EventAttendanceResponse] = jsonOf[EventAttendanceResponse]
  implicit val EventAttendanceResponseEncoder: EntityEncoder[EventAttendanceResponse] = jsonEncoderOf[EventAttendanceResponse]
}
