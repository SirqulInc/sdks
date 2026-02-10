package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TokenResponse._

case class TokenResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
token: Option[String],
returning: Option[String])

object TokenResponse {
  import DateTimeCodecs._

  implicit val TokenResponseCodecJson: CodecJson[TokenResponse] = CodecJson.derive[TokenResponse]
  implicit val TokenResponseDecoder: EntityDecoder[TokenResponse] = jsonOf[TokenResponse]
  implicit val TokenResponseEncoder: EntityEncoder[TokenResponse] = jsonEncoderOf[TokenResponse]
}
