package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TicketCountResponse._

case class TicketCountResponse (
  count: Option[Long],
`type`: Option[String])

object TicketCountResponse {
  import DateTimeCodecs._

  implicit val TicketCountResponseCodecJson: CodecJson[TicketCountResponse] = CodecJson.derive[TicketCountResponse]
  implicit val TicketCountResponseDecoder: EntityDecoder[TicketCountResponse] = jsonOf[TicketCountResponse]
  implicit val TicketCountResponseEncoder: EntityEncoder[TicketCountResponse] = jsonEncoderOf[TicketCountResponse]
}
