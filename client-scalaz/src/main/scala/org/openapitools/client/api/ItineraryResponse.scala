package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ItineraryResponse._

case class ItineraryResponse (
  itineraryId: Option[String],
waypointCount: Option[Long],
score: Option[Long],
errorCode: Option[String],
error: Option[String],
itemCount: Option[Integer],
vehicle: Option[VehicleResponse],
stops: Option[List[StopResponse]],
estimatedStartTime: Option[Long],
estimatedEndTime: Option[Long],
estimatedDuration: Option[Long],
estimatedDistance: Option[Double],
waitTime: Option[Long],
generated: Option[Boolean],
valid: Option[Boolean])

object ItineraryResponse {
  import DateTimeCodecs._

  implicit val ItineraryResponseCodecJson: CodecJson[ItineraryResponse] = CodecJson.derive[ItineraryResponse]
  implicit val ItineraryResponseDecoder: EntityDecoder[ItineraryResponse] = jsonOf[ItineraryResponse]
  implicit val ItineraryResponseEncoder: EntityEncoder[ItineraryResponse] = jsonEncoderOf[ItineraryResponse]
}
