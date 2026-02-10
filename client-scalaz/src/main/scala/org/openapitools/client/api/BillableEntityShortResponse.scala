package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import BillableEntityShortResponse._

case class BillableEntityShortResponse (
  billableEntityId: Option[Long],
name: Option[String],
responsible: Option[ProfileShortResponse])

object BillableEntityShortResponse {
  import DateTimeCodecs._

  implicit val BillableEntityShortResponseCodecJson: CodecJson[BillableEntityShortResponse] = CodecJson.derive[BillableEntityShortResponse]
  implicit val BillableEntityShortResponseDecoder: EntityDecoder[BillableEntityShortResponse] = jsonOf[BillableEntityShortResponse]
  implicit val BillableEntityShortResponseEncoder: EntityEncoder[BillableEntityShortResponse] = jsonEncoderOf[BillableEntityShortResponse]
}
