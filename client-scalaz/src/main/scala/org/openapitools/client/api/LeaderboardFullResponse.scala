package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LeaderboardFullResponse._

case class LeaderboardFullResponse (
  leaderboardId: Option[Long],
rankType: Option[String],
rankMode: Option[String],
sortType: Option[String],
limitation: Option[Integer],
title: Option[String],
description: Option[String],
metaData: Option[String],
iconAsset: Option[AssetResponse],
bannerAsset: Option[AssetResponse],
active: Option[Boolean],
application: Option[ApplicationMiniResponse],
leaderboardRankings: Option[RankListResponse])

object LeaderboardFullResponse {
  import DateTimeCodecs._

  implicit val LeaderboardFullResponseCodecJson: CodecJson[LeaderboardFullResponse] = CodecJson.derive[LeaderboardFullResponse]
  implicit val LeaderboardFullResponseDecoder: EntityDecoder[LeaderboardFullResponse] = jsonOf[LeaderboardFullResponse]
  implicit val LeaderboardFullResponseEncoder: EntityEncoder[LeaderboardFullResponse] = jsonEncoderOf[LeaderboardFullResponse]
}
