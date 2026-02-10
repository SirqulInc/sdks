package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DriverResponse._

case class DriverResponse (
  id: Option[String],
name: Option[String],
depot: Option[LocationResponse],
availability: Option[List[AvailabilityResponse]])

object DriverResponse {
  import DateTimeCodecs._

  implicit val DriverResponseCodecJson: CodecJson[DriverResponse] = CodecJson.derive[DriverResponse]
  implicit val DriverResponseDecoder: EntityDecoder[DriverResponse] = jsonOf[DriverResponse]
  implicit val DriverResponseEncoder: EntityEncoder[DriverResponse] = jsonEncoderOf[DriverResponse]
}
