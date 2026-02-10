package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import RoutingResponse._

case class RoutingResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[LoadResponse]],
vehicles: Option[List[VehicleResponse]],
drivers: Option[List[DriverResponse]],
config: Option[ConfigRoutingRequest],
error: Option[String],
debug: Option[List[String]],
startTime: Option[OffsetDateTime],
endTime: Option[OffsetDateTime],
responses: Option[List[RoutingResponse]],
orignalRequest: Option[String],
generated: Option[Boolean],
itineraries: Option[List[ItineraryResponse]],
score: Option[Long],
loadSize: Option[Integer],
runtime: Option[Long],
earliestPickupWindow: Option[Long],
latestPickupWindow: Option[Long],
returning: Option[String])

object RoutingResponse {
  import DateTimeCodecs._

  implicit val RoutingResponseCodecJson: CodecJson[RoutingResponse] = CodecJson.derive[RoutingResponse]
  implicit val RoutingResponseDecoder: EntityDecoder[RoutingResponse] = jsonOf[RoutingResponse]
  implicit val RoutingResponseEncoder: EntityEncoder[RoutingResponse] = jsonEncoderOf[RoutingResponse]
}
