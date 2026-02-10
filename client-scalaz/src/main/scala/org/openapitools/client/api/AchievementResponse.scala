package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AchievementResponse._

case class AchievementResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
achievementId: Option[Long],
title: Option[String],
description: Option[String],
analyticsTag: Option[String],
rankType: Option[String],
rankIncrement: Option[Integer],
validate: Option[Boolean],
appName: Option[String],
active: Option[Boolean],
updated: Option[Long],
created: Option[Long],
tierCount: Option[Integer],
minIncrement: Option[Integer],
maxIncrement: Option[Integer],
tiers: Option[List[AchievementTierResponse]],
returning: Option[String])

object AchievementResponse {
  import DateTimeCodecs._

  implicit val AchievementResponseCodecJson: CodecJson[AchievementResponse] = CodecJson.derive[AchievementResponse]
  implicit val AchievementResponseDecoder: EntityDecoder[AchievementResponse] = jsonOf[AchievementResponse]
  implicit val AchievementResponseEncoder: EntityEncoder[AchievementResponse] = jsonEncoderOf[AchievementResponse]
}
