package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ReservationResponse._

case class ReservationResponse (
  reservationId: Option[Long],
reservableId: Option[Long],
reservableType: Option[String],
account: Option[AccountShortResponse],
createdDate: Option[Long],
updatedDate: Option[Long],
startDate: Option[Long],
endDate: Option[Long],
transaction: Option[OfferShortResponse])

object ReservationResponse {
  import DateTimeCodecs._

  implicit val ReservationResponseCodecJson: CodecJson[ReservationResponse] = CodecJson.derive[ReservationResponse]
  implicit val ReservationResponseDecoder: EntityDecoder[ReservationResponse] = jsonOf[ReservationResponse]
  implicit val ReservationResponseEncoder: EntityEncoder[ReservationResponse] = jsonEncoderOf[ReservationResponse]
}
