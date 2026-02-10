package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GroupPermissions._

case class GroupPermissions (
  canViewProfileInfo: Option[Boolean],
canViewGameInfo: Option[Boolean],
canViewFriendInfo: Option[Boolean])

object GroupPermissions {
  import DateTimeCodecs._

  implicit val GroupPermissionsCodecJson: CodecJson[GroupPermissions] = CodecJson.derive[GroupPermissions]
  implicit val GroupPermissionsDecoder: EntityDecoder[GroupPermissions] = jsonOf[GroupPermissions]
  implicit val GroupPermissionsEncoder: EntityEncoder[GroupPermissions] = jsonEncoderOf[GroupPermissions]
}
