package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PermissionResponse._

case class PermissionResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
read: Option[Boolean],
write: Option[Boolean],
delete: Option[Boolean],
add: Option[Boolean],
returning: Option[String])

object PermissionResponse {
  import DateTimeCodecs._

  implicit val PermissionResponseCodecJson: CodecJson[PermissionResponse] = CodecJson.derive[PermissionResponse]
  implicit val PermissionResponseDecoder: EntityDecoder[PermissionResponse] = jsonOf[PermissionResponse]
  implicit val PermissionResponseEncoder: EntityEncoder[PermissionResponse] = jsonEncoderOf[PermissionResponse]
}
