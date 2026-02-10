package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import BlockedNotificationResponse._

case class BlockedNotificationResponse (
  blockedNotificationId: Option[Long],
created: Option[Long],
event: Option[String],
conduit: Option[String],
customType: Option[String],
`contentType`: Option[String],
contentId: Option[Long],
searchTags: Option[String],
blocked: Option[Boolean],
deleted: Option[Boolean])

object BlockedNotificationResponse {
  import DateTimeCodecs._

  implicit val BlockedNotificationResponseCodecJson: CodecJson[BlockedNotificationResponse] = CodecJson.derive[BlockedNotificationResponse]
  implicit val BlockedNotificationResponseDecoder: EntityDecoder[BlockedNotificationResponse] = jsonOf[BlockedNotificationResponse]
  implicit val BlockedNotificationResponseEncoder: EntityEncoder[BlockedNotificationResponse] = jsonEncoderOf[BlockedNotificationResponse]
}
