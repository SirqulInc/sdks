package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MissionListResponse._

case class MissionListResponse (
  start: Option[Integer],
limit: Option[Integer],
countTotal: Option[Long],
items: Option[List[MissionResponse]],
hasMoreResults: Option[Boolean],
count: Option[Integer])

object MissionListResponse {
  import DateTimeCodecs._

  implicit val MissionListResponseCodecJson: CodecJson[MissionListResponse] = CodecJson.derive[MissionListResponse]
  implicit val MissionListResponseDecoder: EntityDecoder[MissionListResponse] = jsonOf[MissionListResponse]
  implicit val MissionListResponseEncoder: EntityEncoder[MissionListResponse] = jsonEncoderOf[MissionListResponse]
}
