package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CargoType._

case class CargoType (
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
weight: Option[Double],
loadTime: Option[Long],
palletizable: Option[Boolean],
palletRatio: Option[Integer],
adminOnly: Option[Boolean])

object CargoType {
  import DateTimeCodecs._

  implicit val CargoTypeCodecJson: CodecJson[CargoType] = CodecJson.derive[CargoType]
  implicit val CargoTypeDecoder: EntityDecoder[CargoType] = jsonOf[CargoType]
  implicit val CargoTypeEncoder: EntityEncoder[CargoType] = jsonEncoderOf[CargoType]
}
