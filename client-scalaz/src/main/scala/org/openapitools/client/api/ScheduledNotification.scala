package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import ScheduledNotification._

case class ScheduledNotification (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
owner: Option[Account],
billableEntity: Option[BillableEntity],
`type`: Option[`Type`],
status: Option[Status],
templateType: Option[TemplateType],
name: Option[String],
errorMessage: Option[String],
message: Option[String],
payload: Option[String],
contentName: Option[String],
contentId: Option[Long],
`contentType`: Option[String],
parentId: Option[Long],
parentType: Option[String],
application: Option[Application],
connectionGroups: Option[List[ConnectionGroup]],
accountIds: Option[Set[Long]],
audiences: Option[List[Audience]],
report: Option[ReportDefinition],
reportParams: Option[String],
endpointURL: Option[String],
lastActionDate: Option[OffsetDateTime],
scheduledDate: Option[OffsetDateTime],
startDate: Option[OffsetDateTime],
endDate: Option[OffsetDateTime],
cronExpression: Option[String],
deliverEstimate: Option[Long],
deliverCount: Option[Long],
deliverFailed: Option[Long],
deliverTotal: Option[Long],
deliverStart: Option[Long],
deliverLimit: Option[Long],
processingTime: Option[Long],
sendingTime: Option[Long],
groupingId: Option[String],
conditionalInput: Option[String],
conditionalCode: Option[String],
publicPermissions: Option[Permissions],
userPermissions: Option[List[UserPermissions]],
visibility: Option[Visibility],
approvalStatus: Option[ApprovalStatus],
contentAsset: Option[Asset])

object ScheduledNotification {
  import DateTimeCodecs._
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
  sealed trait Visibility
  case object PUBLIC extends Visibility
  case object `PRIVATE` extends Visibility
  case object FRIENDS extends Visibility

  object Visibility {
    def toVisibility(s: String): Option[Visibility] = s match {
      case "PUBLIC" => Some(PUBLIC)
      case "`PRIVATE`" => Some(`PRIVATE`)
      case "FRIENDS" => Some(FRIENDS)
      case _ => None
    }

    def fromVisibility(x: Visibility): String = x match {
      case PUBLIC => "PUBLIC"
      case `PRIVATE` => "`PRIVATE`"
      case FRIENDS => "FRIENDS"
    }
  }

  implicit val VisibilityEnumEncoder: EncodeJson[Visibility] =
    EncodeJson[Visibility](is => StringEncodeJson(Visibility.fromVisibility(is)))

  implicit val VisibilityEnumDecoder: DecodeJson[Visibility] =
    DecodeJson.optionDecoder[Visibility](n => n.string.flatMap(jStr => Visibility.toVisibility(jStr)), "Visibility failed to de-serialize")
  sealed trait ApprovalStatus
  case object PENDING extends ApprovalStatus
  case object REJECTED extends ApprovalStatus
  case object APPROVED extends ApprovalStatus
  case object FEATURED extends ApprovalStatus

  object ApprovalStatus {
    def toApprovalStatus(s: String): Option[ApprovalStatus] = s match {
      case "PENDING" => Some(PENDING)
      case "REJECTED" => Some(REJECTED)
      case "APPROVED" => Some(APPROVED)
      case "FEATURED" => Some(FEATURED)
      case _ => None
    }

    def fromApprovalStatus(x: ApprovalStatus): String = x match {
      case PENDING => "PENDING"
      case REJECTED => "REJECTED"
      case APPROVED => "APPROVED"
      case FEATURED => "FEATURED"
    }
  }

  implicit val ApprovalStatusEnumEncoder: EncodeJson[ApprovalStatus] =
    EncodeJson[ApprovalStatus](is => StringEncodeJson(ApprovalStatus.fromApprovalStatus(is)))

  implicit val ApprovalStatusEnumDecoder: DecodeJson[ApprovalStatus] =
    DecodeJson.optionDecoder[ApprovalStatus](n => n.string.flatMap(jStr => ApprovalStatus.toApprovalStatus(jStr)), "ApprovalStatus failed to de-serialize")

  implicit val ScheduledNotificationCodecJson: CodecJson[ScheduledNotification] = CodecJson.derive[ScheduledNotification]
  implicit val ScheduledNotificationDecoder: EntityDecoder[ScheduledNotification] = jsonOf[ScheduledNotification]
  implicit val ScheduledNotificationEncoder: EntityEncoder[ScheduledNotification] = jsonEncoderOf[ScheduledNotification]
}
