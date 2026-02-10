package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AchievementProgressResponse._

case class AchievementProgressResponse (
  achievementId: Option[Long],
achievementTierId: Option[Long],
title: Option[String],
description: Option[String],
icon: Option[AssetShortResponse],
completed: Option[Boolean],
progressCount: Option[Long],
goalCount: Option[Long],
dateUpdated: Option[Long])

object AchievementProgressResponse {
  import DateTimeCodecs._

  implicit val AchievementProgressResponseCodecJson: CodecJson[AchievementProgressResponse] = CodecJson.derive[AchievementProgressResponse]
  implicit val AchievementProgressResponseDecoder: EntityDecoder[AchievementProgressResponse] = jsonOf[AchievementProgressResponse]
  implicit val AchievementProgressResponseEncoder: EntityEncoder[AchievementProgressResponse] = jsonEncoderOf[AchievementProgressResponse]
}
