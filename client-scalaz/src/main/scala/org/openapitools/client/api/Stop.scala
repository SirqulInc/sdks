package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import Stop._

case class Stop (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
name: Option[String],
owner: Option[Account],
location: Option[Location],
notes: Option[List[Note]],
noteCount: Option[Long],
stopType: Option[StopType],
orderIndex: Option[Long],
startTime: Option[OffsetDateTime],
endTime: Option[OffsetDateTime],
estimatedTime: Option[OffsetDateTime],
estimatedArrivalTime: Option[OffsetDateTime],
estimatedDepartureTime: Option[OffsetDateTime],
actualTime: Option[OffsetDateTime],
desiredTime: Option[OffsetDateTime],
timePadding: Option[Integer],
route: Option[Route],
shipment: Option[Shipment],
progressStatus: Option[ProgressStatus],
compareEstimatedTime: Option[OffsetDateTime],
compareEstimatedArrivalTime: Option[OffsetDateTime],
compareEstimiatedDepartureTime: Option[OffsetDateTime],
polyline: Option[String],
parent: Option[Stop],
locationDisplay: Option[String],
complete: Option[Boolean],
contentName: Option[String],
locationAddress: Option[String])

object Stop {
  import DateTimeCodecs._
  sealed trait StopType
  case object PICKUP extends StopType
  case object DROPOFF extends StopType
  case object START extends StopType
  case object END extends StopType
  case object ROUTING extends StopType

  object StopType {
    def toStopType(s: String): Option[StopType] = s match {
      case "PICKUP" => Some(PICKUP)
      case "DROPOFF" => Some(DROPOFF)
      case "START" => Some(START)
      case "END" => Some(END)
      case "ROUTING" => Some(ROUTING)
      case _ => None
    }

    def fromStopType(x: StopType): String = x match {
      case PICKUP => "PICKUP"
      case DROPOFF => "DROPOFF"
      case START => "START"
      case END => "END"
      case ROUTING => "ROUTING"
    }
  }

  implicit val StopTypeEnumEncoder: EncodeJson[StopType] =
    EncodeJson[StopType](is => StringEncodeJson(StopType.fromStopType(is)))

  implicit val StopTypeEnumDecoder: DecodeJson[StopType] =
    DecodeJson.optionDecoder[StopType](n => n.string.flatMap(jStr => StopType.toStopType(jStr)), "StopType failed to de-serialize")
  sealed trait ProgressStatus
  case object PENDING extends ProgressStatus
  case object COMPLETE extends ProgressStatus
  case object INVALID extends ProgressStatus

  object ProgressStatus {
    def toProgressStatus(s: String): Option[ProgressStatus] = s match {
      case "PENDING" => Some(PENDING)
      case "COMPLETE" => Some(COMPLETE)
      case "INVALID" => Some(INVALID)
      case _ => None
    }

    def fromProgressStatus(x: ProgressStatus): String = x match {
      case PENDING => "PENDING"
      case COMPLETE => "COMPLETE"
      case INVALID => "INVALID"
    }
  }

  implicit val ProgressStatusEnumEncoder: EncodeJson[ProgressStatus] =
    EncodeJson[ProgressStatus](is => StringEncodeJson(ProgressStatus.fromProgressStatus(is)))

  implicit val ProgressStatusEnumDecoder: DecodeJson[ProgressStatus] =
    DecodeJson.optionDecoder[ProgressStatus](n => n.string.flatMap(jStr => ProgressStatus.toProgressStatus(jStr)), "ProgressStatus failed to de-serialize")

  implicit val StopCodecJson: CodecJson[Stop] = CodecJson.derive[Stop]
  implicit val StopDecoder: EntityDecoder[Stop] = jsonOf[Stop]
  implicit val StopEncoder: EntityEncoder[Stop] = jsonEncoderOf[Stop]
}
