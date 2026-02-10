package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SearchResponse._

case class SearchResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
items: Option[List[Any]],
count: Option[Integer],
hasMoreResults: Option[Boolean],
countTotal: Option[Long],
start: Option[Long],
limit: Option[Long],
returning: Option[String])

object SearchResponse {
  import DateTimeCodecs._

  implicit val SearchResponseCodecJson: CodecJson[SearchResponse] = CodecJson.derive[SearchResponse]
  implicit val SearchResponseDecoder: EntityDecoder[SearchResponse] = jsonOf[SearchResponse]
  implicit val SearchResponseEncoder: EntityEncoder[SearchResponse] = jsonEncoderOf[SearchResponse]
}
