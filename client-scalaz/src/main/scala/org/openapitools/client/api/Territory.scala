package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Territory._

case class Territory (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String])

object Territory {
  import DateTimeCodecs._

  implicit val TerritoryCodecJson: CodecJson[Territory] = CodecJson.derive[Territory]
  implicit val TerritoryDecoder: EntityDecoder[Territory] = jsonOf[Territory]
  implicit val TerritoryEncoder: EntityEncoder[Territory] = jsonEncoderOf[Territory]
}
