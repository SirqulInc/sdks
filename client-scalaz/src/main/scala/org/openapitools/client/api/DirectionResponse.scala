package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DirectionResponse._

case class DirectionResponse (
  action: Option[String],
bearing: Option[Double],
bearingDifference: Option[Double],
heading: Option[String],
distance: Option[Double],
distanceUnits: Option[String],
distanceString: Option[String],
startLatitude: Option[Double],
startLongitude: Option[Double],
endLatitude: Option[Double],
endLongitude: Option[Double],
instruction: Option[String],
progressStatus: Option[String])

object DirectionResponse {
  import DateTimeCodecs._

  implicit val DirectionResponseCodecJson: CodecJson[DirectionResponse] = CodecJson.derive[DirectionResponse]
  implicit val DirectionResponseDecoder: EntityDecoder[DirectionResponse] = jsonOf[DirectionResponse]
  implicit val DirectionResponseEncoder: EntityEncoder[DirectionResponse] = jsonEncoderOf[DirectionResponse]
}
