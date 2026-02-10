package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PackListResponse._

case class PackListResponse (
  start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
items: Option[List[PackResponse]],
count: Option[Integer],
hasMoreResults: Option[Boolean])

object PackListResponse {
  import DateTimeCodecs._

  implicit val PackListResponseCodecJson: CodecJson[PackListResponse] = CodecJson.derive[PackListResponse]
  implicit val PackListResponseDecoder: EntityDecoder[PackListResponse] = jsonOf[PackListResponse]
  implicit val PackListResponseEncoder: EntityEncoder[PackListResponse] = jsonEncoderOf[PackListResponse]
}
