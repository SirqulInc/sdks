package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import EventResponse._

case class EventResponse (
  listing: Option[ListingResponse])

object EventResponse {
  import DateTimeCodecs._

  implicit val EventResponseCodecJson: CodecJson[EventResponse] = CodecJson.derive[EventResponse]
  implicit val EventResponseDecoder: EntityDecoder[EventResponse] = jsonOf[EventResponse]
  implicit val EventResponseEncoder: EntityEncoder[EventResponse] = jsonEncoderOf[EventResponse]
}
