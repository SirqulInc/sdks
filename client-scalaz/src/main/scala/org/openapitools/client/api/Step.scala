package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Step._

case class Step (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
owner: Option[Account],
deviceId: Option[String],
leg: Option[Leg],
distance: Option[Double],
duration: Option[Long],
startLatitude: Option[Double],
startLongitude: Option[Double],
startAltitude: Option[Double],
startDate: Option[OffsetDateTime],
endLatitude: Option[Double],
endLongitude: Option[Double],
endAltitude: Option[Double],
endDate: Option[OffsetDateTime])

object Step {
  import DateTimeCodecs._

  implicit val StepCodecJson: CodecJson[Step] = CodecJson.derive[Step]
  implicit val StepDecoder: EntityDecoder[Step] = jsonOf[Step]
  implicit val StepEncoder: EntityEncoder[Step] = jsonEncoderOf[Step]
}
