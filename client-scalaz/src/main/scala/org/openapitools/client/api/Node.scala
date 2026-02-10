package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Node._

case class Node (
  x: Option[Integer],
y: Option[Integer],
z: Option[Integer])

object Node {
  import DateTimeCodecs._

  implicit val NodeCodecJson: CodecJson[Node] = CodecJson.derive[Node]
  implicit val NodeDecoder: EntityDecoder[Node] = jsonOf[Node]
  implicit val NodeEncoder: EntityEncoder[Node] = jsonEncoderOf[Node]
}
