package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GameLevelListResponse._

case class GameLevelListResponse (
  start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
items: Option[List[GameLevelResponse]],
count: Option[Integer],
hasMoreResults: Option[Boolean])

object GameLevelListResponse {
  import DateTimeCodecs._

  implicit val GameLevelListResponseCodecJson: CodecJson[GameLevelListResponse] = CodecJson.derive[GameLevelListResponse]
  implicit val GameLevelListResponseDecoder: EntityDecoder[GameLevelListResponse] = jsonOf[GameLevelListResponse]
  implicit val GameLevelListResponseEncoder: EntityEncoder[GameLevelListResponse] = jsonEncoderOf[GameLevelListResponse]
}
