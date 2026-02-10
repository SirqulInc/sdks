package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AccountMiniResponse._

case class AccountMiniResponse (
  accountId: Option[Long],
locationDisplay: Option[String],
display: Option[String],
username: Option[String],
accountType: Option[String])

object AccountMiniResponse {
  import DateTimeCodecs._

  implicit val AccountMiniResponseCodecJson: CodecJson[AccountMiniResponse] = CodecJson.derive[AccountMiniResponse]
  implicit val AccountMiniResponseDecoder: EntityDecoder[AccountMiniResponse] = jsonOf[AccountMiniResponse]
  implicit val AccountMiniResponseEncoder: EntityEncoder[AccountMiniResponse] = jsonEncoderOf[AccountMiniResponse]
}
