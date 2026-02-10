package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Assignment._

case class Assignment (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
description: Option[String],
assignee: Option[Account],
retailerLocation: Option[RetailerLocation],
creator: Option[Account],
lastUpdatedBy: Option[Account],
currentStatus: Option[AssignmentStatus],
currentStatusType: Option[CurrentStatusType],
assets: Option[List[Asset]],
notes: Option[List[Note]],
publicPermissions: Option[Permissions],
userPermissions: Option[List[UserPermissions]],
visibility: Option[Visibility],
statuses: Option[List[AssignmentStatus]],
application: Option[Application],
approvalStatus: Option[ApprovalStatus],
contentName: Option[String],
contentAsset: Option[Asset],
owner: Option[Account],
noteCount: Option[Long])

object Assignment {
  import DateTimeCodecs._
  sealed trait CurrentStatusType
  case object `NEW` extends CurrentStatusType
  case object INPROGRESS extends CurrentStatusType
  case object SUBSCRIBED extends CurrentStatusType
  case object ARCHIVED extends CurrentStatusType

  object CurrentStatusType {
    def toCurrentStatusType(s: String): Option[CurrentStatusType] = s match {
      case "`NEW`" => Some(`NEW`)
      case "INPROGRESS" => Some(INPROGRESS)
      case "SUBSCRIBED" => Some(SUBSCRIBED)
      case "ARCHIVED" => Some(ARCHIVED)
      case _ => None
    }

    def fromCurrentStatusType(x: CurrentStatusType): String = x match {
      case `NEW` => "`NEW`"
      case INPROGRESS => "INPROGRESS"
      case SUBSCRIBED => "SUBSCRIBED"
      case ARCHIVED => "ARCHIVED"
    }
  }

  implicit val CurrentStatusTypeEnumEncoder: EncodeJson[CurrentStatusType] =
    EncodeJson[CurrentStatusType](is => StringEncodeJson(CurrentStatusType.fromCurrentStatusType(is)))

  implicit val CurrentStatusTypeEnumDecoder: DecodeJson[CurrentStatusType] =
    DecodeJson.optionDecoder[CurrentStatusType](n => n.string.flatMap(jStr => CurrentStatusType.toCurrentStatusType(jStr)), "CurrentStatusType failed to de-serialize")
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

  implicit val AssignmentCodecJson: CodecJson[Assignment] = CodecJson.derive[Assignment]
  implicit val AssignmentDecoder: EntityDecoder[Assignment] = jsonOf[Assignment]
  implicit val AssignmentEncoder: EntityEncoder[Assignment] = jsonEncoderOf[Assignment]
}
