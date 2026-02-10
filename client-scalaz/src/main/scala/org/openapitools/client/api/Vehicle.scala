package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Vehicle._

case class Vehicle (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
description: Option[String],
vehicleType: Option[VehicleType],
vin: Option[String],
licensePlateNumber: Option[String],
externalId: Option[String],
hub: Option[ServiceHub],
programs: Option[List[Program]],
seatQuantity: Option[Long],
picture: Option[Asset],
markerIcon: Option[Asset],
trackingColor: Option[String],
belongsTo: Option[Account],
zone: Option[Region],
notes: Option[List[Note]],
noteCount: Option[Long],
inUse: Option[Boolean],
contentName: Option[String])

object Vehicle {
  import DateTimeCodecs._

  implicit val VehicleCodecJson: CodecJson[Vehicle] = CodecJson.derive[Vehicle]
  implicit val VehicleDecoder: EntityDecoder[Vehicle] = jsonOf[Vehicle]
  implicit val VehicleEncoder: EntityEncoder[Vehicle] = jsonEncoderOf[Vehicle]
}
