package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Flag._

case class Flag (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
owner: Option[Account],
flagableObjectType: Option[String],
flagableObjectId: Option[Long],
flagDescription: Option[String],
app: Option[String])

object Flag {
  import DateTimeCodecs._

  implicit val FlagCodecJson: CodecJson[Flag] = CodecJson.derive[Flag]
  implicit val FlagDecoder: EntityDecoder[Flag] = jsonOf[Flag]
  implicit val FlagEncoder: EntityEncoder[Flag] = jsonEncoderOf[Flag]
}
