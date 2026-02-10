package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Route._

case class Route (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
externalId: Option[String],
hub: Option[ServiceHub],
program: Option[Program],
zone: Option[Region],
vehicle: Option[Vehicle],
driver: Option[Account],
concierge: Option[Account],
scheduled: Option[OffsetDateTime],
approved: Option[OffsetDateTime],
started: Option[OffsetDateTime],
completed: Option[OffsetDateTime],
totalDistance: Option[Float],
totalTime: Option[Long],
estimatedDistance: Option[Double],
estimatedTime: Option[Long],
startStop: Option[Stop],
endStop: Option[Stop],
stops: Option[List[Stop]],
shipments: Option[List[Shipment]],
allShipmentsConfirmed: Option[Boolean],
shipmentOrderCount: Option[Integer],
polyline: Option[String],
notes: Option[List[Note]],
noteCount: Option[Long],
glympseToken: Option[String],
enableOptimization: Option[Boolean],
optimizedDate: Option[OffsetDateTime],
optimizationStarted: Option[OffsetDateTime],
optimizationCompleted: Option[OffsetDateTime],
featured: Option[Boolean],
image: Option[Asset],
parent: Option[Route],
contentName: Option[String])

object Route {
  import DateTimeCodecs._

  implicit val RouteCodecJson: CodecJson[Route] = CodecJson.derive[Route]
  implicit val RouteDecoder: EntityDecoder[Route] = jsonOf[Route]
  implicit val RouteEncoder: EntityEncoder[Route] = jsonEncoderOf[Route]
}
