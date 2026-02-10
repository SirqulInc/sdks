package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import EntityReference._

case class EntityReference (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
entityType: Option[String],
masterEntityId: Option[Long],
slaveUID: Option[String],
slaveEntityId: Option[Long])

object EntityReference {
  import DateTimeCodecs._

  implicit val EntityReferenceCodecJson: CodecJson[EntityReference] = CodecJson.derive[EntityReference]
  implicit val EntityReferenceDecoder: EntityDecoder[EntityReference] = jsonOf[EntityReference]
  implicit val EntityReferenceEncoder: EntityEncoder[EntityReference] = jsonEncoderOf[EntityReference]
}
