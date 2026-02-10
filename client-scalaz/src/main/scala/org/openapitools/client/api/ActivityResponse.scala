package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ActivityResponse._

case class ActivityResponse (
  activityId: Option[Long],
created: Option[Long],
appKey: Option[String],
targetId: Option[Long],
targetType: Option[String],
targetLegacyId: Option[String],
targetDescription: Option[String],
targetActive: Option[Boolean],
action: Option[String],
slaveEntityId: Option[Long])

object ActivityResponse {
  import DateTimeCodecs._

  implicit val ActivityResponseCodecJson: CodecJson[ActivityResponse] = CodecJson.derive[ActivityResponse]
  implicit val ActivityResponseDecoder: EntityDecoder[ActivityResponse] = jsonOf[ActivityResponse]
  implicit val ActivityResponseEncoder: EntityEncoder[ActivityResponse] = jsonEncoderOf[ActivityResponse]
}
