package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Event._

case class Event (
  sponsered: Option[Boolean],
listing: Option[Listing])

object Event {
  import DateTimeCodecs._

  implicit val EventCodecJson: CodecJson[Event] = CodecJson.derive[Event]
  implicit val EventDecoder: EntityDecoder[Event] = jsonOf[Event]
  implicit val EventEncoder: EntityEncoder[Event] = jsonEncoderOf[Event]
}
