package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SirqulResponse._

case class SirqulResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
returning: Option[String])

object SirqulResponse {
  import DateTimeCodecs._

  implicit val SirqulResponseCodecJson: CodecJson[SirqulResponse] = CodecJson.derive[SirqulResponse]
  implicit val SirqulResponseDecoder: EntityDecoder[SirqulResponse] = jsonOf[SirqulResponse]
  implicit val SirqulResponseEncoder: EntityEncoder[SirqulResponse] = jsonEncoderOf[SirqulResponse]
}
