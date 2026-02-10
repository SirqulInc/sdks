package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import UserPermissionsResponse._

case class UserPermissionsResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
permissions: Option[PermissionResponse],
connection: Option[ConnectionResponse],
connectionGroup: Option[ConnectionGroupResponse],
exclude: Option[Boolean],
blocked: Option[Boolean],
friendGroup: Option[Boolean],
permissionableId: Option[Long],
permissionableType: Option[String],
returning: Option[String])

object UserPermissionsResponse {
  import DateTimeCodecs._

  implicit val UserPermissionsResponseCodecJson: CodecJson[UserPermissionsResponse] = CodecJson.derive[UserPermissionsResponse]
  implicit val UserPermissionsResponseDecoder: EntityDecoder[UserPermissionsResponse] = jsonOf[UserPermissionsResponse]
  implicit val UserPermissionsResponseEncoder: EntityEncoder[UserPermissionsResponse] = jsonEncoderOf[UserPermissionsResponse]
}
