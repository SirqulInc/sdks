package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import NotificationMessageResponse._

case class NotificationMessageResponse (
  sender: Option[AccountShortResponse],
event: Option[String],
notificationMessage: Option[String],
created: Option[Long],
hasRead: Option[Boolean],
contentId: Option[Long],
`contentType`: Option[String],
contentName: Option[String],
parentId: Option[Long],
parentType: Option[String],
actionCategory: Option[String],
thumbnailURL: Option[String],
coverURL: Option[String])

object NotificationMessageResponse {
  import DateTimeCodecs._

  implicit val NotificationMessageResponseCodecJson: CodecJson[NotificationMessageResponse] = CodecJson.derive[NotificationMessageResponse]
  implicit val NotificationMessageResponseDecoder: EntityDecoder[NotificationMessageResponse] = jsonOf[NotificationMessageResponse]
  implicit val NotificationMessageResponseEncoder: EntityEncoder[NotificationMessageResponse] = jsonEncoderOf[NotificationMessageResponse]
}
