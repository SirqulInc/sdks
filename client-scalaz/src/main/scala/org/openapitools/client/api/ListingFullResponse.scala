package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ListingFullResponse._

case class ListingFullResponse (
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
owner: Option[AccountShortResponse],
filters: Option[List[FilterResponse]])

object ListingFullResponse {
  import DateTimeCodecs._

  implicit val ListingFullResponseCodecJson: CodecJson[ListingFullResponse] = CodecJson.derive[ListingFullResponse]
  implicit val ListingFullResponseDecoder: EntityDecoder[ListingFullResponse] = jsonOf[ListingFullResponse]
  implicit val ListingFullResponseEncoder: EntityEncoder[ListingFullResponse] = jsonEncoderOf[ListingFullResponse]
}
