package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CellCarrier._

case class CellCarrier (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
uid: Option[String],
display: Option[String],
emailFormat: Option[String],
apiUrl: Option[String],
authUrl: Option[String],
shortCode: Option[String],
clientId: Option[String],
clientSecret: Option[String])

object CellCarrier {
  import DateTimeCodecs._

  implicit val CellCarrierCodecJson: CodecJson[CellCarrier] = CodecJson.derive[CellCarrier]
  implicit val CellCarrierDecoder: EntityDecoder[CellCarrier] = jsonOf[CellCarrier]
  implicit val CellCarrierEncoder: EntityEncoder[CellCarrier] = jsonEncoderOf[CellCarrier]
}
