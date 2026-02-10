package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import ShipmentOrder._

case class ShipmentOrder (
  valid: Option[Boolean],
batchID: Option[Integer],
batchSize: Option[Integer],
orderTrackingID: Option[Double],
clientRefNo: Option[String],
clientRefNo2: Option[String],
hubCode: Option[String],
accountNo: Option[String],
companyName: Option[String],
vehicleTypeName: Option[String],
serviceTypeName: Option[String],
serviceCode: Option[String],
pieces: Option[Integer],
weight: Option[Double],
cubicFeet: Option[Double],
pickupCompany: Option[String],
pickupContact: Option[String],
pickupPhone: Option[String],
pickupStreet: Option[String],
pickupStreet2: Option[String],
pickupCity: Option[String],
pickupState: Option[String],
pickupZip: Option[String],
pickupTargetFrom: Option[OffsetDateTime],
pickupTargetTo: Option[OffsetDateTime],
deliveryCompany: Option[String],
deliveryContact: Option[String],
deliveryPhone: Option[String],
deliveryStreet: Option[String],
deliveryStreet2: Option[String],
deliveryCity: Option[String],
deliveryState: Option[String],
deliveryZip: Option[String],
deliveryTargetFrom: Option[OffsetDateTime],
deliveryTargetTo: Option[OffsetDateTime],
orderPackages: Option[List[OrderPackage]],
routeID: Option[Integer],
driverID: Option[Integer],
pickupSequenceNo: Option[Integer],
deliverySequenceNo: Option[Integer],
pickupETA: Option[String],
deliveryETA: Option[String])

object ShipmentOrder {
  import DateTimeCodecs._

  implicit val ShipmentOrderCodecJson: CodecJson[ShipmentOrder] = CodecJson.derive[ShipmentOrder]
  implicit val ShipmentOrderDecoder: EntityDecoder[ShipmentOrder] = jsonOf[ShipmentOrder]
  implicit val ShipmentOrderEncoder: EntityEncoder[ShipmentOrder] = jsonEncoderOf[ShipmentOrder]
}
