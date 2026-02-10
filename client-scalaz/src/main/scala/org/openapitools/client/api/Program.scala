package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Program._

case class Program (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
description: Option[String],
costPerRide: Option[Integer])

object Program {
  import DateTimeCodecs._

  implicit val ProgramCodecJson: CodecJson[Program] = CodecJson.derive[Program]
  implicit val ProgramDecoder: EntityDecoder[Program] = jsonOf[Program]
  implicit val ProgramEncoder: EntityEncoder[Program] = jsonEncoderOf[Program]
}
