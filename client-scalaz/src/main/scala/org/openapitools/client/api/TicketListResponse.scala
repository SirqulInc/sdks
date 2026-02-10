package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TicketListResponse._

case class TicketListResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[TicketResponse]],
count: Option[Integer],
hasMoreResults: Option[Boolean],
start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
returning: Option[String])

object TicketListResponse {
  import DateTimeCodecs._

  implicit val TicketListResponseCodecJson: CodecJson[TicketListResponse] = CodecJson.derive[TicketListResponse]
  implicit val TicketListResponseDecoder: EntityDecoder[TicketListResponse] = jsonOf[TicketListResponse]
  implicit val TicketListResponseEncoder: EntityEncoder[TicketListResponse] = jsonEncoderOf[TicketListResponse]
}
