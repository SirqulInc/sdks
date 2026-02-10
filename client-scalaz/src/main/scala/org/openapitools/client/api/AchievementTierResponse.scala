package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AchievementTierResponse._

case class AchievementTierResponse (
  achievementTierId: Option[Long],
title: Option[String],
description: Option[String],
goalCount: Option[Long],
icon: Option[AssetShortResponse],
missionId: Option[Long],
gameId: Option[Long],
packId: Option[Long],
gameLevelId: Option[Long],
gameObjectId: Option[Long])

object AchievementTierResponse {
  import DateTimeCodecs._

  implicit val AchievementTierResponseCodecJson: CodecJson[AchievementTierResponse] = CodecJson.derive[AchievementTierResponse]
  implicit val AchievementTierResponseDecoder: EntityDecoder[AchievementTierResponse] = jsonOf[AchievementTierResponse]
  implicit val AchievementTierResponseEncoder: EntityEncoder[AchievementTierResponse] = jsonEncoderOf[AchievementTierResponse]
}
