package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import ShipmentImportStatus._

case class ShipmentImportStatus (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
batchId: Option[String],
message: Option[String],
shipment: Option[Shipment],
started: Option[OffsetDateTime],
completed: Option[OffsetDateTime])

object ShipmentImportStatus {
  import DateTimeCodecs._

  implicit val ShipmentImportStatusCodecJson: CodecJson[ShipmentImportStatus] = CodecJson.derive[ShipmentImportStatus]
  implicit val ShipmentImportStatusDecoder: EntityDecoder[ShipmentImportStatus] = jsonOf[ShipmentImportStatus]
  implicit val ShipmentImportStatusEncoder: EntityEncoder[ShipmentImportStatus] = jsonEncoderOf[ShipmentImportStatus]
}
