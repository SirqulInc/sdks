package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AppResponse._

case class AppResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
missions: Option[MissionListResponse],
profile: Option[ProfileResponse],
messages: Option[MessageListResponse],
returning: Option[String])

object AppResponse {
  import DateTimeCodecs._

  implicit val AppResponseCodecJson: CodecJson[AppResponse] = CodecJson.derive[AppResponse]
  implicit val AppResponseDecoder: EntityDecoder[AppResponse] = jsonOf[AppResponse]
  implicit val AppResponseEncoder: EntityEncoder[AppResponse] = jsonEncoderOf[AppResponse]
}
