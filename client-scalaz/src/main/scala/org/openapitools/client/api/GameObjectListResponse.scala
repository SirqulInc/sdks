package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GameObjectListResponse._

case class GameObjectListResponse (
  start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
items: Option[List[GameObjectResponse]],
count: Option[Integer],
hasMoreResults: Option[Boolean])

object GameObjectListResponse {
  import DateTimeCodecs._

  implicit val GameObjectListResponseCodecJson: CodecJson[GameObjectListResponse] = CodecJson.derive[GameObjectListResponse]
  implicit val GameObjectListResponseDecoder: EntityDecoder[GameObjectListResponse] = jsonOf[GameObjectListResponse]
  implicit val GameObjectListResponseEncoder: EntityEncoder[GameObjectListResponse] = jsonEncoderOf[GameObjectListResponse]
}
