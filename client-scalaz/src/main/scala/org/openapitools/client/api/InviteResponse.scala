package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import InviteResponse._

case class InviteResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
url: Option[String],
token: Option[String],
offerId: Option[Long],
offerLocationId: Option[Long],
returning: Option[String])

object InviteResponse {
  import DateTimeCodecs._

  implicit val InviteResponseCodecJson: CodecJson[InviteResponse] = CodecJson.derive[InviteResponse]
  implicit val InviteResponseDecoder: EntityDecoder[InviteResponse] = jsonOf[InviteResponse]
  implicit val InviteResponseEncoder: EntityEncoder[InviteResponse] = jsonEncoderOf[InviteResponse]
}
