package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Interval._

case class Interval (
  end: Option[OffsetDateTime],
start: Option[OffsetDateTime],
chronology: Option[Chronology],
startMillis: Option[Long],
endMillis: Option[Long],
beforeNow: Option[Boolean],
afterNow: Option[Boolean])

object Interval {
  import DateTimeCodecs._

  implicit val IntervalCodecJson: CodecJson[Interval] = CodecJson.derive[Interval]
  implicit val IntervalDecoder: EntityDecoder[Interval] = jsonOf[Interval]
  implicit val IntervalEncoder: EntityEncoder[Interval] = jsonEncoderOf[Interval]
}
