package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ParticipantResponse._

case class ParticipantResponse (
  id: Option[Long],
account: Option[AccountMiniResponse],
availableStart: Option[Long],
availableEnd: Option[Long],
color1: Option[String],
color2: Option[String],
`type`: Option[String])

object ParticipantResponse {
  import DateTimeCodecs._

  implicit val ParticipantResponseCodecJson: CodecJson[ParticipantResponse] = CodecJson.derive[ParticipantResponse]
  implicit val ParticipantResponseDecoder: EntityDecoder[ParticipantResponse] = jsonOf[ParticipantResponse]
  implicit val ParticipantResponseEncoder: EntityEncoder[ParticipantResponse] = jsonEncoderOf[ParticipantResponse]
}
