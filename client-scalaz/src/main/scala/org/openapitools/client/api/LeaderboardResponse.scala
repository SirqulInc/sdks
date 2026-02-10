package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LeaderboardResponse._

case class LeaderboardResponse (
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
application: Option[ApplicationMiniResponse])

object LeaderboardResponse {
  import DateTimeCodecs._

  implicit val LeaderboardResponseCodecJson: CodecJson[LeaderboardResponse] = CodecJson.derive[LeaderboardResponse]
  implicit val LeaderboardResponseDecoder: EntityDecoder[LeaderboardResponse] = jsonOf[LeaderboardResponse]
  implicit val LeaderboardResponseEncoder: EntityEncoder[LeaderboardResponse] = jsonEncoderOf[LeaderboardResponse]
}
