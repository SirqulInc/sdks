package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import WrappedResponse._

case class WrappedResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
`type`: Option[String],
item: Option[Any],
messages: Option[MessageListResponse],
returning: Option[String])

object WrappedResponse {
  import DateTimeCodecs._

  implicit val WrappedResponseCodecJson: CodecJson[WrappedResponse] = CodecJson.derive[WrappedResponse]
  implicit val WrappedResponseDecoder: EntityDecoder[WrappedResponse] = jsonOf[WrappedResponse]
  implicit val WrappedResponseEncoder: EntityEncoder[WrappedResponse] = jsonEncoderOf[WrappedResponse]
}
