package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ListingResponse._

case class ListingResponse (
  id: Option[Long],
name: Option[String],
description: Option[String],
start: Option[Long],
end: Option[Long],
locationName: Option[String],
locationDescription: Option[String],
privateListing: Option[Boolean],
active: Option[Boolean],
participants: Option[List[ParticipantResponse]],
owner: Option[AccountShortResponse])

object ListingResponse {
  import DateTimeCodecs._

  implicit val ListingResponseCodecJson: CodecJson[ListingResponse] = CodecJson.derive[ListingResponse]
  implicit val ListingResponseDecoder: EntityDecoder[ListingResponse] = jsonOf[ListingResponse]
  implicit val ListingResponseEncoder: EntityEncoder[ListingResponse] = jsonEncoderOf[ListingResponse]
}
