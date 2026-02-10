package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrderPackage._

case class OrderPackage (
  valid: Option[Boolean],
packageTypeName: Option[String],
packageCount: Option[Integer],
cubicFeet: Option[Double])

object OrderPackage {
  import DateTimeCodecs._

  implicit val OrderPackageCodecJson: CodecJson[OrderPackage] = CodecJson.derive[OrderPackage]
  implicit val OrderPackageDecoder: EntityDecoder[OrderPackage] = jsonOf[OrderPackage]
  implicit val OrderPackageEncoder: EntityEncoder[OrderPackage] = jsonEncoderOf[OrderPackage]
}
