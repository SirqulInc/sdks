package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FlagThreshold._

case class FlagThreshold (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
threshold: Option[Long],
flagableObjectType: Option[String],
application: Option[Application])

object FlagThreshold {
  import DateTimeCodecs._

  implicit val FlagThresholdCodecJson: CodecJson[FlagThreshold] = CodecJson.derive[FlagThreshold]
  implicit val FlagThresholdDecoder: EntityDecoder[FlagThreshold] = jsonOf[FlagThreshold]
  implicit val FlagThresholdEncoder: EntityEncoder[FlagThreshold] = jsonEncoderOf[FlagThreshold]
}
