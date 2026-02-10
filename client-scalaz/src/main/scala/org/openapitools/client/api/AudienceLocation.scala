package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AudienceLocation._

case class AudienceLocation (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
radius: Option[Double])

object AudienceLocation {
  import DateTimeCodecs._

  implicit val AudienceLocationCodecJson: CodecJson[AudienceLocation] = CodecJson.derive[AudienceLocation]
  implicit val AudienceLocationDecoder: EntityDecoder[AudienceLocation] = jsonOf[AudienceLocation]
  implicit val AudienceLocationEncoder: EntityEncoder[AudienceLocation] = jsonEncoderOf[AudienceLocation]
}
