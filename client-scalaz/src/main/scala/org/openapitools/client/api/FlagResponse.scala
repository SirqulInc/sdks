package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FlagResponse._

case class FlagResponse (
  flagId: Option[Long],
flagableId: Option[Long],
flagableType: Option[String],
flagDescription: Option[String],
createdDate: Option[Long],
updatedDate: Option[Long])

object FlagResponse {
  import DateTimeCodecs._

  implicit val FlagResponseCodecJson: CodecJson[FlagResponse] = CodecJson.derive[FlagResponse]
  implicit val FlagResponseDecoder: EntityDecoder[FlagResponse] = jsonOf[FlagResponse]
  implicit val FlagResponseEncoder: EntityEncoder[FlagResponse] = jsonEncoderOf[FlagResponse]
}
