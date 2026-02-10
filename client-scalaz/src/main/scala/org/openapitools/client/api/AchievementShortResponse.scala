package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AchievementShortResponse._

case class AchievementShortResponse (
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
returning: Option[String])

object AchievementShortResponse {
  import DateTimeCodecs._

  implicit val AchievementShortResponseCodecJson: CodecJson[AchievementShortResponse] = CodecJson.derive[AchievementShortResponse]
  implicit val AchievementShortResponseDecoder: EntityDecoder[AchievementShortResponse] = jsonOf[AchievementShortResponse]
  implicit val AchievementShortResponseEncoder: EntityEncoder[AchievementShortResponse] = jsonEncoderOf[AchievementShortResponse]
}
