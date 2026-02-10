package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PathingResponse._

case class PathingResponse (
  start: Option[NodeRequest],
end: Option[NodeRequest],
waypoints: Option[List[NodeRequest]],
exclusions: Option[List[NodeRequest]],
width: Option[Integer],
height: Option[Integer],
southwest: Option[NodeRequest],
northeast: Option[NodeRequest],
metersPerX: Option[Double],
metersPerY: Option[Double],
`path`: Option[List[NodeRequest]],
pathCount: Option[Integer],
directions: Option[List[DirectionResponse]],
directionCount: Option[Integer],
swcalibration: Option[NodeRequest],
calibrationBearings: Option[Double],
necalibration: Option[NodeRequest])

object PathingResponse {
  import DateTimeCodecs._

  implicit val PathingResponseCodecJson: CodecJson[PathingResponse] = CodecJson.derive[PathingResponse]
  implicit val PathingResponseDecoder: EntityDecoder[PathingResponse] = jsonOf[PathingResponse]
  implicit val PathingResponseEncoder: EntityEncoder[PathingResponse] = jsonEncoderOf[PathingResponse]
}
