package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import VehicleCargoSetting._

case class VehicleCargoSetting (
  valid: Option[Boolean],
cargoType: Option[CargoType],
maxUnit: Option[Integer])

object VehicleCargoSetting {
  import DateTimeCodecs._

  implicit val VehicleCargoSettingCodecJson: CodecJson[VehicleCargoSetting] = CodecJson.derive[VehicleCargoSetting]
  implicit val VehicleCargoSettingDecoder: EntityDecoder[VehicleCargoSetting] = jsonOf[VehicleCargoSetting]
  implicit val VehicleCargoSettingEncoder: EntityEncoder[VehicleCargoSetting] = jsonEncoderOf[VehicleCargoSetting]
}
