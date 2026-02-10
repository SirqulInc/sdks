package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ReportResponse._

case class ReportResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
columns: Option[List[ReportTypeResponse]],
rows: Option[List[Map[String, Any]]],
summations: Option[Map[String, BigDecimal]],
count: Option[Long],
queryName: Option[String],
hasMore: Option[Boolean],
returning: Option[String])

object ReportResponse {
  import DateTimeCodecs._

  implicit val ReportResponseCodecJson: CodecJson[ReportResponse] = CodecJson.derive[ReportResponse]
  implicit val ReportResponseDecoder: EntityDecoder[ReportResponse] = jsonOf[ReportResponse]
  implicit val ReportResponseEncoder: EntityEncoder[ReportResponse] = jsonEncoderOf[ReportResponse]
}
