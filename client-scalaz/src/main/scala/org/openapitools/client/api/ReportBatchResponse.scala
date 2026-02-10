package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ReportBatchResponse._

case class ReportBatchResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
batchId: Option[Long],
reportBatchStatus: Option[ReportBatchStatus],
errorMessage: Option[String],
endpoint: Option[String],
pageUrl: Option[String],
name: Option[String],
description: Option[String],
created: Option[Long],
updated: Option[Long],
returning: Option[String])

object ReportBatchResponse {
  import DateTimeCodecs._
  sealed trait ReportBatchStatus
  case object `NEW` extends ReportBatchStatus
  case object ERROR extends ReportBatchStatus
  case object COMPLETE extends ReportBatchStatus
  case object PARSEERROR extends ReportBatchStatus
  case object PROCESSING extends ReportBatchStatus
  case object DUPLICATE extends ReportBatchStatus
  case object SAVEONLY extends ReportBatchStatus

  object ReportBatchStatus {
    def toReportBatchStatus(s: String): Option[ReportBatchStatus] = s match {
      case "`NEW`" => Some(`NEW`)
      case "ERROR" => Some(ERROR)
      case "COMPLETE" => Some(COMPLETE)
      case "PARSEERROR" => Some(PARSEERROR)
      case "PROCESSING" => Some(PROCESSING)
      case "DUPLICATE" => Some(DUPLICATE)
      case "SAVEONLY" => Some(SAVEONLY)
      case _ => None
    }

    def fromReportBatchStatus(x: ReportBatchStatus): String = x match {
      case `NEW` => "`NEW`"
      case ERROR => "ERROR"
      case COMPLETE => "COMPLETE"
      case PARSEERROR => "PARSEERROR"
      case PROCESSING => "PROCESSING"
      case DUPLICATE => "DUPLICATE"
      case SAVEONLY => "SAVEONLY"
    }
  }

  implicit val ReportBatchStatusEnumEncoder: EncodeJson[ReportBatchStatus] =
    EncodeJson[ReportBatchStatus](is => StringEncodeJson(ReportBatchStatus.fromReportBatchStatus(is)))

  implicit val ReportBatchStatusEnumDecoder: DecodeJson[ReportBatchStatus] =
    DecodeJson.optionDecoder[ReportBatchStatus](n => n.string.flatMap(jStr => ReportBatchStatus.toReportBatchStatus(jStr)), "ReportBatchStatus failed to de-serialize")

  implicit val ReportBatchResponseCodecJson: CodecJson[ReportBatchResponse] = CodecJson.derive[ReportBatchResponse]
  implicit val ReportBatchResponseDecoder: EntityDecoder[ReportBatchResponse] = jsonOf[ReportBatchResponse]
  implicit val ReportBatchResponseEncoder: EntityEncoder[ReportBatchResponse] = jsonEncoderOf[ReportBatchResponse]
}
