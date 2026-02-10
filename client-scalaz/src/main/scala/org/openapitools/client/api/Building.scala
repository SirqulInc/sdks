package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Building._

case class Building (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
buildingType: Option[String])

object Building {
  import DateTimeCodecs._

  implicit val BuildingCodecJson: CodecJson[Building] = CodecJson.derive[Building]
  implicit val BuildingDecoder: EntityDecoder[Building] = jsonOf[Building]
  implicit val BuildingEncoder: EntityEncoder[Building] = jsonEncoderOf[Building]
}
