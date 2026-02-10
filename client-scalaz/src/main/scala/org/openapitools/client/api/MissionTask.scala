package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MissionTask._

case class MissionTask (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
name: Option[String],
description: Option[String],
format: Option[String],
suffix: Option[String],
taskType: Option[TaskType])

object MissionTask {
  import DateTimeCodecs._
  sealed trait TaskType
  case object PHOTO extends TaskType
  case object VOTE extends TaskType
  case object ASK extends TaskType
  case object ANSWER extends TaskType
  case object GROUP extends TaskType
  case object INVITE extends TaskType
  case object OFFER extends TaskType
  case object AD extends TaskType
  case object CUSTOM extends TaskType
  case object GAME extends TaskType

  object TaskType {
    def toTaskType(s: String): Option[TaskType] = s match {
      case "PHOTO" => Some(PHOTO)
      case "VOTE" => Some(VOTE)
      case "ASK" => Some(ASK)
      case "ANSWER" => Some(ANSWER)
      case "GROUP" => Some(GROUP)
      case "INVITE" => Some(INVITE)
      case "OFFER" => Some(OFFER)
      case "AD" => Some(AD)
      case "CUSTOM" => Some(CUSTOM)
      case "GAME" => Some(GAME)
      case _ => None
    }

    def fromTaskType(x: TaskType): String = x match {
      case PHOTO => "PHOTO"
      case VOTE => "VOTE"
      case ASK => "ASK"
      case ANSWER => "ANSWER"
      case GROUP => "GROUP"
      case INVITE => "INVITE"
      case OFFER => "OFFER"
      case AD => "AD"
      case CUSTOM => "CUSTOM"
      case GAME => "GAME"
    }
  }

  implicit val TaskTypeEnumEncoder: EncodeJson[TaskType] =
    EncodeJson[TaskType](is => StringEncodeJson(TaskType.fromTaskType(is)))

  implicit val TaskTypeEnumDecoder: DecodeJson[TaskType] =
    DecodeJson.optionDecoder[TaskType](n => n.string.flatMap(jStr => TaskType.toTaskType(jStr)), "TaskType failed to de-serialize")

  implicit val MissionTaskCodecJson: CodecJson[MissionTask] = CodecJson.derive[MissionTask]
  implicit val MissionTaskDecoder: EntityDecoder[MissionTask] = jsonOf[MissionTask]
  implicit val MissionTaskEncoder: EntityEncoder[MissionTask] = jsonEncoderOf[MissionTask]
}
