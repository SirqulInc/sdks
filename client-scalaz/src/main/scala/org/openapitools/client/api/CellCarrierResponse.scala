package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CellCarrierResponse._

case class CellCarrierResponse (
  id: Option[Long],
uid: Option[String],
display: Option[String])

object CellCarrierResponse {
  import DateTimeCodecs._

  implicit val CellCarrierResponseCodecJson: CodecJson[CellCarrierResponse] = CodecJson.derive[CellCarrierResponse]
  implicit val CellCarrierResponseDecoder: EntityDecoder[CellCarrierResponse] = jsonOf[CellCarrierResponse]
  implicit val CellCarrierResponseEncoder: EntityEncoder[CellCarrierResponse] = jsonEncoderOf[CellCarrierResponse]
}
