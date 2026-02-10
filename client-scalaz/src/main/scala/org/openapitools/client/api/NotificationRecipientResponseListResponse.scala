package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import NotificationRecipientResponseListResponse._

case class NotificationRecipientResponseListResponse (
  items: Option[List[Any]],
count: Option[Integer],
startIndexAudiences: Option[Integer],
startIndexGroups: Option[Integer],
total: Option[Long],
countAudiences: Option[Long],
countGroups: Option[Long],
hasMoreResults: Option[Boolean])

object NotificationRecipientResponseListResponse {
  import DateTimeCodecs._

  implicit val NotificationRecipientResponseListResponseCodecJson: CodecJson[NotificationRecipientResponseListResponse] = CodecJson.derive[NotificationRecipientResponseListResponse]
  implicit val NotificationRecipientResponseListResponseDecoder: EntityDecoder[NotificationRecipientResponseListResponse] = jsonOf[NotificationRecipientResponseListResponse]
  implicit val NotificationRecipientResponseListResponseEncoder: EntityEncoder[NotificationRecipientResponseListResponse] = jsonEncoderOf[NotificationRecipientResponseListResponse]
}
