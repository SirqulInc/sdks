package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DurationFieldType._

case class DurationFieldType (
  name: Option[String])

object DurationFieldType {
  import DateTimeCodecs._

  implicit val DurationFieldTypeCodecJson: CodecJson[DurationFieldType] = CodecJson.derive[DurationFieldType]
  implicit val DurationFieldTypeDecoder: EntityDecoder[DurationFieldType] = jsonOf[DurationFieldType]
  implicit val DurationFieldTypeEncoder: EntityEncoder[DurationFieldType] = jsonEncoderOf[DurationFieldType]
}
