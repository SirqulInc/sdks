package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AccountLoginResponse._

case class AccountLoginResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
accountId: Option[Long],
locationDisplay: Option[String],
display: Option[String],
username: Option[String],
accountType: Option[String],
validated: Option[Boolean],
returning: Option[String])

object AccountLoginResponse {
  import DateTimeCodecs._

  implicit val AccountLoginResponseCodecJson: CodecJson[AccountLoginResponse] = CodecJson.derive[AccountLoginResponse]
  implicit val AccountLoginResponseDecoder: EntityDecoder[AccountLoginResponse] = jsonOf[AccountLoginResponse]
  implicit val AccountLoginResponseEncoder: EntityEncoder[AccountLoginResponse] = jsonEncoderOf[AccountLoginResponse]
}
