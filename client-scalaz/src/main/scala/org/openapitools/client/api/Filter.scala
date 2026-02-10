package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Filter._

case class Filter (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
application: Option[Application],
name: Option[String],
description: Option[String],
parent: Option[Filter],
children: Option[List[Filter]],
display: Option[String],
externalId: Option[String],
externalType: Option[String],
tree: Option[String])

object Filter {
  import DateTimeCodecs._

  implicit val FilterCodecJson: CodecJson[Filter] = CodecJson.derive[Filter]
  implicit val FilterDecoder: EntityDecoder[Filter] = jsonOf[Filter]
  implicit val FilterEncoder: EntityEncoder[Filter] = jsonEncoderOf[Filter]
}
