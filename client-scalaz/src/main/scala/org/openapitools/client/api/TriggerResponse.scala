package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import TriggerResponse._

case class TriggerResponse (
  scheduledNotificationId: Option[Long],
active: Option[Boolean],
status: Option[Status],
`type`: Option[`Type`],
name: Option[String],
message: Option[String],
groupingId: Option[String],
scheduledDate: Option[Long],
startDate: Option[Long],
endDate: Option[Long],
owner: Option[AccountShortResponse],
billableEntity: Option[BillableEntityShortResponse],
contentId: Option[Long],
contentName: Option[String],
`contentType`: Option[String],
parentId: Option[Long],
parentType: Option[String],
application: Option[ApplicationMiniResponse],
targetId: Option[Long],
targetName: Option[String],
targetType: Option[String],
targetParams: Option[String],
deliverEstimate: Option[Long],
deliverCount: Option[Long],
deliverTotal: Option[Long],
deliverFailed: Option[Long],
processingTime: Option[Long],
sendingTime: Option[Long],
updated: Option[Long],
created: Option[Long],
cronExpression: Option[String],
endpointURL: Option[String],
payload: Option[String],
conditionalInput: Option[String],
connectionAccountIds: Option[List[Long]],
templateType: Option[TemplateType],
groupedTypes: Option[List[GroupedTypes]],
triggerId: Option[Long])

object TriggerResponse {
  import DateTimeCodecs._
  sealed trait Status
  case object `NEW` extends Status
  case object ERROR extends Status
  case object COMPLETE extends Status
  case object PROCESSING extends Status
  case object TEMPLATE extends Status

  object Status {
    def toStatus(s: String): Option[Status] = s match {
      case "`NEW`" => Some(`NEW`)
      case "ERROR" => Some(ERROR)
      case "COMPLETE" => Some(COMPLETE)
      case "PROCESSING" => Some(PROCESSING)
      case "TEMPLATE" => Some(TEMPLATE)
      case _ => None
    }

    def fromStatus(x: Status): String = x match {
      case `NEW` => "`NEW`"
      case ERROR => "ERROR"
      case COMPLETE => "COMPLETE"
      case PROCESSING => "PROCESSING"
      case TEMPLATE => "TEMPLATE"
    }
  }

  implicit val StatusEnumEncoder: EncodeJson[Status] =
    EncodeJson[Status](is => StringEncodeJson(Status.fromStatus(is)))

  implicit val StatusEnumDecoder: DecodeJson[Status] =
    DecodeJson.optionDecoder[Status](n => n.string.flatMap(jStr => Status.toStatus(jStr)), "Status failed to de-serialize")
  sealed trait `Type`
  case object HTTP extends `Type`
  case object SAVE extends `Type`
  case object EMAIL extends `Type`
  case object SMS extends `Type`
  case object APNS extends `Type`
  case object GCM extends `Type`
  case object PUSH extends `Type`
  case object MOBILENOTIFICATION extends `Type`

  object `Type` {
    def to`Type`(s: String): Option[`Type`] = s match {
      case "HTTP" => Some(HTTP)
      case "SAVE" => Some(SAVE)
      case "EMAIL" => Some(EMAIL)
      case "SMS" => Some(SMS)
      case "APNS" => Some(APNS)
      case "GCM" => Some(GCM)
      case "PUSH" => Some(PUSH)
      case "MOBILENOTIFICATION" => Some(MOBILENOTIFICATION)
      case _ => None
    }

    def from`Type`(x: `Type`): String = x match {
      case HTTP => "HTTP"
      case SAVE => "SAVE"
      case EMAIL => "EMAIL"
      case SMS => "SMS"
      case APNS => "APNS"
      case GCM => "GCM"
      case PUSH => "PUSH"
      case MOBILENOTIFICATION => "MOBILENOTIFICATION"
    }
  }

  implicit val `Type`EnumEncoder: EncodeJson[`Type`] =
    EncodeJson[`Type`](is => StringEncodeJson(`Type`.from`Type`(is)))

  implicit val `Type`EnumDecoder: DecodeJson[`Type`] =
    DecodeJson.optionDecoder[`Type`](n => n.string.flatMap(jStr => `Type`.to`Type`(jStr)), "`Type` failed to de-serialize")
  sealed trait TemplateType
  case object REPORTING extends TemplateType
  case object ACHIEVEMENTOWNER extends TemplateType
  case object ACHIEVEMENTTRIGGER extends TemplateType
  case object GEOFENCEOWNER extends TemplateType
  case object GEOFENCETARGET extends TemplateType
  case object GEOFENCETRIGGER extends TemplateType
  case object GEOFENCEHTTPCALL extends TemplateType

  object TemplateType {
    def toTemplateType(s: String): Option[TemplateType] = s match {
      case "REPORTING" => Some(REPORTING)
      case "ACHIEVEMENTOWNER" => Some(ACHIEVEMENTOWNER)
      case "ACHIEVEMENTTRIGGER" => Some(ACHIEVEMENTTRIGGER)
      case "GEOFENCEOWNER" => Some(GEOFENCEOWNER)
      case "GEOFENCETARGET" => Some(GEOFENCETARGET)
      case "GEOFENCETRIGGER" => Some(GEOFENCETRIGGER)
      case "GEOFENCEHTTPCALL" => Some(GEOFENCEHTTPCALL)
      case _ => None
    }

    def fromTemplateType(x: TemplateType): String = x match {
      case REPORTING => "REPORTING"
      case ACHIEVEMENTOWNER => "ACHIEVEMENTOWNER"
      case ACHIEVEMENTTRIGGER => "ACHIEVEMENTTRIGGER"
      case GEOFENCEOWNER => "GEOFENCEOWNER"
      case GEOFENCETARGET => "GEOFENCETARGET"
      case GEOFENCETRIGGER => "GEOFENCETRIGGER"
      case GEOFENCEHTTPCALL => "GEOFENCEHTTPCALL"
    }
  }

  implicit val TemplateTypeEnumEncoder: EncodeJson[TemplateType] =
    EncodeJson[TemplateType](is => StringEncodeJson(TemplateType.fromTemplateType(is)))

  implicit val TemplateTypeEnumDecoder: DecodeJson[TemplateType] =
    DecodeJson.optionDecoder[TemplateType](n => n.string.flatMap(jStr => TemplateType.toTemplateType(jStr)), "TemplateType failed to de-serialize")
  sealed trait List[GroupedTypes]

  object List[GroupedTypes] {
    def toList[GroupedTypes](s: String): Option[List[GroupedTypes]] = s match {
      case _ => None
    }

    def fromList[GroupedTypes](x: List[GroupedTypes]): String = x match {
    }
  }

  implicit val List[GroupedTypes]EnumEncoder: EncodeJson[List[GroupedTypes]] =
    EncodeJson[List[GroupedTypes]](is => StringEncodeJson(List[GroupedTypes].fromList[GroupedTypes](is)))

  implicit val List[GroupedTypes]EnumDecoder: DecodeJson[List[GroupedTypes]] =
    DecodeJson.optionDecoder[List[GroupedTypes]](n => n.string.flatMap(jStr => List[GroupedTypes].toList[GroupedTypes](jStr)), "List[GroupedTypes] failed to de-serialize")

  implicit val TriggerResponseCodecJson: CodecJson[TriggerResponse] = CodecJson.derive[TriggerResponse]
  implicit val TriggerResponseDecoder: EntityDecoder[TriggerResponse] = jsonOf[TriggerResponse]
  implicit val TriggerResponseEncoder: EntityEncoder[TriggerResponse] = jsonEncoderOf[TriggerResponse]
}
