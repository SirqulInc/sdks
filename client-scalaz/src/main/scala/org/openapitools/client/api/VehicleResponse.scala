package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import VehicleResponse._

case class VehicleResponse (
  id: Option[String],
name: Option[String],
capacity: Option[Long],
depot: Option[GeoResponse],
startWindow: Option[Long],
endWindow: Option[Long],
current: Option[GeoResponse],
depotAsStop: Option[StopResponse])

object VehicleResponse {
  import DateTimeCodecs._

  implicit val VehicleResponseCodecJson: CodecJson[VehicleResponse] = CodecJson.derive[VehicleResponse]
  implicit val VehicleResponseDecoder: EntityDecoder[VehicleResponse] = jsonOf[VehicleResponse]
  implicit val VehicleResponseEncoder: EntityEncoder[VehicleResponse] = jsonEncoderOf[VehicleResponse]
}
