package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import VehicleType._

case class VehicleType (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
business: Option[Retailer],
hub: Option[ServiceHub],
name: Option[String],
width: Option[Double],
height: Option[Double],
depth: Option[Double],
volume: Option[Double],
maxWeight: Option[Double],
vehicleCargoSettings: Option[List[VehicleCargoSetting]])

object VehicleType {
  import DateTimeCodecs._

  implicit val VehicleTypeCodecJson: CodecJson[VehicleType] = CodecJson.derive[VehicleType]
  implicit val VehicleTypeDecoder: EntityDecoder[VehicleType] = jsonOf[VehicleType]
  implicit val VehicleTypeEncoder: EntityEncoder[VehicleType] = jsonEncoderOf[VehicleType]
}
