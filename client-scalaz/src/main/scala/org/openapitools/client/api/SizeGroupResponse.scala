package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SizeGroupResponse._

case class SizeGroupResponse (
  id: Option[Long],
name: Option[String],
description: Option[String])

object SizeGroupResponse {
  import DateTimeCodecs._

  implicit val SizeGroupResponseCodecJson: CodecJson[SizeGroupResponse] = CodecJson.derive[SizeGroupResponse]
  implicit val SizeGroupResponseDecoder: EntityDecoder[SizeGroupResponse] = jsonOf[SizeGroupResponse]
  implicit val SizeGroupResponseEncoder: EntityEncoder[SizeGroupResponse] = jsonEncoderOf[SizeGroupResponse]
}
