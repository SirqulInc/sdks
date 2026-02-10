package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import OfferListResponse._

case class OfferListResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[OfferResponse]],
hasMoreResults: Option[Boolean],
count: Option[Integer],
start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
returning: Option[String])

object OfferListResponse {
  import DateTimeCodecs._

  implicit val OfferListResponseCodecJson: CodecJson[OfferListResponse] = CodecJson.derive[OfferListResponse]
  implicit val OfferListResponseDecoder: EntityDecoder[OfferListResponse] = jsonOf[OfferListResponse]
  implicit val OfferListResponseEncoder: EntityEncoder[OfferListResponse] = jsonEncoderOf[OfferListResponse]
}
