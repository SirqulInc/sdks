package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ListingGroupResponse._

case class ListingGroupResponse (
  category: Option[CategoryResponse],
listings: Option[List[ListingResponse]])

object ListingGroupResponse {
  import DateTimeCodecs._

  implicit val ListingGroupResponseCodecJson: CodecJson[ListingGroupResponse] = CodecJson.derive[ListingGroupResponse]
  implicit val ListingGroupResponseDecoder: EntityDecoder[ListingGroupResponse] = jsonOf[ListingGroupResponse]
  implicit val ListingGroupResponseEncoder: EntityEncoder[ListingGroupResponse] = jsonEncoderOf[ListingGroupResponse]
}
