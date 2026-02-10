package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import NodeRequest._

case class NodeRequest (
  x: Option[Integer],
y: Option[Integer],
z: Option[Integer],
latitude: Option[Double],
longitude: Option[Double],
altitude: Option[Double],
date: Option[Long],
isWaypoint: Option[Boolean],
accountId: Option[Long],
node: Option[Node])

object NodeRequest {
  import DateTimeCodecs._

  implicit val NodeRequestCodecJson: CodecJson[NodeRequest] = CodecJson.derive[NodeRequest]
  implicit val NodeRequestDecoder: EntityDecoder[NodeRequest] = jsonOf[NodeRequest]
  implicit val NodeRequestEncoder: EntityEncoder[NodeRequest] = jsonEncoderOf[NodeRequest]
}
