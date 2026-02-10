package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MessageListResponse._

case class MessageListResponse (
  start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
items: Option[List[MessageResponse]],
count: Option[Integer],
hasMoreResults: Option[Boolean])

object MessageListResponse {
  import DateTimeCodecs._

  implicit val MessageListResponseCodecJson: CodecJson[MessageListResponse] = CodecJson.derive[MessageListResponse]
  implicit val MessageListResponseDecoder: EntityDecoder[MessageListResponse] = jsonOf[MessageListResponse]
  implicit val MessageListResponseEncoder: EntityEncoder[MessageListResponse] = jsonEncoderOf[MessageListResponse]
}
