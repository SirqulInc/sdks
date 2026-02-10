package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OrsonAiTechTuneResponse._

case class OrsonAiTechTuneResponse (
  requestId: Option[String],
responseCode: Option[Integer],
responseRaw: Option[String],
people: Option[Integer],
wasCutoff: Option[Boolean],
frames: Option[Integer],
framesWithoutAFace: Option[Integer],
framesWithFaceOffscreen: Option[Integer],
framesWithWrongNumberOfPeople: Option[Integer],
height: Option[Integer],
width: Option[Integer],
fps: Option[Integer])

object OrsonAiTechTuneResponse {
  import DateTimeCodecs._

  implicit val OrsonAiTechTuneResponseCodecJson: CodecJson[OrsonAiTechTuneResponse] = CodecJson.derive[OrsonAiTechTuneResponse]
  implicit val OrsonAiTechTuneResponseDecoder: EntityDecoder[OrsonAiTechTuneResponse] = jsonOf[OrsonAiTechTuneResponse]
  implicit val OrsonAiTechTuneResponseEncoder: EntityEncoder[OrsonAiTechTuneResponse] = jsonEncoderOf[OrsonAiTechTuneResponse]
}
