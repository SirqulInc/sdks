package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LocalTime._

case class LocalTime (
  chronology: Option[Chronology],
hourOfDay: Option[Integer],
minuteOfHour: Option[Integer],
secondOfMinute: Option[Integer],
millisOfSecond: Option[Integer],
millisOfDay: Option[Integer],
fields: Option[List[DateTimeField]],
values: Option[List[Integer]],
fieldTypes: Option[List[DateTimeFieldType]])

object LocalTime {
  import DateTimeCodecs._

  implicit val LocalTimeCodecJson: CodecJson[LocalTime] = CodecJson.derive[LocalTime]
  implicit val LocalTimeDecoder: EntityDecoder[LocalTime] = jsonOf[LocalTime]
  implicit val LocalTimeEncoder: EntityEncoder[LocalTime] = jsonEncoderOf[LocalTime]
}
