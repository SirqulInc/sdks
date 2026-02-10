package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GameListResponse._

case class GameListResponse (
  start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
items: Option[List[GameResponse]],
hasMoreResults: Option[Boolean],
count: Option[Integer])

object GameListResponse {
  import DateTimeCodecs._

  implicit val GameListResponseCodecJson: CodecJson[GameListResponse] = CodecJson.derive[GameListResponse]
  implicit val GameListResponseDecoder: EntityDecoder[GameListResponse] = jsonOf[GameListResponse]
  implicit val GameListResponseEncoder: EntityEncoder[GameListResponse] = jsonEncoderOf[GameListResponse]
}
