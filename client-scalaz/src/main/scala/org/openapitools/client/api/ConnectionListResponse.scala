package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ConnectionListResponse._

case class ConnectionListResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
connections: Option[List[ConnectionResponse]],
friendCount: Option[Integer],
followingCount: Option[Integer],
itemCount: Option[Integer],
hasMoreResults: Option[Boolean],
returning: Option[String])

object ConnectionListResponse {
  import DateTimeCodecs._

  implicit val ConnectionListResponseCodecJson: CodecJson[ConnectionListResponse] = CodecJson.derive[ConnectionListResponse]
  implicit val ConnectionListResponseDecoder: EntityDecoder[ConnectionListResponse] = jsonOf[ConnectionListResponse]
  implicit val ConnectionListResponseEncoder: EntityEncoder[ConnectionListResponse] = jsonEncoderOf[ConnectionListResponse]
}
