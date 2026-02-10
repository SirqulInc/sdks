package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AgeGroupResponse._

case class AgeGroupResponse (
  key: Option[String],
toString: Option[String])

object AgeGroupResponse {
  import DateTimeCodecs._

  implicit val AgeGroupResponseCodecJson: CodecJson[AgeGroupResponse] = CodecJson.derive[AgeGroupResponse]
  implicit val AgeGroupResponseDecoder: EntityDecoder[AgeGroupResponse] = jsonOf[AgeGroupResponse]
  implicit val AgeGroupResponseEncoder: EntityEncoder[AgeGroupResponse] = jsonEncoderOf[AgeGroupResponse]
}
