package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SizeGroup._

case class SizeGroup (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
groupingId: Option[Long],
name: Option[String],
description: Option[String])

object SizeGroup {
  import DateTimeCodecs._

  implicit val SizeGroupCodecJson: CodecJson[SizeGroup] = CodecJson.derive[SizeGroup]
  implicit val SizeGroupDecoder: EntityDecoder[SizeGroup] = jsonOf[SizeGroup]
  implicit val SizeGroupEncoder: EntityEncoder[SizeGroup] = jsonEncoderOf[SizeGroup]
}
