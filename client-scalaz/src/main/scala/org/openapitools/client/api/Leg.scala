package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Leg._

case class Leg (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
owner: Option[Account],
parentOwner: Option[Account],
application: Option[Application],
deviceId: Option[String],
distance: Option[Double],
duration: Option[Long],
startLatitude: Option[Double],
startLongitude: Option[Double],
startAltitude: Option[Double],
startDate: Option[OffsetDateTime],
endLatitude: Option[Double],
endLongitude: Option[Double],
endAltitude: Option[Double],
endDate: Option[OffsetDateTime],
`type`: Option[String],
retailerLocationId: Option[Long],
floorId: Option[String],
steps: Option[List[Step]])

object Leg {
  import DateTimeCodecs._

  implicit val LegCodecJson: CodecJson[Leg] = CodecJson.derive[Leg]
  implicit val LegDecoder: EntityDecoder[Leg] = jsonOf[Leg]
  implicit val LegEncoder: EntityEncoder[Leg] = jsonEncoderOf[Leg]
}
