package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import NotificationMessageListResponse._

case class NotificationMessageListResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[NotificationMessageResponse]],
count: Option[Integer],
hasMoreResults: Option[Boolean],
returning: Option[String])

object NotificationMessageListResponse {
  import DateTimeCodecs._

  implicit val NotificationMessageListResponseCodecJson: CodecJson[NotificationMessageListResponse] = CodecJson.derive[NotificationMessageListResponse]
  implicit val NotificationMessageListResponseDecoder: EntityDecoder[NotificationMessageListResponse] = jsonOf[NotificationMessageListResponse]
  implicit val NotificationMessageListResponseEncoder: EntityEncoder[NotificationMessageListResponse] = jsonEncoderOf[NotificationMessageListResponse]
}
