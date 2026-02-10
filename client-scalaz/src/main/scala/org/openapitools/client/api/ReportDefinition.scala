package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ReportDefinition._

case class ReportDefinition (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
query: Option[String],
queryName: Option[String],
displayName: Option[String],
columnNames: Option[List[String]],
nativeSql: Option[Boolean],
display: Option[Boolean],
dataSource: Option[DataSource],
maxLimit: Option[Long],
maxDateRange: Option[Integer],
displayParams: Option[String],
metaData: Option[String],
columnNamesRaw: Option[String])

object ReportDefinition {
  import DateTimeCodecs._
  sealed trait DataSource
  case object WRITE extends DataSource
  case object ANALYTIC extends DataSource
  case object READ1 extends DataSource

  object DataSource {
    def toDataSource(s: String): Option[DataSource] = s match {
      case "WRITE" => Some(WRITE)
      case "ANALYTIC" => Some(ANALYTIC)
      case "READ1" => Some(READ1)
      case _ => None
    }

    def fromDataSource(x: DataSource): String = x match {
      case WRITE => "WRITE"
      case ANALYTIC => "ANALYTIC"
      case READ1 => "READ1"
    }
  }

  implicit val DataSourceEnumEncoder: EncodeJson[DataSource] =
    EncodeJson[DataSource](is => StringEncodeJson(DataSource.fromDataSource(is)))

  implicit val DataSourceEnumDecoder: DecodeJson[DataSource] =
    DecodeJson.optionDecoder[DataSource](n => n.string.flatMap(jStr => DataSource.toDataSource(jStr)), "DataSource failed to de-serialize")

  implicit val ReportDefinitionCodecJson: CodecJson[ReportDefinition] = CodecJson.derive[ReportDefinition]
  implicit val ReportDefinitionDecoder: EntityDecoder[ReportDefinition] = jsonOf[ReportDefinition]
  implicit val ReportDefinitionEncoder: EntityEncoder[ReportDefinition] = jsonEncoderOf[ReportDefinition]
}
