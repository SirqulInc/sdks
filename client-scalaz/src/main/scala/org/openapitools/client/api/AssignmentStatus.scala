package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.time.OffsetDateTime

import AssignmentStatus._

case class AssignmentStatus (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
assignment: Option[Assignment],
creator: Option[Account],
toDo: Option[ToDo],
connection: Option[Connection],
method: Option[Method],
status: Option[Status],
closure: Option[Closure],
message: Option[String],
followUp: Option[OffsetDateTime],
notification: Option[ScheduledNotification])

object AssignmentStatus {
  import DateTimeCodecs._
  sealed trait ToDo
  case object SITEVISIT extends ToDo
  case object PHONE extends ToDo
  case object RECONTACT extends ToDo
  case object RENEWAL extends ToDo
  case object CREDIT extends ToDo

  object ToDo {
    def toToDo(s: String): Option[ToDo] = s match {
      case "SITEVISIT" => Some(SITEVISIT)
      case "PHONE" => Some(PHONE)
      case "RECONTACT" => Some(RECONTACT)
      case "RENEWAL" => Some(RENEWAL)
      case "CREDIT" => Some(CREDIT)
      case _ => None
    }

    def fromToDo(x: ToDo): String = x match {
      case SITEVISIT => "SITEVISIT"
      case PHONE => "PHONE"
      case RECONTACT => "RECONTACT"
      case RENEWAL => "RENEWAL"
      case CREDIT => "CREDIT"
    }
  }

  implicit val ToDoEnumEncoder: EncodeJson[ToDo] =
    EncodeJson[ToDo](is => StringEncodeJson(ToDo.fromToDo(is)))

  implicit val ToDoEnumDecoder: DecodeJson[ToDo] =
    DecodeJson.optionDecoder[ToDo](n => n.string.flatMap(jStr => ToDo.toToDo(jStr)), "ToDo failed to de-serialize")
  sealed trait Connection
  case object INITIAL extends Connection
  case object FOLLOWUP extends Connection
  case object DECLINED extends Connection

  object Connection {
    def toConnection(s: String): Option[Connection] = s match {
      case "INITIAL" => Some(INITIAL)
      case "FOLLOWUP" => Some(FOLLOWUP)
      case "DECLINED" => Some(DECLINED)
      case _ => None
    }

    def fromConnection(x: Connection): String = x match {
      case INITIAL => "INITIAL"
      case FOLLOWUP => "FOLLOWUP"
      case DECLINED => "DECLINED"
    }
  }

  implicit val ConnectionEnumEncoder: EncodeJson[Connection] =
    EncodeJson[Connection](is => StringEncodeJson(Connection.fromConnection(is)))

  implicit val ConnectionEnumDecoder: DecodeJson[Connection] =
    DecodeJson.optionDecoder[Connection](n => n.string.flatMap(jStr => Connection.toConnection(jStr)), "Connection failed to de-serialize")
  sealed trait Method
  case object PHONE extends Method
  case object SITEVISIT extends Method
  case object EMAIL extends Method

  object Method {
    def toMethod(s: String): Option[Method] = s match {
      case "PHONE" => Some(PHONE)
      case "SITEVISIT" => Some(SITEVISIT)
      case "EMAIL" => Some(EMAIL)
      case _ => None
    }

    def fromMethod(x: Method): String = x match {
      case PHONE => "PHONE"
      case SITEVISIT => "SITEVISIT"
      case EMAIL => "EMAIL"
    }
  }

  implicit val MethodEnumEncoder: EncodeJson[Method] =
    EncodeJson[Method](is => StringEncodeJson(Method.fromMethod(is)))

  implicit val MethodEnumDecoder: DecodeJson[Method] =
    DecodeJson.optionDecoder[Method](n => n.string.flatMap(jStr => Method.toMethod(jStr)), "Method failed to de-serialize")
  sealed trait Status
  case object ARCHIVED extends Status
  case object SUBSCRIBED extends Status
  case object UNSUBSCRIBED extends Status
  case object CONTACTED extends Status
  case object DECLINED extends Status
  case object NOTCONTACTED extends Status

  object Status {
    def toStatus(s: String): Option[Status] = s match {
      case "ARCHIVED" => Some(ARCHIVED)
      case "SUBSCRIBED" => Some(SUBSCRIBED)
      case "UNSUBSCRIBED" => Some(UNSUBSCRIBED)
      case "CONTACTED" => Some(CONTACTED)
      case "DECLINED" => Some(DECLINED)
      case "NOTCONTACTED" => Some(NOTCONTACTED)
      case _ => None
    }

    def fromStatus(x: Status): String = x match {
      case ARCHIVED => "ARCHIVED"
      case SUBSCRIBED => "SUBSCRIBED"
      case UNSUBSCRIBED => "UNSUBSCRIBED"
      case CONTACTED => "CONTACTED"
      case DECLINED => "DECLINED"
      case NOTCONTACTED => "NOTCONTACTED"
    }
  }

  implicit val StatusEnumEncoder: EncodeJson[Status] =
    EncodeJson[Status](is => StringEncodeJson(Status.fromStatus(is)))

  implicit val StatusEnumDecoder: DecodeJson[Status] =
    DecodeJson.optionDecoder[Status](n => n.string.flatMap(jStr => Status.toStatus(jStr)), "Status failed to de-serialize")
  sealed trait Closure
  case object PHONE extends Closure
  case object SITEVISIT extends Closure
  case object PHONESITE extends Closure
  case object WEB extends Closure

  object Closure {
    def toClosure(s: String): Option[Closure] = s match {
      case "PHONE" => Some(PHONE)
      case "SITEVISIT" => Some(SITEVISIT)
      case "PHONESITE" => Some(PHONESITE)
      case "WEB" => Some(WEB)
      case _ => None
    }

    def fromClosure(x: Closure): String = x match {
      case PHONE => "PHONE"
      case SITEVISIT => "SITEVISIT"
      case PHONESITE => "PHONESITE"
      case WEB => "WEB"
    }
  }

  implicit val ClosureEnumEncoder: EncodeJson[Closure] =
    EncodeJson[Closure](is => StringEncodeJson(Closure.fromClosure(is)))

  implicit val ClosureEnumDecoder: DecodeJson[Closure] =
    DecodeJson.optionDecoder[Closure](n => n.string.flatMap(jStr => Closure.toClosure(jStr)), "Closure failed to de-serialize")

  implicit val AssignmentStatusCodecJson: CodecJson[AssignmentStatus] = CodecJson.derive[AssignmentStatus]
  implicit val AssignmentStatusDecoder: EntityDecoder[AssignmentStatus] = jsonOf[AssignmentStatus]
  implicit val AssignmentStatusEncoder: EntityEncoder[AssignmentStatus] = jsonEncoderOf[AssignmentStatus]
}
