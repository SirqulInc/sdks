package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DurationField._

case class DurationField (
  name: Option[String],
`type`: Option[DurationFieldType],
supported: Option[Boolean],
precise: Option[Boolean],
unitMillis: Option[Long])

object DurationField {
  import DateTimeCodecs._

  implicit val DurationFieldCodecJson: CodecJson[DurationField] = CodecJson.derive[DurationField]
  implicit val DurationFieldDecoder: EntityDecoder[DurationField] = jsonOf[DurationField]
  implicit val DurationFieldEncoder: EntityEncoder[DurationField] = jsonEncoderOf[DurationField]
}
