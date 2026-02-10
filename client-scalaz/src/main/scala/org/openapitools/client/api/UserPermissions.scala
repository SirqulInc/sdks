package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import UserPermissions._

case class UserPermissions (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
permissionableType: Option[String],
permissionableId: Option[Long],
connectionGroup: Option[ConnectionGroup],
friendGroup: Option[Boolean],
connection: Option[Connection],
permissions: Option[Permissions],
exclude: Option[Boolean],
blocked: Option[Boolean],
owner: Option[Account])

object UserPermissions {
  import DateTimeCodecs._

  implicit val UserPermissionsCodecJson: CodecJson[UserPermissions] = CodecJson.derive[UserPermissions]
  implicit val UserPermissionsDecoder: EntityDecoder[UserPermissions] = jsonOf[UserPermissions]
  implicit val UserPermissionsEncoder: EntityEncoder[UserPermissions] = jsonEncoderOf[UserPermissions]
}
