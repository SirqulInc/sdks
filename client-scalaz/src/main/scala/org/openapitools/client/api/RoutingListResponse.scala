package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RoutingListResponse._

case class RoutingListResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[RoutingResponse]],
count: Option[Integer],
debug: Option[List[String]],
returning: Option[String])

object RoutingListResponse {
  import DateTimeCodecs._

  implicit val RoutingListResponseCodecJson: CodecJson[RoutingListResponse] = CodecJson.derive[RoutingListResponse]
  implicit val RoutingListResponseDecoder: EntityDecoder[RoutingListResponse] = jsonOf[RoutingListResponse]
  implicit val RoutingListResponseEncoder: EntityEncoder[RoutingListResponse] = jsonEncoderOf[RoutingListResponse]
}
