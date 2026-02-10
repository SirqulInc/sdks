package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CsvImportResponse._

case class CsvImportResponse (
  valid: Option[Boolean],
message: Option[String],
version: Option[Double],
serializeNulls: Option[Boolean],
startTimeLog: Option[Long],
errorCode: Option[String],
request: Option[List[NameStringValueResponse]],
batchId: Option[Long],
csvImportBatchStatus: Option[CsvImportBatchStatus],
errorMessage: Option[String],
objectType: Option[ObjectType],
returning: Option[String])

object CsvImportResponse {
  import DateTimeCodecs._
  sealed trait CsvImportBatchStatus
  case object `NEW` extends CsvImportBatchStatus
  case object ERROR extends CsvImportBatchStatus
  case object COMPLETE extends CsvImportBatchStatus
  case object PARSEERROR extends CsvImportBatchStatus
  case object PROCESSING extends CsvImportBatchStatus
  case object DUPLICATE extends CsvImportBatchStatus

  object CsvImportBatchStatus {
    def toCsvImportBatchStatus(s: String): Option[CsvImportBatchStatus] = s match {
      case "`NEW`" => Some(`NEW`)
      case "ERROR" => Some(ERROR)
      case "COMPLETE" => Some(COMPLETE)
      case "PARSEERROR" => Some(PARSEERROR)
      case "PROCESSING" => Some(PROCESSING)
      case "DUPLICATE" => Some(DUPLICATE)
      case _ => None
    }

    def fromCsvImportBatchStatus(x: CsvImportBatchStatus): String = x match {
      case `NEW` => "`NEW`"
      case ERROR => "ERROR"
      case COMPLETE => "COMPLETE"
      case PARSEERROR => "PARSEERROR"
      case PROCESSING => "PROCESSING"
      case DUPLICATE => "DUPLICATE"
    }
  }

  implicit val CsvImportBatchStatusEnumEncoder: EncodeJson[CsvImportBatchStatus] =
    EncodeJson[CsvImportBatchStatus](is => StringEncodeJson(CsvImportBatchStatus.fromCsvImportBatchStatus(is)))

  implicit val CsvImportBatchStatusEnumDecoder: DecodeJson[CsvImportBatchStatus] =
    DecodeJson.optionDecoder[CsvImportBatchStatus](n => n.string.flatMap(jStr => CsvImportBatchStatus.toCsvImportBatchStatus(jStr)), "CsvImportBatchStatus failed to de-serialize")
  sealed trait ObjectType
  case object OFFERS extends ObjectType
  case object RETAILERS extends ObjectType
  case object RETAILERLOCATIONS extends ObjectType
  case object CATEGORIES extends ObjectType
  case object FILTERS extends ObjectType

  object ObjectType {
    def toObjectType(s: String): Option[ObjectType] = s match {
      case "OFFERS" => Some(OFFERS)
      case "RETAILERS" => Some(RETAILERS)
      case "RETAILERLOCATIONS" => Some(RETAILERLOCATIONS)
      case "CATEGORIES" => Some(CATEGORIES)
      case "FILTERS" => Some(FILTERS)
      case _ => None
    }

    def fromObjectType(x: ObjectType): String = x match {
      case OFFERS => "OFFERS"
      case RETAILERS => "RETAILERS"
      case RETAILERLOCATIONS => "RETAILERLOCATIONS"
      case CATEGORIES => "CATEGORIES"
      case FILTERS => "FILTERS"
    }
  }

  implicit val ObjectTypeEnumEncoder: EncodeJson[ObjectType] =
    EncodeJson[ObjectType](is => StringEncodeJson(ObjectType.fromObjectType(is)))

  implicit val ObjectTypeEnumDecoder: DecodeJson[ObjectType] =
    DecodeJson.optionDecoder[ObjectType](n => n.string.flatMap(jStr => ObjectType.toObjectType(jStr)), "ObjectType failed to de-serialize")

  implicit val CsvImportResponseCodecJson: CodecJson[CsvImportResponse] = CodecJson.derive[CsvImportResponse]
  implicit val CsvImportResponseDecoder: EntityDecoder[CsvImportResponse] = jsonOf[CsvImportResponse]
  implicit val CsvImportResponseEncoder: EntityEncoder[CsvImportResponse] = jsonEncoderOf[CsvImportResponse]
}
