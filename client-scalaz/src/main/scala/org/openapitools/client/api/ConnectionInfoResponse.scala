package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ConnectionInfoResponse._

case class ConnectionInfoResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
groups: Option[List[ConnectionGroupResponse]],
followerCount: Option[Integer],
followingCount: Option[Integer],
friendCount: Option[Integer],
privateGroupCount: Option[Integer],
returning: Option[String])

object ConnectionInfoResponse {
  import DateTimeCodecs._

  implicit val ConnectionInfoResponseCodecJson: CodecJson[ConnectionInfoResponse] = CodecJson.derive[ConnectionInfoResponse]
  implicit val ConnectionInfoResponseDecoder: EntityDecoder[ConnectionInfoResponse] = jsonOf[ConnectionInfoResponse]
  implicit val ConnectionInfoResponseEncoder: EntityEncoder[ConnectionInfoResponse] = jsonEncoderOf[ConnectionInfoResponse]
}
