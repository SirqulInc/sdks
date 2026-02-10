package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import ShipmentBatch._

case class ShipmentBatch (
  id: Option[Long],
created: Option[OffsetDateTime],
updated: Option[OffsetDateTime],
active: Option[Boolean],
valid: Option[Boolean],
retailer: Option[Retailer],
hub: Option[ServiceHub],
program: Option[Program],
shipmentImportStatuses: Option[List[ShipmentImportStatus]],
shipments: Option[List[Shipment]],
uploaded: Option[OffsetDateTime],
started: Option[OffsetDateTime],
optimizationStarted: Option[OffsetDateTime],
completed: Option[OffsetDateTime],
optimizationCompleted: Option[OffsetDateTime],
source: Option[String],
externalId: Option[String],
total: Option[Integer],
processedCount: Option[Integer],
successCount: Option[Integer],
failedCount: Option[Integer],
validCount: Option[Integer],
invalidCount: Option[Integer],
averageTravelSpeed: Option[Double],
maxSeconds: Option[Long],
importStatus: Option[ImportStatus],
totalRoutes: Option[Integer],
routesCreated: Option[Integer],
totalLegsRequests: Option[Integer],
legsRequested: Option[Integer],
initScore: Option[Integer],
hardScore: Option[Long],
mediumScore: Option[Long],
softScore: Option[Long])

object ShipmentBatch {
  import DateTimeCodecs._
  sealed trait ImportStatus
  case object `NEW` extends ImportStatus
  case object STARTED extends ImportStatus
  case object FETCHINGDISTANCEDATA extends ImportStatus
  case object OPTIMIZING extends ImportStatus
  case object CREATINGROUTES extends ImportStatus
  case object COMPLETED extends ImportStatus
  case object INCOMPLETE extends ImportStatus

  object ImportStatus {
    def toImportStatus(s: String): Option[ImportStatus] = s match {
      case "`NEW`" => Some(`NEW`)
      case "STARTED" => Some(STARTED)
      case "FETCHINGDISTANCEDATA" => Some(FETCHINGDISTANCEDATA)
      case "OPTIMIZING" => Some(OPTIMIZING)
      case "CREATINGROUTES" => Some(CREATINGROUTES)
      case "COMPLETED" => Some(COMPLETED)
      case "INCOMPLETE" => Some(INCOMPLETE)
      case _ => None
    }

    def fromImportStatus(x: ImportStatus): String = x match {
      case `NEW` => "`NEW`"
      case STARTED => "STARTED"
      case FETCHINGDISTANCEDATA => "FETCHINGDISTANCEDATA"
      case OPTIMIZING => "OPTIMIZING"
      case CREATINGROUTES => "CREATINGROUTES"
      case COMPLETED => "COMPLETED"
      case INCOMPLETE => "INCOMPLETE"
    }
  }

  implicit val ImportStatusEnumEncoder: EncodeJson[ImportStatus] =
    EncodeJson[ImportStatus](is => StringEncodeJson(ImportStatus.fromImportStatus(is)))

  implicit val ImportStatusEnumDecoder: DecodeJson[ImportStatus] =
    DecodeJson.optionDecoder[ImportStatus](n => n.string.flatMap(jStr => ImportStatus.toImportStatus(jStr)), "ImportStatus failed to de-serialize")

  implicit val ShipmentBatchCodecJson: CodecJson[ShipmentBatch] = CodecJson.derive[ShipmentBatch]
  implicit val ShipmentBatchDecoder: EntityDecoder[ShipmentBatch] = jsonOf[ShipmentBatch]
  implicit val ShipmentBatchEncoder: EntityEncoder[ShipmentBatch] = jsonEncoderOf[ShipmentBatch]
}
