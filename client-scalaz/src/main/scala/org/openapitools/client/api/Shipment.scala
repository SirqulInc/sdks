package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Shipment._

case class Shipment (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
owner: Option[Account],
rider: Option[Account],
pickupStop: Option[Stop],
dropOffStop: Option[Stop],
notes: Option[List[Note]],
noteCount: Option[Long],
batchId: Option[String],
reserved: Option[OffsetDateTime],
canceled: Option[OffsetDateTime],
confirmed: Option[OffsetDateTime],
route: Option[Route],
polyline: Option[String],
replacePassenger: Option[Shipment],
refunded: Option[Boolean],
promoCode: Option[PromoCode],
quantity: Option[Integer],
pickupTimeWindow: Option[DateTimeRange],
dropOffTimeWindow: Option[DateTimeRange],
cargoType: Option[CargoType],
serviceType: Option[ServiceType],
routeId: Option[Long],
totalVolume: Option[Double],
complete: Option[Boolean],
contentName: Option[String],
riderName: Option[String])

object Shipment {
  import DateTimeCodecs._

  implicit val ShipmentCodecJson: CodecJson[Shipment] = CodecJson.derive[Shipment]
  implicit val ShipmentDecoder: EntityDecoder[Shipment] = jsonOf[Shipment]
  implicit val ShipmentEncoder: EntityEncoder[Shipment] = jsonEncoderOf[Shipment]
}
