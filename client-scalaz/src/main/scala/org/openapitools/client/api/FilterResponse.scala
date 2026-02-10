package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FilterResponse._

case class FilterResponse (
  filterId: Option[Long],
name: Option[String],
display: Option[String],
subFilterCount: Option[Integer],
parentId: Option[Long],
description: Option[String],
active: Option[Boolean],
externalId: Option[String],
externalType: Option[String])

object FilterResponse {
  import DateTimeCodecs._

  implicit val FilterResponseCodecJson: CodecJson[FilterResponse] = CodecJson.derive[FilterResponse]
  implicit val FilterResponseDecoder: EntityDecoder[FilterResponse] = jsonOf[FilterResponse]
  implicit val FilterResponseEncoder: EntityEncoder[FilterResponse] = jsonEncoderOf[FilterResponse]
}
