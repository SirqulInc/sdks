package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DateTimeFieldType._

case class DateTimeFieldType (
  name: Option[String],
rangeDurationType: Option[DurationFieldType],
durationType: Option[DurationFieldType])

object DateTimeFieldType {
  import DateTimeCodecs._

  implicit val DateTimeFieldTypeCodecJson: CodecJson[DateTimeFieldType] = CodecJson.derive[DateTimeFieldType]
  implicit val DateTimeFieldTypeDecoder: EntityDecoder[DateTimeFieldType] = jsonOf[DateTimeFieldType]
  implicit val DateTimeFieldTypeEncoder: EntityEncoder[DateTimeFieldType] = jsonEncoderOf[DateTimeFieldType]
}
