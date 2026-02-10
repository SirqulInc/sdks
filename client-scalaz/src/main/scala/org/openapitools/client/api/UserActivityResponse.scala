package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import UserActivityResponse._

case class UserActivityResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
created: Option[OffsetDateTime],
latitude: Option[Double],
longitude: Option[Double],
tag: Option[String],
customId: Option[Long],
customType: Option[String],
userId: Option[Long],
username: Option[String],
appTitle: Option[String],
appId: Option[Long],
appUrl: Option[String],
appDescription: Option[String],
imageURL: Option[String],
profileImage: Option[String],
fields: Option[String],
id: Option[Long],
customText: Option[String],
customValue: Option[Double],
customMessage: Option[String],
returning: Option[String])

object UserActivityResponse {
  import DateTimeCodecs._

  implicit val UserActivityResponseCodecJson: CodecJson[UserActivityResponse] = CodecJson.derive[UserActivityResponse]
  implicit val UserActivityResponseDecoder: EntityDecoder[UserActivityResponse] = jsonOf[UserActivityResponse]
  implicit val UserActivityResponseEncoder: EntityEncoder[UserActivityResponse] = jsonEncoderOf[UserActivityResponse]
}
