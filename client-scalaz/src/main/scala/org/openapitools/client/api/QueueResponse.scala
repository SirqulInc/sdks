package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QueueResponse._

case class QueueResponse (
  queueId: Option[Long],
name: Option[String],
host: Option[String],
port: Option[Integer],
username: Option[String],
password: Option[String],
virtualHost: Option[String],
workers: Option[Integer],
exchanger: Option[String],
exchangerType: Option[String],
handleDelivery: Option[Boolean],
dataMapping: Option[String],
analyticTags: Option[String])

object QueueResponse {
  import DateTimeCodecs._

  implicit val QueueResponseCodecJson: CodecJson[QueueResponse] = CodecJson.derive[QueueResponse]
  implicit val QueueResponseDecoder: EntityDecoder[QueueResponse] = jsonOf[QueueResponse]
  implicit val QueueResponseEncoder: EntityEncoder[QueueResponse] = jsonEncoderOf[QueueResponse]
}
