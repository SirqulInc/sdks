package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MessageResponse._

case class MessageResponse (
  message: Option[String],
code: Option[Integer],
ids: Option[String],
updateValue: Option[String])

object MessageResponse {
  import DateTimeCodecs._

  implicit val MessageResponseCodecJson: CodecJson[MessageResponse] = CodecJson.derive[MessageResponse]
  implicit val MessageResponseDecoder: EntityDecoder[MessageResponse] = jsonOf[MessageResponse]
  implicit val MessageResponseEncoder: EntityEncoder[MessageResponse] = jsonEncoderOf[MessageResponse]
}
