package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AssignmentResponse._

case class AssignmentResponse (
  assignmentId: Option[Long],
name: Option[String],
description: Option[String],
active: Option[Boolean],
created: Option[Long],
updated: Option[Long],
assignee: Option[AccountShortResponse],
creator: Option[AccountShortResponse],
lastReportedBy: Option[AccountShortResponse],
location: Option[RetailerLocationShortResponse],
currentStatus: Option[AssignmentStatusResponse],
currentStatusType: Option[CurrentStatusType])

object AssignmentResponse {
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

  implicit val AssignmentResponseCodecJson: CodecJson[AssignmentResponse] = CodecJson.derive[AssignmentResponse]
  implicit val AssignmentResponseDecoder: EntityDecoder[AssignmentResponse] = jsonOf[AssignmentResponse]
  implicit val AssignmentResponseEncoder: EntityEncoder[AssignmentResponse] = jsonEncoderOf[AssignmentResponse]
}
