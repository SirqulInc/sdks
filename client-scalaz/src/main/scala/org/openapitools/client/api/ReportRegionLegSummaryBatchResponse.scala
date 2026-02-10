package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ReportRegionLegSummaryBatchResponse._

case class ReportRegionLegSummaryBatchResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
successCount: Option[Long],
failureCount: Option[Long],
returning: Option[String])

object ReportRegionLegSummaryBatchResponse {
  import DateTimeCodecs._

  implicit val ReportRegionLegSummaryBatchResponseCodecJson: CodecJson[ReportRegionLegSummaryBatchResponse] = CodecJson.derive[ReportRegionLegSummaryBatchResponse]
  implicit val ReportRegionLegSummaryBatchResponseDecoder: EntityDecoder[ReportRegionLegSummaryBatchResponse] = jsonOf[ReportRegionLegSummaryBatchResponse]
  implicit val ReportRegionLegSummaryBatchResponseEncoder: EntityEncoder[ReportRegionLegSummaryBatchResponse] = jsonEncoderOf[ReportRegionLegSummaryBatchResponse]
}
