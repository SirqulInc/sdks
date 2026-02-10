package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PurchaseItemListResponse._

case class PurchaseItemListResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[PurchaseItemResponse]],
count: Option[Integer],
hasMoreResults: Option[Boolean],
start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
returning: Option[String])

object PurchaseItemListResponse {
  import DateTimeCodecs._

  implicit val PurchaseItemListResponseCodecJson: CodecJson[PurchaseItemListResponse] = CodecJson.derive[PurchaseItemListResponse]
  implicit val PurchaseItemListResponseDecoder: EntityDecoder[PurchaseItemListResponse] = jsonOf[PurchaseItemListResponse]
  implicit val PurchaseItemListResponseEncoder: EntityEncoder[PurchaseItemListResponse] = jsonEncoderOf[PurchaseItemListResponse]
}
