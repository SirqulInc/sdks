package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import StepResponse._

case class StepResponse (
  leg: Option[LegResponse],
distance: Option[Double],
duration: Option[Long],
startLat: Option[Double],
startLng: Option[Double],
startAlt: Option[Double],
startDate: Option[Long],
endLat: Option[Double],
endLng: Option[Double],
endAlt: Option[Double],
endDate: Option[Long],
accuracy: Option[Integer])

object StepResponse {
  import DateTimeCodecs._

  implicit val StepResponseCodecJson: CodecJson[StepResponse] = CodecJson.derive[StepResponse]
  implicit val StepResponseDecoder: EntityDecoder[StepResponse] = jsonOf[StepResponse]
  implicit val StepResponseEncoder: EntityEncoder[StepResponse] = jsonEncoderOf[StepResponse]
}
