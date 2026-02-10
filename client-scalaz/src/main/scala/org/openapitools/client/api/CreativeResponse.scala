package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CreativeResponse._

case class CreativeResponse (
  creativeId: Option[Long],
active: Option[Boolean],
name: Option[String],
description: Option[String],
image: Option[AssetShortResponse],
action: Option[String],
content: Option[JsonElement],
suffix: Option[String],
`type`: Option[String],
appVersion: Option[String],
preview: Option[Boolean],
owner: Option[AccountShortResponse],
currentBid: Option[BidResponse])

object CreativeResponse {
  import DateTimeCodecs._

  implicit val CreativeResponseCodecJson: CodecJson[CreativeResponse] = CodecJson.derive[CreativeResponse]
  implicit val CreativeResponseDecoder: EntityDecoder[CreativeResponse] = jsonOf[CreativeResponse]
  implicit val CreativeResponseEncoder: EntityEncoder[CreativeResponse] = jsonEncoderOf[CreativeResponse]
}
