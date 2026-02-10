package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ScoreListResponse._

case class ScoreListResponse (
  start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
items: Option[List[ScoreResponse]],
count: Option[Integer],
hasMoreResults: Option[Boolean])

object ScoreListResponse {
  import DateTimeCodecs._

  implicit val ScoreListResponseCodecJson: CodecJson[ScoreListResponse] = CodecJson.derive[ScoreListResponse]
  implicit val ScoreListResponseDecoder: EntityDecoder[ScoreListResponse] = jsonOf[ScoreListResponse]
  implicit val ScoreListResponseEncoder: EntityEncoder[ScoreListResponse] = jsonEncoderOf[ScoreListResponse]
}
