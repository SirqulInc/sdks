package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Listing._

case class Listing (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
owner: Option[Account],
name: Option[String],
description: Option[String],
start: Option[OffsetDateTime],
end: Option[OffsetDateTime],
locationName: Option[String],
locationDescription: Option[String],
participants: Option[List[Participant]],
externalId: Option[String],
externalGroupId: Option[String],
filters: Option[List[Filter]],
`private`: Option[Boolean])

object Listing {
  import DateTimeCodecs._

  implicit val ListingCodecJson: CodecJson[Listing] = CodecJson.derive[Listing]
  implicit val ListingDecoder: EntityDecoder[Listing] = jsonOf[Listing]
  implicit val ListingEncoder: EntityEncoder[Listing] = jsonEncoderOf[Listing]
}
