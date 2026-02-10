package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Leaderboard._

case class Leaderboard (
  id: Option[Long],
rankType: Option[String],
/* One of GLOBAL, FRIENDS, LOCAL, SEARCH, CUSTOM */
  rankMode: Option[String],
sortType: Option[String],
limitation: Option[Integer],
title: Option[String],
description: Option[String],
iconAsset: Option[AssetResponse],
bannerAsset: Option[AssetResponse],
application: Option[ApplicationMiniResponse],
metaData: Option[String],
active: Option[Boolean])

object Leaderboard {
  import DateTimeCodecs._

  implicit val LeaderboardCodecJson: CodecJson[Leaderboard] = CodecJson.derive[Leaderboard]
  implicit val LeaderboardDecoder: EntityDecoder[Leaderboard] = jsonOf[Leaderboard]
  implicit val LeaderboardEncoder: EntityEncoder[Leaderboard] = jsonEncoderOf[Leaderboard]
}
