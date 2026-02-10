package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MissionFormatResponse._

case class MissionFormatResponse (
  missionFormatId: Option[Long],
formatType: Option[String],
active: Option[Boolean],
name: Option[String],
description: Option[String],
format: Option[String],
suffix: Option[String])

object MissionFormatResponse {
  import DateTimeCodecs._

  implicit val MissionFormatResponseCodecJson: CodecJson[MissionFormatResponse] = CodecJson.derive[MissionFormatResponse]
  implicit val MissionFormatResponseDecoder: EntityDecoder[MissionFormatResponse] = jsonOf[MissionFormatResponse]
  implicit val MissionFormatResponseEncoder: EntityEncoder[MissionFormatResponse] = jsonEncoderOf[MissionFormatResponse]
}
