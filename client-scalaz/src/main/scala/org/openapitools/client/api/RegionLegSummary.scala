package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RegionLegSummary._

case class RegionLegSummary (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
regionId: Option[Long],
floorId: Option[String],
retailerLocationId: Option[Long],
legId: Option[Long])

object RegionLegSummary {
  import DateTimeCodecs._

  implicit val RegionLegSummaryCodecJson: CodecJson[RegionLegSummary] = CodecJson.derive[RegionLegSummary]
  implicit val RegionLegSummaryDecoder: EntityDecoder[RegionLegSummary] = jsonOf[RegionLegSummary]
  implicit val RegionLegSummaryEncoder: EntityEncoder[RegionLegSummary] = jsonEncoderOf[RegionLegSummary]
}
