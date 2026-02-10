package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FilterTreeResponse._

case class FilterTreeResponse (
  filterId: Option[Long],
name: Option[String],
display: Option[String],
subFilterCount: Option[Integer],
parentId: Option[Long],
description: Option[String],
active: Option[Boolean],
externalId: Option[String],
externalType: Option[String],
children: Option[List[FilterTreeResponse]])

object FilterTreeResponse {
  import DateTimeCodecs._

  implicit val FilterTreeResponseCodecJson: CodecJson[FilterTreeResponse] = CodecJson.derive[FilterTreeResponse]
  implicit val FilterTreeResponseDecoder: EntityDecoder[FilterTreeResponse] = jsonOf[FilterTreeResponse]
  implicit val FilterTreeResponseEncoder: EntityEncoder[FilterTreeResponse] = jsonEncoderOf[FilterTreeResponse]
}
