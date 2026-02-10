package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PurchaseItemShortResponse._

case class PurchaseItemShortResponse (
  id: Option[Long],
name: Option[String],
description: Option[String],
tickets: Option[Integer],
coverAsset: Option[AssetShortResponse],
promoAsset: Option[AssetShortResponse],
giftable: Option[Boolean],
assetable: Option[Boolean])

object PurchaseItemShortResponse {
  import DateTimeCodecs._

  implicit val PurchaseItemShortResponseCodecJson: CodecJson[PurchaseItemShortResponse] = CodecJson.derive[PurchaseItemShortResponse]
  implicit val PurchaseItemShortResponseDecoder: EntityDecoder[PurchaseItemShortResponse] = jsonOf[PurchaseItemShortResponse]
  implicit val PurchaseItemShortResponseEncoder: EntityEncoder[PurchaseItemShortResponse] = jsonEncoderOf[PurchaseItemShortResponse]
}
