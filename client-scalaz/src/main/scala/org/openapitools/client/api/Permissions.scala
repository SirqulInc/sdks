package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Permissions._

case class Permissions (
  read: Option[Boolean],
write: Option[Boolean],
delete: Option[Boolean],
add: Option[Boolean])

object Permissions {
  import DateTimeCodecs._

  implicit val PermissionsCodecJson: CodecJson[Permissions] = CodecJson.derive[Permissions]
  implicit val PermissionsDecoder: EntityDecoder[Permissions] = jsonOf[Permissions]
  implicit val PermissionsEncoder: EntityEncoder[Permissions] = jsonEncoderOf[Permissions]
}
