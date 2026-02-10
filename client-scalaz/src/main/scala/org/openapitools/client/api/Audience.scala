package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Audience._

case class Audience (
  id: Option[Long],
active: Option[Boolean],
valid: Option[Boolean],
latitude: Option[Double],
longitude: Option[Double],
locationDescription: Option[String],
name: Option[String],
display: Option[Boolean],
description: Option[String],
owner: Option[Account],
gender: Option[Gender],
ageGroups: Option[List[AgeGroups]],
gameExperienceLevel: Option[GameExperienceLevel],
deviceVersionRanges: Option[List[AudienceDeviceVersionRange]],
categories: Option[List[Category]],
applications: Option[List[Application]],
radius: Option[Double],
locations: Option[List[AudienceLocation]],
sendSuggestion: Option[Boolean],
startTimeOffset: Option[Integer],
endTimeOffset: Option[Integer],
target: Option[AudienceTargetType],
associateContentName: Option[String],
polygon: Option[String],
associateType: Option[String],
associateId: Option[Long])

object Audience {
  import DateTimeCodecs._
  sealed trait Gender
  case object MALE extends Gender
  case object FEMALE extends Gender
  case object ANY extends Gender

  object Gender {
    def toGender(s: String): Option[Gender] = s match {
      case "MALE" => Some(MALE)
      case "FEMALE" => Some(FEMALE)
      case "ANY" => Some(ANY)
      case _ => None
    }

    def fromGender(x: Gender): String = x match {
      case MALE => "MALE"
      case FEMALE => "FEMALE"
      case ANY => "ANY"
    }
  }

  implicit val GenderEnumEncoder: EncodeJson[Gender] =
    EncodeJson[Gender](is => StringEncodeJson(Gender.fromGender(is)))

  implicit val GenderEnumDecoder: DecodeJson[Gender] =
    DecodeJson.optionDecoder[Gender](n => n.string.flatMap(jStr => Gender.toGender(jStr)), "Gender failed to de-serialize")
  sealed trait List[AgeGroups]

  object List[AgeGroups] {
    def toList[AgeGroups](s: String): Option[List[AgeGroups]] = s match {
      case _ => None
    }

    def fromList[AgeGroups](x: List[AgeGroups]): String = x match {
    }
  }

  implicit val List[AgeGroups]EnumEncoder: EncodeJson[List[AgeGroups]] =
    EncodeJson[List[AgeGroups]](is => StringEncodeJson(List[AgeGroups].fromList[AgeGroups](is)))

  implicit val List[AgeGroups]EnumDecoder: DecodeJson[List[AgeGroups]] =
    DecodeJson.optionDecoder[List[AgeGroups]](n => n.string.flatMap(jStr => List[AgeGroups].toList[AgeGroups](jStr)), "List[AgeGroups] failed to de-serialize")
  sealed trait GameExperienceLevel
  case object ANY extends GameExperienceLevel
  case object `NEW` extends GameExperienceLevel
  case object BEGINNER extends GameExperienceLevel
  case object INTERMEDIATE extends GameExperienceLevel
  case object EXPERT extends GameExperienceLevel

  object GameExperienceLevel {
    def toGameExperienceLevel(s: String): Option[GameExperienceLevel] = s match {
      case "ANY" => Some(ANY)
      case "`NEW`" => Some(`NEW`)
      case "BEGINNER" => Some(BEGINNER)
      case "INTERMEDIATE" => Some(INTERMEDIATE)
      case "EXPERT" => Some(EXPERT)
      case _ => None
    }

    def fromGameExperienceLevel(x: GameExperienceLevel): String = x match {
      case ANY => "ANY"
      case `NEW` => "`NEW`"
      case BEGINNER => "BEGINNER"
      case INTERMEDIATE => "INTERMEDIATE"
      case EXPERT => "EXPERT"
    }
  }

  implicit val GameExperienceLevelEnumEncoder: EncodeJson[GameExperienceLevel] =
    EncodeJson[GameExperienceLevel](is => StringEncodeJson(GameExperienceLevel.fromGameExperienceLevel(is)))

  implicit val GameExperienceLevelEnumDecoder: DecodeJson[GameExperienceLevel] =
    DecodeJson.optionDecoder[GameExperienceLevel](n => n.string.flatMap(jStr => GameExperienceLevel.toGameExperienceLevel(jStr)), "GameExperienceLevel failed to de-serialize")

  implicit val AudienceCodecJson: CodecJson[Audience] = CodecJson.derive[Audience]
  implicit val AudienceDecoder: EntityDecoder[Audience] = jsonOf[Audience]
  implicit val AudienceEncoder: EntityEncoder[Audience] = jsonEncoderOf[Audience]
}
