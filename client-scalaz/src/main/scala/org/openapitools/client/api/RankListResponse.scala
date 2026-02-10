package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RankListResponse._

case class RankListResponse (
  items: Option[List[RankResponse]],
userRank: Option[RankResponse],
hasMoreResults: Option[Boolean],
count: Option[Integer],
rankType: Option[String],
app: Option[String],
sortField: Option[String],
leaderboardMode: Option[LeaderboardMode],
start: Option[Long],
limit: Option[Long])

object RankListResponse {
  import DateTimeCodecs._
  sealed trait LeaderboardMode
  case object GLOBAL extends LeaderboardMode
  case object FRIENDS extends LeaderboardMode
  case object LOCAL extends LeaderboardMode
  case object SEARCH extends LeaderboardMode
  case object CUSTOM extends LeaderboardMode

  object LeaderboardMode {
    def toLeaderboardMode(s: String): Option[LeaderboardMode] = s match {
      case "GLOBAL" => Some(GLOBAL)
      case "FRIENDS" => Some(FRIENDS)
      case "LOCAL" => Some(LOCAL)
      case "SEARCH" => Some(SEARCH)
      case "CUSTOM" => Some(CUSTOM)
      case _ => None
    }

    def fromLeaderboardMode(x: LeaderboardMode): String = x match {
      case GLOBAL => "GLOBAL"
      case FRIENDS => "FRIENDS"
      case LOCAL => "LOCAL"
      case SEARCH => "SEARCH"
      case CUSTOM => "CUSTOM"
    }
  }

  implicit val LeaderboardModeEnumEncoder: EncodeJson[LeaderboardMode] =
    EncodeJson[LeaderboardMode](is => StringEncodeJson(LeaderboardMode.fromLeaderboardMode(is)))

  implicit val LeaderboardModeEnumDecoder: DecodeJson[LeaderboardMode] =
    DecodeJson.optionDecoder[LeaderboardMode](n => n.string.flatMap(jStr => LeaderboardMode.toLeaderboardMode(jStr)), "LeaderboardMode failed to de-serialize")

  implicit val RankListResponseCodecJson: CodecJson[RankListResponse] = CodecJson.derive[RankListResponse]
  implicit val RankListResponseDecoder: EntityDecoder[RankListResponse] = jsonOf[RankListResponse]
  implicit val RankListResponseEncoder: EntityEncoder[RankListResponse] = jsonEncoderOf[RankListResponse]
}
