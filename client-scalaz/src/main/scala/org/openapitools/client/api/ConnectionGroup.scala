package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ConnectionGroup._

case class ConnectionGroup (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
owner: Option[Account],
name: Option[String],
description: Option[String],
connections: Option[List[Connection]],
permissions: Option[GroupPermissions],
image: Option[Asset],
subGroups: Option[List[ConnectionGroup]])

object ConnectionGroup {
  import DateTimeCodecs._

  implicit val ConnectionGroupCodecJson: CodecJson[ConnectionGroup] = CodecJson.derive[ConnectionGroup]
  implicit val ConnectionGroupDecoder: EntityDecoder[ConnectionGroup] = jsonOf[ConnectionGroup]
  implicit val ConnectionGroupEncoder: EntityEncoder[ConnectionGroup] = jsonEncoderOf[ConnectionGroup]
}
